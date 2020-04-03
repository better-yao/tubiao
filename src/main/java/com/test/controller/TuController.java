package com.test.controller;

import com.test.bean.DateTime;
import com.test.bean.Tu;
import com.test.bean.Tu2;
import com.test.service.TuService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/tu")
public class TuController {

    @RequestMapping("zhexian")
    @ResponseBody
    public Map<String, List> showInfo(){
        System.out.println("测试1");
        List<String> list =new ArrayList<>();
        list.add(this.getClass().getClassLoader().getResource("prop/Line-1.txt").getPath());
        list.add(this.getClass().getClassLoader().getResource("prop/Line-2.txt").getPath());
        list.add(this.getClass().getClassLoader().getResource("prop/Line-3.txt").getPath());
        list.add(this.getClass().getClassLoader().getResource("prop/Line-4.txt").getPath());
        list.add(this.getClass().getClassLoader().getResource("prop/Line-5.txt").getPath());
        list.add(this.getClass().getClassLoader().getResource("prop/Line-6.txt").getPath());
        list.add(this.getClass().getClassLoader().getResource("prop/Line-7.txt").getPath());
        list.add(this.getClass().getClassLoader().getResource("prop/Line-8.txt").getPath());
        list.add(this.getClass().getClassLoader().getResource("prop/Line-9.txt").getPath());
        //System.out.println(path);//  "/D:/IDEA/WorkSpace/tubiao/target/tubiao/WEB-INF/classes/prop/生成文件.txt"
        String str;
        int i=1;
        Map<String,List> map = new HashMap<>();
        try {
            for(String path : list){
                BufferedReader bfr=new BufferedReader(new FileReader(new File(path.substring(1))));
                List<Tu> list1 = new ArrayList<>();
                while ((str=bfr.readLine())!=null){
                    Tu t=new Tu();
                    String[] arr=str.split(",");
                    String[] one =arr[0].split(" ");
                    String[] left=one[0].split("-");
                    String[] right=one[1].split(":");
                    DateTime d=new DateTime();
                    d.setYy(left[0]);
                    d.setMm(left[1]);
                    d.setDd(left[2]);
                    d.setShi(right[0]);
                    d.setFen(right[1]);
                    d.setMiao(right[2]);
                    t.setDateTime(d);
                    t.setLocation(arr[1]);
                    list1.add(t);
                }
                map.put("line"+i,list1);
                i++;
            }

            return map;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
    @Resource
    public TuService tuService;

    @RequestMapping("zhexian2")
    @ResponseBody
    public Map<String, List> showTu2(String start, String end){

        return tuService.showTu(start, end);
    }

}

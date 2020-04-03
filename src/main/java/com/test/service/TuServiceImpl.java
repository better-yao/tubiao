package com.test.service;

import com.test.bean.*;
import com.test.mapper.TuMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class TuServiceImpl implements TuService {

    @Resource
    public TuMapper tuMapper;

    @Override
    public Map<String, List> showTu(String start, String end) {
        System.out.println("service成功！！");
        Map<String,List> map = new HashMap<>();
        List<Tu2> list2 = new ArrayList<>();
        List<wgpacurrentspeed> list=tuMapper.showTu2(start,end);
        for (wgpacurrentspeed wg : list) {
            Tu2 tu2 = new Tu2();
            String  str=wg.getDate();
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
            tu2.setDateTime(d);
            tu2.setAverage(wg.getAverage());
            list2.add(tu2);
        }
        map.put("aver",list2);

/*
        List<Tu3> list3 = new ArrayList<>();
        List<inclinometer1> l2=tuMapper.showTu3(start,end);
        for (inclinometer1 in1 : l2) {
            Tu3 tu3 = new Tu3();
            String  str=in1.getDate();
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
            tu3.setDateTime(d);
            tu3.setHforce1(in1.getHforce1());
            tu3.setVforce1(in1.getVforce1());
            tu3.setHforce2(in1.getHforce2());
            tu3.setVforce2(in1.getVforce2());
            list3.add(tu3);
        }
        map.put("inclinometer1",list3);

        List<Tu4> list4 = new ArrayList<>();
        List<inclinometer> l3=tuMapper.showTu4(start,end);
        for (inclinometer in : l3) {
            Tu4 tu4 = new Tu4();
            String  str=in.getDate();
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
            tu4.setDateTime(d);
            tu4.setH_force1(in.gethForce1());
            tu4.setV_force1(in.getvForce1());
            tu4.setH_force2(in.gethForce2());
            tu4.setV_force2(in.getvForce2());
            list4.add(tu4);
        }
        map.put("inclinometer",list4);*/


        return map;
    }
}

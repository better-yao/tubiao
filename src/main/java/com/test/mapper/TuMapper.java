package com.test.mapper;

import com.test.bean.inclinometer;
import com.test.bean.inclinometer1;
import com.test.bean.wgpacurrentspeed;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TuMapper {
    public List<wgpacurrentspeed> showTu2(@Param("start") String start, @Param("end")String end);

    public List<inclinometer1> showTu3(@Param("start") String start, @Param("end")String end);

    public List<inclinometer> showTu4(@Param("start") String start, @Param("end")String end);
}

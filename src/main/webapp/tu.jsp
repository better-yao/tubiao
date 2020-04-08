<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html style="height: 100%">
<head>
    <meta charset="utf-8">
    <script type="application/javascript" src="${pageContext.request.contextPath}/js/jquery-2.2.3.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/angularjs/angular.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/echarts.min.js" charset="utf-8"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css"  media="all">
</head>
<body style="height: 100%; margin: 0">
<br>
<h3 style="text-align: center; font-family: 'Microsoft JhengHei Light';">折线图</h3>
<%--<div style="text-align:center; margin: 10px auto;">--%>
    <%--<label style="font-size: 12px;">起始日期</label>--%>
    <%--<div class="layui-input-inline">--%>
        <%--<input type="text" value="2017-02-01 00:00:00" class="layui-input" id="start" placeholder="请选择起始日期" style=" width: 170px; height: 35px;font-size: 12px;"/>--%>
    <%--</div>&nbsp;&nbsp;&nbsp;--%>
    <%--<label style="font-size: 12px;">结束日期</label>--%>
    <%--<div class="layui-input-inline">--%>
        <%--<input type="text" value="2017-02-02 00:00:00" class="layui-input" id="end" placeholder="请选择结束日期" style=" width: 170px; height: 35px;font-size: 12px;"/>--%>
    <%--</div>&nbsp;&nbsp;--%>
    <%--<button id="btn" value="提交" style="width: 70px; height: 30px; font-size: 12px;">提交</button>--%>
<%--</div>--%>
<div id="container" style="height: 60%; width: 100%; margin-left: auto;margin-right: auto;"></div>

<script type="text/javascript">
    var dom = document.getElementById("container");
    var myChart = echarts.init(dom);// 基于准备好的dom，初始化echarts实例
    var d1 = new Array();
    var d2 = new Array();
    var d3 = new Array();
    var d4 = new Array();
    var d5 = new Array();
    var d6 = new Array();
    var d7 = new Array();
    var d8 = new Array();
    var d9 = new Array();
    option = {
        title : {//标题
            text : '',
        },
        tooltip : {//提示工具，提示鼠标所在点的值
            trigger: 'item',
            formatter : function (params) {  //格式化格式，设计提示格式样式   params是每个坐标点的数据集（可以是对象也可以是数组）。
                var date = new Date(params.value[0]);
                data = date.getFullYear() + '-'+ (date.getMonth() + 1) + '-'+ date.getDate() + ' ' + date.getHours() + ':'+ date.getMinutes() + ':' + date.getSeconds();
                return data + '<br/>' + params.value[1];
            }
        },
        toolbox: {  //右上角的工具栏
            show : true,
            feature : {
                mark : {show: false},//辅助线开关
                dataView : {show: false, readOnly: false},//数据视图工具，可以展示当前图标所用的数据，现在为不只读状态
                restore : {title:"还原",show: true},//还原设置
                saveAsImage : {title:"保存图片",show: true}//保存图片
            },
            right : 145
        },
        dataZoom: {//最下面滑动的区域缩放滑块  数据滑块
            show: true,
            //type:"inside",//时间轴滑块功能放到图标里面实现伸缩展示
            start : 0,//起始滑块位置 0代表 原点开始，40代表40%开始
            end : 100//结束滑块的位置
        },
        legend : {//定义图例的样式
            data : ['average','hforce1','vforce1','hforce2','vforce2','h_force1','v_force1','h_force2','v_force2']//应该与对应的series的名字的值一样
        },
        grid: {//直角坐标系内绘图网格的高度距离和宽度距离
            y2: 90
        },
        xAxis : [
            {
                type : 'time',//坐标轴的类型  time时间轴
                splitNumber:24//坐标轴分割段数
            }
        ],
        yAxis : [
            {
                type : 'value'//坐标轴的类型 vlue数值轴
            }
        ],
        series : [//代表数据，就生成的曲线
            {
                name: 'average',//名称
                type: 'line',//散点图
                showAllSymbol: false,//显示所有图形--标记图形
                showSymbol : false,
                symbolSize: function (value){//折线中或散点中的标记的大小，value是data中数据的值
                    return 2;
                },
                itemStyle: {
                    normal: {
                        color: '#98d58c', //改变折线点的颜色
                        lineStyle: {
                            width: 2,//线条宽度
                            color: '#98d58c' //改变折线颜色
                        }
                    }
                },
                data: d1
            },
            {
                name: 'hforce1',//名称
                type: 'line',//散点图
                smooth:false,//关键点为true就不支持实线，false支持虚线
                showAllSymbol: false,//显示所有图形--标记图形
                showSymbol : false,
                symbolSize: function (value){//折线中或散点中的标记的大小，value是data中数据的值
                    return 2;
                },
                itemStyle: {
                    normal: {
                        color: '#5cded9', //改变折线点的颜色
                        lineStyle: {
                            width: 2,//线条宽度
                            color: '#5cded9', //改变折线颜色
                            type:'dotted'//'dotted'虚线 'solid'实线
                        }
                    }
                },
                data: d2
            },
            {
                name: 'vforce1',//名称
                type: 'line',//散点图
                smooth:false,//关键点为true就不支持实线，false支持虚线
                showAllSymbol: false,//显示所有图形--标记图形
                showSymbol : false,
                symbolSize: function (value){//折线中或散点中的标记的大小，value是data中数据的值
                    return 2;
                },
                itemStyle: {
                    normal: {
                        color: '#c180d5', //改变折线点的颜色
                        lineStyle: {
                            width: 2,//线条宽度
                            color: '#bf70d5', //改变折线颜色
                            type:'dotted'//'dotted'虚线 'solid'实线
                        }
                    }
                },
                data: d3
            },
            {
                name: 'hforce2',//名称
                type: 'line',//散点图
                smooth:false,//关键点为true就不支持实线，false支持虚线
                showAllSymbol: false,//显示所有图形--标记图形
                showSymbol : false,
                symbolSize: function (value){//折线中或散点中的标记的大小，value是data中数据的值
                    return 2;
                },
                itemStyle: {
                    normal: {
                        color: '#938baa', //改变折线点的颜色
                        lineStyle: {
                            width: 2,//线条宽度
                            color: '#938baa', //改变折线颜色
                            type:'dotted'//'dotted'虚线 'solid'实线
                        }
                    }
                },
                data: d4
            },
            {
                name: 'vforce2',//名称
                type: 'line',//散点图
                smooth:false,//关键点为true就不支持实线，false支持虚线
                showAllSymbol: false,//显示所有图形--标记图形
                showSymbol : false,
                symbolSize: function (value){//折线中或散点中的标记的大小，value是data中数据的值
                    return 2;
                },
                itemStyle: {
                    normal: {
                        color: '#e9d27d', //改变折线点的颜色
                        lineStyle: {
                            width: 2,//线条宽度
                            color: '#ffc36a', //改变折线颜色
                            type:'dotted'//'dotted'虚线 'solid'实线
                        }
                    }
                },
                data: d5
            },
            {
                name: 'h_force1',//名称
                type: 'scatter',//散点图
                showAllSymbol: false,//显示所有图形--标记图形
                showSymbol : true,
                symbolSize: function (value){//折线中或散点中的标记的大小，value是data中数据的值
                    return 5;
                },
                itemStyle: {
                    normal: {
                        color: '#5cded9', //改变折线点的颜色
                        lineStyle: {
                            width: 3,//线条宽度
                            color: '#5cded9' //改变折线颜色
                        }
                    }
                },
                data: d6
            },
            {
                name: 'v_force1',//名称
                type: 'scatter',//散点图
                showAllSymbol: false,//显示所有图形--标记图形
                showSymbol : true,
                symbolSize: function (value){//折线中或散点中的标记的大小，value是data中数据的值
                    return 5;
                },
                itemStyle: {
                    normal: {
                        color: '#c180d5', //改变折线点的颜色
                        lineStyle: {
                            width: 3,//线条宽度
                            color: '#bf70d5' //改变折线颜色
                        }
                    }
                },
                data: d7
            },
            {
                name: 'h_force2',//名称
                type: 'scatter',//散点图
                showAllSymbol: false,//显示所有图形--标记图形
                showSymbol : true,
                symbolSize: function (value){//折线中或散点中的标记的大小，value是data中数据的值
                    return 5;
                },
                itemStyle: {
                    normal: {
                        color: '#938baa', //改变折线点的颜色
                        lineStyle: {
                            width: 3,//线条宽度
                            color: '#938baa' //改变折线颜色
                        }
                    }
                },
                data: d8
            },
            {
                name: 'v_force2',//名称
                type: 'scatter',//散点图
                showAllSymbol: false,//显示所有图形--标记图形
                showSymbol : true,
                symbolSize: function (value){//折线中或散点中的标记的大小，value是data中数据的值
                    return 5;
                },
                itemStyle: {
                    normal: {
                        color: '#e9d27d', //改变折线点的颜色
                        lineStyle: {
                            width: 3,//线条宽度
                            color: '#ffc36a' //改变折线颜色
                        }
                    }
                },
                data: d9
            }

        ]
    };

    $.ajax({
        type:'post',
        url:'${pageContext.request.contextPath}/tu/zhexian2',
        data:{start:"2016-01-01 00:00:00",end:"2016-01-01 24:00:00"},
        async:false,
        dataType:'json',
        success:function(response) {
            console.log(response);
            if(response){
                var now = new Date();
                $(response.aver).each(function (index, value) {//循环遍历
                    d1.push([
                        new Date(value.dateTime.yy,value.dateTime.mm-1, value.dateTime.dd, value.dateTime.shi, value.dateTime.fen,value.dateTime.miao),
                        value.average
                    ]);
                });
                $(response.inclinometer1).each(function (index, value) {
                    d2.push([
                        new Date(value.dateTime.yy,value.dateTime.mm-1, value.dateTime.dd, value.dateTime.shi, value.dateTime.fen,value.dateTime.miao),
                        value.hforce1
                    ]);
                });
                $(response.inclinometer1).each(function (index, value) {
                    d3.push([
                        new Date(value.dateTime.yy,value.dateTime.mm-1, value.dateTime.dd, value.dateTime.shi, value.dateTime.fen,value.dateTime.miao),
                        value.vforce1
                    ]);
                });
                $(response.inclinometer1).each(function (index, value) {
                    d4.push([
                        new Date(value.dateTime.yy,value.dateTime.mm-1, value.dateTime.dd, value.dateTime.shi, value.dateTime.fen,value.dateTime.miao),
                        value.hforce2
                    ]);
                });
                $(response.inclinometer1).each(function (index, value) {
                    d5.push([
                        new Date(value.dateTime.yy,value.dateTime.mm-1, value.dateTime.dd, value.dateTime.shi, value.dateTime.fen,value.dateTime.miao),
                        value.vforce2
                    ]);
                });
                $(response.inclinometer).each(function (index, value) {
                    d6.push([
                        new Date(value.dateTime.yy,value.dateTime.mm-1, value.dateTime.dd, value.dateTime.shi, value.dateTime.fen,value.dateTime.miao),
                        value.h_force1
                    ]);
                });
                $(response.inclinometer).each(function (index, value) {
                    d7.push([
                        new Date(value.dateTime.yy,value.dateTime.mm-1, value.dateTime.dd, value.dateTime.shi, value.dateTime.fen,value.dateTime.miao),
                        value.v_force1
                    ]);
                });
                $(response.inclinometer).each(function (index, value) {
                    d8.push([
                        new Date(value.dateTime.yy,value.dateTime.mm-1, value.dateTime.dd, value.dateTime.shi, value.dateTime.fen,value.dateTime.miao),
                        value.h_force2
                    ]);
                });
                $(response.inclinometer).each(function (index, value) {
                    d9.push([
                        new Date(value.dateTime.yy,value.dateTime.mm-1, value.dateTime.dd, value.dateTime.shi, value.dateTime.fen,value.dateTime.miao),
                        value.v_force2
                    ]);
                });

            }

        }
    });

    myChart.setOption(option);

</script>


</body>
</html>
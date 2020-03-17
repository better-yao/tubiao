<!DOCTYPE html>
<%@ page language="java"  pageEncoding="UTF-8"%>
<html style="height: 100%">
<head>
    <script type="application/javascript" src="${pageContext.request.contextPath}/js/jquery-2.2.3.min.js"></script>
    <%--<script src="http://echarts.baidu.com/build/dist/echarts-all.js"></script>--%>
    <script src="${pageContext.request.contextPath}/js/echarts.min.js" charset="utf-8"></script>
</head>
<body style="height: 100%; margin: 0">
<h3 style="text-align: center; font-family: 'Microsoft JhengHei Light'">折线图</h3>
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
                saveAsImage : {title:"保存图片",show: true},//保存图片
                dataZoom : {show: true}
            },
            right : 145
        },
        dataZoom: {//最下面滑动的区域缩放滑块  数据滑块
            show: true,
            //type:"inside",//时间轴滑块功能放到图标里面实现伸缩展示
            start : 0,//起始滑块位置 0代表 原点开始，4代表40%开始
            end : 5//结束滑块的位置
        },
        legend : {//定义图例的样式
            data : ['Line # 1','Line # 2','Line # 3','Line # 4','Line # 5','Line # 6','Line # 7','Line # 8','Line # 9']//应该与对应的series的名字的值一样
        },
        grid: {//直角坐标系内绘图网格的高度距离和宽度距离
            y2: 90
        },
        xAxis : [
            {
                type : 'time',//坐标轴的类型  time时间轴
                splitNumber:2//坐标轴分割段数
            }
        ],
        yAxis : [
            {
                type : 'value'//坐标轴的类型 vlue数值轴
            }
        ],
        series : [//代表数据，就生成的曲线
            {
                name: 'Line # 1',//名称
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
                name: 'Line # 2',//名称
                type: 'line',//散点图
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
                            color: '#5cded9' //改变折线颜色
                        }
                    }
                },
                data: d2
            },
            {
                name: 'Line # 3',//名称
                type: 'line',//散点图
                showAllSymbol: false,//显示所有图形--标记图形
                showSymbol : false,
                symbolSize: function (value){//折线中或散点中的标记的大小，value是data中数据的值
                    return 2;
                },
                itemStyle: {
                    normal: {
                        color: '#ab32d5', //改变折线点的颜色
                        lineStyle: {
                            width: 2,//线条宽度
                            color: '#ab32d5' //改变折线颜色
                        }
                    }
                },
                data: d3
            },
            {
                name: 'Line # 4',//名称
                type: 'scatter',//散点图
                showAllSymbol: false,//显示所有图形--标记图形
                showSymbol : false,
                symbolSize: function (value){//折线中或散点中的标记的大小，value是data中数据的值
                    return 4;
                },
                itemStyle: {
                    normal: {
                        color: '#938baa', //改变折线点的颜色
                        lineStyle: {
                            width: 4,//线条宽度
                            color: '#938baa' //改变折线颜色
                        }
                    }
                },
                data: d4
            },
            {
                name: 'Line # 5',//名称
                type: 'scatter',//散点图
                showAllSymbol: false,//显示所有图形--标记图形
                showSymbol : false,
                symbolSize: function (value){//折线中或散点中的标记的大小，value是data中数据的值
                    return 4;
                },
                itemStyle: {
                    normal: {
                        color: '#d51a22', //改变折线点的颜色
                        lineStyle: {
                            color: '#d51a22',//改变折线颜色
                            width: 4//线条宽度
                        }
                    }
                },
                data: d5
            },
            {
                name: 'Line # 6',//名称
                type: 'scatter',//散点图
                showAllSymbol: false,//显示所有图形--标记图形
                showSymbol : false,
                symbolSize: function (value){//折线中或散点中的标记的大小，value是data中数据的值
                    return 4;
                },
                itemStyle: {
                    normal: {
                        color: '#ed953f', //改变折线点的颜色
                        lineStyle: {
                            color: '#ed953f', //改变折线颜色
                            width: 4//线条宽度
                        }
                    }
                },
                data: d6
            },{
                name: 'Line # 7',//名称
                type: 'line',//散点图
                smooth:false,//关键点为true就不支持实线，false支持虚线
                showAllSymbol: false,//显示所有图形--标记图形
                showSymbol : false,
                symbolSize: function (value){//折线中或散点中的标记的大小，value是data中数据的值
                    return 2;
                },
                itemStyle: {//设置图形默认的样式以及强调的样式
                    normal: {
                        color: '#fff557', //改变折线点的颜色
                        lineStyle: {//折线的样式
                            width: 3,//线宽
                            color: '#fff557', //改变折线颜色
                            type:'dotted'//'dotted'虚线 'solid'实线

                        }
                    }
                },
                data: d7
            },
            {
                name: 'Line # 8',//名称
                type: 'line',//散点图
                showAllSymbol: false,//显示所有图形--标记图形
                showSymbol : false,
                symbolSize: function (value){//折线中或散点中的标记的大小，value是data中数据的值
                    return 2;
                },
                itemStyle: {
                    normal: {
                        color: '#f88ca5', //改变折线点的颜色
                        lineStyle: {
                            width: 3,//线宽
                            color: '#f88ca5', //改变折线颜色
                            type:'dotted'
                        }
                    }
                },
                data: d8
            },
            {
                name: 'Line # 9',//名称
                type: 'line',//散点图
                showAllSymbol: false,//显示所有图形--标记图形
                showSymbol : false,
                symbolSize: function (value){//折线中或散点中的标记的大小，value是data中数据的值
                    return 2;
                },
                itemStyle: {
                    normal: {
                        color: '#348cff', //改变折线点的颜色
                        lineStyle: {
                            width: 3,//线宽
                            color: '#348cff',//改变折线颜色
                            type:'dotted'
                        }
                    }
                },
                data: d9
            }
        ]
    };

    $.ajax({
        type:'post',
        url:'${pageContext.request.contextPath}/tu/zhexian',
        async:false,
        dataType:'json',
        success:function(response) {
            console.log(response);
            if(response){
                var now = new Date();
                $(response.line1).each(function (index, value) {
                    d1.push([
                        new Date(value.dateTime.yy,value.dateTime.mm-1, value.dateTime.dd, value.dateTime.shi, value.dateTime.fen,value.dateTime.miao),
                        value.location
                    ]);
                });
                $(response.line2).each(function (index, value) {
                    d2.push([
                        new Date(value.dateTime.yy,value.dateTime.mm-1, value.dateTime.dd, value.dateTime.shi, value.dateTime.fen,value.dateTime.miao),
                        value.location
                    ]);
                });
                $(response.line3).each(function (index, value) {
                    d3.push([
                        new Date(value.dateTime.yy,value.dateTime.mm-1, value.dateTime.dd, value.dateTime.shi, value.dateTime.fen,value.dateTime.miao),
                        value.location
                    ]);
                });
                $(response.line4).each(function (index, value) {
                    d4.push([
                        new Date(value.dateTime.yy,value.dateTime.mm-1, value.dateTime.dd, value.dateTime.shi, value.dateTime.fen,value.dateTime.miao),
                        value.location
                    ]);
                });
                $(response.line5).each(function (index, value) {
                    d5.push([
                        new Date(value.dateTime.yy,value.dateTime.mm-1, value.dateTime.dd, value.dateTime.shi, value.dateTime.fen,value.dateTime.miao),
                        value.location
                    ]);
                });
                $(response.line6).each(function (index, value) {
                    d6.push([
                        new Date(value.dateTime.yy,value.dateTime.mm-1, value.dateTime.dd, value.dateTime.shi, value.dateTime.fen,value.dateTime.miao),
                        value.location
                    ]);
                });
                $(response.line7).each(function (index, value) {
                    d7.push([
                        new Date(value.dateTime.yy,value.dateTime.mm-1, value.dateTime.dd, value.dateTime.shi, value.dateTime.fen,value.dateTime.miao),
                        value.location
                    ]);
                });
                $(response.line8).each(function (index, value) {
                    d8.push([
                        new Date(value.dateTime.yy,value.dateTime.mm-1, value.dateTime.dd, value.dateTime.shi, value.dateTime.fen,value.dateTime.miao),
                        value.location
                    ]);
                });
                $(response.line9).each(function (index, value) {
                    d9.push([
                        new Date(value.dateTime.yy,value.dateTime.mm-1, value.dateTime.dd, value.dateTime.shi, value.dateTime.fen,value.dateTime.miao),
                        value.location
                    ]);
                });

            }

        }
    });

    myChart.setOption(option);

</script>


</body>
</html>
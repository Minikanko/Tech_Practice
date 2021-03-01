<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/ui.jqgrid.css"/>
<!-- jquery 라이브러리 가 먼저 나와야함 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.jqGrid.min.js"/></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/i18n/grid.locale-kr.js"></script>
</head>
<script type="text/javascript">
const dataArray = [ 
	{fOcurDtmc:"1",spd:"80",rpm:"60",brkYn:"50"}, 
	{fOcurDtmc:"2",spd:"57",rpm:"80",brkYn:"50"}, 
	{fOcurDtmc:"3",spd:"90",rpm:"40",brkYn:"85"}, 
	{fOcurDtmc:"4",spd:"67",rpm:"84",brkYn:"76"}, 
	{fOcurDtmc:"5",spd:"35",rpm:"83",brkYn:"85"}, 
	{fOcurDtmc:"6",spd:"90",rpm:"67",brkYn:"56"}, 
	{fOcurDtmc:"7",spd:"80",rpm:"60",brkYn:"50"}, 
	{fOcurDtmc:"8",spd:"45",rpm:"67",brkYn:"100"}
	]; 
	
function makeTable(id, array){
     $("#"+id).jqGrid({
            datatype: "local",
            height: 250, 
            width : 630,
            colNames:['일시','속도', 'RPM', '브레이크','상태'],
            colModel:[
                {name:'fOcurDtmc', align:'right'},
                {name:'spd', align:'right'},
                {name:'rpm', align:'right'},
                {name:'brkYn', align:'right'},
                {name:'status', align:'right'}    
            ],
            rowNum:3,
            pager:"#pager",		//page를 표시할 공간을 선택함
            caption: "jqGrid Test",		//jqGrid의 Title
            loadtext: "로딩중일때 표시되는 텍스트!"
      });

      for(var i in array){
           $("#"+id).jqGrid('addRowData',i+1,array[i]);
      }
}
$(document).ready(function(){
	makeTable('table1', dataArray);
});
</script>
<body>

<table id="table1"></table>
<div id="pager"></div>

</body>
</html>
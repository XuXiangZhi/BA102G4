<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<head>

<!--<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content=""> -->

 <title>健貨 - GymHome</title>
<%@include file="/front_end/include/basicScript.file" %>
</head>

<body>
	
	<!-- 導覽列 -->
 <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
<%@include file="/front_end/include/front_navbar.file" %>
  </nav>

    <!-- Page Content -->
    <div class="container">
        
        <!-- Page Heading/Breadcrumbs -->
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
            </script>
            
            <div class="col-lg-12">
                <h1>找課程
                    <small>Courses</small>
                </h1>
            </div>

            <ul class="breadcrumb">
                <li>
                    <i class="icon-home home-icon"></i>
                        <a href="<%=request.getContextPath()%>/front_end/CCM/index.jsp">首頁</a>
                     </li>
                <li class="active">服務介紹</li>
                <li class="active">找課程</li>
            </ul><!-- .breadcrumb -->
        </div>
        <br>
        

            <div class="col-lg-12">
                <div class="row">
				<form action="<%=request.getContextPath()%>/CCM/CourseManager.do" method="post">
                    <div class="col-lg-2">
                            <input type="text" name="coa_name" id="coa_name" placeholder="輸入教練名稱">
                    </div>

                    <div class="col-lg-2">
                            <input type="text" name="crs_name" id="crs_name" placeholder="輸入課程名稱">
                    </div>

                    <div class="col-lg-2">
                            <select class="form-control" name="category" id="category">
                                <option value="null">選擇種類</option>
                                <option name="" value="A">瑜珈</option>
								<option name="" value="B">飛輪有氧</option>
								<option name="" value="C">舞動有氧</option>
								<option name="" value="D">拳擊有氧</option>
								<option name="" value="E">基礎重訓</option>
								<option name="" value="F">進階重訓</option>
								<option name="" value="G">皮拉提斯</option>
								<option name="" value="H">TRX肌力雕塑</option>
								<option name="" value="O">其他</option>
                            </select>
                    </div>
		
					<div class="col-lg-2">
                            <input type="text" name="crs_date" id="crs_date" placeholder="課程日期">
                    </div>
                    
                    <div class="col-lg-2">
                            <select class="form-control" name="crs_time" id="crs_time">
                                <option value="null">選擇時段</option>
                                <option value="1">早上-1</option>
                                <option value="2">早上-2</option>
                                <option value="3">下午-1</option>
                                <option value="4">下午-2</option>
                                <option value="5">晚上-1</option>     
                                <option value="6">晚上-2</option>            
                            </select>
                    </div>
                    
                    <div class="col-lg-1">
                    	<input type="button" class="btn btn-info" id="sendSelectbtn"  value="送出條件">
                        <button class="btn btn-info" id="sendSelect" style="display:none;">送出條件</button>
                    </div>

                    <div class="col-lg-1">
                    	<input type="button" class="btn btn-warning" id="readAll"  value="查全部">
                        <input type="reset" class="btn btn-default" id="sendSelectReset" value="重置" style="display:none";>
                        <input type="hidden" name="action" value="crsSelectList">
                    </div>
				</form>
                </div>
            </div>

            
            <br><br><br>
            <!--table開始-->
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-xs-12 col-sm-12">
                        <div class="table-responsive">
                            <table id="sample-table-1" class="table table-striped">
                                <thead class="aaa">
                                    <tr>
                                        <th class="center">類別</th>
                                        <th>教練</th>
                                        <th>場館</th>
                                        <th>課程名稱</th>
                                        <th>時段</th>
                                        <th>人數</th>
                                        <th>價格</th>
                                        <th>預定按鈕</th>
                                     </tr>
                                </thead>

                                <tbody>
									<c:forEach var="course_timeVO" items="${crsList}">
	                                    <tr>
	                                        <td class="center"><span class="label label-xs label-warning arrowed-in">${course_timeVO.courseVO.categoryChange}</span></td>
	                                        <td>${course_timeVO.coachesVO.coa_name}</td>
	                                        <td><a href="#">${course_timeVO.placeVO.p_name}</a></td>
	                                        <td>${course_timeVO.courseVO.crs_name}</td>
	                                        <td>${course_timeVO.crs_date}-${course_timeVO.crs_timeShow}</td>
	                                        <td>${course_timeVO.count}/${course_timeVO.limit}</td>
	                                        <td>$${course_timeVO.price}</td>
	                                        <td><a href="<%=request.getContextPath()%>/front_end/CourseDetails/courseInfo.jsp?ct_no=${course_timeVO.ct_no}&crs_no=${course_timeVO.crs_no}"><button class="btn btn-inverse" style="border-radius:6px;">報名/觀看詳情</button></a></td>
	                                    </tr>
									</c:forEach>
                                 </tbody>
                                
                            </table>
                        </div><!-- /.table-responsive -->
                    </div><!-- /col-sm-12 -->
                </div><!-- /row -->
            </div>
            <!--table結束-->
        

        <hr>

        <!-- Footer -->


    </div>
    <!-- /.container -->


  	<!-- Footer -->
	<%@include file="/front_end/include/footer.file" %>

	<!-- 最底層 -->
	<%@include file="/front_end/include/floor.file" %>
	
</body>
	<%@include file="/front_end/include/basicScript2.file" %>



</html>
<script>

window.onload = function(){
	$("#sendSelectbtn").click(sendSelect);
	$("#readAll").click(readAll);
}

$(function(){
    $('#crs_date').datepicker({
                dateFormat: 'yy-mm-dd'
    });
});

function sendSelect(){
	console.log("coaname:"+$("#coa_name").val());
	console.log("crs_name:"+$("#crs_name").val());
	if($("#coa_name").val() == '' && $("#crs_name").val() == '' && $("select[name='category']").val() == 'null' && $("#crs_date").val() == '' && $("select[name='crs_time']").val() == 'null'){
		swal("未選擇條件", "Please choose at least one condition!", "error");
	}else{
		$("#sendSelect").click();
	}
}
function readAll(){
	$("#sendSelectReset").click();
	$("#sendSelect").click();
}


</script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/front_end/CCM/dist/sweetalert-dev.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/front_end/CCM/dist/sweetalert.min.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/front_end/CCM/dist/sweetalert.css" />
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.9.1.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css" />
<script type="text/javascript" src="https://code.jquery.com/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>

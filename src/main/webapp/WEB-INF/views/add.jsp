<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- <div class="frame"> -->
<!-- 	<div> -->
<!-- 		<form method="POST"> -->
<!-- 			<input type="hidden" name="userid" value="test"> -->
<%-- 			<input type="hidden" name="meal_time" value="${meal_time }"> --%>
<!-- 			<p> -->
<!-- 				<select name="food_idx"> -->
<!--     				<option value="">음식을 선택하세요</option> -->
<%--     				<c:forEach var="dto" items="${foodList }"> --%>
<%-- 	    				<option value="${dto.idx }">${dto.food_name }</option> --%>
<%--     				</c:forEach> --%>
<!--     			</select> -->
<!--     		</p> -->
<!--     		<p><input type="submit" value="등록하기"></p> -->
<!-- 		</form> -->
<!-- 	</div> -->
<!-- </div> -->

<div class="frame">
	<div>
			<p>
				<input type="text" name="searchName">
				<input type="button" value="검색">
    		</p>
    		<p>
				<select name="food_idx">
    				<option value="">음식을 선택하세요</option>
    				<c:forEach var="dto" items="${foodList }">
	    				<option value="${dto.idx }">${dto.food_name }</option>
    				</c:forEach>
    			</select>
    		</p>
	</div>
</div>

<input type="hidden" name="userid" value="test">
<input type="hidden" name="meal_time" value="${meal_time }">
			
<div>
	<c:forEach var="cate" items="${category}">
		<input type="checkbox" id="check${cate }" name="group_name" value="${cate }">
  		<label for="check${cate }" class="select">#${cate }</label><br>
	</c:forEach>
</div>


<script>
	const searchName = document.querySelector('input[name="searchName"]')
	const searchBtn = document.querySelector('input[value="검색"]')
	const cate =document.querySelectorAll('input[type="checkbox"]')
	var selectValues = [];
	
	function clickHandler(){
		alert(selectValues)
		const url = '${cpath}/getSearch?food_name='+searchName.value+'&group_name='+ selectValues
		location.href = url
	}	
	
	searchBtn.onclick = clickHandler
	
	function changeCheck(){
		selectValues.length = 0;
		const cateList = document.querySelectorAll('input[type="checkbox"]:checked')
		cateList.forEach(function(checkbox) {
			selectValues.push(checkbox.value)
		})
	}
	
	cate.forEach(function(e){e.onchange = changeCheck})
	
</script>

</body>
</html>
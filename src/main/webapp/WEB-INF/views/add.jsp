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

<div class="frame">
	<div>
		<form method="POST">
			<input type="hidden" name="userid" value="test">
			<input type="hidden" name="meal_time" value="${meal_time }">
			<p>
				<select name="food_idx">
    				<option value="">음식을 선택하세요</option>
    				<c:forEach var="dto" items="${foodList }">
	    				<option value="${dto.idx }">${dto.food_name }</option>
    				</c:forEach>
    			</select>
    		</p>
    		<p><input type="submit" value="등록하기"></p>
		</form>
	</div>
</div>

</body>
</html>
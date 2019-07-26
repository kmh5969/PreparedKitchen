<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
/*
	$(function(){
		var content = removeHTML("${dto.mycontent}");
		$('#content').text(content);
	});	
		
	function removeHTML(text) {
		var text = text.replace(/<p>/gi,'<br>')
		var text = text.replace(/(<br>|<br\/>|<br \/>)/g, '\r\n');
		var text = text.replace(/<(\/)?([a-zA-Z]*)(\s[a-zA-Z]*=[^>]*)?(\s)*(\/)?>/ig, "");
		var text = text.replace(/&nbsp;/gi,'');
		
		return text;	
	}
*/
</script>
</head>
<body>

	<h1>selectOne</h1>
	
	<table border="1">
		<tr>
			<th>번호</th>
			<td>${recipeBoardDto.recipeBoard_no }</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${recipeBoardDto.id }</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>${recipeBoardDto.recipeBoard_title }</td>
		</tr>
		<tr>
			<th>조회수</th>
			<td>${recipeBoardDto.recipeBoard_readCount }</td>
		</tr>
		<tr>
			<th>좋아요</th>
			<td>${recipeBoardDto.recipeBoard_like }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>
				${recipeBoardDto.recipeBoard_content }
			</td>
		</tr>
		<tr>
			<th>작성일</th>
			<td>${recipeBoardDto.recipeBoard_regdate }</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button" value="수정" onclick="location.href='recipeboard.do?command=update&no=${recipeBoardDto.recipeBoard_no}'"/>
				<input type="button" value="삭제" onclick="location.href='recipeboard.do?command=delete&no=${recipeBoardDto.recipeBoard_no}'"/>
				<input type="button" value="목록" onclick="location.href='recipeboard.do?command=list'"/>
			</td>
		</tr>
	</table>
	
</body>
</html>
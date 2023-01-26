<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <%@ include file="../layout/header.jsp" %>

        <div class="center">
            <h1>게시글 목록 페이지</h1>
        </div>
        <hr />
        <div class="center">
            <a href="/updateForm">회원정보</a>
            <a href="/logout">로그아웃</a>
        </div>
        <div class="center">
            <table border="1">
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성일</th>
                </tr>
                <c:forEach items="${boardList}" var="principal">
                    <tr>
                        <td>${principal.id}</td>
                        <td>${principal.title}</td>
                        <td>${principal.created_at}</td>
                    </tr>
                </c:forEach>


            </table>
        </div>
        <%@ include file="../layout/footer.jsp" %>
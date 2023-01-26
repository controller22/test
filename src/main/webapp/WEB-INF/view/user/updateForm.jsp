<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>

        <div class="center">
            <h1>회원수정 페이지</h1>
        </div>
        <hr />
        <div class="center">
            <a href="/updateForm">회원정보</a>
            <a href="/logout">로그아웃</a>
        </div>
        <form action="/update" method="post">
            <div class="center">
                <table border="1">
                    <tr>
                        <th>유저네임</th>
                        <td>
                            <input type="text" name=username placeholder="Enter username" required><br />
                        </td>
                    </tr>
                    <tr>
                        <th>패스워드</th>
                        <td>
                            <input type="password" name=password placeholder="Enter password" required><br />
                        </td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td>
                            <input type="email" name=email placeholder="Enter email" required><br />
                        </td>
                    </tr>
                </table>
            </div>
            <div class="center">
                <button type="submit">회원수정완료</button>
            </div>
        </form>

        <%@ include file="../layout/footer.jsp" %>
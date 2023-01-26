<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <%@ include file="../layout/header.jsp" %>
        <div class="center">
            <h1>로그인 페이지</h1>
        </div>
        <hr />
        <div class="center">
            <a href="/loginForm">로그인</a>
            <a href="/joinForm">회원가입</a>
        </div>
        <div class="center">
            <table border="1">
                <form action="/login" method="post">
                    <tr>
                        <th>유저네임</th>
                        <td>
                            <input type="text" name="username" placeholder="Enter username" required><br />
                        </td>
                    </tr>
                    <tr>
                        <th>패스워드</th>
                        <td>
                            <input type="password" name="password" placeholder="Enter password" required><br />
                        </td>
                    </tr>
            </table>
        </div>
        <div class="center">
            <button type="submit">로그인</button>
        </div>
        </form>

        <%@ include file="../layout/footer.jsp" %>
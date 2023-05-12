<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="kz.bitlab.javaee.db.Users" %>
<%
    Users currentUser = (Users) session.getAttribute("currentUser");
%>
<nav class="navbar navbar-expand-lg navbar-blue  bg-blue">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">NAURYZ'S SHOP</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/">All Products</a>
                </li>
                <%
                    if(currentUser!=null){
                %>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">
                        <%=currentUser.getFullName()%>
                    </a>
                </li>
                <%
                }else{
                %>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/login">Sign in</a>
                </li>
                <%
                    }
                %>
            </ul>
        </div>
    </div>
</nav>
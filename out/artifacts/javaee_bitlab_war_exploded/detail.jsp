<%--
  Created by IntelliJ IDEA.
  User: nauryz
  Date: 16.04.2023
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.javaee.db.Tasks" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Detail View</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container mt-5">
    <%
        Tasks task = (Tasks) request.getAttribute("task");
        if (task != null) {
    %>
    <div class="row">
        <div class="col-6 mx-auto">
            <div class="mt-3">
                <form action="/save-task" method="post">
                        <div class="container">
                            <div class="row">
                                <div>
                                    <input type="hidden" name="task_id" value="<%=task.getId()%>">
                                    <label>Name</label>
                                    <input type="text" class="form-control" name="task_name"
                                           value="<%=task.getName()%>">
                                </div>
                                <div>
                                    <label>Description</label>
                                    <textarea class="form-control" name="task_description">
                                        <%=task.getDescription()%>
                                    </textarea>
                                </div>
                                <div>
                                    <label>DeadLine Date</label>
                                    <input type="date" class="form-control" name="task_deadline"
                                           value="<%=task.getDeadlineDate()%>">
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary btn-sm mt-3 ms-2">Edit</button>
                    </form>
                <form action="/delete-task" method="post">
                    <input type="hidden" name="id" value="<%=task.getId()%>">
                    <button type="submit" class="btn btn-danger btn-sm mt-3 ms-2">Delete</button>
                </form>
            </div>
        </div>
    </div>

    <%
    } else {
    %>
    <div STYLE="color: red">
        <h1>ERROR 404</h1>
    </div>
    <% }
    %>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
</body>
</html>
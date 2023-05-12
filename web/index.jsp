<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.javaee.db.Tasks" %>
<%@ page import="kz.bitlab.javaee.db.Items" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Index Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container mt-5">
<%--    <button type="button" class="btn btn-sm btn-secondary bg-blue mt-3" data-bs-toggle="modal" data-bs-target="#staticBackdrop">--%>
<%--        New Task--%>
<%--    </button>--%>
    <div class="container" style="text-align: center; margin: auto">
        <h1>Welcome to Nauryz's Shop</h1>
        <br>
        <h3>Buy electronics with best price</h3>
        <br>
        <br>
    </div>
    <div class="row g-3">
        <% ArrayList<Items> items = (ArrayList<Items>) request.getAttribute("items"); %>
        <% if (items != null) {
            for (Items item : items) {
        %>
        <div class="col-12 col-md-6 col-lg-4">
            <div class="card" style="font-family: 'Arial Rounded MT Bold'; border-radius: 25px">
                <div class="card-body">
                    <p class="card-text text-center display-6" style="font-size: 33px"><%=item.getName()  %></p>
                    <hr>
                    <p class="card-text text-center">
                        <%=item.getDescription()  %>
                    </p>
                    <hr>
                    <p class="card-text text-center" style="color: green; font-size: 25px">
                        <%=item.getPrice()  %> $
                    </p>
                    <p class="card-text text-center">
                        <a href="/details?item_id=<%=item.getId()%>" class="btn btn-dark" style="background-color: green; width: 200px">BUY NOW</a>
                    </p>
                </div>
            </div>
        </div>
        <% }
        }%>
    </div></div>


<!-- Модальное окно -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Add New Task</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
            </div>
            <%@include file="addTask.jsp"%>
        </div>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
</body>
</html>
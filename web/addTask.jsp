<%--
  Created by IntelliJ IDEA.
  User: nauryz
  Date: 16.04.2023
  Time: 12:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="/add-task" method="post">
  <div class="modal-body">

    <div class="container">
      <div class="row">
        <div class="col-8 mx-auto">
          <div class="mt-3">
            <label> Name</label>
            <input type="text" name="task_name" class="form-control" placeholder="name">
          </div>
          <div class="mt-3">
            <label> Description</label>
            <textarea name="task_description" class="form-control"
            ></textarea>
          </div>
          <div class="mt-3">
            <label> Deadline</label>
            <input type="date" name="task_deadline" class="form-control" placeholder="date">
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="modal-footer">
    <button type="submit" class="btn btn-primary">Add</button>
  </div>
</form>
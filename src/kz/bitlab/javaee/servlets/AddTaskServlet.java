package kz.bitlab.javaee.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.javaee.db.DBManager;
import kz.bitlab.javaee.db.Tasks;

import java.io.IOException;

@WebServlet(value = "/add-task")
public class AddTaskServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

        response.setContentType("text/html");
        String name = request.getParameter("task_name");
        String description = request.getParameter("task_description");
        String deadline = request.getParameter("task_deadline");

        Tasks tasks = new Tasks();
        tasks.setName(name);
        tasks.setDescription(description);
        tasks.setDeadlineDate(deadline);

        DBManager.addTask(tasks);

        response.sendRedirect("/");

    }

}

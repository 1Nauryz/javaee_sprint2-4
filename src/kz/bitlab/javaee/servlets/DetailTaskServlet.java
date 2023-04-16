package kz.bitlab.javaee.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.javaee.db.DBManager;
import kz.bitlab.javaee.db.Tasks;

import java.io.IOException;

@WebServlet(value = "/detail")
public class DetailTaskServlet extends HttpServlet  {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        long id = Long.parseLong(request.getParameter("task_id"));

        Tasks task = DBManager.getTask(id);

        request.setAttribute("task" , task);
        request.getRequestDispatcher("/detail.jsp").forward(request,response);
    }

}

package kz.bitlab.javaee.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.javaee.db.DBConnection;
import kz.bitlab.javaee.db.DBManager;
import kz.bitlab.javaee.db.Items;
import kz.bitlab.javaee.db.Tasks;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/home")
public class HomeServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        ArrayList<Items> item = DBConnection.getItems();

        request.setAttribute("items",item);
        request.getRequestDispatcher("/index.jsp").forward(request,response);
      }
}

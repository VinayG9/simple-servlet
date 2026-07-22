package com.myapp;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

/*import javax.servlet.*;
import javax.servlet.http.*;*/

public class Counter extends HttpServlet {
    int accesses = 0;

    public void doGet(HttpServletRequest request, HttpServletResponse response)
         throws IOException, ServletException
    {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        accesses++;
        out.print("Number of times this servlet has been accessed:" + accesses);
    }
} 
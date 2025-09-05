package com.example.demo11;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet("/ex6-2/survey")   // mapping cho ex6-2
public class SurveyServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        // Lấy tham số từ form
        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String heardFrom = request.getParameter("heardFrom");
        String updates = request.getParameter("updates");   // "Yes" hoặc null
        String contactVia = request.getParameter("contactVia");

        // Tạo đối tượng UserSurvey để chứa dữ liệu
        UserSurvey user = new UserSurvey(email, firstName, lastName,
                heardFrom, updates, contactVia);

        // Lưu vào session
        HttpSession session = request.getSession();
        session.setAttribute("surveyUser", user);

        // Sau khi submit thì forward sang thanks.jsp
        String url = "/ex6-2/thanks.jsp";
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        UserSurvey user = (UserSurvey) session.getAttribute("surveyUser");

        if (user == null) {
            user = new UserSurvey();
            session.setAttribute("surveyUser", user);
        }

        // Gửi user vào request scope (nếu muốn prefill dữ liệu trong form)
        request.setAttribute("surveyUser", user);

        // Forward tới form index.jsp
        String url = "/ex6-2/index.jsp";
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }
}

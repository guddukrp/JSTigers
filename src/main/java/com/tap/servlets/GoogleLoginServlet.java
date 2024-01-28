package com.tap.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class GoogleLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Redirect to Google Sign-In URL or perform authentication logic here
        String googleSignInUrl = "https://accounts.google.com/o/oauth2/auth" +
                "?client_id=402841354592-hlcaphp15fedmf1renk0dl083e0p64ri.apps.googleusercontent.com" +
                "&redirect_uri=http://localhost:8080/JSTigers/vendorList.jsp" +
                "&response_type=code" +
                "&scope=email%20profile";
        
        response.sendRedirect(googleSignInUrl);
        
        
        
    }
    
}


//HttpSession session = request.getSession(false);
//if (session != null) {
//    session.invalidate();
//}
//
//// Redirect to Google Sign-Out URL
//String googleSignOutUrl = "https://accounts.google.com/logout";
//
//// You can add a parameter to specify the redirect URL after Google sign-out
//// For example: googleSignOutUrl += "?continue=http://localhost:8080/yourLogoutRedirectPage.jsp";
//
//response.sendRedirect(googleSignOutUrl);
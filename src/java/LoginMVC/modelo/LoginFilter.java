/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LoginMVC.modelo;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author angel
 */
public class LoginFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpSession session;
        if(request instanceof HttpServletRequest) {
            session = ((HttpServletRequest)request).getSession();
            if (session.getAttribute("username")!=null) {
                chain.doFilter(request, response);
                ((HttpServletResponse)response).sendRedirect("loginExito.jsp");
            } else {
                ((HttpServletResponse)response).sendRedirect("error.jsp");
            }
        }
    }

    @Override
    public void destroy() {
    }
    
    
}

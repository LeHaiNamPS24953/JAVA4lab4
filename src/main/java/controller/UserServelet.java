package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;

@WebServlet("/user")
public class UserServelet extends HttpServlet{
	List<User> users = new ArrayList<User>();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if(users.isEmpty()) {
			users.add(new User("Username1", "Password1", true));
			users.add(new User("Username2", "Password2", false));
			users.add(new User("Username3", "Password3", true));
		}
		req.setAttribute("message", "Quản lý người sử dụng!");
		req.setAttribute("form", users.get(0));
		req.setAttribute("items", users);
		req.getRequestDispatcher("/views/user/index.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		boolean remember = (req.getParameter("remember") != null);
		users.add(new User(username, password, remember));

		req.setAttribute("message", "Quản lý người sử dụng!");
		if (users.get(users.size() - 1).isRemember()) {
			req.setAttribute("form", users.get(users.size() - 1));
		} else {
			req.setAttribute("form", new User());
		}
		req.setAttribute("items", users);
		req.getRequestDispatcher("/views/user/index.jsp").forward(req, resp);
	}
}

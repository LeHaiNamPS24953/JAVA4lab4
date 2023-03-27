package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Item;

@WebServlet("/item")
public class DetailServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Item item = new Item("This is a dog", "g26fe09a004acf30db7938d6ceb954a45ecce1325c8fe7d67d4fc2400b9875a492fe26d8943f11b865cacd80ed6756fa0_640.jpg", 500, 0.1);
		req.setAttribute("item", item);
		req.getRequestDispatcher("/views/item/detail.jsp").forward(req, resp);
	}
}

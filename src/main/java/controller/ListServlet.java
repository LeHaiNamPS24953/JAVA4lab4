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

import model.Item;

@WebServlet({"/list", "/detailItem"})
public class ListServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		List<Item> listItem = Arrays.asList(new Item[] {
			new Item("Dog 1", "g26fe09a004acf30db7938d6ceb954a45ecce1325c8fe7d67d4fc2400b9875a492fe26d8943f11b865cacd80ed6756fa0_640.jpg", 500, 0.1),
			new Item("Dog 2", "g28775bb6a552f0987baf2b50e7cdc1ec374c029fc86b77b64a85d451fb8fade1c40a812bf25e32788b2deee0b8c6c8c1_640.jpg", 700, 0.15),
			new Item("Dog 3", "g55e9922a6fed0a1241e3f727698432e8101105e21feadac426898693e200f73fb1672892ba68e86ba10af641f035bf5f_640.jpg", 900, 0.25),
			new Item("Dog 4", "g80a340f32a26166cec8122fa3222ac55d29bd93d45c30a30d83913a438fd6e7611ed64fc9a8cd6a2a318dd743d6bc7da_640.jpg", 55, 0.3),
			new Item("Dog 5", "g26fe09a004acf30db7938d6ceb954a45ecce1325c8fe7d67d4fc2400b9875a492fe26d8943f11b865cacd80ed6756fa0_640.jpg", 70, 0.5),
			new Item("Dog 6", "gb0d630707a6e7315eb3e953ce8ee70e22bf8590260d8535dfaec9518adf4abc7519b8491eab09f0040735cf33f161407_640.jpg", 200, 0.2)
		});
		
		
		if (uri.contains("list")) {
			req.setAttribute("listItem", listItem);
			req.getRequestDispatcher("/views/list/listItem.jsp").forward(req, resp);
		} else if (uri.contains("detailItem")) {
			int index = -1;
			for (int i = 0; i < listItem.size(); i++) {
				if (listItem.get(i).getName().equals(req.getParameter("idProduct")) ) {
					index = i;
					break;
				}
			}

			req.setAttribute("item",listItem.get(index));
			req.getRequestDispatcher("/views/list/detailItem.jsp").forward(req, resp);
		}
	}
}

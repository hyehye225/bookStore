package sss.ddd.fff;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class MainController {
	//상세보기 화면 
		@RequestMapping(value = "/appDetail", method = RequestMethod.GET)
		public String bookDetail(Locale locale , HttpServletRequest request, Model model) {
			System.out.println("appDetail");
			return "app/appDetail";
		}
		
		
		
		//리스트 화면
		@RequestMapping(value = "/appList", method = RequestMethod.GET)
		public String bookList(Locale locale , HttpServletRequest request, Model model) {
			System.out.println("appList");

			return "app/appList";
		}
}
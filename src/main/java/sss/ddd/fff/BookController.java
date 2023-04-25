package sss.ddd.fff;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class BookController {
	@Autowired
	BookService bookService;
	@RequestMapping(value="/create", method = RequestMethod.GET)
	public ModelAndView create() {
	    return new ModelAndView("book/create");
	}
	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public ModelAndView createPost(@RequestParam Map<String, Object> map) {
	    ModelAndView mav = new ModelAndView();

	    String bookId = this.bookService.create(map);
	    if (bookId == null) {
	        mav.setViewName("redirect:/create");
	    }else {
	        mav.setViewName("redirect:/detail?bookId=" + bookId); 
	    }  

	    return mav;
	}
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public ModelAndView detail(@RequestParam Map<String, Object> map) {
	    Map<String, Object> detailMap = this.bookService.detail(map);

	    ModelAndView mav = new ModelAndView();
	    mav.addObject("data", detailMap);
	    String bookId = map.get("bookId").toString();
	    mav.addObject("bookId", bookId);
	    mav.setViewName("/book/detail");
	    return mav;
	}
	@RequestMapping(value = "/update", method = RequestMethod.GET)  
	public ModelAndView update(@RequestParam Map<String, Object> map) {  
	Map<String, Object> detailMap = this.bookService.detail(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", detailMap);  
	mav.setViewName("/book/update");  
	return mav;  
	}  
	@RequestMapping(value = "update", method = RequestMethod.POST)  
	public ModelAndView updatePost(@RequestParam Map<String, Object> map) {  
	ModelAndView mav = new ModelAndView();  

	boolean isUpdateSuccess = this.bookService.edit(map);  
	if (isUpdateSuccess) {  
	String bookId = map.get("bookId").toString();  
	mav.setViewName("redirect:/detail?bookId=" + bookId);  
	}else {  
	mav = this.update(map);  
	}  

	return mav;  
	}  
	@RequestMapping(value = "/delete", method = RequestMethod.POST)  
	public ModelAndView deletePost(@RequestParam Map<String, Object> map) {  
	ModelAndView mav = new ModelAndView();  

	boolean isDeleteSuccess = this.bookService.remove(map);  
	if (isDeleteSuccess) {  
	mav.setViewName("redirect:/list");  
	}else {  
	String bookId = map.get("bookId").toString();  
	mav.setViewName("redirect:/detail?bookId=" + bookId);  
	}  

	return mav;  
	}  
	@RequestMapping(value = "list")  
	public ModelAndView list(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.bookService.list(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	if (map.containsKey("keyword")) {  
		mav.addObject("keyword", map.get("keyword"));  
		}  
	mav.setViewName("/book/list");  
	return mav;  
	}  
	@RequestMapping(value = "korea")  
	public ModelAndView korea(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.bookService.listKorea(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	if (map.containsKey("keyword")) {  
		mav.addObject("keyword", map.get("keyword"));  
		}  
	mav.setViewName("/book/korea/list");  
	return mav;  
	}  
	@RequestMapping(value = "japan")  
	public ModelAndView japan(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.bookService.listJapan(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	if (map.containsKey("keyword")) {  
		mav.addObject("keyword", map.get("keyword"));  
		}  
	mav.setViewName("/book/japan/list");  
	return mav;  
	}  
	@RequestMapping(value = "korea/romance")  
	public ModelAndView koreaRomance(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.bookService.listKoreaRomance(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	if (map.containsKey("keyword")) {  
		mav.addObject("keyword", map.get("keyword"));  
		}  
	mav.setViewName("/book/korea/romance/list");  
	return mav;  
	}  
	@RequestMapping(value = "korea/teenage")  
	public ModelAndView koreaTeenage(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.bookService.listKoreaTeenage(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	if (map.containsKey("keyword")) {  
		mav.addObject("keyword", map.get("keyword"));  
		}  
	mav.setViewName("/book/korea/teenage/list");  
	return mav;  
	}  
	@RequestMapping(value = "korea/adult")  
	public ModelAndView koreaAdult(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.bookService.listKoreaAdult(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	if (map.containsKey("keyword")) {  
		mav.addObject("keyword", map.get("keyword"));  
		}  
	mav.setViewName("/book/korea/adult/list");  
	return mav;  
	}  
	@RequestMapping(value = "korea/plan")  
	public ModelAndView koreaPlan(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.bookService.listKoreaPlan(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	if (map.containsKey("keyword")) {  
		mav.addObject("keyword", map.get("keyword"));  
		}  
	mav.setViewName("/book/korea/plan/list");  
	return mav;  
	}  
	@RequestMapping(value = "korea/magazine")  
	public ModelAndView koreaMagazine(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.bookService.listKoreaMagazine(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	if (map.containsKey("keyword")) {  
		mav.addObject("keyword", map.get("keyword"));  
		}  
	mav.setViewName("/book/korea/magazine/list");  
	return mav;  
	}  
	@RequestMapping(value = "japan/romance")  
	public ModelAndView japanRomance(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.bookService.listJapanRomance(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	if (map.containsKey("keyword")) {  
		mav.addObject("keyword", map.get("keyword"));  
		}  
	mav.setViewName("/book/japan/romance/list");  
	return mav;  
	}  
	@RequestMapping(value = "japan/teenage")  
	public ModelAndView japanTeenage(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.bookService.listJapanTeenage(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	if (map.containsKey("keyword")) {  
		mav.addObject("keyword", map.get("keyword"));  
		}  
	mav.setViewName("/book/japan/teenage/list");  
	return mav;  
	}  
	@RequestMapping(value = "japan/adult")  
	public ModelAndView japanAdult(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.bookService.listJapanAdult(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	if (map.containsKey("keyword")) {  
		mav.addObject("keyword", map.get("keyword"));  
		}  
	mav.setViewName("/book/japan/adult/list");  
	return mav;  
	}  
	@RequestMapping(value = "japan/plan")  
	public ModelAndView japanPlan(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.bookService.listJapanPlan(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	if (map.containsKey("keyword")) {  
		mav.addObject("keyword", map.get("keyword"));  
		}  
	mav.setViewName("/book/japan/plan/list");  
	return mav;  
	}  
	@RequestMapping(value = "usa/dc")  
	public ModelAndView usaDC(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.bookService.listUsaDC(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	if (map.containsKey("keyword")) {  
		mav.addObject("keyword", map.get("keyword"));  
		}  
	mav.setViewName("/book/usa/dc/list");  
	return mav;  
	}  
	@RequestMapping(value = "usa/comics")  
	public ModelAndView usaComics(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.bookService.listUsaComics(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	if (map.containsKey("keyword")) {  
		mav.addObject("keyword", map.get("keyword"));  
		}  
	mav.setViewName("/book/usa/comics/list");  
	return mav;  
	}  
	@RequestMapping(value = "usa/graphic")  
	public ModelAndView usaGraphic(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.bookService.listUsaGraphic(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	if (map.containsKey("keyword")) {  
		mav.addObject("keyword", map.get("keyword"));  
		}  
	mav.setViewName("/book/usa/graphic/list");  
	return mav;  
	}  
	
	@RequestMapping(value = "usa")  
	public ModelAndView usa(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.bookService.listUsa(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	if (map.containsKey("keyword")) {  
		mav.addObject("keyword", map.get("keyword"));  
		}  
	mav.setViewName("/book/usa/list");  
	return mav;  
	}  
	
	

	
}

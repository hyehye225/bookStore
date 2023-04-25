package sss.ddd.fff;

import java.util.List;
import java.util.Map;

public interface BookService {

	String create(Map<String, Object> map);

	Map<String, Object> detail(Map<String, Object> map);

	boolean edit(Map<String, Object> map);

	boolean remove(Map<String, Object> map);

	List<Map<String, Object>> list(Map<String, Object> map);
	
	List<Map<String, Object>> listKorea(Map<String, Object> map);
	List<Map<String, Object>> listJapan(Map<String, Object> map);
	List<Map<String, Object>> listUsa(Map<String, Object> map);
	
	List<Map<String, Object>> listKoreaRomance(Map<String, Object> map);
	List<Map<String, Object>> listKoreaTeenage(Map<String, Object> map);
	List<Map<String, Object>> listKoreaAdult(Map<String, Object> map);
	List<Map<String, Object>> listKoreaPlan(Map<String, Object> map);
	List<Map<String, Object>> listKoreaMagazine(Map<String, Object> map);
	
	List<Map<String, Object>> listJapanRomance(Map<String, Object> map);
	List<Map<String, Object>> listJapanTeenage(Map<String, Object> map);
	List<Map<String, Object>> listJapanAdult(Map<String, Object> map);
	List<Map<String, Object>> listJapanPlan(Map<String, Object> map);
	
	List<Map<String, Object>> listUsaDC(Map<String, Object> map);
	List<Map<String, Object>> listUsaComics(Map<String, Object> map);
	List<Map<String, Object>> listUsaGraphic(Map<String, Object> map);
	

}

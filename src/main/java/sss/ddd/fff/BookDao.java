package sss.ddd.fff;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BookDao {
 @Autowired
 SqlSessionTemplate sqlSessionTemplate;
 public int insert(Map<String, Object> map) {
	  return this.sqlSessionTemplate.insert("book.insert", map);
	}
 public Map<String, Object> selectDetail(Map<String, Object> map) {
	    return this.sqlSessionTemplate.selectOne("book.select_detail", map);
	}
 public int update(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.update("book.update", map);  
	 }  
 public int delete(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.delete("book.delete", map);  
	 }  
 public List<Map<String, Object>> selectList(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("book.select_list", map);  
	 }  
 public List<Map<String, Object>> selectKoreaList(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("book.select_korea_list", map);  
	 }  
 public List<Map<String, Object>> selectJapanList(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("book.select_japan_list", map);  
	 }  

 public List<Map<String, Object>> selectUsaList(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("book.select_usa_list", map);  
	 }  
 public List<Map<String, Object>> selectKoreaRomanceList(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("book.select_korea_romance_list", map);  
	 }  
 public List<Map<String, Object>> selectKoreaTeenageList(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("book.select_korea_teenage_list", map);  
	 } 
 public List<Map<String, Object>> selectKoreaAdultList(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("book.select_korea_adult_list", map);  
	 } 
 public List<Map<String, Object>> selectKoreaPlanList(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("book.select_korea_plan_list", map);  
	 } 
 public List<Map<String, Object>> selectKoreaMagazineList(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("book.select_korea_magazine_list", map);  
	 } 
 public List<Map<String, Object>> selectJapanRomanceList(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("book.select_japan_romance_list", map);  
	 } 
 public List<Map<String, Object>> selectJapanTeenageList(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("book.select_japan_teenage_list", map);  
	 } 
 public List<Map<String, Object>> selectJapanAdultList(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("book.select_japan_adult_list", map);  
	 } 
 public List<Map<String, Object>> selectJapanPlanList(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("book.select_japan_plan_list", map);  
	 } 
 public List<Map<String, Object>> selectUsaDCList(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("book.select_usa_dc_list", map);  
	 } 
 public List<Map<String, Object>> selectUsaComicsList(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("book.select_usa_comics_list", map);  
	 } 
 public List<Map<String, Object>> selectUsaGraphicList(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("book.select_usa_graphic_list", map);  
	 } 
 
}
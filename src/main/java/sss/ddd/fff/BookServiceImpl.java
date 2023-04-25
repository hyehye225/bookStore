package sss.ddd.fff;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookServiceImpl implements BookService {
 @Autowired
 BookDao bookDao;
 @Override
 public String create(Map<String, Object> map) {
     int affectRowCount = this.bookDao.insert(map);
     if (affectRowCount ==  1) {
         return map.get("book_id").toString();
     }
     return null;

 }
 @Override
 public Map<String, Object> detail(Map<String, Object> map){
     return this.bookDao.selectDetail(map);
 }
 @Override  
 public boolean edit(Map<String, Object> map) {  
 int affectRowCount = this.bookDao.update(map);  
 return affectRowCount == 1;  

 }  
 @Override  
 public boolean remove(Map<String, Object> map) {  
 int affectRowCount = this.bookDao.delete(map);  
 return affectRowCount == 1;  

 }  
 @Override  
 public List<Map<String, Object>> list(Map<String, Object> map){  
 return this.bookDao.selectList(map);  
 }  
 @Override  
 public List<Map<String, Object>> listKorea(Map<String, Object> map){  
 return this.bookDao.selectKoreaList(map);  
 }  
 @Override  
 public List<Map<String, Object>> listJapan(Map<String, Object> map){  
 return this.bookDao.selectJapanList(map);  
 }  
 @Override  
 public List<Map<String, Object>> listUsa(Map<String, Object> map){  
 return this.bookDao.selectUsaList(map);  
 }  
 @Override  
 public List<Map<String, Object>> listKoreaRomance(Map<String, Object> map){  
 return this.bookDao.selectKoreaRomanceList(map);  
 }  
 @Override  
 public List<Map<String, Object>> listKoreaTeenage(Map<String, Object> map){  
 return this.bookDao.selectKoreaTeenageList(map);  
 }  
 @Override  
 public List<Map<String, Object>> listKoreaAdult(Map<String, Object> map){  
 return this.bookDao.selectKoreaAdultList(map);  
 }  
 @Override  
 public List<Map<String, Object>> listKoreaMagazine(Map<String, Object> map){  
 return this.bookDao.selectKoreaMagazineList(map);  
 } 
 @Override  
 public List<Map<String, Object>> listKoreaPlan(Map<String, Object> map){  
 return this.bookDao.selectKoreaPlanList(map);  
 }  
 
 @Override  
 public List<Map<String, Object>> listJapanRomance(Map<String, Object> map){  
 return this.bookDao.selectJapanRomanceList(map);  
 }  
 @Override  
 public List<Map<String, Object>> listJapanTeenage(Map<String, Object> map){  
 return this.bookDao.selectJapanTeenageList(map);  
 }  
 @Override  
 public List<Map<String, Object>> listJapanAdult(Map<String, Object> map){  
 return this.bookDao.selectJapanAdultList(map);  
 }  
 @Override  
 public List<Map<String, Object>> listJapanPlan(Map<String, Object> map){  
 return this.bookDao.selectJapanPlanList(map);  
 }  
 @Override  
 public List<Map<String, Object>> listUsaDC(Map<String, Object> map){  
 return this.bookDao.selectUsaDCList(map);  
 }  
 @Override  
 public List<Map<String, Object>> listUsaComics(Map<String, Object> map){  
 return this.bookDao.selectUsaComicsList(map);  
 }  
 @Override  
 public List<Map<String, Object>> listUsaGraphic(Map<String, Object> map){  
 return this.bookDao.selectUsaGraphicList(map);  
 }  

}
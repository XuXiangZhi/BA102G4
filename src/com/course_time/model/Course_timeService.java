package com.course_time.model;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import com.course_time.model.Course_timeVO;
import com.course.model.CourseVO;

public class Course_timeService{
  private Course_timeDAO_interface dao;
  
  public Course_timeService() {
    dao = new Course_timeDAO();
  }
  
  public Course_timeVO addCourse_time(String crs_no, String p_no, Date crs_date, Date deadline, Integer crs_time, String price, String limit, String class_num, int status, CourseVO courseVO){
    Course_timeVO course_timeVO = new Course_timeVO();
    course_timeVO.setCrs_no(crs_no);
    course_timeVO.setP_no(p_no);
    course_timeVO.setCrs_date(crs_date);
    course_timeVO.setDeadline(deadline);
    course_timeVO.setCrs_time(crs_time);
    course_timeVO.setPrice(price);
    course_timeVO.setLimit(limit);
    course_timeVO.setClass_num(class_num);
    course_timeVO.setStatus(status);
    course_timeVO.setCourseVO(courseVO);
    dao.insert(course_timeVO);
    
    return course_timeVO;
  }
  
  public Course_timeVO updateCourse_time(String ct_no, String p_no, Date crs_date, Date deadline, Integer crs_time, String price){
    Course_timeVO course_timeVO = new Course_timeVO();
    course_timeVO.setCt_no(ct_no);
    course_timeVO.setP_no(p_no);
    course_timeVO.setCrs_date(crs_date);
    course_timeVO.setDeadline(deadline);
    course_timeVO.setCrs_time(crs_time);
    course_timeVO.setPrice(price);
    dao.update(course_timeVO);
    
    return course_timeVO;
  }
  
  public void deleteCourse_time(String ct_no){
    dao.delete(ct_no);
  }
  
  public Course_timeVO getOneCourse_time(String crs_no){
    return dao.findByPK(crs_no);
  }
  
  public List<Course_timeVO> getAll(String c_acc){
    return dao.getAll(c_acc);
  }
  
  public List<Course_timeVO> getAllOpen(String c_acc){
	    return dao.getAllOpen(c_acc);
  }
  
  public List<Course_timeVO> getAllRecord(String c_acc){
	    return dao.getAllRecord(c_acc);
  }
  
  public List<Course_timeVO> getAllCrsList(){
	    return dao.getAllCrsList();
  }
  
  public List<Course_timeVO> getAllCrsListSelect(String select){
	    return dao.getAllCrsListSelect(select);
  }
  
  public List<Course_timeVO> getAllByCrs_no(String crs_no){
	    return dao.getAllByCrs_no(crs_no);
  }
  
  public List<Course_timeVO> getAllBeforeList(){
	    return dao.getAllBeforeList();
  }
  
  public void open(String ct_no){
	    dao.open(ct_no);
  }
  public  List<Course_timeVO> getClass(Map<String,String[]>map){
	  return dao.getClass(map);
  }

  public  List<Course_timeVO> getItem(String category , String crs_date , String p_name){
	  
	  return dao.getItem(category, crs_date, p_name);
  }

}

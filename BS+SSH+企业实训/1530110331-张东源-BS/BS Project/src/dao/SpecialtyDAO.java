package dao;

import java.util.ArrayList;

import vo.Course;
import vo.Specialty;

public interface SpecialtyDAO {
	//查询
	//public ArrayList<Specialty> findSpecialty(Specialty Specialty) throws Exception;
	public ArrayList<Specialty> findSpecialty(Specialty specialty) throws Exception;
	
	 // 查询全部专业信息
	public ArrayList findAllSpecialty(Specialty specialty) throws Exception;

	// 删除专业信息
	public boolean doDelete(int specialtyid) throws Exception;

	// 根据指定Specialtyid查询专业信息
	public Specialty findSpecialtyById(int specialtyid) throws Exception;

	// 修改专业信息
	public boolean doUpdate(Specialty specialty) throws Exception;

	// 添加专业信息
	public boolean doCreate(Specialty specialty) throws Exception;
	 

}

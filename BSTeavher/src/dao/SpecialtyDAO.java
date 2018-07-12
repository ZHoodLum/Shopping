package dao;

import java.util.ArrayList;

import vo.Course;
import vo.Specialty;

public interface SpecialtyDAO {
	//��ѯ
	//public ArrayList<Specialty> findSpecialty(Specialty Specialty) throws Exception;
	public ArrayList<Specialty> findSpecialty(Specialty specialty) throws Exception;
	
	 // ��ѯȫ��רҵ��Ϣ
	public ArrayList findAllSpecialty(Specialty specialty) throws Exception;

	// ɾ��רҵ��Ϣ
	public boolean doDelete(int specialtyid) throws Exception;

	// ����ָ��Specialtyid��ѯרҵ��Ϣ
	public Specialty findSpecialtyById(int specialtyid) throws Exception;

	// �޸�רҵ��Ϣ
	public boolean doUpdate(Specialty specialty) throws Exception;

	// ���רҵ��Ϣ
	public boolean doCreate(Specialty specialty) throws Exception;
	 

}

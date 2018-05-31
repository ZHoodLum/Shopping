package dao;

import java.util.ArrayList;

import factory.DAOFactory;
import vo.Teacher;


public interface TeacherDAO {
	//��ѯȫ������
		public ArrayList findAllTeacher(Teacher teacher)throws Exception;
		//ɾ������
		public boolean doDelete(int teacherid)throws Exception;		
		//����ָ��id��ѯ
		public Teacher findTeacherById(int teacherid)throws Exception;
		//�޸ĵ���
		public boolean doUpdate(Teacher teacher)throws Exception;
		//��ӵ���
		public boolean doCreate(Teacher teacher)throws Exception;
}

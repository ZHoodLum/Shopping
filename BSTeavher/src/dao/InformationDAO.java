package dao;

import java.util.ArrayList;
import vo.Information;

public interface InformationDAO {

	// ��ѯȫ��ͼ������
	public ArrayList<Information> findAllInformation(Information information) throws Exception;	
	// ���ͼ������
	public boolean doCreate(Information information) throws Exception;
	//�޸�
	// ����id�޸���Ϣ
	public Information findInformationById(int courseid) throws Exception;
	// ����ָ��id��ѯͼ��������Ϣ
	public boolean doUpdate(Information information) throws Exception;
}

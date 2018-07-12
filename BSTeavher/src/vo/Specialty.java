package vo;

public class Specialty {
	//专业编号
	private int specialtyid;

	public int getSpecialtyid() {
		return specialtyid;
	}
	public void setSpecialtyid(int specialtyid) {
		this.specialtyid = specialtyid;
	}
	//专业名称
	public String getSpecialtyname() {
		return specialtyname;
	}
	public void setSpecialtyname(String specialtyname) {
		this.specialtyname = specialtyname;
	}
	private String specialtyname;
	
	//学院
	private String specialtycollege;

	public String getSpecialtycollege() {
		return specialtycollege;
	}
	public void setSpecialtycollege(String specialtycollege) {
		this.specialtycollege = specialtycollege;
	}

}

package in.tourstravels.dao;

import java.util.ArrayList;

import in.tourstravels.dto.guide;




public interface GuideDAO {
	
	public boolean insertGuide(guide g);
	public ArrayList<guide> getallGuidesinfo();
	public guide getguidesinfo(int gid);
	public boolean updateGuide(guide g);
	public boolean deleteGuide(int gid);
	
	
	

}

package in.tourstravels.dao;

import java.util.ArrayList;

import in.tourstravels.dto.packages;

import in.tourstravels.dto.packages;

import in.tourstravels.dto.packages;

public interface PackageDAO {
	
	public boolean insertPackage(packages t);
	public boolean updatePackage(packages t);
	  public boolean deletePackage(int packageId);
	public ArrayList<packages> getallPackagesinfo();
	public packages getTourPackage(int packageId);
	
}

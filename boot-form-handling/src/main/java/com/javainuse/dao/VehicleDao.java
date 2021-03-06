package com.javainuse.dao;

import java.util.List;

import com.javainuse.model.Vehicle;

public interface VehicleDao 
{
	void insertVehicle(Vehicle cus);
	void insertVehicles(List<Vehicle> vehicles);
	List<Vehicle> getAllVehicles();
    List<Vehicle> getbyVNumber(String Number);
	List<Vehicle> getbyRTOCODE(String RTO_Code);
	List<Vehicle> getbyRTOCount(int RTO_Count);
	List<Vehicle> getbyStatusCode(String StatusCode);
	List<Vehicle> getbyVType(String Type);
}

package com.javainuse.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javainuse.dao.VehicleDao;
import com.javainuse.model.Vehicle;
import com.javainuse.service.VehicleService;

@Service
public class VehicleServiceImpl implements VehicleService {

	@Autowired
	VehicleDao vehicleDao;

	@Override
	public void insertVehicle(Vehicle vehicle) {
		vehicleDao.insertVehicle(vehicle);
	}

	@Override
	public void insertVehicles(List<Vehicle> vehicles) {
		vehicleDao.insertVehicles(vehicles);
	}

	@Override
	public List<Vehicle> getAllVehicles() {
		return vehicleDao.getAllVehicles();
	}
	
	@Override
	public List<Vehicle> getbyVNumber(String Number)
	{
		return vehicleDao.getbyVNumber(Number);

	}
	
	@Override
	public List<Vehicle> getbyVType(String Type)
	{
		return vehicleDao.getbyVType(Type);

	}
	
	@Override
	public List<Vehicle> getbyRTOCODE(String RTO_Code)
	{
		return vehicleDao.getbyRTOCODE(RTO_Code);

	}
	
	@Override
	public List<Vehicle> getbyRTOCount(int RTO_Count)
	{
		return vehicleDao.getbyRTOCount(RTO_Count);

	}
	
	@Override
	public List<Vehicle> getbyStatusCode(String StatusCode)
	{
		return vehicleDao.getbyStatusCode(StatusCode);

	}



}
package com.javainuse.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.javainuse.model.Vehicle;
import com.javainuse.service.VehicleService;

@Controller
public class VehicleController {

	@Autowired
	VehicleService vehicleService;

	@RequestMapping("/welcome")
	public ModelAndView firstPage() {
		return new ModelAndView("welcome");
	}
	
	@RequestMapping("/search")
	public ModelAndView searchPage() {
		return new ModelAndView("search");
	}
	

	@RequestMapping(value = "/addVehicle", method = RequestMethod.GET)
	public ModelAndView show() {
		return new ModelAndView("addVehicle", "v", new Vehicle());
	}

	@RequestMapping(value = "/addVehicle", method = RequestMethod.POST)
	public ModelAndView processRequest(@ModelAttribute("v") Vehicle v) {
		
		vehicleService.insertVehicle(v);
		List<Vehicle> vehicles = vehicleService.getAllVehicles();
		ModelAndView model = new ModelAndView("getVehicle");
		model.addObject("vehicles", vehicles);
		return model;
	}

	@RequestMapping("/getVehicle")
	public ModelAndView getVehicles() {
		List<Vehicle> vehicles = vehicleService.getAllVehicles();
		ModelAndView model = new ModelAndView("getVehicle");
		model.addObject("vehicles", vehicles);
		return model;
	}
	
	@RequestMapping(value= "/getbyVNumber", method = RequestMethod.GET)

	public ModelAndView getbyVNumber()

	{
		return new ModelAndView("getbyVNumber");
	}

	
	@RequestMapping(value= "/getbyVNumber", method = RequestMethod.POST)
	public ModelAndView getbyVNumber(@RequestParam("Number") String Number)
	{

		List<Vehicle> vehicles = vehicleService.getbyVNumber(Number);
		ModelAndView model = new ModelAndView("putbyVNumber");
		model.addObject("vehicles", vehicles);
		return model;

	}

	@RequestMapping(value= "/getbyRTOCODE", method = RequestMethod.GET)

	public ModelAndView getbyRTOCODE()

	{
		return new ModelAndView("getbyRTOCODE");
	}

	
	@RequestMapping(value= "/getbyRTOCODE", method = RequestMethod.POST)
	public ModelAndView getbyRTOCODE(@RequestParam("RTO_Code") String RTO_Code)
	{

		List<Vehicle> vehicles = vehicleService.getbyRTOCODE(RTO_Code);
		ModelAndView model = new ModelAndView("putbyRTOCODE");
		model.addObject("vehicles", vehicles);
		return model;

	}
	@RequestMapping(value= "/getbyRTOCount", method = RequestMethod.GET)

	public ModelAndView getbyRTOCount()

	{
		return new ModelAndView("getbyRTOCount");
	}

	
	@RequestMapping(value= "/getbyRTOCount", method = RequestMethod.POST)
	public ModelAndView getbyRTOCount(@RequestParam("RTO_Count") int RTO_Count)
	{

		List<Vehicle> vehicles= vehicleService.getbyRTOCount(RTO_Count);
		ModelAndView model = new ModelAndView("putbyRTOCount");
		model.addObject("vehicles", vehicles);
		return model;

	}
	@RequestMapping(value= "/getbyStatusCode", method = RequestMethod.GET)

	public ModelAndView getbyStatusCode()

	{
		return new ModelAndView("getbyStatusCode");
	}

	
	@RequestMapping(value= "/getbyStatusCode", method = RequestMethod.POST)
	public ModelAndView getbyStatusCode(@RequestParam("StatusCode") String StatusCode)
	{

		List<Vehicle> vehicles = vehicleService.getbyStatusCode(StatusCode);
		ModelAndView model = new ModelAndView("putbyStatusCode");
		model.addObject("vehicles", vehicles);
		return model;

	}
	
	@RequestMapping(value= "/getbyVType", method = RequestMethod.GET)

	public ModelAndView getbyVType()

	{
		return new ModelAndView("getbyVType");
	}

	
	@RequestMapping(value= "/getbyVType", method = RequestMethod.POST)
	public ModelAndView getbyVType(@RequestParam("VType") String VType)
	{

		List<Vehicle> vehicles = vehicleService.getbyVType(VType);
		ModelAndView model = new ModelAndView("putbyVType");
		model.addObject("vehicles", vehicles);
		return model;

	}

}

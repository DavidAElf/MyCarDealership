package com.claim.project.customer;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

public class Car {

	private int id;
	private int carYear;
	private String carMake;
	private String carModel;
	private String carVin;
	private String carTrim;
	private double carMileage;
	private String manufacturer;
	private String carDescription;
	private int price;
	private LocalDate dateOnMarket;
	private LocalDate purchaseDate;
	private long daysOnMarket;

	public Car() {
		super();
	}

	public Car(int id, int carYear, String carMake, String carModel, String carVin, String carTrim, double carMileage,
			String manufacturer, String carDescription, int price, LocalDate dateOnMarket, long daysOnMarket) {
		super();
		this.id = id;
		this.carYear = carYear;
		this.carMake = carMake;
		this.carModel = carModel;
		this.carVin = carVin;
		this.carTrim = carTrim;
		this.carMileage = carMileage;
		this.manufacturer = manufacturer;
		this.carDescription = carDescription;
		this.price = price;
		this.dateOnMarket = dateOnMarket;
		this.daysOnMarket = daysOnMarket;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCarYear() {
		return carYear;
	}

	public void setCarYear(int carYear) {
		this.carYear = carYear;
	}

	public String getCarMake() {
		return carMake;
	}

	public void setCarMake(String carMake) {
		this.carMake = carMake;
	}

	public String getCarModel() {
		return carModel;
	}

	public void setCarModel(String carModel) {
		this.carModel = carModel;
	}

	public String getCarVin() {
		return carVin;
	}

	public void setCarVin(String carVin) {
		this.carVin = carVin;
	}

	public String getCarTrim() {
		return carTrim;
	}

	public void setCarTrim(String carTrim) {
		this.carTrim = carTrim;
	}

	public double getCarMileage() {
		return carMileage;
	}

	public void setCarMileage(double carMileage) {
		this.carMileage = carMileage;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public String getCarDescription() {
		return carDescription;
	}

	public void setCarDescription(String carDescription) {
		this.carDescription = carDescription;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public LocalDate getDateOnMarket() {
		return dateOnMarket;
	}

	public void setDateOnMarket(LocalDate dateOnMarket) {
		this.dateOnMarket = dateOnMarket;
	}

	public LocalDate getPurchaseDate() {
		return purchaseDate;
	}

	public void setPurchaseDate(LocalDate purchaseDate) {
		this.purchaseDate = purchaseDate;
	}

	public long getDaysOnMarket() {
		return daysOnMarket;
	}

	public void setDaysOnMarket(long daysOnMarket) {
		this.daysOnMarket = daysOnMarket;
	}

}

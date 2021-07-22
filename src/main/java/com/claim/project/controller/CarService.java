package com.claim.project.controller;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.claim.project.customer.Car;

@Service
public class CarService {
		
	static List<Car> newSale = new LinkedList<>();
	static List<Car> sold = new LinkedList<>(); 

	static {

		newSale.add(new Car(1, 2018, "Kia", "Soul", "908231H3G38", "EX", 38000, "Car D's Place", "Ugly Car",
				29000, LocalDate.of(2021, 6, 30), 18));
		newSale.add(new Car(2, 2017, "Dodge", "Caravan", "908231H3G38", "EX", 39000, "Car D's Place", "Ugly Car",
				28000, LocalDate.of(2021, 5, 29), 50));
		newSale.add(new Car(3, 2016, "Dodge", "Caravan", "908231H3G38", "EX", 40000, "Car D's Place", "Ugly Car",
				27000, LocalDate.of(2021, 5, 15), 64));
		newSale.add(new Car(4, 2015, "Kia", "Soul", "908231H3G38", "EX", 41000, "Car D's Place", "Ugly Car",
				26000, LocalDate.of(2021, 5, 11), 68));
		newSale.add(new Car(5, 2014, "Kia", "Soul", "908231H3G38", "EX", 42000, "Car D's Place", "Ugly Car",
				25000, LocalDate.of(2021, 5, 5), 74));
		newSale.add(new Car(6, 2013, "Kia", "Soul", "908231H3G38", "EX", 43000, "Car D's Place", "Ugly Car",
				24000, LocalDate.of(2021, 4, 29), 80));
		newSale.add(new Car(7, 2012, "Kia", "Soul", "908231H3G38", "EX", 44000, "Car D's Place", "Ugly Car",
				23000, LocalDate.of(2021, 4, 18), 91));
		newSale.add(new Car(8, 2011, "Pontic", "Montana", "908231H3G38", "EX", 45000, "Car D's Place", "Ugly Car",
				22000, LocalDate.of(2021, 3, 21), 119));
		newSale.add(new Car(9, 2010, "Kia", "Soul", "908231H3G38", "EX", 46000, "Car D's Place", "Ugly Car",
				21000, LocalDate.of(2021, 3, 10), 130));
		newSale.add(new Car(10, 2009, "Dodge", "Caravan", "908231H3G38", "EX", 47000, "Car D's Place", "Ugly Car",
				20000, LocalDate.of(2021, 2, 16), 152));
		newSale.add(new Car(11, 2008, "Kia", "Soul", "908231H3G38", "EX", 48000, "Car D's Place", "Ugly Car",
				19000, LocalDate.of(2021, 1, 27), 172));

		sold.add(new Car(11, 2013, "Kia", "Soul", "892347FK234", "EX", 25000, "Car D's Place", "Ugly Car",
				25000, LocalDate.of(2020, 3, 5), 123));
		sold.add(new Car(11, 2008, "Kia", "Soul", "098234KJB23", "EX", 70000, "Car D's Place", "Ugly Car",
				18000, LocalDate.of(2020, 7, 22), 101));
		sold.add(new Car(11, 2010, "Kia", "Soul", "0834KJB3424", "EX", 40000, "Car D's Place", "Ugly Car",
				22000, LocalDate.of(2019, 4, 13), 140));
	}

	public void saveCar(Car newCar) {
		newCar.setDateOnMarket(LocalDate.now());
		newCar.setDaysOnMarket(ChronoUnit.DAYS.between(newCar.getDateOnMarket(), LocalDate.now()));
		newSale.add(newCar);
	}

	public List<Car> findAllForSale() {
		return newSale;
	}
	
	public List<Car> findAllSold() {
		return sold;
	}

//------------------------------Find By-----------------------------------------

	public Car findByMake(String carMake) {

		for (int i = 0; i <= newSale.size(); i++) {
			Car make = newSale.get(i);
			if (make.getCarMake().equalsIgnoreCase(carMake)) {
				return make;
			}
		}
		return null;
	}

	public Car findByModel(String carModel) {

		for (int i = 0; i <= newSale.size(); i++) {
			Car model = newSale.get(i);
			if (model.getCarModel().equalsIgnoreCase(carModel)) {
				return model;
			}
		}
		return null;
	}

	public List<Car> searchMakeAndModel(String makeOrModel) {
		List<Car> cars = new LinkedList<Car>();
		for (Car a : newSale) {
			if (a.getCarMake().equalsIgnoreCase(makeOrModel) || a.getCarModel().equalsIgnoreCase(makeOrModel)) {
				cars.add(a);
			}
		}
		return cars;
	}
	

//------------------------------------------------------------------------------
	
//	public double discountCar() {
//		for (int i = 0; i < newSale.size(); i++) {
//			Car discountedCar = newSale.get(i);
//			if (ChronoUnit.DAYS.between(discountedCar.getDateOnMarket(), LocalDate.now()) > 120) {
//				double discount = discountedCar.getPrice() * .1;
//				double finalPrice = discountedCar.getPrice() - discount;
//				return finalPrice;
//			}
//		}
//		return 0;
//	}
	
}

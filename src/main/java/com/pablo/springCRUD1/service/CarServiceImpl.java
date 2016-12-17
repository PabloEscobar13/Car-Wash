package com.pablo.springCRUD1.service;

import com.pablo.springCRUD1.dao.CarDAO;
import com.pablo.springCRUD1.Entity.Car;
import com.pablo.springCRUD1.service.washLogic.CostCounter;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Pablo on 17.08.2016.
 */
@Service
public class CarServiceImpl implements CarService {

    private CarDAO carDAO;
    private CostCounter costCounter = new CostCounter();

    public void setCarDAO(CarDAO carDAO) {
        this.carDAO = carDAO;
    }

    @Override
    @Transactional
    public void addCar(Car car) {

        car.setCost(costCounter.getCarCost(car));
        car.setStation(costCounter.getStation(car));

        this.carDAO.addCar(car);
    }

    @Override
    @Transactional
    public void updateCar(Car car) {

        car.setCost(costCounter.getCarCost(car));
        car.setStation(costCounter.getStation(car));

        this.carDAO.updateCar(car);
    }

    @Override
    @Transactional
    public List<Car> listCars(int clientID) {

        return this.carDAO.listCars(clientID);
    }

    @Override
    @Transactional
    public Car getCarById(int id) {
        return this.carDAO.getCarById(id);
    }

    @Override
    @Transactional
    public void removeCar(int id) {
        carDAO.removeCar(id);
    }
}

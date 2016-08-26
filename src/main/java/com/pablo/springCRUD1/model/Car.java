package com.pablo.springCRUD1.model;


import javax.persistence.*;

/**
 * Created by Pablo on 30.07.2016.
 */
@Entity
@Table(name = "Cars")
public class Car {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;

    @OneToOne(mappedBy = "car")
    @JoinColumn(name = "Client ID")
    private Client client;

    @Column(name = "Model")
    private String model;

    @Column(name = "CarWidth")
    private double width;

    @Column(name = "CarHigh")
    private double high;

    @Column(name = "Waxing")
    private boolean waxing = false;

    public int getId() {
        return id;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public double getWidth() {
        return width;
    }

    public void setWidth(double width) {
        this.width = width;
    }

    public double getHigh() {
        return high;
    }

    public void setHigh(double high) {
        this.high = high;
    }

    public boolean isWaxing() {
        return waxing;
    }

    public void setWaxing(boolean waxing) {
        this.waxing = waxing;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }
}

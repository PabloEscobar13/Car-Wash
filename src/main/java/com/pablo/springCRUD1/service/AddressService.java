package com.pablo.springCRUD1.service;

import com.pablo.springCRUD1.Entity.Address;

import java.util.List;

/**
 * Created by Pablo on 30.08.2016.
 */
public interface AddressService {
    void addAddress(Address a);
    void updateAddress(Address a);
    List<Address> listAddress();
    Address getAddressById(int id);
    void removeAddress(int id);
}

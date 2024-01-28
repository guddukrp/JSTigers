package com.tap.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class VendorService {

	Connection connection = null;
	PreparedStatement preparedStatement = null;

	public void createVendor(Vendor vendor) {
		try {

			String sql = "INSERT INTO vendors (vendor_name, bank_account_no, bank_name, address_line1, address_line2, city, country, zip_code) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

			connection = CP.createC();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, vendor.getVendorName());
			preparedStatement.setString(2, vendor.getBankAccountNo());
			preparedStatement.setString(3, vendor.getBankName());
			preparedStatement.setString(4, vendor.getAddressLine1());
			preparedStatement.setString(5, vendor.getAddressLine2());
			preparedStatement.setString(6, vendor.getCity());
			preparedStatement.setString(7, vendor.getCountry());
			preparedStatement.setString(8, vendor.getZipCode());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {

			e.printStackTrace();
		}

	}

	public void updateVendor(Vendor vendor) {

		String sql = "UPDATE vendors SET vendor_name=?, bank_account_no=?, bank_name=?, address_line1=?, address_line2=?, city=?, country=?, zip_code=? WHERE vendor_id=?";
		try {
			connection = CP.createC();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, vendor.getVendorName());
			preparedStatement.setString(2, vendor.getBankAccountNo());
			preparedStatement.setString(3, vendor.getBankName());
			preparedStatement.setString(4, vendor.getAddressLine1());
			preparedStatement.setString(5, vendor.getAddressLine2());
			preparedStatement.setString(6, vendor.getCity());
			preparedStatement.setString(7, vendor.getCountry());
			preparedStatement.setString(8, vendor.getZipCode());
			preparedStatement.setInt(9, (int) vendor.getVendorId());
			preparedStatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void deleteVendor(int vendorId) {
		String sql = "DELETE FROM vendors WHERE vendor_id=?";
		try {
			connection = CP.createC();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, vendorId);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public Vendor getVendor(int vendorId) {

		String sql = "SELECT * FROM vendors WHERE vendor_id=?";
		try {
			connection = CP.createC();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, vendorId);
			ResultSet resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				return mapResult(resultSet);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;

	}

	public ArrayList<Vendor> getAllVendors() {
		ArrayList<Vendor> vendors = new ArrayList<>();
		String sql = "SELECT * FROM vendors";

		try {
			this.connection = CP.createC();
			preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				vendors.add(mapResult(resultSet));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vendors;

	}

	private Vendor mapResult(ResultSet resultSet) throws SQLException {
		Vendor vendor = new Vendor();
		vendor.setVendorId(resultSet.getInt("vendor_id"));
		vendor.setVendorName(resultSet.getString("vendor_name"));
		vendor.setBankAccountNo(resultSet.getString("bank_account_no"));
		vendor.setBankName(resultSet.getString("bank_name"));
		vendor.setAddressLine1(resultSet.getString("address_line1"));
		vendor.setAddressLine2(resultSet.getString("address_line2"));
		vendor.setCity(resultSet.getString("city"));
		vendor.setCountry(resultSet.getString("country"));
		vendor.setZipCode(resultSet.getString("zip_code"));
		return vendor;
	}
}

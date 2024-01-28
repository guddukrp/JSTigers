package com.tap.servlets;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tap.model.Vendor;
import com.tap.model.VendorService;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tap.model.Vendor;
import com.tap.model.VendorService;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.tap.model.VendorService;

@WebServlet("/vendor")
public class VendorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action != null && !action.isEmpty()) {
            if (action.equals("delete")) {
            	
                int vendorId = Integer.parseInt(request.getParameter("vendorId"));
                VendorService vendorService = new VendorService();
                vendorService.deleteVendor(vendorId); 
                response.sendRedirect("vendorList.jsp");
            }
        }
   
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String action = request.getParameter("action");

        if (action != null && !action.isEmpty()) {
            if (action.equals("update")) {
            	
                int vendorId = Integer.parseInt(request.getParameter("vendorId"));
                String vendorName = request.getParameter("vendorName");
                String bankAccountNo = request.getParameter("accountNo"); // Changed from bankAccountNo to accountNo
                String bankName = request.getParameter("bankName");

//                Vendor updatedVendor = new Vendor(vendorId, vendorName, bankAccountNo, bankName);

                VendorService vendorService = new VendorService();
                Vendor vendor = vendorService.getVendor(vendorId);
                vendor.setVendorName(vendorName);
                vendor.setBankAccountNo(bankAccountNo);
                vendor.setBankName(bankName);
                
                vendorService.updateVendor(vendor); 

                response.sendRedirect("vendorList.jsp");
               
                
                 
            }else if (action.equals("Create Vendor")) {
                
                String vendorName = request.getParameter("vendorName");
                String bankAccountNo = request.getParameter("bankAccountNo");
                String bankName = request.getParameter("bankName");
                String addressLine1 = request.getParameter("addressLine1");
                String addressLine2 = request.getParameter("addressLine2");
                String city = request.getParameter("city");
                String country = request.getParameter("country");
                String zipCode = request.getParameter("zipCode");

                Vendor newVendor = new Vendor(vendorName, bankAccountNo, bankName, addressLine1, addressLine2, city, country, zipCode);
                
                VendorService vendorService = new VendorService();
                vendorService.createVendor(newVendor); 
                
                response.sendRedirect("vendorList.jsp");
               
            }else {
            	response.sendRedirect("vendorList.jsp");
            }
        }
            
    }
    
}



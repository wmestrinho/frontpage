package com.example.controller;


import com.example.data.NewOrder;
import com.example.dto.OrderForm;
import com.example.repository.NewOrderRepo;
import com.example.service.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

import static org.springframework.data.jpa.domain.AbstractPersistable_.id;

/**
 * Created by WagnerMestrinho on 4/12/17.
 */
@RestController
public class OrderController {

    @Autowired
    private EmailService emailService;

    @Autowired
    NewOrderRepo newOrderRepo;





   /* @RequestMapping(path = "/savingOrder", method = RequestMethod.POST,
            consumes = MediaType.ALL_VALUE)
    public NewOrder createOrder(Model dataToJsp, OrderForm PictureRef) throws Exception {

       /*String saveToDB = null;
        // only do copy work if local file was uploaded
        if (!PictureRef.getSketch().getOriginalFilename().isEmpty()) {
            String uploadedFileName = System.currentTimeMillis() + "_" + PictureRef.getSketch().getOriginalFilename();
            // copy from input stream to computer disk
            Files.copy(PictureRef.getSketch().getInputStream(), Paths.get(uploadLocation + uploadedFileName));
            saveToDB = new NewOrder(PictureRef, uploadedFileName);
        }
        newOrderRepo.save(saveToDB);
        // if successful save, add message

        public NewOrder loadUserImage(@PathVariable long id, @RequestParam MultipartFile sketch) throws Exception {
            String uploadedFileName = null;
            NewOrder carUser = newOrderRepo.findOne(id);
            if (carUser != null) {
                if (!sketch.isEmpty()) {
                    try {
                        uploadedFileName = System.currentTimeMillis() + "_" + sketch.getOriginalFilename();
                        Files.copy(sketch.getInputStream(), Paths.get(uploadLocation + uploadedFileName));
                        carUser.setPicture(uploadedFileName);
                        newOrderRepo.save(carUser);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        @RequestMapping (path = "/savingOrder", method = RequestMethod.POST)
    public String orderSucess(){

            NewOrder newOrder = new NewOrder();
            newOrder.setEmail(newOrder.getEmail());
        }

    @RequestMapping(path = "/savingOrder", method = RequestMethod.GET)
    public NewOrder confirmOrder(@RequestBody OrderForm tempOrder) {
        NewOrder order = new NewOrder(tempOrder);

        order = newOrderRepo.findOne(tempOrder.getId());

            String message = "You have pending trip for your confirmation \n"+
                    "Trip details:\n"+
                    "Start date:"+trip.getStartDate().toString()+
                    "\nEnd date:"+trip.getEndDate().toString()+
                    "\nCar:"+trip.getCar().getMake()+","+trip.getCar().getModel()+
                    "\nRequester phone:"+carUser.getPhone()+
                    "\n\n\nBest Regards";
            sendMail("Car Corner", trip.getCar().getOwner(),message);
        }
        return trip;*/
   /* }

        newOrderRepo.save(order);
        String message = "Your Order is confirmed \n"+
                "Order Details:\n"+
                "Start date:"+order.getDate()+
                "\nAhoy! "+order.getName()+
                "\nWe Need "+order.getCount()+
                " of "+ order.getItem()+
                " on "+ order.getMaterial()+
                "\n best described as"+ order.getDescription()+
                "\nphone:"+order.getPhone()+
                "\n\n\nkeep in touch!";
        sendMail("Absolutely", order.getName() , message);
        return order;
    }*/
    @RequestMapping (path = "/savingOrder", method = RequestMethod.POST )
    public String emailSuccess(Model mapOfDataForJsp, NewOrder tempOrder){

        NewOrder order = new NewOrder();
        order.setName(tempOrder.getName());
        order.setEmail(tempOrder.getEmail());
        order.setItem(tempOrder.getItem());
        order.setDescription(tempOrder.getItem());
        order.setPhone(tempOrder.getPhone());
        order.setDate(tempOrder.getDate());
        order.setId(tempOrder.getId());
        order.setPicture(tempOrder.getPicture());
        order.setMaterial(tempOrder.getMaterial());
        order.setCount(tempOrder.getCount());

        newOrderRepo.save(order);


            emailService.sendConfirmation(order);
        emailService.sendOrderArchive(order);
        {

    }
        mapOfDataForJsp.addAttribute("success_msg", "Order submitted!");

    return "/index" +order.getId();

    }
}





package com.example.controller;


import com.example.data.NewOrder;
import com.example.dto.OrderForm;
import com.example.repository.NewOrderRepo;
import com.example.service.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.nio.file.Files;
import java.nio.file.Paths;

/**
 * Created by WagnerMestrinho on 4/12/17.
 */
@RestController
public class OrderController {

    @Autowired
    private EmailService emailService;

    @Autowired
    NewOrderRepo newOrderRepo;

    @Value("${upload.location}")
    private String uploadLocation;



    @RequestMapping(path = "/savingOrder", method = RequestMethod.POST,
            consumes = MediaType.ALL_VALUE)
    public String createOrder(Model dataToJsp, OrderForm PictureRef) throws Exception {

        NewOrder saveToDB = null;
        // only do copy work if local file was uploaded
        if (!PictureRef.getSketch().getOriginalFilename().isEmpty()) {
            String uploadedFileName = System.currentTimeMillis() + "_" + PictureRef.getSketch().getOriginalFilename();
            // copy from input stream to computer disk
            Files.copy(PictureRef.getSketch().getInputStream(), Paths.get(uploadLocation + uploadedFileName));
            saveToDB = new NewOrder(PictureRef, uploadedFileName);
        }
        newOrderRepo.save(saveToDB);
        // if successful save, add message

        if (saveToDB.getId() > 0) {
            dataToJsp.addAttribute("order_number_success",
                    String.format("Your order # '%s' has been sent", saveToDB.getId()));

        }
        return "forward:/sendingEmail";

    }
    @RequestMapping("/sendingEmail")
    public String sendingEmail () {
        String dest = "/index";

            NewOrder newOrder = new NewOrder();
            newOrder.setEmail(newOrder.getEmail());
            newOrder.setDate(newOrder.getDate());
            newOrder.setPicture(newOrder.getPicture());
            newOrder.setName(newOrder.getName());
            newOrder.setId(newOrder.getId());
            newOrder.setDescription(newOrder.getDescription());
            newOrder.setCount(newOrder.getCount());
            newOrder.setMaterial(newOrder.getMaterial());
            newOrder.setPhone(newOrder.getPhone());
            newOrder.setItem(newOrder.getItem());


            try {
                emailService.sendConfirmation(newOrder);
            } catch (MailException e) {
                //catch error
            }

        return dest ;


    }
}





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
@Controller
public class OrderController {

    @Autowired
    private EmailService emailService;

    @Autowired
    NewOrderRepo newOrderRepo;

    @Value("${upload.location}")
    private String uploadLocation;

    @RequestMapping (path = "/sendingEmail", method = RequestMethod.POST )
    public String emailSuccess(Model dataForJsp, NewOrder tempOrder){

        //create NewOrder for email
        NewOrder emailOrder = new NewOrder();
        emailOrder.setName(tempOrder.getName());
        emailOrder.setEmail(tempOrder.getEmail());
        emailOrder.setItem(tempOrder.getItem());
        emailOrder.setDescription(tempOrder.getDescription());
        emailOrder.setPhone(tempOrder.getPhone());
        emailOrder.setDate(tempOrder.getDate());
        emailOrder.setId(tempOrder.getId());
        emailOrder.setPicture(tempOrder.getPicture());
        emailOrder.setMaterial(tempOrder.getMaterial());
        emailOrder.setCount(tempOrder.getCount());

        //send emails
        try {
            emailService.sendConfirmation(emailOrder);
            emailService.sendOrderArchive(emailOrder);
        }catch (MailException e) {

            //catch error
        }
            //if successful save, add message
            if(emailOrder.getId()!=0) {
            dataForJsp.addAttribute("success_email_msg",
                    "Order submitted! Please check your Email!");
        }
    return "forward:/savingOrder";

    }

    // path for saving to database
    @RequestMapping(path = "/savingOrder", method = RequestMethod.POST,
            consumes = MediaType.ALL_VALUE)
    public String createOrder(Model dataToJsp, OrderForm multiPart) throws Exception {

        //destination view
        String dest = "/index";

        NewOrder saveToDB = null;

        // check if local file was uploaded, then do copy work
        if(!multiPart.getSketch().getOriginalFilename().isEmpty()) {

            // add current time to file name in
            String uploadedFileName = System.currentTimeMillis() + "_" + multiPart.getSketch().getOriginalFilename();

            // copy from input stream to computer disk
            Files.copy(multiPart.getSketch().getInputStream(), Paths.get(uploadLocation + uploadedFileName));
            saveToDB = new NewOrder(multiPart, uploadedFileName);
        }

        // save to database
        newOrderRepo.save(saveToDB);

        // if successful save, add message
        if(saveToDB.getId()!=0) {
            dataToJsp.addAttribute("success_msg",
                    String.format("Order #'%s' was created!", saveToDB.getId()));
        }
        return dest;
    }

}





package com.example.service;

import com.example.controller.OrderController;
import com.example.data.NewOrder;
import com.example.dto.OrderForm;
import com.example.repository.NewOrderRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.IOException;
import java.nio.file.Paths;

/**
 * Created by WagnerMestrinho on 4/20/17.
 */
@Service
public class EmailService  {

    private JavaMailSender javaMailSender;


    @Autowired
    public EmailService(JavaMailSender javaMailSender){
        this.javaMailSender = javaMailSender;
    }
    /*public void sendConfirmation(NewOrder newOrder) throws MailException{
        //send email
        MimeMessagePreparator preparator = new MimeMessagePreparator() {
            public void prepare(MimeMessage mimeMessage) throws MessagingException{
                MimeMessageHelper message = new MimeMessageHelper(mimeMessage, true, "UTF-8");
                message.setFrom("absolutelyplausible@gmail.com");
                message.setTo(newOrder.getEmail());
                message.setSubject(newOrder.getName()+ newOrder.getDate()+ newOrder.getPhone());
                message.setText("Hello testing", true);
                //message.addAttachment(String "" (PictureRef.getSketch().getInputStream());
            }

        };
        javaMailSender.send(preparator);
    }*/
    public void sendConfirmation(NewOrder newOrder) throws MailException{
        SimpleMailMessage mail = new SimpleMailMessage();
        mail.setFrom("absolutelyplausible@gmail.com");
        mail.setTo(newOrder.getEmail());
        mail.setSubject("Your order has been sent!");
        mail.setText("Thank you your order number is "+ newOrder.getId()+"for a "+ newOrder.getItem());
        javaMailSender.send(mail);
    }

}

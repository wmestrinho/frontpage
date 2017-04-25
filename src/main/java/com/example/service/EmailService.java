package com.example.service;

import com.example.controller.FileConfigurator;
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

    // TODO email service for multi-part file attachment

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

    //Sending Order To Email Archive

    public void sendOrderArchive(NewOrder tempOrder) throws MailException {

        SimpleMailMessage mail = new SimpleMailMessage();

            mail.setFrom("order4porjects@gmail.com");
            mail.setTo("order4porjects@gmail.com");
            mail.setSubject("#" +tempOrder.getId()+"+PROJECT" + ".2.DUE[" +tempOrder.getDate()+ "]");
            mail.setText("Order # "+tempOrder.getId()+
                            " \nDue " +tempOrder.getDate()+
                            " \nFor " +tempOrder.getName()+
                                    "\n *Phone: " +tempOrder.getPhone()+
                                    "\n *Reply To: " +tempOrder.getEmail()+
                            "\n\n  " +tempOrder.getCount()+
                            " - " +tempOrder.getItem()+
                            " of " +tempOrder.getMaterial()+
                            "\n\n****INSTRUCTIONS****\n" +
                                    "" +tempOrder.getDescription()+ "" +
                            "\n FILENAME: " +tempOrder.getId()+
                            //TODO Image Attachment
                            "\n\n\n LET'S GO! "
                            );
            javaMailSender.send(mail);
    }

    //Sending Confirmation For NewOrder User

    public void sendConfirmation(NewOrder newOrder) throws MailException{

        SimpleMailMessage mail = new SimpleMailMessage();

            mail.setFrom("order4porjects@gmail.com");
            mail.setTo(newOrder.getEmail());
            mail.setSubject("Your order for " +newOrder.getItem()+ " has been sent!");
            mail.setText("Thanks " +newOrder.getName()+
                            "\nYour order: #" +newOrder.getId()+
                            "\nTo build a " +newOrder.getItem()+
                            " by re-purposing " +newOrder.getMaterial()+
                            " has been submitted! " +
                            "\n\nWe'll call or text " +newOrder.getPhone()+
                            "\nReach through this email " +newOrder.getEmail()+
                            "\n\n\n\n" +
                            " keeptheCYCLE STAYintouch "
                            );
            javaMailSender.send(mail);

    }

}

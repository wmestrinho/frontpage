package com.example.dto;

import org.springframework.web.multipart.MultipartFile;

/**
 * Created by WagnerMestrinho on 4/6/17.
 */
public class OrderForm {
    private long id;
    private String item;
    private String material;
    private String date;
    private int count;
    private String description;
    private String name;
    private String email;
    private String phone;
    private MultipartFile sketch;

    public OrderForm() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public MultipartFile getSketch() {
        return sketch;
    }

    public void setSketch(MultipartFile sketch) {
        this.sketch = sketch;
    }
}

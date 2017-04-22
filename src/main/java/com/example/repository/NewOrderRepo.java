package com.example.repository;

import com.example.data.NewOrder;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by WagnerMestrinho on 4/12/17.
 */
public interface NewOrderRepo extends CrudRepository<NewOrder, Long> {
}

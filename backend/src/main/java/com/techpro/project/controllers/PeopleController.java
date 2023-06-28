package com.techpro.project.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.techpro.project.entity.People;
import com.techpro.project.repository.PeopleRepository;

@RestController
@CrossOrigin
@RequestMapping("/People")


public class PeopleController {
    @Autowired
    private PeopleRepository peopleRepository;

    @GetMapping
    public ResponseEntity<List<People>> getall() {
        return ResponseEntity.ok(peopleRepository.findAll());
    }



}
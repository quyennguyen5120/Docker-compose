package com.cy.springrestapi.springrestapi.controllers;

import com.cy.springrestapi.springrestapi.models.Note;
import com.cy.springrestapi.springrestapi.repository.NoteRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ListNotes {
    @Autowired
    private NoteRepo noteRepo;

    @RequestMapping("/notes")
    public List<Note> getNotes() {
        return noteRepo.findAll();
    }
}

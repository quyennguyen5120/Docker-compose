package com.cy.springrestapi.springrestapi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.cy.springrestapi.springrestapi.models.Note;
import org.springframework.data.repository.CrudRepository;
public interface NoteRepo extends JpaRepository<Note, Long> {

}

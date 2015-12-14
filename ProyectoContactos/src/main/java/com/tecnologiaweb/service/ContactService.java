/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tecnologiaweb.service;

/**
 *
 * @author arturo
 */
import java.util.List;
import com.tecnologiaweb.form.Contact;
public interface ContactService {

 public void addContact(Contact contact);
 public List<Contact> listContact();
 public void removeContact(Integer id);
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tecnologiaweb.dao;

/**
 *
 * @author arturo
 */
import com.tecnologiaweb.form.Contact;
import java.util.List;
public interface ContactDAO {
public void addContact(Contact contact);
 public List<Contact> listContact();
 public void removeContact(Integer id);
}

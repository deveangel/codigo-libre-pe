/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.api.apirest.controlador;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author aandres
 */
@RestController
@RequestMapping("servicio1")
public class Servicio1Controlador {

    @GetMapping("/hola/{nombre}")
    public ResponseEntity<String> saludar(@PathVariable("nombre") String nombre) {
        return new ResponseEntity<>("hola " + nombre, HttpStatus.OK);
    }

}

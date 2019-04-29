/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

import java.util.ArrayList;



/**
 *
 * @author MohamadTarif
 */
public class DbConta {
    private static ArrayList<Conta> contas; 
    
    public static ArrayList<Conta> getContas(){
        if(contas==null){
            contas = new ArrayList<>();
            Conta c1 = new Conta();
            c1.setUsuario("usuario12");
            contas.add(c1);         
        }
        return contas;
    }
    
    
}

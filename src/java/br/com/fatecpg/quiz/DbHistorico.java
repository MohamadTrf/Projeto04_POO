/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;
import java.util.ArrayList;

public class DbHistorico {
    private static  ArrayList<Historico> historico;
    
   public static ArrayList<Historico> getHistorico(){
       if(historico==null){
           historico = new ArrayList<>();
           Historico h1 = new Historico();
           h1.setNota(2);
       }
       return historico;
   }
}

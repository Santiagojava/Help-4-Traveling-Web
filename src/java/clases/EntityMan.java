/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import Logica.EM;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author santiago
 */
public class EntityMan {
    private static EntityManagerFactory emf= Persistence.createEntityManagerFactory("Help_4_TravelingPU");
   private static EntityManager em=emf.createEntityManager();
   private static EntityMan instance = null;
   protected EntityMan() {
      // Exists only to defeat instantiation.
   }
   public static EntityMan getInstance() {
      if(instance == null) {
         instance = new EntityMan();
      }
      return instance;
   }
   public static EntityManager getEntityManager(){
       return em;
   }
}

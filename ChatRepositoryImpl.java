package com.xworkz.chatapp.repository.impl;

import com.xworkz.chatapp.entity.ChatEntity;
import com.xworkz.chatapp.repository.ChatRepository;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class ChatRepositoryImpl implements ChatRepository {
    public boolean saveChat(ChatEntity chatEntity) {
        // JPA logic

        EntityManagerFactory factory = Persistence.createEntityManagerFactory("xworkz");
        EntityManager manager             =     factory.createEntityManager();

         manager.getTransaction().begin();
         manager.persist(chatEntity);
         manager.getTransaction().commit();
         manager.close();
       return true;
    }

    public ChatEntity getChatById(int id) {
        ChatEntity chatEntity = null;

          EntityManagerFactory entityManagerFactory =    Persistence.createEntityManagerFactory("xworkz");
         EntityManager manager =                        entityManagerFactory.createEntityManager();
            chatEntity         = manager.find(ChatEntity.class , id);
            manager.close();
        return chatEntity;
    }

    public boolean editChatPriceById(double price, int id) {
       boolean priceUpdated = false;

         EntityManagerFactory factory =    Persistence.createEntityManagerFactory("xworkz");
         EntityManager manager = factory.createEntityManager();
         ChatEntity entity    =     manager.find(ChatEntity.class, id);

        if(entity != null){
               entity.setPrice(price);
               manager.getTransaction().begin();
               manager.merge(entity);
            manager.getTransaction().commit();
               priceUpdated = true;
        }

        manager.close();

    return priceUpdated;
    }
}

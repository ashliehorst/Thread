/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JSPDiscussion;

import JSPDiscussion.reviews.Review;
import com.google.common.collect.Lists;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class FileUserHandler implements UserDataHandler {
    
     private String fileName;

     //Constructor 
     public FileUserHandler(String fileName) {
          this.fileName = fileName;
     }

     public String getFileName() {return fileName;}
     public void setFileName(String fileName) {this.fileName = fileName;}
     
     public void addUser(User review) {
          try {
               BufferedWriter writer = new BufferedWriter(new FileWriter(getFileName(), true));
               writer.write(review.toFileString() + "\n");
               writer.close(); 

          } catch (IOException e) {
               e.printStackTrace();
          }
     }

     @Override
     public List<User> getUsers() {
        List<User> list = new ArrayList<User>();

        try {
             BufferedReader reader = new BufferedReader(new FileReader(getFileName()));

             String line;

             while ((line = reader.readLine()) != null) {
                  User user = new User();
                  user.loadFromFileString(line);
                  list.add(user);
             }

        } catch (IOException e) {
             e.printStackTrace();
        }
        //return reversed list
        List<User> reverseView = Lists.reverse(list);
        return reverseView;
       
    }
  
}


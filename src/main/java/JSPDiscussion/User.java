package JSPDiscussion;

public class User {
    private String username;
    private String password; 

      public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

       public User(){
        username = "n/a";
        password = "n/a";
    }
    
    public String getUsername() {return username;}
    public void setUsername(String username) {this.username = username;}
    public String getPassword() {return password;}
    public void setPassword(String password) {this.password = password;}
    
      public String toFileString() {
            return username + "," + password;
     }
      
     public void loadFromFileString(String str) {
        String[] parts = str.split(",");

        username = parts[0];
        password = parts[1];
    }
}

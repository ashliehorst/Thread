
package JSPDiscussion.reviews;

public class Review {
    private String username;
    private String reviewText;

    public Review(String username, String reviewText) {
        this.username = username;
        this.reviewText = reviewText;
    }

    public Review(){
        username = "n/a";
        reviewText = "n/a";
    }
    
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getReviewText() {
        return reviewText;
    }

    public void setReviewText(String reviewText) {
        this.reviewText = reviewText;
    }
    
    public String toFileString() {
            return username + "," + reviewText;
     }

 
     public void loadFromFileString(String str) {
            // TODO: Validation should be done here
            String[] parts = str.split(",");

            username = parts[0];
            reviewText = parts[1];
     }
    
}

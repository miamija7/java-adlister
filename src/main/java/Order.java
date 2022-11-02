public class Order {
    private String size;
    private String cheeseAmt;
    private String sauce;
    private String sauceAmt;
    private String[] meats;
    private String[] veggies;
    private String address;


    public Order(String size, String cheeseAmt, String sauce, String sauceAmt, String[] meats, String[] veggies, String address){
        this.size = size;
        this.cheeseAmt = cheeseAmt;
        this.sauce = sauce;
        this.sauceAmt = sauceAmt;
        this.meats = meats;
        this.veggies = veggies;
        this.address = address;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getCheeseAmt() {
        return cheeseAmt;
    }

    public void setCheeseAmt(String cheeseAmt) {
        this.cheeseAmt = cheeseAmt;
    }

    public String getSauce() {
        return sauce;
    }

    public void setSauce(String sauce) {
        this.sauce = sauce;
    }

    public String getSauceAmt() {
        return sauceAmt;
    }

    public void setSauceAmt(String sauceAmt) {
        this.sauceAmt = sauceAmt;
    }

    public String[] getMeats() {
        return meats;
    }

    public void setMeats(String[] meats) {
        this.meats = meats;
    }

    public String[] getVeggies() {
        return veggies;
    }

    public void setVeggies(String[] veggies) {
        this.veggies = veggies;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}

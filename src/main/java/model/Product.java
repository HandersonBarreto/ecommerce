package model;

public class Product {

    private Integer id;
    private String name;
    private String deecription;
    private Double price;
    private int amount;

    public Product() {

    }

    public Product(Integer id, String name, String deecription, Double price, int amount) {
        this.id = id;
        this.name = name;
        this.deecription = deecription;
        this.price = price;
        this.amount = amount;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDeecription() {
        return deecription;
    }

    public void setDeecription(String deecription) {
        this.deecription = deecription;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}

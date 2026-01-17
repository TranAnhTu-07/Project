package vn.edu.nlu.fit.projectweb.cart;

import vn.edu.nlu.fit.projectweb.model.Product;

import java.io.Serializable;

public class CartItem implements Serializable {
    private Product product;
    private int quantity;
    private double price;
    public CartItem(Product product, int quantity, double price) {}

    public CartItem() {
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }


    public void upQuantity(int quantity) {
        this.quantity += quantity;
    }
}

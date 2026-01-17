package vn.edu.nlu.fit.projectweb.cart;

import vn.edu.nlu.fit.projectweb.model.Product;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class Cart implements Serializable {
    Map<Integer, CartItem> data;

    public Cart() {
        data = new HashMap<Integer, CartItem>();
    }

    public void addItem(Product product, int quantity) {
        if (quantity <= 0) {quantity = 1;}
        if (data.containsKey(product.getProductID())) {
            data.put(product.getProductID(), new CartItem(product, quantity, product.getPrice()));
        } else {
            data.get(product.getProductID()).upQuantity(quantity);
        }
    }



}

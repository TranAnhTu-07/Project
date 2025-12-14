package vn.edu.nlu.fit.projectweb.dao;

import vn.edu.nlu.fit.projectweb.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductDao {
    static Map<Integer, Product> data = new HashMap<>();
    static {
        data.put(1,new Product(1,"Máy Ảnh Sony RX1R III | Chính Hãng","https://bizweb.dktcdn.net/100/107/650/products/8783339-sony-rx1riii-16.jpg?v=1752639489140",125500000));
        data.put(2,new Product(1,"Máy Ảnh Sony RX1R III | Chính Hãng","https://bizweb.dktcdn.net/100/107/650/products/8783339-sony-rx1riii-16.jpg?v=1752639489140",125500000));
        data.put(3,new Product(1,"Máy Ảnh Sony RX1R III | Chính Hãng","https://bizweb.dktcdn.net/100/107/650/products/8783339-sony-rx1riii-16.jpg?v=1752639489140",125500000));
        data.put(4,new Product(1,"Máy Ảnh Sony RX1R III | Chính Hãng","https://bizweb.dktcdn.net/100/107/650/products/8783339-sony-rx1riii-16.jpg?v=1752639489140",125500000));
        data.put(5,new Product(1,"Máy Ảnh Sony RX1R III | Chính Hãng","https://bizweb.dktcdn.net/100/107/650/products/8783339-sony-rx1riii-16.jpg?v=1752639489140",125500000));
        data.put(6,new Product(1,"Máy Ảnh Sony RX1R III | Chính Hãng","https://bizweb.dktcdn.net/100/107/650/products/8783339-sony-rx1riii-16.jpg?v=1752639489140",125500000));
        data.put(7,new Product(1,"Máy Ảnh Sony RX1R III | Chính Hãng","https://bizweb.dktcdn.net/100/107/650/products/8783339-sony-rx1riii-16.jpg?v=1752639489140",125500000));
        data.put(8,new Product(1,"Máy Ảnh Sony RX1R III | Chính Hãng","https://bizweb.dktcdn.net/100/107/650/products/8783339-sony-rx1riii-16.jpg?v=1752639489140",125500000));
        data.put(9,new Product(1,"Máy Ảnh Sony RX1R III | Chính Hãng","https://bizweb.dktcdn.net/100/107/650/products/8783339-sony-rx1riii-16.jpg?v=1752639489140",125500000));
        data.put(10,new Product(1,"Máy Ảnh Sony RX1R III | Chính Hãng","https://bizweb.dktcdn.net/100/107/650/products/8783339-sony-rx1riii-16.jpg?v=1752639489140",125500000));

    }

    public List<Product> getListProduct() {
        return new ArrayList<>(data.values());

    }
}

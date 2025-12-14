package vn.edu.nlu.fit.projectweb.services;

import vn.edu.nlu.fit.projectweb.dao.ProductDao;
import vn.edu.nlu.fit.projectweb.model.Product;

import java.util.List;

public class ProductService {
    ProductDao pdao = new ProductDao();

    public List<Product> getListProduct() {
        return pdao.getListProduct();
    }
}

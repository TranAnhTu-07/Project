package vn.edu.nlu.fit.projectweb.services;

import vn.edu.nlu.fit.projectweb.dao.ProductDao;
import vn.edu.nlu.fit.projectweb.model.Product;

import java.util.List;

public class ProductService {
    ProductDao pdao = new ProductDao();

    public List<Product> getListProduct() {
        return pdao.getListProduct();
    }
    public List<Product> getByCategory(int id) {
        return pdao.getByCategory(id);
    }
    public List<Product> getRandomProducts() {
        return pdao.getRandomProducts();
    }

    public Product getProductDetail(int productId) {
        return pdao.getProductById(productId);
    }
    // Phương thức lấy sản phẩm liên quan
    public List<Product> getRelatedProducts(int productId, int categoryId) {
        return pdao.getRelatedProducts(productId, categoryId);
    }
}

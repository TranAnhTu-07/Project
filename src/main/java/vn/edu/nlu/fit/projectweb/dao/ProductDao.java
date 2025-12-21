package vn.edu.nlu.fit.projectweb.dao;

import org.jdbi.v3.core.Handle;
import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.core.statement.Batch;
import org.jdbi.v3.core.statement.PreparedBatch;
import vn.edu.nlu.fit.projectweb.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductDao extends BaseDao{
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
        return   get().withHandle(h-> h.createQuery("select * from products").mapToBean(Product.class).list());
    }
    public Product getProduct(int id) {
        return   get().withHandle(h-> h.createQuery("select * from products where id = :id").bind("id", id).mapToBean(Product.class).stream().findFirst().orElse(null));
    }
    public void insert(List<Product> products) {
        Jdbi jdbi = get();
        jdbi.useHandle(h->{
            PreparedBatch batch = h.prepareBatch("insert into products values(:id, :name,:img,:price)");
            products.forEach(product -> {
                batch.bindBean(product).add();
            });
            batch.execute();
        });

    }

    public static void main(String[] args) {
        ProductDao dao = new ProductDao();
        List<Product> products = dao.getListProduct();
        dao.insert(products);
    }
}

package vn.edu.nlu.fit.projectweb.dao;

import vn.edu.nlu.fit.projectweb.model.Category;

import java.util.List;
public class CategoryDao extends BaseDao {
    public List<Category> getCategoryChild(int parent_id) {
        return get().withHandle(h -> h.createQuery("SELECT * FROM categories where parent_id=:id")
                .bind("id", parent_id)
                .mapToBean(Category.class)
                .list());
    }
    public List<Category> getCategoryParent() {
        return get().withHandle(h -> h.createQuery("SELECT * FROM categories where parent_id IS NULL")
                .mapToBean(Category.class)
                .list());
    }
}
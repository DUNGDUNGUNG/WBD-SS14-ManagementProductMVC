package com.codegym.service;

import com.codegym.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductServiceImpl implements ProductService {
    private static List<Product> productList;

    {
        productList = new ArrayList<>();
        productList.add(new Product(0, "May tinh", 1000.5, "phuc vu cong viec", "Cong Ty MT"));
        productList.add(new Product(1, "May in", 1200.5, "photo tai lieu", "Cong Ty MI"));
        productList.add(new Product(2, "Dien thoai", 2000.5, "goi dien", "Cong Ty DT"));
        productList.add(new Product(3, "Dieu hoa", 3300.5, "lam mat", "Cong Ty DH"));
        productList.add(new Product(4, "Tu lanh", 1400.5, "luu tru thuc pham", "Cong Ty TL"));
        productList.add(new Product(5, "Bong dien", 100.5, "phat sang", "Cong Ty BD"));
    }

    @Override
    public List<Product> findAll() {
        return productList;
    }

    @Override
    public void save(Product product) {
        productList.add(product);
    }

    @Override
    public void update(Product product) {
        for (int i = 0; i < productList.size(); i++) {
            if (productList.get(i).getId()==product.getId()){
                productList.set(i, product);
            }
        }

    }

    @Override
    public void remove(int id) {
        Product index = this.findById(id);
        productList.remove(index);
    }

    @Override
    public Product findById(int id) {
        int index = -1;
        for (int i =0; i<productList.size();i++) {
            if (productList.get(i).getId() == id) {
                index=i;
                break;
            }
        }
        return productList.get(index);
    }

    @Override
    public Product findByName(String name) {
        for (Product product : productList) {
            String temp = product.getName();
            if (temp.equals(name)) {
                return product;
            }
        }
        return null;
    }
}

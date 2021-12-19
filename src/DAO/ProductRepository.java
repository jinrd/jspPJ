package DAO;

import java.util.ArrayList;

import DTO.Product;

// ���옣�냼�씪�뒗 �쑜
public class ProductRepository {
	
	//productRepository 인스턴스를 하나만 공유하게끔 싱글톤 패턴을 이용한다.
	private ArrayList<Product> listOfProducts= new ArrayList<Product>();
	
	private static ProductRepository instance = new ProductRepository();
	
	// ProductRepository 인스턴스를 리턴하는 getter
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public ProductRepository() {
		Product phone = new Product("Phone","Galaxy",1_200_000);
		phone.setDescription("Phone Description~~~~~~~");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Samsung");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		phone.setFilename("P1234.png");

		Product laptop = new Product("Laptop","LG GRAM",2_200_000);
		laptop.setDescription("Laptop Description~~~~~~~");
		laptop.setCategory("GRAM");
		laptop.setManufacturer("LG");
		laptop.setUnitsInStock(1000);
		laptop.setCondition("Refurbish");
		laptop.setFilename("P1235.png");
		
		Product tablet = new Product("Ipad","Apple",1_800_000);
		tablet.setDescription("tablet Description~~~~~~~");
		tablet.setCategory("tablet");
		tablet.setManufacturer("Apple");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		tablet.setFilename("P1236.png");
		
		listOfProducts.add(phone);
		listOfProducts.add(laptop);
		listOfProducts.add(tablet);
	}
	
	// listOfProducts 瑜� return �븯�뒗 硫붿꽌�뱶
	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	}
	
	
	// listofProducts 에 저장된 모든 상품 목록을 조회하여 상품아이디하고 일치하는 상품을
	// 리턴을 해주는 메서드이다.
	public Product getProductById(String productId) {
		Product productById = null;
		
		for(int i = 0 ; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if(product != null && product.getProductId() != null && 
					product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	// 상품을 추가하는 역할을 하는 메서드
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
}




























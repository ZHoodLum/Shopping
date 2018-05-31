package pojo;

public class BookInfo { 
	
	private int bookid;  //图书编号
	private String bookname; //图书名称-
	private String author;//作者

    private String pubname;//出版社
    private String booktypename;//图书类型
    
    private String isbn;//ISBN
    private double price;//价格
    

	
    

	
	public int getBookid() {
		return bookid;
	}
	public void setBookid(int bookid) {
		this.bookid = bookid;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPubname() {
		return pubname;
	}
	public void setPubname(String pubname) {
		this.pubname = pubname;
	}
	public String getBooktypename() {
		return booktypename;
	}
	public void setBooktypename(String booktypename) {
		this.booktypename = booktypename;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	

}

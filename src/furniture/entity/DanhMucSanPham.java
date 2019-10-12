package furniture.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="DanhMucSanPham")
public class DanhMucSanPham {
	@Id @GeneratedValue
	@Column(name="MaDanhMuc")
	private int maDanhMuc;
	@Column(name="TenDanhMuc")
	private String tenDanhMuc;
	
	
	public DanhMucSanPham() {
		super();
	}
	public DanhMucSanPham(int maDanhMuc, String tenDanhMuc) {
		super();
		this.maDanhMuc = maDanhMuc;
		this.tenDanhMuc = tenDanhMuc;
	}
	public int getMaDanhMuc() {
		return maDanhMuc;
	}
	public void setMaDanhMuc(int maDanhMuc) {
		this.maDanhMuc = maDanhMuc;
	}
	public String getTenDanhMuc() {
		return tenDanhMuc;
	}
	public void setTenDanhMuc(String tenDanhMuc) {
		this.tenDanhMuc = tenDanhMuc;
	}
	
	
	
}

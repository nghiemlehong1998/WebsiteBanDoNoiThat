package furniture.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="NhomQuyen")
public class NhomQuyen {
	@Id @GeneratedValue
	@Column(name="MaNhomQuyen")
	private int maNhomQuyen;
	@Column(name="TenNhomQuyen")
	private String tenNhomQuyen;
	public NhomQuyen(int maNhomQuyen, String tenNhomQuyen) {
		super();
		this.maNhomQuyen = maNhomQuyen;
		this.tenNhomQuyen = tenNhomQuyen;
	}
	public NhomQuyen() {
		super();
	}
	public int getMaNhomQuyen() {
		return maNhomQuyen;
	}
	public void setMaNhomQuyen(int maNhomQuyen) {
		this.maNhomQuyen = maNhomQuyen;
	}
	public String getTenNhomQuyen() {
		return tenNhomQuyen;
	}
	public void setTenNhomQuyen(String tenNhomQuyen) {
		this.tenNhomQuyen = tenNhomQuyen;
	}

	
	
}

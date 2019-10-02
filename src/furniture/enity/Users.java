package furniture.enity;



import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="Users")
public class Users {
	@Id @GeneratedValue
	@Column(name="MaTaiKhoan")
	private int maTaiKhoan;
	@Column(name="TaiKhoan")
	private String taiKhoan;
	@Column(name="MatKhau")
	private String matKhau;
	@Column(name="Email")
	private String email;
	@Column(name="HoTen")
	private String hoTen;
	@Column(name="GioiTinh")
	private boolean gioiTinh;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	@Column(name="NgaySinh")
	private Date ngaySinh;
	@Column(name="DienThoai")
	private String dienThoai;
	@Column(name="DiaChi")
	private String diaChi;
	
	@ManyToOne
	@JoinColumn(name="MaNhomQuyen")
	//@Column(name="MaNhomQuyen")
	private NhomQuyen maNhomQuyen;

	
	public Users(int maTaiKhoan, String taiKhoan, String matKhau, String email, String hoTen, boolean gioiTinh,
			Date ngaySinh, String dienThoai, String diaChi, NhomQuyen maNhomQuyen) {
		super();
		this.maTaiKhoan = maTaiKhoan;
		this.taiKhoan = taiKhoan;
		this.matKhau = matKhau;
		this.email = email;
		this.hoTen = hoTen;
		this.gioiTinh = gioiTinh;
		this.ngaySinh = ngaySinh;
		this.dienThoai = dienThoai;
		this.diaChi = diaChi;
		this.maNhomQuyen = maNhomQuyen;
	}

	public Users() {
		super();
	}

	public int getMaTaiKhoan() {
		return maTaiKhoan;
	}

	public void setMaTaiKhoan(int maTaiKhoan) {
		this.maTaiKhoan = maTaiKhoan;
	}

	public String getTaiKhoan() {
		return taiKhoan;
	}

	public void setTaiKhoan(String taiKhoan) {
		this.taiKhoan = taiKhoan;
	}

	public String getMatKhau() {
		return matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public boolean isGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(boolean gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public Date getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	public String getDienThoai() {
		return dienThoai;
	}

	public void setDienThoai(String dienThoai) {
		this.dienThoai = dienThoai;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public NhomQuyen getMaNhomQuyen() {
		return maNhomQuyen;
	}

	public void setMaNhomQuyen(NhomQuyen maNhomQuyen) {
		this.maNhomQuyen = maNhomQuyen;
	}

	
	
	
	
}

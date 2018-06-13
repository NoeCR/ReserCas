package resercas;
// Generated 13-jun-2018 15:07:48 by Hibernate Tools 5.2.10.Final

import java.util.HashSet;
import java.util.Set;

/**
 * Habitacion generated by hbm2java
 */
public class Habitacion implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer idhab;
	private Hotel hotel;
	private int numero;
	private int camas;
	private double precio;
	private int imagen;
	private Set<Imagen> imagens = new HashSet<Imagen>(0);
	private Set<Reserva> reservas = new HashSet<Reserva>(0);

	public Habitacion() {
	}

	public Habitacion(Hotel hotel, int numero, int camas, double precio, int imagen) {
		this.hotel = hotel;
		this.numero = numero;
		this.camas = camas;
		this.precio = precio;
		this.imagen = imagen;
	}

	public Habitacion(Hotel hotel, int numero, int camas, double precio, int imagen, Set<Imagen> imagens, Set<Reserva> reservas) {
		this.hotel = hotel;
		this.numero = numero;
		this.camas = camas;
		this.precio = precio;
		this.imagen = imagen;
		this.imagens = imagens;
		this.reservas = reservas;
	}

	public Integer getIdhab() {
		return this.idhab;
	}

	public void setIdhab(Integer idhab) {
		this.idhab = idhab;
	}

	public Hotel getHotel() {
		return this.hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}

	public int getNumero() {
		return this.numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public int getCamas() {
		return this.camas;
	}

	public void setCamas(int camas) {
		this.camas = camas;
	}

	public double getPrecio() {
		return this.precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public int getImagen() {
		return this.imagen;
	}

	public void setImagen(int imagen) {
		this.imagen = imagen;
	}

	public Set<Imagen> getImagens() {
		return this.imagens;
	}

	public void setImagens(Set<Imagen> imagens) {
		this.imagens = imagens;
	}

	public Set<Reserva> getReservas() {
		return this.reservas;
	}

	public void setReservas(Set<Reserva> reservas) {
		this.reservas = reservas;
	}

}

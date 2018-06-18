package resercas;
// Generated 16-jun-2018 20:52:08 by Hibernate Tools 5.2.10.Final

import java.util.HashSet;
import java.util.Set;

/**
 * Hotel generated by hbm2java
 */
public class Hotel implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer idhot;
	private String nombre;
	private String direc;
	private String telf;
	private String imgHotel;
	private String localidad;
	private Set<Habitacion> habitacions = new HashSet<Habitacion>(0);

	public Hotel() {
	}

	public Hotel(String nombre, String direc, String telf, String imgHotel, String localidad) {
		this.nombre = nombre;
		this.direc = direc;
		this.telf = telf;
		this.imgHotel = imgHotel;
		this.localidad = localidad;
	}

	public Hotel(String nombre, String direc, String telf, String imgHotel, String localidad, Set<Habitacion> habitacions) {
		this.nombre = nombre;
		this.direc = direc;
		this.telf = telf;
		this.imgHotel = imgHotel;
		this.localidad = localidad;
		this.habitacions = habitacions;
	}

	public Integer getIdhot() {
		return this.idhot;
	}

	public void setIdhot(Integer idhot) {
		this.idhot = idhot;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDirec() {
		return this.direc;
	}

	public void setDirec(String direc) {
		this.direc = direc;
	}

	public String getTelf() {
		return this.telf;
	}

	public void setTelf(String telf) {
		this.telf = telf;
	}

	public String getImgHotel() {
		return this.imgHotel;
	}

	public void setImgHotel(String imgHotel) {
		this.imgHotel = imgHotel;
	}

	public String getLocalidad() {
		return this.localidad;
	}

	public void setLocalidad(String localidad) {
		this.localidad = localidad;
	}

	public Set<Habitacion> getHabitacions() {
		return this.habitacions;
	}

	public void setHabitacions(Set<Habitacion> habitacions) {
		this.habitacions = habitacions;
	}

}

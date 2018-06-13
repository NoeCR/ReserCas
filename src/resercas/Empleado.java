package resercas;
// Generated 13-jun-2018 15:07:48 by Hibernate Tools 5.2.10.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Empleado generated by hbm2java
 */
public class Empleado implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer idemp;
	private String nombre;
	private Date fechaInc;
	private String password;
	private Set<Reserva> reservas = new HashSet<Reserva>(0);

	public Empleado() {
	}

	public Empleado(String nombre, Date fechaInc, String password) {
		this.nombre = nombre;
		this.fechaInc = fechaInc;
		this.password = password;
	}

	public Empleado(String nombre, Date fechaInc, String password, Set<Reserva> reservas) {
		this.nombre = nombre;
		this.fechaInc = fechaInc;
		this.password = password;
		this.reservas = reservas;
	}

	public Integer getIdemp() {
		return this.idemp;
	}

	public void setIdemp(Integer idemp) {
		this.idemp = idemp;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public Date getFechaInc() {
		return this.fechaInc;
	}

	public void setFechaInc(Date fechaInc) {
		this.fechaInc = fechaInc;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Set<Reserva> getReservas() {
		return this.reservas;
	}

	public void setReservas(Set<Reserva> reservas) {
		this.reservas = reservas;
	}

}

package resercas;
// Generated 13-jun-2018 15:07:48 by Hibernate Tools 5.2.10.Final

/**
 * Imagen generated by hbm2java
 */
public class Imagen implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer idImg;
	private Habitacion habitacion;
	private String url;

	public Imagen() {
	}

	public Imagen(Habitacion habitacion, String url) {
		this.habitacion = habitacion;
		this.url = url;
	}

	public Integer getIdImg() {
		return this.idImg;
	}

	public void setIdImg(Integer idImg) {
		this.idImg = idImg;
	}

	public Habitacion getHabitacion() {
		return this.habitacion;
	}

	public void setHabitacion(Habitacion habitacion) {
		this.habitacion = habitacion;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}

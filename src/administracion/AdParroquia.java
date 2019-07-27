package administracion;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Vector;

import bdd.BDD;


public class AdParroquia {
	int idParroquia;
	String nombreParroquia;
	
	public AdParroquia() {
		super();
	}

	public AdParroquia(int idParroquia, String nombreParroquia) {
		super();
		this.idParroquia = idParroquia;
		this.nombreParroquia = nombreParroquia;
	}

	public int getIdParroquia() {
		return idParroquia;
	}

	public void setIdParroquia(int idParroquia) {
		this.idParroquia = idParroquia;
	}

	public String getNombreParroquia() {
		return nombreParroquia;
	}

	public void setNombreParroquia(String nombreParroquia) {
		this.nombreParroquia = nombreParroquia;
	}

	@Override
	public String toString() {
		return idParroquia + "," + nombreParroquia ;
	}
	
	public  static String nombreParroquia(String idParroquia) throws Exception {
		String nombreparroquia= "";
		
		String nombre = "Select NOMBREPARROQUIA FROM adparroquia WHERE IDPARROQUIA = "+idParroquia;
		ArrayList nombres = BDD.consultar1(nombre);
		Vector v = (Vector)nombres.get(0);
		
		//nombreparroquia = nombres.get(0).toString().trim();
		nombreparroquia = v.get(0).toString().trim();
		//nombreparroquia = nombres.
		
		return nombreparroquia;
	}
}

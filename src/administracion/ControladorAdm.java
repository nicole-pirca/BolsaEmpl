package administracion;

import java.util.ArrayList;
import java.util.Vector;

import bdd.BDD;

public class ControladorAdm {
	
	public static ArrayList listarParroquias() throws Exception {
		// metodo que devuelve las parroquias dado un cantón 
		ArrayList parroquias = Adm.listarParroquia("5");
		Vector parroquias2 = (Vector)parroquias.get(0);
		if(parroquias2.get(0).toString().trim().equals("vacio")) {
			Vector parroquias3 = new Vector();
			//parroquias
		}
		return parroquias;
	}
	
	
	public static ArrayList listarServicios(String idtiposervicio) throws Exception {

		ArrayList servicios = Adm.listarServicio(idtiposervicio);
		Vector servicios2 = (Vector)servicios.get(0);
		if(servicios2.get(0).toString().trim().equals("vacio")) {
			Vector servicios3 = new Vector();
			}
		return servicios;
	}
	
	public static ArrayList listarCatalogos() throws Exception {
		ArrayList catalogos = Adm.listarCatalogo();
		Vector catalogos2 = (Vector)catalogos.get(0);
		if(catalogos2.get(0).toString().trim().equals("vacio")) {
			Vector catalogos3 = new Vector();
			}
		return catalogos;
	}
	
	public static ArrayList listarPersona() throws Exception {
		ArrayList persona = Adm.listarPersona();
		Vector persona2 = (Vector)persona.get(0);
		if(persona2.get(0).toString().trim().equals("vacio")) {
			Vector persona3 = new Vector();
			}
		return persona;
	}
	
	
	public static String verParroquia(String idParroquia) throws Exception{
		System.out.println("ID de la parroquia:"+idParroquia);		
		String nombreParroquia = "";
		if(!idParroquia.equals("0")) {
			AdParroquia.nombreParroquia(idParroquia);
		}
		
		return nombreParroquia;
	}
	
	public static String verCatalogo(String idCatalogo) throws Exception{
		System.out.println("ID del catalogo:"+ idCatalogo);		
		String nombreCatalogo = "";
		if(!idCatalogo.equals("0")) {
			nombreCatalogo=AdCatalogo.nombreCatalogo(idCatalogo);
		}
		
		return nombreCatalogo;
	}
	
	public static String verServicio(String idServicio) throws Exception{
		System.out.println("ID del servicio:"+idServicio);
		
		String nombreServicio = "";
		if(!idServicio.equals("0")) {
			nombreServicio=AdServicio.nombreServicio(idServicio);
		}
		return nombreServicio;
	}

}

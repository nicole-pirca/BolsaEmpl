package administracion;

import java.util.ArrayList;
import java.util.Vector;

import bdd.BDD;

public class Adm {
	
	public static ArrayList listarParroquia(String idCanton) throws Exception {
		ArrayList parroquia = new ArrayList();
		String sentencia = "SELECT IDPARROQUIA, NOMBREPARROQUIA, IDCANTON "
				+ "FROM adparroquia "
				+ "where IDCANTON = "+idCanton +" "
				+ "ORDER BY NOMBREPARROQUIA";
		ArrayList parroquia1 = BDD.consultar1(sentencia);
		if(!parroquia1.isEmpty()) {
			Vector parroquias2 = (Vector)parroquia1.get(0);
			if(!parroquias2.isEmpty()) {
				String parroquias3 = parroquias2.get(0).toString().trim();
				if(!parroquias3.isEmpty()) {
					parroquia = parroquia1;
				}
			}
		}
		if (parroquia.isEmpty()) {
			Vector vacios = new Vector();
			vacios.add("vacio");
			vacios.add("EL CANTON "+idCanton+ " NO TIENE PARROQUIAS");
			parroquia.add(vacios);
		}
		return parroquia;
	}
	
	public static ArrayList listarServicio(String idtiposervicio) throws Exception {
		ArrayList servicio = new ArrayList();
		String sentencia = "SELECT IDSERVICIO, NOMBRESERVICIO "
				+ "FROM servicio WHERE idtiposervicio ="+ idtiposervicio;
		
		ArrayList servicios1 = BDD.consultar1(sentencia);
		if(!servicios1.isEmpty()) {
			Vector servicios2 = (Vector)servicios1.get(0);
			if(!servicios2.isEmpty()) {
				String servicios3 = servicios2.get(0).toString().trim();
				if(!servicios3.isEmpty()) {
					servicio = servicios1;
				}
			}
		}
		if (servicio.isEmpty()) {
			Vector vacios = new Vector();
			vacios.add("vacio");
			vacios.add("EL SERVICIOS  NO EXISTE");
			servicio.add(vacios);
		}
		
		return servicio;
	}
	/*-----------------------------------------------------------*/
	public static void registrarServicioArtesano( String idServicio, String codPer, String estado) throws Exception{
		String sql = "INSERT INTO personaservicio (idServicio,CODIGOPERSONA,estado)VALUES ("
				+ idServicio+","
						+ codPer+","
								+ estado+")";
		BDD.instruccion(sql);
	}
	/*-----------------------------------------------------------*/
	
	public static ArrayList listarCatalogo() throws Exception {
		ArrayList catalogo = new ArrayList();
		String sentencia = "SELECT idCatalogo,catalogo "
				+ "FROM   adcatalogo where idTipoCatalogo = 4 ORDER BY catalogo ";
		
		ArrayList catalogos1 = BDD.consultar1(sentencia);
		if(!catalogos1.isEmpty()) {
			Vector catalogos2 = (Vector)catalogos1.get(0);
			if(!catalogos2.isEmpty()) {
				String catalogos3 = catalogos2.get(0).toString().trim();
				if(!catalogos3.isEmpty()) {
					catalogo = catalogos1;
				}
			}
		}
		if (catalogo.isEmpty()) {
			Vector vacios = new Vector();
			vacios.add("vacio");
			vacios.add("EL catalogo  NO EXISTE");
			catalogo.add(vacios);
		}
		
		return catalogo;
	}
	
	
	public static ArrayList listarPersona() throws Exception {
		ArrayList persona = new ArrayList();
		String sentencia = "SELECT apellidos "
				+ "FROM   perpersona where codigopersona = 1 ORDER BY nombres";
		
		ArrayList persona1 = BDD.consultar1(sentencia);
		if(!persona1.isEmpty()) {
			Vector persona2 = (Vector)persona1.get(0);
			if(!persona2.isEmpty()) {
				String persona3 = persona2.get(0).toString().trim();
				if(!persona3.isEmpty()) {
					persona = persona1;
				}
			}
		}
		if (persona.isEmpty()) {
			Vector vacios = new Vector();
			vacios.add("vacio");
			vacios.add("Persona  NO EXISTE");
			persona.add(vacios);
		}
		
		return persona;
	}
	
	
	
	
		
}

package service;

import java.util.List;

import beans.ActivoDTO;
import dao.DAOFactory;
import interfaces.ActivoDAO;
import utils.Constantes;

public class ActivoService {
	DAOFactory fabrica=DAOFactory.getDAOFactory(Constantes.ORIGEN_DATOS);
	ActivoDAO objActivo=fabrica.getActivoDAO();
	
	
	public int addActivo(ActivoDTO obj){
		return objActivo.addActivo(obj);
	}
	public List<ActivoDTO> listActivo(){
		return objActivo.listarActivo();
	}
}

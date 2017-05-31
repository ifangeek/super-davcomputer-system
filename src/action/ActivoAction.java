package action;


import java.io.IOException;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;

import beans.ActivoDTO;
import service.ActivoService;


@ParentPackage("pit")
public class ActivoAction extends ActionSupport {
	private List<ActivoDTO> listaActivo;
	private ActivoDTO activo;
	
	@Action(value="/listarActivo",results={@Result(name="ok",location="/Registrar_Activo.jsp")})
	public String listarActivo(){
		listar();
		return "ok";
	}
	@Action(value="/registrarActivo",results={@Result(name="ok",location="/Registrar_Activo.jsp")})
	public String registrarActivo(){
		new ActivoService().addActivo(activo);
		listar();
		return "ok";
	}
	void listar(){
		listaActivo=new ActivoService().listActivo();				
	}
	
	
	
	
	
	
	
	
	public List<ActivoDTO> getListaActivo() {
		return listaActivo;
	}
	public void setListaActivo(List<ActivoDTO> listaActivo) {
		this.listaActivo = listaActivo;
	}
	public ActivoDTO getActivo() {
		return activo;
	}
	public void setActivo(ActivoDTO activo) {
		this.activo = activo;
	}
	
	
}

package interfaces;
import java.util.List;

import beans.ActivoDTO;
import beans.EmpleadoDTO;
public interface EmpleadoDAO {
	public int registrarEmpleado(EmpleadoDTO obj);
	public int actualizarEmpleado(EmpleadoDTO obj);
	public int eliminarEmpleado(int cod);
	public List<ActivoDTO> listarEmpleado();
	public EmpleadoDTO buscarEmpleado(int cod);
	public EmpleadoDTO fotoEmpleado(int cod);
}


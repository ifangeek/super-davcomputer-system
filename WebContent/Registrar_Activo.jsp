<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>

<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/bootstrapValidator.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrapValidator.js"></script>
<script src="js/bootstrap-select.js"></script>
<link rel="stylesheet" href="css/datepicker.min.css" />
<link rel="stylesheet" href="css/datepicker3.min.css" />

<script src="js/bootstrap-datepicker.min.js"></script>

<jsp:include page="index.jsp"></jsp:include>


<body>

    <div class="container">
        <div class="row">
            <!-- form: -->
          
                <div class="page-header">
                    <h1>Registro de Activos</h1>
                </div>

            
               
                    <div class="panel panel-green">
                        <div class="panel-heading">
                        
                        </div>
                        <!-- /.panel-heading -->
                       
                       
                       <div class="panel-body">
   
  
              
               
               
               <!-----------------------PONER CODIGO A PARTIR DE AQUI ---------------------------- -->
               <button  type="button" id="btnNuevo" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" onchange="de()">NUEVO</button>
		<div class="container">
  <!-- Modal -->
  <s:form id="idRegistra"  method="post" enctype="multipart/form-data"   action="registrarActivo" 
			theme="bootstrap" cssClass="form-horizontal">
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" id="titulo"></h4>
        </div>
        <div class="modal-body">
          
                        <div class="panel-group" id="steps">
								<!-- Step 1 -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#steps"
												href="#stepOne" >Registro de Activo</a>
										</h4>
									</div>
									<div id="stepOne" class="panel-collapse collapse in">
										<div class="panel-body">
											<fieldset>
				                                
				                                <label class="col-lg-3 control-label">Nombre </label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.nombre" id="txtNombre" />
				                                </div>
				                                <label class="col-lg-3 control-label">Costo</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.centroCosto" id="txtCosto" />
				                                </div>
				                                <label class="col-lg-3 control-label">Grupo</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.grupo" id="txtGrupo" />
				                                </div>
				                                <label class="col-lg-3 control-label">Ubicacion</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.ubicacion" id="txtUbicacion" />
				                                </div>
				                                <label class="col-lg-3 control-label">Responsable</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.responsable" id="txtResponsable" />
				                                </div>
				   								<label class="col-lg-3 control-label">Proveedor</label>
				   								<div class="col-lg-7">
				                                    <s:textfield 	name="activo.idproveedor" id="txtProveedor" />
				                                </div>
				                                <label class="col-lg-3 control-label">Marca</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.marca" id="txtMarca" />
				                                </div>
				                                <label class="col-lg-3 control-label">Modelo</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.modelo" id="txtModelo" />
				                                </div>
				                                <label class="col-lg-3 control-label">Serie</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.serie" id="txtSerie" />
				                                </div>
				                                <label class="col-lg-3 control-label" id="lblPlaca">Placa</label>
				                                <div class="col-lg-7" id="divPlaca">
				                                    <s:textfield 	name="activo.placa" id="txtPlaca" />
				                                </div>
				                                <label class="col-lg-3 control-label">Codigo Barra</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.codigoBarra" id="txtCodigoBarra" />
				                                </div>
				                               <div class="form-group">
												        <label class="col-lg-3 control-label">Fecha Compra</label>
												        <div class="col-xs-5 date">
												            <div class="input-group input-append date" id="datePicker">
																
												                <input type="text" class="form-control" name="activo.fechaCompra"/>
												                <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
												            </div>
												        </div>
												    </div>
				                                <label class="col-lg-3 control-label">Valor Compra</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.valorComprar" id="txtValorCompra" />
				                                </div>
				                                <label class="col-lg-3 control-label">Garantia</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.garantia" id="txtGarantia" />
				                                </div>
				                                <label class="col-lg-3 control-label">Vence Garantia</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.venceGarantia" id="txtVenceGarantia" />
				                                </div>
				                                <label class="col-lg-3 control-label">Vida Util</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.vidaUtil" id="txtvidaUtil" />
				                                </div>
				                                <label class="col-lg-3 control-label">Nro Poliza</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.polizanro" id="txtPoliza" />
				                                </div>
				                               <div class="form-group">
												        <label class="col-lg-3 control-label">Fecha </label>
												        <div class="col-xs-5 date">
												            <div class="input-group input-append date" id="datePicker2">
																
												                <input type="text" class="form-control" data-date-format="dd/mm/yyyy" name="activo.fecha"/>
												                <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
												            </div>
												        </div>
												    </div>
				                                <label class="col-lg-3 control-label">Vence Poliza</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.vencePoliza" id="txtVencePoliza" />
				                                </div>
				                                <label class="col-lg-3 control-label">Aseguradora</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.aseguradora" id="txtAseguradora" />
				                                </div>
				                                <label class="col-lg-3 control-label">Agente</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.agente" id="txtAgente" />
				                                </div>
				                                <label class="col-lg-3 control-label">Valor Asegurador</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.valorAsegurado" id="txtValorAsegurado" />
				                                </div>
				                                <label class="col-lg-3 control-label">Prima Anual</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.primaAnual" id="txtPrimaAnual" />
				                                </div>
				                                <label class="col-lg-3 control-label">Prima Mensual</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.primaMensual" id="txtPrimaMensual" />
				                                </div>
				                                <label class="col-lg-3 control-label">Deducible</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.deducible" id="txtDeducible" />
				                                </div>
				                                <label class="col-lg-3 control-label">Telefono Agente</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.telefonoAgente" id="txtTelefonoAg" />
				                                </div>
				                                <label class="col-lg-3 control-label">Dept Solicitante</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.deptSolic" id="txtDept" />
				                                </div>
				                                <label class="col-lg-3 control-label">Nombre Solicitante</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.nombSolic" id="txtNombSolic" />
				                                </div>
				                                <label class="col-lg-3 control-label">Destino</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.destino" id="txtDestino" />
				                                </div>
				                                <label class="col-lg-3 control-label">Fecha Salida</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.fechaSalida" id="txtFechaSalida" />
				                                </div>
				                                <label class="col-lg-3 control-label">Condiciones</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="activo.condiciones" id="txtCondicion" />
				                                </div>
				                                <label class="col-lg-3 control-label">Observacion</label>
				                                <div class="col-lg-7">
				                                    <s:textfield name="activo.observacion" id="txtObservacion" />
				                                </div>
				                                <label class="col-lg-3 control-label">Tipo Activo</label>
				                                <div class="col-lg-7">
				                                    <s:textfield 	name="idTipo_Activo" id="txtTipoActivo" />
				                                </div>                                           
				                            	<div class="col-lg-9 col-lg-offset-3">
				                            		<s:submit id="s" cssClass="btn btn-primary" name="Registrar" value="Registrar"/>
				                            	</div> 
                                			</fieldset>            

									     </div>
									   </div>
									</div>
							</div>
                       
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
   </s:form>
</div>
 
                      <div class="panel-body">
                       
                      <div class="dataTable_wrapper">
<%--                         <s:a href="listaSucursal"><button type="button" class="btn btn-outline btn-success btn-lg btn-block">NUEVO EMPLEADO</button></s:a><br> --%>
                         
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                   
                                        <tr>
                                           <td>idactivo</td>
                                        	<td>nombre</td>
                                        	<td>centroCosto</td>
                                        	<td>grupo</td>
                                        	<td>ubicacion</td>
                                        	<td>responsable</td>
                                        	<td>idproveedor</td>
                                        	<td>marca</td>
                                        	<td>modelo</td>
                                        	<td>serie</td>
                                        	<td>placa</td>
                                        	<td>codigoBarra</td>
                                        	<td>fechaCompra</td>
                                        	<td>valorComprar</td>
                                        	<td>garantia</td>
                                        	<td>venceGarantia</td>
                                        	<td>vidaUtil</td>
                                        	<td>polizanro</td>
                                        	<td>fecha</td>
                                        	<td>vencePoliza</td>
                                        	<td>aseguradora</td>
                                        	<td>agente</td>
                                        	<td>valorAsegurado</td>
                                        	<td>primaAnual</td>
                                        	<td>primaMensual</td>
                                        	<td>deducible</td>
                                        	<td>telefonoAgente</td>
                                        	<td>deptSolic</td>
                                        	<td>nombSolic</td>
                                        	<td>destino</td>
                                        	<td>fechaSalida</td>
                                        	<td>condiciones</td>
                                        	<td>observacion</td>
                                        	<td>idTipo_Activo</td>
                                       		<th>Operaciones</th>
                                        </tr>
                                    </thead>
                                    
                                    <tbody>
                                  
                                       <s:iterator value="listaActivo">
                                      	 <s:url id="idEliminar" action="eliminarEmpleado">
				 							<s:param name="empleado.codigo" value="codigo"/>
				 						 </s:url>
				 						 <s:url id="idBuscar" action="buscarEmpleado">
				 							<s:param name="empleado.codigo" value="codigo"/>
										 </s:url>
                                        <tr>
                                        <td><s:property value="idactivo"/></td>
                                        	<td><s:property value="nombre"/></td>
                                        	<td><s:property value="centroCosto"/></td>
                                        	<td><s:property value="grupo"/></td>
                                        	<td><s:property value="ubicacion"/></td>
                                        	<td><s:property value="responsable"/></td>
                                        	<td><s:property value="idproveedor"/></td>
                                        	<td><s:property value="marca"/></td>
                                        	<td><s:property value="modelo"/></td>
                                        	<td><s:property value="serie"/></td>
                                        	<td><s:property value="placa"/></td>
                                        	<td><s:property value="codigoBarra"/></td>
                                        	<td><s:property value="fechaCompra"/></td>
                                        	<td><s:property value="valorComprar"/></td>
                                        	<td><s:property value="garantia"/></td>
                                        	<td><s:property value="venceGarantia"/></td>
                                        	<td><s:property value="vidaUtil"/></td>
                                        	<td><s:property value="polizanro"/></td>
                                        	<td><s:property value="fecha"/></td>
                                        	<td><s:property value="vencePoliza"/></td>
                                        	<td><s:property value="aseguradora"/></td>
                                        	<td><s:property value="agente"/></td>
                                        	<td><s:property value="valorAsegurado"/></td>
                                        	<td><s:property value="primaAnual"/></td>
                                        	<td><s:property value="primaMensual"/></td>
                                        	<td><s:property value="deducible"/></td>
                                        	<td><s:property value="telefonoAgente"/></td>
                                        	<td><s:property value="deptSolic"/></td>
                                        	<td><s:property value="nombSolic"/></td>
                                        	<td><s:property value="destino"/></td>
                                        	<td><s:property value="fechaSalida"/></td>
                                        	<td><s:property value="condiciones"/></td>
                                        	<td><s:property value="observacion"/></td>
                                        	<td><s:property value="idTipo_Activo"/></td>
                                         <td>
                                         	<img alt="Imagen" src="verFoto?idCodigo=<s:property value="codigo" />" 
                                         		width="70px" height="45px">
                                         </td>
                                         <td align="center">	
                                           	<s:a href="%{idBuscar}">
                                            	<button type="button" class="glyphicon glyphicon-pencil"><i class="fa fa-check"></i></button>
                                            </s:a>   
                                    		<s:a href="%{idEliminar}">
                                            	<button type="button" class="glyphicon glyphicon-remove" ><i class="fa fa-times"></i></button>
                                            </s:a>
                                        </tr>
                                    </s:iterator>
                                    </tbody>
                                </table>
                                </div>
                            </div>
                    
                    </div>
                 
                    </div>
                    </div></div></div>
    <!-----------------------------------------TERMINA CODIGO HASTA AQUI ---------------------------- -->
              
       
        
    
    
    

    <script src="bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
    <script src="bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
        
    });
    </script>
</body>
</html>





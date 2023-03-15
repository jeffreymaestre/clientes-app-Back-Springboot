package com.bolsadeideas.springboot.backend.apirest.models.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.bolsadeideas.springboot.backend.apirest.models.entity.Producto;

public interface IProductoDao extends CrudRepository<Producto, Long>{
	
	/*
	 * El API Spring Data JPA provee mecanismos para realizar consultas JPA atravez del nombre del metodo
	 * */
	
	//Realiza el filtro o busqueda con una consulta sql de manera manual definida en el Query
	@Query("select p from Producto p where p.nombre like %?1%")
	public List<Producto> findByNombre(String term);
	
	//Realiza el filtro o busqueda utilizando el nombre del metodo utilizando palabras claves 'que contenga' - JPA
	public List<Producto> findByNombreContainingIgnoreCase(String term);
	
	//Realiza el filtro o busqueda utilizando el nombre del metodo utilizando palabras claves 'que inicien' - JPA
	public List<Producto> findByNombreStartingWithIgnoreCase(String term);

}

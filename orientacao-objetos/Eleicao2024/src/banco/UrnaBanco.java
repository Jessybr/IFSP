package banco;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;


import model.Urna;
import model.Usuario;


public class UrnaBanco {
	private DBConnection connection; 
	
	public UrnaBanco() {
		this.connection = new DBConnection();		
	}
	
	
	public List <Urna> listar(String modeloUrna) {
		try {			
			List<Urna> urnaTabela;
			urnaTabela= new ArrayList<Urna>();		    
			String sql = "call listar_UrnaModelo ("+modeloUrna+");";
			PreparedStatement statement = connection.getConnection().prepareStatement(sql); 
			ResultSet rs = statement.executeQuery(sql);
			
			if(rs != null && rs.next()){
				 while (rs.next()){ 
									 
					 Usuario usuario = new Usuario(rs.getInt(16),rs.getString(17), 
							 rs.getString(18), rs.getString(19),
							 rs.getString(20), rs.getString(21));
					 
					 Urna urna = new Urna(rs.getInt(11), rs.getString(12), 
							 rs.getObject(13, LocalDate.class),
							 rs.getObject(14, LocalDate.class),
							 rs.getString(15), usuario);							 
					 urnaTabela.add(urna);                   
                 }    
			}
			 return urnaTabela;
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return null;
		
	}
	
	
	
	public List <Urna> listar(LocalDate dataAbertura) {
		try {			
			List<Urna> urnaTabela;
			urnaTabela= new ArrayList<Urna>();		    
			String sql = "call listar_UrnaDataAbertura ("+dataAbertura+");";
			PreparedStatement statement = connection.getConnection().prepareStatement(sql); 
			ResultSet rs = statement.executeQuery(sql);
			
			if(rs != null && rs.next()){
				 while (rs.next()){ 
									 
					 Usuario usuario = new Usuario(rs.getInt(16),rs.getString(17), 
							 rs.getString(18), rs.getString(19),
							 rs.getString(20), rs.getString(21));
					 
					 Urna urna = new Urna(rs.getInt(11), rs.getString(12), 
							 rs.getObject(13, LocalDate.class),
							 rs.getObject(14, LocalDate.class),
							 rs.getString(15), usuario);							 
					 urnaTabela.add(urna);                   
                 }    
			}
			 return urnaTabela;
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return null;
	}
		

	
	
	public List <Urna> listar(String modeloUrna, LocalDate dataAbertura) {
		
		try {			
			List<Urna> urnaTabela;
			urnaTabela= new ArrayList<Urna>();		    
			String sql = "call listar_UrnaModeloDataAbertura ("+modeloUrna+","+dataAbertura+");";
			PreparedStatement statement = connection.getConnection().prepareStatement(sql); 
			ResultSet rs = statement.executeQuery(sql);
			
			if(rs != null && rs.next()){
				 while (rs.next()){ 
									 
					 Usuario usuario = new Usuario(rs.getInt(16),rs.getString(17),
							 rs.getString(18), rs.getString(19),
							 rs.getString(20), rs.getString(21));
					 
					 Urna urna = new Urna(rs.getInt(11), rs.getString(12),
							 rs.getObject(13, LocalDate.class),
							 rs.getObject(14, LocalDate.class),
							 rs.getString(15), usuario);							 
					 urnaTabela.add(urna);                   
                 }    
			}
			 return urnaTabela;
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return null;	
	}
	

}

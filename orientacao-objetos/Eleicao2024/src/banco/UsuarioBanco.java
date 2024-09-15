package banco;

import model.Usuario;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;



public class UsuarioBanco {
	
	private DBConnection connection; 
	
	public UsuarioBanco() {
		this.connection = new DBConnection();
		
	}
	
	public void incluir (Usuario usuario) {
		
		
        try 
        {            
        	//String sql = "INSERT INTO usuario (senha,nome,cpf,tipo,ativo) VALUES (?,?,?,?,?);";
        	String sql = "call Inserir_Usuario (?,?,?,?,?);";
        	PreparedStatement statement = connection.getConnection().prepareStatement(sql); 
        	statement.setString(1, usuario.getSenha()); 
        	statement.setString(2, usuario.getNome()); 
        	statement.setString(3, usuario.getCpf()); 
        	statement.setString(4, usuario.getTipo());  
        	statement.setString(5, usuario.getAtivo());  
        	statement.execute();            
        	statement.close(); 
        } 
        catch (SQLException u) { 
            throw new RuntimeException(u);         
        }     
    
	}
	
	public Usuario consultar (Usuario usuario) {
				
		try {
			//String sql = "SELECT idUsuario, nome, senha, cpf, tipo, ativo FROM usuario WHERE cpf = '"+usuario.getCpf()+"'";
			String sql = "call selecionar_Usuario ("+usuario.getCpf()+");";
			PreparedStatement statement = connection.getConnection().prepareStatement(sql); 
			ResultSet rs = statement.executeQuery(sql);
			if(rs != null && rs.next()){
	           usuario.setIdUsuario(rs.getInt("idUsuario"));
	           usuario.setNome(rs.getString("nome"));
	           usuario.setSenha(rs.getString("senha"));
	           usuario.setTipo(rs.getString("tipo"));
	           usuario.setAtivo(rs.getString("ativo"));
			}
			return usuario;
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return null;
		}
	
	
public void alterar (Usuario usuario) {
		
		
        try 
        {            
        	//String sql = "UPDATE usuario SET senha =?, nome =?, cpf=?, tipo=?, ativo=? WHERE idUsuario = ?;";
        	String sql = "call alterar_Usuario (?,?,?,?,?,?);";
        	PreparedStatement statement = connection.getConnection().prepareStatement(sql); 
        	statement.setString(1, usuario.getSenha()); 
        	statement.setString(2, usuario.getNome()); 
        	statement.setString(3, usuario.getCpf()); 
        	statement.setString(4, usuario.getTipo());  
        	statement.setString(5, usuario.getAtivo());
        	statement.setInt(6, usuario.getIdUsuario());
        	statement.executeUpdate();          
        	statement.close();
        	        	
        } 
        catch (SQLException u) {
        	throw new RuntimeException(u);         
        }    
               
    
	}
 	

}

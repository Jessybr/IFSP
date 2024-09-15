package banco;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import model.Candidatura;
import model.Urna;
import model.Usuario;
import model.Voto;
import model.Eleicao;


public class EleicaoBanco {
private DBConnection connection; 
	
	public EleicaoBanco() {
		this.connection = new DBConnection();		
	}
	

	public void incluir (Eleicao eleicao) {
				
        try 
        {            
        	String sql = "call Inserir_Eleicao (?,?);";
        	PreparedStatement statement = connection.getConnection().prepareStatement(sql); 
        	statement.setObject(1, eleicao.getDataRealizacao()); 
        	statement.setString(2, eleicao.getStatus()); 
        	statement.execute();            
        	statement.close(); 
        } 
        catch (SQLException u) { 
            throw new RuntimeException(u);         
        }     
    
	}
	
	public Eleicao consultar (Eleicao eleicao) {
				
		try {
			String sql = "call selecionar_Eleicao_Codigo ("+eleicao.getCodEleicao()+");";
			PreparedStatement statement = connection.getConnection().prepareStatement(sql); 
			ResultSet rs = statement.executeQuery(sql);
			if(rs != null && rs.next()){
			   eleicao.setCodEleicao(rs.getInt("idEleicao"));
			   eleicao.setDataRealizacao(rs.getObject("dataRealizacao", LocalDate.class));
			   eleicao.setStatus(rs.getString("statusEleicao"));
	        }
			return eleicao;
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return null;
		}
	
	

	public Eleicao listaVotoEleicao(Eleicao eleicao){		
		try {			
			List<Voto> votoTabela;
		    votoTabela= new ArrayList<Voto>();		    
			String sql = "call listar_VotoEleicao ("+eleicao.getCodEleicao()+");";
			PreparedStatement statement = connection.getConnection().prepareStatement(sql); 
			ResultSet rs = statement.executeQuery(sql);
			
			if(rs != null && rs.next()){
				 while (rs.next()){ 
									 
					 Voto voto = new Voto();
					 voto.setCodVoto(rs.getInt(1));
					 voto.setDataVoto(rs.getObject(2,LocalDate.class));
					 voto.setTipoEleitor(rs.getString(3));
					 voto.setVotoBranco (rs.getString(4));
					 voto.setVotoNulo (rs.getString(5));
					 
					 Candidatura candidatura = new Candidatura(rs.getInt(7), rs.getString(8), rs.getInt(9),
							 rs.getInt(10),rs.getInt(11), rs.getString(12));
					 voto.setCandidatura(candidatura);	
					 
					 
					 Usuario usuario = new Usuario(rs.getInt(18),rs.getString(19), rs.getString(20), rs.getString(21),
							 rs.getString(22), rs.getString(23));
					 
					 Urna urna = new Urna(rs.getInt(13), rs.getString(14), rs.getObject(15, LocalDate.class),
							 rs.getObject(16, LocalDate.class),rs.getString(17), usuario);							 
					 voto.setUrna(urna);
					 votoTabela.add(voto);                   
                 }    
				 eleicao.setListaVotos(votoTabela);
	          }
			 return eleicao;
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return null;
		}
}
/*
 * voto.idVoto 1, voto.dataVoto 2, voto.tipoEleitor 3, voto.VotoBranco 4, voto.VotoNulo 5,
 * voto.idEleicao 6, voto.idCandidatura 7, candidatura.nomeCandidato 8,
 * candidatura.pesoAluno 9, candidatura.pesoProfessor 10,
 * candidatura.pesoFuncionario 11, candidatura.tipoCandidatura 12, voto.idUrna 13,
 * urna.modeloUrna 14, urna.dataAbertura 15, urna.dataFechamento 16, urna.statusUrna 17,
 * urna.idUsuario 18, usuario.senha 19, usuario.nome 20, usuario.cpf 21, usuario.tipo 22,
 * usuario.ativo 23 
 */
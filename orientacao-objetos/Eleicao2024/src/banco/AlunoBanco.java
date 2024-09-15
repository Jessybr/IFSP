package banco;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Aluno;

public class AlunoBanco extends EleitorBanco {
public AlunoBanco() {
	super();
	}

	public void incluir(Aluno aluno) {
		try {
			//insere aluno na tabela eleitor
			super.incluir(aluno);
	
			String sql = "call inserir_Aluno (?,?,?);";
			PreparedStatement statement = connection.getConnection().prepareStatement(sql);
			statement.setLong(1, aluno.getNumProntuario());
			statement.setString(2, aluno.getStatusMatricula());
			statement.setString(3, aluno.getStatusMatricula());
			statement.execute();
			statement.close();
			}
		catch(SQLException u) {
			throw new RuntimeException(u);
		}
	}

}
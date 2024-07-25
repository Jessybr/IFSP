package banco;


import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.Professor;

public class ProfessorBanco extends EleitorBanco {
		
		public ProfessorrBanco() {
			super();
			
		}
		
		public void incluir(Professor professor) {
			
			try
			{
				String sql = "call inserir_Professor(?,?,?,?);";
				PreparedStatement statement = connection.getConnection().prepareStatement(sql);
				statement.setLong(1, professor.getNumFuncional());
				statement.setString(2, professor.getTitulacao());
				statement.setString(3, professor.getTitulacao());
				statement.execute();
				statement.close();
		}
		catch(SQLException u) {
			throw new RuntimeException(u);
		}
	}
}

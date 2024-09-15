package banco;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.Eleitor;

public class EleitorBanco {
		protected DBConnection connection;
		
		public EleitorBanco() {
			this.connection = new DBConnection();
			
		}
		
		public void incluir(Eleitor eleitor) {
			
			try
			{
				String sql = "call inserir_Eleitor(?,?);";
				PreparedStatement statement = connection.getConnection().prepareStatement(sql);
				statement.setString(1, eleitor.getNomeEleitor());
				statement.setObject(2, eleitor.getDataCadastro());
				statement.execute();
				statement.close();
		}
		catch(SQLException u) {
			throw new RuntimeException(u);
		}
	}
}

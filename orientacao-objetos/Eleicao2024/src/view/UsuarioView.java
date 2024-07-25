package view;

import model.Usuario;
import banco.UsuarioBanco;

import org.eclipse.swt.widgets.Display;

import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;

import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.MessageBox;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;

public class UsuarioView {

	protected Shell shellUsuario;
	private Text textNome;
	private Text textCpf;
	private Text textSenha;
	private Text textTipo;
	private Text textAtivo;
	
	// objetos de Usuario
	private UsuarioBanco bancoUsuario = new UsuarioBanco();
	private Usuario modelUsuario;

	/**
	 * Launch the application.
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			UsuarioView window = new UsuarioView();
			window.open();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * Open the window.
	 */
	public void open() {
		Display display = Display.getDefault();
		createContents();
		shellUsuario.open();
		shellUsuario.layout();
		while (!shellUsuario.isDisposed()) {
			if (!display.readAndDispatch()) {
				display.sleep();
			}
		}
	}

	/**
	 * Create contents of the window.
	 */
	protected void createContents() {
		shellUsuario = new Shell();
		shellUsuario.setSize(564, 362);
		shellUsuario.setText("SWT Application");
		
		textNome = new Text(shellUsuario, SWT.BORDER);
		textNome.setBounds(160, 26, 249, 21);
		
		textCpf = new Text(shellUsuario, SWT.BORDER);
		textCpf.setBounds(160, 79, 249, 21);
		
		textSenha = new Text(shellUsuario, SWT.BORDER);
		textSenha.setBounds(160, 128, 249, 21);
		
		textTipo = new Text(shellUsuario, SWT.BORDER);
		textTipo.setBounds(160, 169, 76, 21);
		
		textAtivo = new Text(shellUsuario, SWT.BORDER);
		textAtivo.setBounds(160, 211, 76, 21);
		
		Label lblNome = new Label(shellUsuario, SWT.NONE);
		lblNome.setBounds(39, 26, 55, 15);
		lblNome.setText("Nome");
		
		Label lblCpf = new Label(shellUsuario, SWT.NONE);
		lblCpf.setBounds(39, 85, 55, 15);
		lblCpf.setText("Cpf");
		
		Label lblSenha = new Label(shellUsuario, SWT.NONE);
		lblSenha.setBounds(39, 134, 55, 15);
		lblSenha.setText("Senha");
		
		Label lblTipo = new Label(shellUsuario, SWT.NONE);
		lblTipo.setBounds(39, 175, 55, 15);
		lblTipo.setText("Tipo");
		
		Label lblAtivo = new Label(shellUsuario, SWT.NONE);
		lblAtivo.setBounds(39, 217, 55, 15);
		lblAtivo.setText("Ativo");
		
		// criando objetos de MessageBOX
		MessageBox caixaWarning = new MessageBox(shellUsuario, SWT.OK);
		caixaWarning.setText("Aviso");
		
		
		Button btnIncluir = new Button(shellUsuario, SWT.NONE);
		Button btnAlterar = new Button(shellUsuario, SWT.NONE);
		btnAlterar.addSelectionListener(new SelectionAdapter() {
			@Override
			public void widgetSelected(SelectionEvent e) {
				try {
					
					if (textNome.getCharCount() == 0 && textSenha.getCharCount() == 0 
						&& textCpf.getCharCount() == 0 && textTipo.getCharCount() == 0 && textAtivo.getCharCount() == 0) {					
						caixaWarning.setMessage("Os campos estão em branco!");
						caixaWarning.open();
					} else{
						
						modelUsuario.setNome(textNome.getText());
						modelUsuario.setSenha(textSenha.getText());
						modelUsuario.setCpf(textCpf.getText());
						modelUsuario.setTipo(textTipo.getText());
						modelUsuario.setAtivo(textAtivo.getText());
						
						bancoUsuario.alterar(modelUsuario);
						
					}
															
				} catch (Exception incluir) {
					incluir.printStackTrace();
				}
			}
		});
		Button btnLimpar = new Button(shellUsuario, SWT.NONE);
		Button btnConsultar = new Button(shellUsuario, SWT.NONE);

		btnLimpar.addSelectionListener(new SelectionAdapter() {
			@Override
			public void widgetSelected(SelectionEvent e) {
				textNome.setText("");
				textSenha.setText("");
				textCpf.setText("");
				textTipo.setText("");
				textAtivo.setText("");
				btnIncluir.setEnabled(true);
				btnAlterar.setEnabled(true);
				btnConsultar.setEnabled(true);
			}
		});
		btnLimpar.setBounds(423, 276, 75, 25);
		btnLimpar.setText("Limpar");
		
		btnIncluir.addSelectionListener(new SelectionAdapter() {
			@Override
			public void widgetSelected(SelectionEvent e) {
				try {
					
					if (textNome.getCharCount() == 0 && textSenha.getCharCount() == 0 
						&& textCpf.getCharCount() == 0 && textTipo.getCharCount() == 0 && textAtivo.getCharCount() == 0) {					
						caixaWarning.setMessage("Os campos estão em branco!");
						caixaWarning.open();
					} else{
						
						modelUsuario = new Usuario(textSenha.getText(),textNome.getText(),textCpf.getText(),textTipo.getText(),textAtivo.getText());
						bancoUsuario.incluir(modelUsuario);
						
					}
															
				} catch (Exception incluir) {
					incluir.printStackTrace();
				}
			
			}
		});
		btnIncluir.setBounds(39, 276, 75, 25);
		btnIncluir.setText("Incluir");
		
		btnConsultar.addSelectionListener(new SelectionAdapter() {
			@Override
			public void widgetSelected(SelectionEvent e) {
				btnIncluir.setEnabled(false);
				try {
					
					if (textCpf.getCharCount() == 0) {					
						caixaWarning.setMessage("O CPF deve ser informado!");
						caixaWarning.open();
					} else{
						
						modelUsuario = new Usuario(textCpf.getText());
						bancoUsuario.consultar(modelUsuario);
						textNome.setText(modelUsuario.getNome());
						textCpf.setText(modelUsuario.getCpf());
						textSenha.setText(modelUsuario.getSenha());
						textTipo.setText(modelUsuario.getTipo());
						textAtivo.setText(modelUsuario.getAtivo());
					}
															
				} catch (Exception consultar) {
					consultar.printStackTrace();
				}
			}
		});
		btnConsultar.setBounds(161, 276, 75, 25);
		btnConsultar.setText("Consultar");
		
		btnAlterar.setBounds(281, 276, 75, 25);
		btnAlterar.setText("Alterar");

	}
}

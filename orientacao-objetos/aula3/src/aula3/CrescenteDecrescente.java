package aula3;

import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.MessageBox;
import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;

public class CrescenteDecrescente {

	protected Shell shell;
	private Text textNum;
	private Text textCrescente;
	private Text textDecrescente;
	private Integer num;
	private Integer cont;
	private String concatString = " ";
	protected Shell shlAviso;

	/**
	 * Launch the application.
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			CrescenteDecrescente window = new CrescenteDecrescente();
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
		shell.open();
		shell.layout();
		while (!shell.isDisposed()) {
			if (!display.readAndDispatch()) {
				display.sleep();
			}
		}
	}

	/**
	 * Create contents of the window.
	 */
	protected void createContents() {
		shell = new Shell();
		shell.setSize(515, 567);
		shell.setText("Inteiro");
		
		Label lblDigiteNum = new Label(shell, SWT.NONE);
		lblDigiteNum.setBounds(44, 67, 242, 15);
		lblDigiteNum.setText("Digite um número inteiro (valor acima de 1):");
		
		textNum = new Text(shell, SWT.BORDER);
		textNum.setBounds(347, 64, 76, 21);
		
		MessageBox caixaWarning = new MessageBox(shell,SWT.OK);
		caixaWarning.setText("Aviso");
		
		Button btnExibirOrdem = new Button(shell, SWT.NONE);
		btnExibirOrdem.addSelectionListener(new SelectionAdapter() {
			@Override
			public void widgetSelected(SelectionEvent e) {
				if(textNum.getCharCount() == 0) {
					caixaWarning.setText("Erro");
					caixaWarning.setMessage("Por favor, digite um valor para prossegir!");
					caixaWarning.open();
				}else {
					if(validaInteiro(textNum.getText())) {
						num = Integer.decode(textNum.getText());
						
						if(num > 0) {
							
							for(cont = 0; cont <= num; cont++) {
								concatString = concatString.concat(cont + "; ");
							}
							
							textCrescente.setText(concatString);
							concatString = " ";
							
							for(cont = num; cont >= 0; cont--) {
								concatString = concatString.concat(cont + "; ");
							}
							
							textDecrescente.setText(concatString);
						}else {
							caixaWarning.setText("Aviso");
							caixaWarning.setText("O número digitado deve ser maior que 0!");
							caixaWarning.open();
						}
					}else {
						caixaWarning.setText("Aviso");
						caixaWarning.setMessage("O número tem que ser inteiro!");
						caixaWarning.open();
					}
				}
			}
		});
		btnExibirOrdem.setBounds(139, 153, 218, 30);
		btnExibirOrdem.setText("Exibir Ordem");
		
		textCrescente = new Text(shell, SWT.BORDER);
		textCrescente.setBounds(79, 278, 349, 43);
		
		Label lblOrdemCrescente = new Label(shell, SWT.NONE);
		lblOrdemCrescente.setBounds(206, 244, 112, 15);
		lblOrdemCrescente.setText("Ordem Crescente");
		
		Label lblOrdemDecrescente = new Label(shell, SWT.NONE);
		lblOrdemDecrescente.setBounds(206, 360, 135, 15);
		lblOrdemDecrescente.setText("Ordem Decrescente");
		
		textDecrescente = new Text(shell, SWT.BORDER);
		textDecrescente.setBounds(79, 402, 349, 43);
		
	}
	
	private boolean validaInteiro (String numDigitado) {
		
		try {
			Integer.parseInt(numDigitado);
			return true;
		}
		catch(Exception e) {
			return false;
		}
	}
	
	
}

package exercicio2;

import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.MessageBox;
import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;

public class ParesImpares {

	protected Shell shell;
	private Text textNumInt;
	private Text textNumIntAcima;
	private Text textNumPares;
	private Text textNumImpar;
	private Text textSomaNumImpar;
	private Text textMultipliPares;
	protected Shell shlAviso;
	private Integer num1;
	private Integer num2;
	private Integer cont;
	private Integer quantNumPares = 0;
	private Integer quantNumImpares = 0;
	private Integer somaNumImpares = 0;
	private Integer multiNumPares = 1;

	/**
	 * Launch the application.
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			ParesImpares window = new ParesImpares();
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
		shell.setSize(516, 525);
		shell.setText("SWT Application");
		
		Label lblDigiteNum = new Label(shell, SWT.NONE);
		lblDigiteNum.setBounds(58, 42, 213, 15);
		lblDigiteNum.setText("Digite um numero inteiro (acima de 1):");
		
		Label lblDigiteNumAcima = new Label(shell, SWT.NONE);
		lblDigiteNumAcima.setBounds(58, 92, 278, 15);
		lblDigiteNumAcima.setText("Digite um numero inteiro (acima do valor anterior):");
		
		MessageBox caixaWarning = new MessageBox(shell,SWT.OK);
		caixaWarning.setText("Aviso");
		
		Button btnExecutar = new Button(shell, SWT.NONE);
		btnExecutar.addSelectionListener(new SelectionAdapter() {
			@Override
			public void widgetSelected(SelectionEvent e) {
				
				if(textNumInt.getCharCount() == 0 || textNumIntAcima.getCharCount() == 0) {
					caixaWarning.setText("Erro");
					caixaWarning.setMessage("Por favor, digite um valor para prossegir!");
					caixaWarning.open();
				}else {
					if(validaInteiro(textNumInt.getText()) || validaInteiro(textNumIntAcima.getText())) {
						num1 = Integer.decode(textNumInt.getText());
						num2 = Integer.decode(textNumIntAcima.getText());
						
						if(num1 > 0 && num2 > 0) {
							
							for(cont = num1; cont <= num2; cont++) {
								
								if(cont % 2 == 0) {
									quantNumPares++;
									multiNumPares *= cont;
								}else {
									quantNumImpares++;
									somaNumImpares += cont;
								}
							}
							
							textNumPares.setText(quantNumPares + "");
							textNumImpar.setText(quantNumImpares + "");
							textSomaNumImpar.setText(somaNumImpares + "");
							textMultipliPares.setText(multiNumPares + "");
							
						}else {
							caixaWarning.setText("Erro");
							caixaWarning.setMessage("Por favor, digite um valor maior que 0 para prossegir!");
							caixaWarning.open();
						}
					}else {
						caixaWarning.setText("Erro");
						caixaWarning.setMessage("Por favor, digite um valor válido para prossegir!");
						caixaWarning.open();
					}
				}
			}
		});
		btnExecutar.setBounds(144, 162, 233, 49);
		btnExecutar.setText("Executar");
		
		Label lblQuantPares = new Label(shell, SWT.NONE);
		lblQuantPares.setBounds(58, 258, 218, 15);
		lblQuantPares.setText("Quantidade de numeros pares:");
		
		Label lblQuantImpar3 = new Label(shell, SWT.NONE);
		lblQuantImpar3.setBounds(58, 292, 265, 15);
		lblQuantImpar3.setText("Quantidade de numeros impares");
		
		Label lblSomaImpar3 = new Label(shell, SWT.NONE);
		lblSomaImpar3.setBounds(58, 337, 265, 15);
		lblSomaImpar3.setText("Soma dos numeros impares");
		
		Label lblMultipliPares = new Label(shell, SWT.NONE);
		lblMultipliPares.setBounds(58, 377, 240, 15);
		lblMultipliPares.setText("Multiplicação dos números pares");
		
		textNumInt = new Text(shell, SWT.BORDER);
		textNumInt.setBounds(366, 36, 76, 21);
		
		textNumIntAcima = new Text(shell, SWT.BORDER);
		textNumIntAcima.setBounds(366, 86, 76, 21);
		
		textNumPares = new Text(shell, SWT.BORDER);
		textNumPares.setBounds(366, 258, 76, 21);
		
		textNumImpar = new Text(shell, SWT.BORDER);
		textNumImpar.setBounds(366, 292, 76, 21);
		
		textSomaNumImpar = new Text(shell, SWT.BORDER);
		textSomaNumImpar.setBounds(366, 337, 76, 21);
		
		textMultipliPares = new Text(shell, SWT.BORDER);
		textMultipliPares.setBounds(366, 377, 76, 21);

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

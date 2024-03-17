package exercicio3;

import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.MessageBox;
import org.eclipse.jface.text.MultiStringMatcher.Match;
import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.internal.C;
import java.lang.Math;

public class CalculoPoupanca {

	protected Shell shell;
	private Text textValor;
	private Text textMeses;
	private Text textJuros;
	private Text textTotal;
	protected Shell shlAviso;
	private Integer numValor;
	private Integer numMeses;
	private Double numJuros;
	private Double aux1;
	private Double aux2;
	private Double valorTotal;

	/**
	 * Launch the application.
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			CalculoPoupanca window = new CalculoPoupanca();
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
		shell.setSize(540, 481);
		shell.setText("SWT Application");
		
		Label lblValorPoupado = new Label(shell, SWT.NONE);
		lblValorPoupado.setBounds(34, 31, 237, 20);
		lblValorPoupado.setText("Valor a ser poupado por mês");
		
		Label lblQuantidadeDeMeses = new Label(shell, SWT.NONE);
		lblQuantidadeDeMeses.setBounds(33, 85, 197, 20);
		lblQuantidadeDeMeses.setText("Quantidade de meses");
		
		Label lblQuantidadeDeJuros = new Label(shell, SWT.NONE);
		lblQuantidadeDeJuros.setBounds(34, 140, 196, 20);
		lblQuantidadeDeJuros.setText("Quantidade de Juros Mensal");
		
		MessageBox caixaWarning = new MessageBox(shell,SWT.OK);
		caixaWarning.setText("Aviso");
		
		Button btnPoupar = new Button(shell, SWT.NONE);
		btnPoupar.addSelectionListener(new SelectionAdapter() {
			@Override
			public void widgetSelected(SelectionEvent e) {
				if(textValor.getCharCount() == 0 || textMeses.getCharCount() == 0 || textJuros.getCharCount() == 0) {
					caixaWarning.setText("Erro");
					caixaWarning.setMessage("Por favor, digite um valor para prossegir!");
					caixaWarning.open();
				}else {
					if(validaInteiro(textValor.getText()) || validaInteiro(textMeses.getText()) || validaDouble(textJuros.getText())) {
						numValor = Integer.decode(textValor.getText());
						numMeses = Integer.decode(textMeses.getText());
						numJuros = Double.valueOf(textJuros.getText()).doubleValue();
						if(numValor > 0 && numMeses > 0 && numJuros > 0) {
//							m = C . ( 1 + J)^3
							aux1 = numJuros / 100;
							aux1++;
							aux2 = Math.pow(aux1, numMeses);
							valorTotal = numValor * aux2;
							textTotal.setText(valorTotal + "");
							
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
		btnPoupar.setBounds(117, 201, 282, 51);
		btnPoupar.setText("Poupar");
		
		Label lblValorTotalAcumulado = new Label(shell, SWT.NONE);
		lblValorTotalAcumulado.setBounds(34, 299, 237, 20);
		lblValorTotalAcumulado.setText("Valor total acumulado no período");
		
		textValor = new Text(shell, SWT.BORDER);
		textValor.setBounds(335, 25, 110, 26);
		
		textMeses = new Text(shell, SWT.BORDER);
		textMeses.setBounds(335, 85, 110, 26);
		
		textJuros = new Text(shell, SWT.BORDER);
		textJuros.setBounds(335, 140, 110, 26);
		
		textTotal = new Text(shell, SWT.BORDER);
		textTotal.setEditable(false);
		textTotal.setEnabled(false);
		textTotal.setBounds(315, 299, 160, 70);

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
	private boolean validaDouble (String numDigitado) {
		
		try {
			Double.valueOf(numDigitado).doubleValue();
			return true;
		}
		catch(Exception e) {
			return false;
		}
	}
}

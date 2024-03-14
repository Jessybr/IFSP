package exercicio2;

import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.Button;
import org.eclipse.jface.resource.LocalResourceManager;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.ColorDescriptor;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;

public class IMC {

	protected Shell shell;
	private Text textPeso;
	private Text textAltura;
	private Text textSeuIMC;
	private LocalResourceManager localResourceManager;
	private Float peso;
	private Float altura;
	private Float IMC;

	/**
	 * Launch the application.
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			IMC window = new IMC();
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
		createResourceManager();
		shell.setBackground(localResourceManager.create(ColorDescriptor.createFrom(new RGB(174, 253, 225))));
		shell.setSize(653, 550);
		shell.setText("SWT Application");
		
		Label lblPeso = new Label(shell, SWT.NONE);
		lblPeso.setBackground(localResourceManager.create(ColorDescriptor.createFrom(new RGB(174, 253, 225))));
		lblPeso.setBounds(61, 138, 70, 20);
		lblPeso.setText("Peso");
		
		Label lblAltura = new Label(shell, SWT.NONE);
		lblAltura.setBackground(localResourceManager.create(ColorDescriptor.createFrom(new RGB(174, 253, 225))));
		lblAltura.setText("Altura");
		lblAltura.setBounds(338, 138, 70, 20);
		
		Label lblSeuImc = new Label(shell, SWT.NONE);
		lblSeuImc.setBackground(localResourceManager.create(ColorDescriptor.createFrom(new RGB(174, 253, 225))));
		lblSeuImc.setText("Seu imc é");
		lblSeuImc.setBounds(170, 339, 70, 20);
		
		textPeso = new Text(shell, SWT.BORDER);
		textPeso.setTouchEnabled(true);
		textPeso.setBounds(142, 138, 145, 26);
		
		textAltura = new Text(shell, SWT.BORDER);
		textAltura.setTouchEnabled(true);
		textAltura.setBounds(419, 138, 145, 26);
		
		textSeuIMC = new Text(shell, SWT.BORDER);
		textSeuIMC.setEditable(false);
		textSeuIMC.setEnabled(false);
		textSeuIMC.setBounds(308, 336, 145, 26);
		
		Button btnCalcularIMC = new Button(shell, SWT.NONE);
		btnCalcularIMC.addSelectionListener(new SelectionAdapter() {
			@Override
			public void widgetSelected(SelectionEvent e) {
				peso = Float.valueOf(textPeso.getText());
				altura = Float.valueOf(textAltura.getText());
				IMC = peso / (altura * altura);
				textSeuIMC.setText(IMC + "");
				
			}
		});
		btnCalcularIMC.setBounds(170, 272, 117, 30);
		btnCalcularIMC.setText("Calcular IMC");
		
		Button btnLimparCampos = new Button(shell, SWT.NONE);
		btnLimparCampos.addSelectionListener(new SelectionAdapter() {
			@Override
			public void widgetSelected(SelectionEvent e) {
				textSeuIMC.setText("");
			}
		});
		btnLimparCampos.setBounds(363, 272, 129, 30);
		btnLimparCampos.setText("Limpar Campos");

	}
	private void createResourceManager() {
		localResourceManager = new LocalResourceManager(JFaceResources.getResources(),shell);
	}

}

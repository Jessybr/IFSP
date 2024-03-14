package exercicio3;

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

public class CalcularTotal {

	protected Shell shell;
	private Text textQtddLivros;
	private Text textPrecoLivro;
	private Text textSemDesconto;
	private Text textComDesconto;
	private Text textEconomiza;
	private LocalResourceManager localResourceManager;
	private Float preco;
	private Float livros;
	private Float precoTotalLivros;
	private Float precoTotalCDesconto;
	private Float precoTotalSDesconto;
	private Float precoDiferenca;

	/**
	 * Launch the application.
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			CalcularTotal window = new CalcularTotal();
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
		shell.setBackground(localResourceManager.create(ColorDescriptor.createFrom(new RGB(254, 233, 150))));
		shell.setSize(678, 567);
		shell.setText("SWT Application");
		
		Label lblQuantidadeDeLivros = new Label(shell, SWT.NONE);
		lblQuantidadeDeLivros.setBackground(localResourceManager.create(ColorDescriptor.createFrom(new RGB(254, 233, 150))));
		lblQuantidadeDeLivros.setBounds(90, 91, 154, 20);
		lblQuantidadeDeLivros.setText("Quantidade de livros");
		
		Label lblPrecoDoLivro = new Label(shell, SWT.NONE);
		lblPrecoDoLivro.setBackground(localResourceManager.create(ColorDescriptor.createFrom(new RGB(254, 233, 150))));
		lblPrecoDoLivro.setBounds(90, 153, 154, 20);
		lblPrecoDoLivro.setText("Preço do livro");
		
		textQtddLivros = new Text(shell, SWT.BORDER);
		textQtddLivros.setBounds(317, 91, 197, 26);
		
		textPrecoLivro = new Text(shell, SWT.BORDER);
		textPrecoLivro.setBounds(317, 153, 197, 26);
		
		Button btnCalcularTotal = new Button(shell, SWT.NONE);
		btnCalcularTotal.addSelectionListener(new SelectionAdapter() {
			@Override
			public void widgetSelected(SelectionEvent e) {
				preco = Float.valueOf(textPrecoLivro.getText());
				livros = Float.valueOf(textQtddLivros.getText());
				precoTotalLivros = preco * livros;
				precoTotalCDesconto = (precoTotalLivros * 90) / 100;
				precoTotalSDesconto = precoTotalLivros;
				precoDiferenca = precoTotalSDesconto - precoTotalCDesconto;
				textComDesconto.setText(precoTotalCDesconto + "");
				textSemDesconto.setText(precoTotalSDesconto + "");
				textEconomiza.setText(precoDiferenca + "");
			}
		});
		btnCalcularTotal.setBounds(265, 224, 124, 30);
		btnCalcularTotal.setText("Calcular Total");
		
		Button btnLimparCampos = new Button(shell, SWT.NONE);
		btnLimparCampos.addSelectionListener(new SelectionAdapter() {
			@Override
			public void widgetSelected(SelectionEvent e) {
				textComDesconto.setText("");
				textSemDesconto.setText("");
				textEconomiza.setText("");
				textQtddLivros.setText("");
				textPrecoLivro.setText("");
			}
		});
		btnLimparCampos.setBounds(265, 282, 124, 30);
		btnLimparCampos.setText("Limpar campos");
		
		Label lblTotalSemDesconto = new Label(shell, SWT.NONE);
		lblTotalSemDesconto.setBackground(localResourceManager.create(ColorDescriptor.createFrom(new RGB(254, 233, 150))));
		lblTotalSemDesconto.setBounds(90, 360, 249, 20);
		lblTotalSemDesconto.setText("Total sem desconto");
		
		Label lblTotalComDesconto = new Label(shell, SWT.NONE);
		lblTotalComDesconto.setBackground(localResourceManager.create(ColorDescriptor.createFrom(new RGB(254, 233, 150))));
		lblTotalComDesconto.setText("Total com desconto");
		lblTotalComDesconto.setBounds(90, 406, 249, 20);
		
		Label lblVoceEconomizara = new Label(shell, SWT.NONE);
		lblVoceEconomizara.setBackground(localResourceManager.create(ColorDescriptor.createFrom(new RGB(254, 233, 150))));
		lblVoceEconomizara.setBounds(90, 453, 249, 20);
		lblVoceEconomizara.setText("Voce economiza em pagar a vista");
		
		textSemDesconto = new Text(shell, SWT.BORDER);
		textSemDesconto.setEditable(false);
		textSemDesconto.setEnabled(false);
		textSemDesconto.setBounds(407, 357, 154, 26);
		
		textComDesconto = new Text(shell, SWT.BORDER);
		textComDesconto.setEditable(false);
		textComDesconto.setEnabled(false);
		textComDesconto.setBounds(407, 403, 154, 26);
		
		textEconomiza = new Text(shell, SWT.BORDER);
		textEconomiza.setEditable(false);
		textEconomiza.setEnabled(false);
		textEconomiza.setBounds(407, 450, 154, 26);

	}
	private void createResourceManager() {
		localResourceManager = new LocalResourceManager(JFaceResources.getResources(),shell);
	}
}

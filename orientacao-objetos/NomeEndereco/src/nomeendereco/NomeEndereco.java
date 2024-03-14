package nomeendereco;

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

public class NomeEndereco {

	protected Shell shell;
	private Text textNome;
	private Text textEndereco;
	private Text textBemVindoNome;
	private Text textBemVindoEndereco;
	private LocalResourceManager localResourceManager;

	/**
	 * Launch the application.
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			NomeEndereco window = new NomeEndereco();
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
		shell.setTouchEnabled(true);
		shell.setBackground(localResourceManager.create(ColorDescriptor.createFrom(new RGB(191, 242, 253))));
		shell.setSize(703, 549);
		shell.setText("SWT Application");
		
		Label lblDigiteNome = new Label(shell, SWT.NONE);
		lblDigiteNome.setBackground(localResourceManager.create(ColorDescriptor.createFrom(new RGB(191, 242, 253))));
		lblDigiteNome.setBounds(68, 90, 150, 20);
		lblDigiteNome.setText("Digite seu nome");
		
		Label lblDigiteEndereco = new Label(shell, SWT.NONE);
		lblDigiteEndereco.setBackground(localResourceManager.create(ColorDescriptor.createFrom(new RGB(191, 242, 253))));
		lblDigiteEndereco.setText("Digite seu endereço");
		lblDigiteEndereco.setBounds(68, 150, 150, 20);
		
		textNome = new Text(shell, SWT.BORDER);
		textNome.setBounds(274, 84, 304, 26);
		
		textEndereco = new Text(shell, SWT.BORDER);
		textEndereco.setTouchEnabled(true);
		textEndereco.setBounds(274, 144, 304, 26);
		
		Label lblSejaBemVindo = new Label(shell, SWT.NONE);
		lblSejaBemVindo.setBackground(localResourceManager.create(ColorDescriptor.createFrom(new RGB(191, 242, 253))));
		lblSejaBemVindo.setText("Seja bem vindo!!");
		lblSejaBemVindo.setBounds(285, 315, 123, 20);
		
		Label lblMoradoraDe = new Label(shell, SWT.NONE);
		lblMoradoraDe.setBackground(localResourceManager.create(ColorDescriptor.createFrom(new RGB(191, 242, 253))));
		lblMoradoraDe.setText("moradora de");
		lblMoradoraDe.setBounds(297, 399, 96, 20);
		
		textBemVindoNome = new Text(shell, SWT.BORDER);
		textBemVindoNome.setEditable(false);
		textBemVindoNome.setEnabled(false);
		textBemVindoNome.setBounds(199, 355, 304, 26);
		
		textBemVindoEndereco = new Text(shell, SWT.BORDER);
		textBemVindoEndereco.setEditable(false);
		textBemVindoEndereco.setEnabled(false);
		textBemVindoEndereco.setBounds(199, 434, 304, 26);
		
		Button btnNext = new Button(shell, SWT.NONE);
		btnNext.addSelectionListener(new SelectionAdapter() {
			@Override
			public void widgetSelected(SelectionEvent e) {
				textBemVindoNome.setText(textNome.getText());
				textBemVindoEndereco.setText(textEndereco.getText());
			}
		});
		btnNext.setBounds(158, 238, 90, 30);
		btnNext.setText("Next");
		
		Button btnClear = new Button(shell, SWT.NONE);
		btnClear.addSelectionListener(new SelectionAdapter() {
			@Override
			public void widgetSelected(SelectionEvent e) {
				textBemVindoNome.setText("");
				textBemVindoEndereco.setText("");
			}
		});
		btnClear.setText("Clear");
		btnClear.setBounds(430, 238, 90, 30);

	}
	private void createResourceManager() {
		localResourceManager = new LocalResourceManager(JFaceResources.getResources(),shell);
	}
}

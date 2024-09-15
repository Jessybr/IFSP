package view;

import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Label;

public class EleitorView {

	protected Shell shell;

	/**
	 * Launch the application.
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			EleitorView window = new EleitorView();
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
		shell.setSize(450, 491);
		shell.setText("SWT Application");
		
		Label lblNomeAluno = new Label(shell, SWT.NONE);
		lblNomeAluno.setBounds(23, 48, 113, 17);
		lblNomeAluno.setText("Nome do Aluno ");
		
		Label lblNumeroProntuario = new Label(shell, SWT.NONE);
		lblNumeroProntuario.setBounds(23, 93, 151, 17);
		lblNumeroProntuario.setText("Número de Prontuário");

	}
}

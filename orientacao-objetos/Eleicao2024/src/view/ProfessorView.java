package view;

import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.DateTime;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;

public class ProfessorView {

	protected Shell shell;
	private Text text;
	private Text text_1;
	private Text text_2;
	private Text text_3;

	/**
	 * Launch the application.
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			ProfessorView window = new ProfessorView();
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
		shell.setSize(450, 342);
		shell.setText("SWT Application");
		
		Label lblNomeProfessor = new Label(shell, SWT.NONE);
		lblNomeProfessor.setBounds(10, 25, 93, 17);
		lblNomeProfessor.setText("Nome ");
		
		Label lblNewLabel = new Label(shell, SWT.NONE);
		lblNewLabel.setBounds(10, 58, 117, 17);
		lblNewLabel.setText("Data de Cadastro");
		
		Label lblNewLabel_1 = new Label(shell, SWT.NONE);
		lblNewLabel_1.setBounds(10, 93, 117, 17);
		lblNewLabel_1.setText("Titulação");
		
		Label lblNewLabel_2 = new Label(shell, SWT.NONE);
		lblNewLabel_2.setBounds(10, 126, 128, 17);
		lblNewLabel_2.setText("Area de Atuação");
		
		Label lblNewLabel_3 = new Label(shell, SWT.NONE);
		lblNewLabel_3.setBounds(10, 173, 128, 17);
		lblNewLabel_3.setText("Status Docencia");
		
		text = new Text(shell, SWT.BORDER);
		text.setBounds(254, 25, 142, 17);
		
		DateTime dateTime = new DateTime(shell, SWT.BORDER);
		dateTime.setBounds(191, 58, 220, 34);
		
		text_1 = new Text(shell, SWT.BORDER);
		text_1.setBounds(254, 113, 142, 17);
		
		text_2 = new Text(shell, SWT.BORDER);
		text_2.setBounds(254, 146, 142, 17);
		
		text_3 = new Text(shell, SWT.BORDER);
		text_3.setBounds(254, 173, 144, 17);
		
		Button btnNewButton = new Button(shell, SWT.NONE);
		btnNewButton.addSelectionListener(new SelectionAdapter() {
			@Override
			public void widgetSelected(SelectionEvent e) {
			}
		});
		btnNewButton.setBounds(165, 244, 97, 34);
		btnNewButton.setText("Cadastrar");

	}
}

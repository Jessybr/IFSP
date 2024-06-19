package view;

import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.MessageBox;
import org.eclipse.swt.widgets.Shell;

import model.Urna;

import org.eclipse.swt.widgets.Button;

import java.time.LocalDate;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.widgets.DateTime;

public class UrnaView {

	protected Shell shell;

	/**
	 * Launch the application.
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			UrnaView window = new UrnaView();
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
		shell.setSize(548, 422);
		shell.setText("SWT Application");
		
		Urna urna = new Urna(1);
		
		MessageBox caixaWarning = new MessageBox(shell,SWT.OK);
		caixaWarning.setText("Aviso");
		
		DateTime dateTimeAbertura = new DateTime(shell, SWT.BORDER);
		dateTimeAbertura.setBounds(33, 99, 229, 34);
		
		DateTime dateTimeFechamento = new DateTime(shell, SWT.BORDER);
		dateTimeFechamento.setBounds(33, 199, 229, 34);
		
		Button btnAbrirUrna = new Button(shell, SWT.NONE);
		btnAbrirUrna.addSelectionListener(new SelectionAdapter() {
			@Override
			public void widgetSelected(SelectionEvent e) {
				urna.setDataAbertura(LocalDate.now());
				
				dateTimeAbertura.setDay(urna.getDataAbertura().getDayOfMonth());
				dateTimeAbertura.setMonth(urna.getDataAbertura().getMonthValue());
				dateTimeAbertura.setYear(urna.getDataAbertura().getYear());
			}
		});
		btnAbrirUrna.setBounds(366, 99, 97, 34);
		btnAbrirUrna.setText("Abrir Urna");
		
		Button btnFecharUrna = new Button(shell, SWT.NONE);
		btnFecharUrna.addSelectionListener(new SelectionAdapter() {
			@Override
			public void widgetSelected(SelectionEvent e) {
				urna.setDataFechamento(LocalDate.now());
				
				dateTimeFechamento.setDay(urna.getDataFechamento().getDayOfMonth());
				dateTimeFechamento.setMonth(urna.getDataFechamento().getMonthValue());
				dateTimeFechamento.setYear(urna.getDataFechamento().getYear());
			}
		});
		btnFecharUrna.setBounds(366, 199, 97, 34);
		btnFecharUrna.setText("Fechar Urna");
		
		Button btnConcluir = new Button(shell, SWT.NONE);
		btnConcluir.addSelectionListener(new SelectionAdapter() {
			@Override
			public void widgetSelected(SelectionEvent e) {
				caixaWarning.setText("Urna");
				caixaWarning.setMessage("Por favor, digite um valor para prossegir!");
				caixaWarning.open();
			}
		});
		btnConcluir.setBounds(211, 286, 97, 34);
		btnConcluir.setText("Concluir");

	}
}

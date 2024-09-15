package view;

import model.Eleicao;
import model.Voto;
import banco.EleicaoBanco;

import java.time.LocalDate;


import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.MessageBox;
import org.eclipse.swt.widgets.Text;



import org.eclipse.swt.widgets.DateTime;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.jface.resource.LocalResourceManager;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.FontDescriptor;

public class EleicaoView {

	protected Shell shellEleicao;
	private Text textStatus;
	private Table tableVotos;
	private LocalResourceManager localResourceManager;
	
	// objetos de Eleicao
		private EleicaoBanco bancoEleicao = new EleicaoBanco();
		private Eleicao modelEleicao;
		private Text textCodEleicao;
		private Text textTotalVotos;


	/**
	 * Launch the application.
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			EleicaoView window = new EleicaoView();
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
		shellEleicao.open();
		shellEleicao.layout();
		while (!shellEleicao.isDisposed()) {
			if (!display.readAndDispatch()) {
				display.sleep();
			}
		}
	}

	/**
	 * Create contents of the window.
	 */
	protected void createContents() {
		shellEleicao = new Shell();
		createResourceManager();
		shellEleicao.setTouchEnabled(true);
		shellEleicao.setSize(794, 659);
		shellEleicao.setText("SWT Application");
		
		// criando objetos de MessageBOX
		MessageBox caixaWarning = new MessageBox(shellEleicao, SWT.OK);
		caixaWarning.setText("Aviso");
				
		
	
		
		
		Label lblDataRealizao = new Label(shellEleicao, SWT.NONE);
		lblDataRealizao.setBounds(22, 29, 110, 15);
		lblDataRealizao.setText("Data Realiza\u00E7\u00E3o");
		
		Label lblStatus = new Label(shellEleicao, SWT.NONE);
		lblStatus.setBounds(22, 85, 55, 15);
		lblStatus.setText("Status");
		
		textStatus = new Text(shellEleicao, SWT.BORDER);
		textStatus.setBounds(143, 82, 76, 21);
		
		DateTime dateTimeRealizacao = new DateTime(shellEleicao, SWT.BORDER);
		dateTimeRealizacao.setBounds(139, 29, 110, 24);
		
		tableVotos = new Table(shellEleicao, SWT.BORDER | SWT.FULL_SELECTION);
		tableVotos.setBounds(37, 305, 689, 252);
		tableVotos.setHeaderVisible(true);
		tableVotos.setLinesVisible(true);
		
		TableColumn tblclmnCodVoto = new TableColumn(tableVotos, SWT.NONE);
		tblclmnCodVoto.setWidth(100);
		tblclmnCodVoto.setText("Codigo Voto");
		
		TableColumn tblclmnNewColumn = new TableColumn(tableVotos, SWT.NONE);
		tblclmnNewColumn.setWidth(100);
		tblclmnNewColumn.setText("Data Voto");
		
		TableColumn tblclmnTipoEleitor = new TableColumn(tableVotos, SWT.NONE);
		tblclmnTipoEleitor.setWidth(100);
		tblclmnTipoEleitor.setText("Tipo Eleitor");
		
		TableColumn tblclmnNomeCandidato = new TableColumn(tableVotos, SWT.NONE);
		tblclmnNomeCandidato.setWidth(175);
		tblclmnNomeCandidato.setText("Nome Candidato");
		
		TableColumn tblclmnTipoCandidatura = new TableColumn(tableVotos, SWT.NONE);
		tblclmnTipoCandidatura.setWidth(100);
		tblclmnTipoCandidatura.setText("Tipo Candidatura");
		
		TableColumn tblclmnIdUrna = new TableColumn(tableVotos, SWT.NONE);
		tblclmnIdUrna.setWidth(100);
		tblclmnIdUrna.setText("C\u00F3digo Urna");
		
		Button btnIncluir = new Button(shellEleicao, SWT.NONE);
		btnIncluir.addSelectionListener(new SelectionAdapter() {
			@Override
			public void widgetSelected(SelectionEvent e) {
				try {
					
					if (textStatus.getCharCount() == 0) {					
						caixaWarning.setMessage("O status da Elei��o deve ser informado");
						caixaWarning.open();
					} else{
						
						LocalDate data = LocalDate.of(dateTimeRealizacao.getYear(),
								dateTimeRealizacao.getMonth() + 1, // SWT trabalha com mes no padr�o 0 - 11
								dateTimeRealizacao.getDay());
						
						modelEleicao = new Eleicao(data, textStatus.getText());
						bancoEleicao.incluir(modelEleicao);
						
					}
															
				} catch (Exception incluir) {
					incluir.printStackTrace();
				}
			
			
			}
		});
		btnIncluir.setBounds(325, 55, 110, 25);
		btnIncluir.setText("Incluir");
		
		Button btnConsultarEleio = new Button(shellEleicao, SWT.NONE);
		btnConsultarEleio.addSelectionListener(new SelectionAdapter() {
			@Override
			public void widgetSelected(SelectionEvent e) {
				
				try {
					
					if (textCodEleicao.getCharCount() == 0) {					
						caixaWarning.setMessage("O campo c�digo elei��o est� em branco!");
						caixaWarning.open();
					} else{
						
						modelEleicao = new Eleicao(Integer.valueOf(textCodEleicao.getText()));
						bancoEleicao.consultar(modelEleicao);
						
						dateTimeRealizacao.setDay(modelEleicao.getDataRealizacao().getDayOfMonth());
						dateTimeRealizacao.setMonth(modelEleicao.getDataRealizacao().getMonthValue()-1);// SWT trabalha com mes no padr�o 0 - 11
						dateTimeRealizacao.setYear(modelEleicao.getDataRealizacao().getYear());
						textStatus.setText(modelEleicao.getStatus());
										
					}
															
				} catch (Exception consultar) {
					consultar.printStackTrace();
				}

				
			}
		});
		btnConsultarEleio.setBounds(325, 188, 110, 25);
		btnConsultarEleio.setText("Consultar Elei\u00E7\u00E3o");
		
		Button btnConsultarResultado = new Button(shellEleicao, SWT.NONE);
		btnConsultarResultado.addSelectionListener(new SelectionAdapter() {
			@Override
			public void widgetSelected(SelectionEvent e) {
				
				try {
					
					if (textCodEleicao.getCharCount() == 0) {					
						caixaWarning.setMessage("O campo c�digo elei��o est� em branco!");
						caixaWarning.open();
					} else{
						
						modelEleicao = new Eleicao(Integer.valueOf(textCodEleicao.getText()));
						bancoEleicao.consultar(modelEleicao);
						
						dateTimeRealizacao.setDay(modelEleicao.getDataRealizacao().getDayOfMonth());
						dateTimeRealizacao.setMonth(modelEleicao.getDataRealizacao().getMonthValue()-1);// SWT trabalha com mes no padr�o 0 - 11
						dateTimeRealizacao.setYear(modelEleicao.getDataRealizacao().getYear());
						textStatus.setText(modelEleicao.getStatus());
						
						bancoEleicao.listaVotoEleicao(modelEleicao);
						
						if (modelEleicao.getListaVotos().size()==0) {
							caixaWarning.setMessage("A Elei��o informada n�o possui votos");
							caixaWarning.open();
						}else {
							
							Voto.setTotalVotos(modelEleicao.getListaVotos().size());
							textTotalVotos.setText(String.valueOf(Voto.getTotalVotos()));
							
							for (int i = 0; i < modelEleicao.getListaVotos().size(); i++) {
								
						    	Voto voto = (Voto) modelEleicao.getListaVotos().get(i);
						    	
						    	TableItem item = new TableItem(tableVotos, SWT.NONE);
						    	String[] textoItem = {String.valueOf(voto.getCodVoto()), 
						    			
						    			String.valueOf(voto.getDataVoto().getDayOfMonth())
						    			+"/"+String.valueOf(voto.getDataVoto().getMonthValue())
						    			+"/"+String.valueOf(voto.getDataVoto().getYear()),
						    			
						    			voto.getTipoEleitor(), voto.getCandidatura().getNomeCandidato(), 
						    			voto.getCandidatura().getTipoCandidatura(), 
						    			String.valueOf(voto.getUrna().getCodUrna())};
						    	
						    	item.setText(textoItem);
						    }
						}										
					}
															
				} catch (Exception consultar) {
					consultar.printStackTrace();
				}
				
			}
		});
		btnConsultarResultado.setBounds(325, 246, 110, 25);
		btnConsultarResultado.setText("Consultar Resultado");
		
		Label lblCdigoEleio = new Label(shellEleicao, SWT.NONE);
		lblCdigoEleio.setBounds(22, 193, 110, 15);
		lblCdigoEleio.setText("C\u00F3digo Elei\u00E7\u00E3o");
		
		textCodEleicao = new Text(shellEleicao, SWT.BORDER);
		textCodEleicao.setBounds(143, 190, 76, 21);
		
		Label lblTotalDeVotos = new Label(shellEleicao, SWT.NONE);
		lblTotalDeVotos.setBounds(56, 581, 212, 29);
		lblTotalDeVotos.setText("Total de Votos da Elei\u00E7\u00E3o:");
		
		textTotalVotos = new Text(shellEleicao, SWT.BORDER);
		textTotalVotos.setBounds(274, 581, 161, 29);

	}
	private void createResourceManager() {
		localResourceManager = new LocalResourceManager(JFaceResources.getResources(),shellEleicao);
	}
}

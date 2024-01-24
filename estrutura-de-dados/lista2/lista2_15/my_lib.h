struct Lista_contatos;

//Cria um novo contato, contendo nome, email e telefone a partir do strct Contato
struct Lista_contatos *criar_Cont(char *nome, int telefone, char *email);

//Encontra um contato a partir do nome e retorna o telefone e o email associado
void encontra_Cont(struct Lista_contatos *pes, char *nome);

//Remove um contato a partir do nome dado.
void remove_Cont(struct Lista_contatos *pes, char *nome);

//Libera os Contatos
void libera(struct Lista_contatos *pes);



// Hoje aprendi sobre iteração de listas de Strings e como trazer a mesma em letras maiúsculas caso necessário utilizando a função toUpperCase, for e ForEach.

// EN: T.I.L (Today I've Learned) about list iteration of Strings components and how to display the list on complete Upper Case in case of need with the function toUpperCase, for and ForEach.

// Today's Code:

// Código efetuado hoje:

void main() {
  
List<String> nomes = [
  "Gabriel",
  "Phelix",
  "Henrique",
  "Giovanna",
  "Marcos",
  "Eliane",
  "Mariane",
];
  print(nomes);
  
  for(String nome in nomes.sublist(2, 4)) {
    print(nome.toUpperCase());
  }
  
  nomes.forEach((nome){
    print(nome.toUpperCase());
  });
}

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Hoje aprendi sobre as listas no Null-Safety e seus tipos de utilização: List<String>, List<String?>, List<String?>?.

// EN: Today I've learned about Null-Safety list and it's types of code implementation: List<String>, List<String?>, List<String?>?.

// Code:
  
void main() {
  
List<String> lista1 = [];
  
  lista1.add("Gabriel");
  
  List<String>? lista2;
  
  if(lista2 != null) {
    lista2.add("Phelix");
  }
  
  List<String?>? lista3;
  
  if(lista3 != null) {
    lista3.add(null);
  }
  
  List<String?> lista4 = [];
  lista4.add(null);
  
  
}
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// Hoje eu aprendi sobre mapas e como usar o mesmo para buscar itens específicos armazenado em um tipo de lista.

// EN: Today I've Learned about Map e how to use it to get specific itens that are stored on a list.

// Code:

void main() {
  Map<int, String?> ddds = {
    11: 'São Paulo',
    19: 'Campinas',
    41: 'Curitiba',
    49: null,
  };
  
  String? cidade = ddds[11];
  print(cidade);
  
  print(ddds.length);
  
  ddds[61] = "Brasilia";

  print(ddds);
  
  ddds.remove(49);
  
  print(ddds.containsValue('Curitiba'));
  
  print(ddds.isNotEmpty);
}
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Hoje aprendi sobre transcrição de código em JSON para pegar uma String que o servidor me retorna.

// EN: Today I've Learned about Code Transcription to JSON to get a String that a server returns.

// Code:
  
import 'dart:convert';


void main() {
  Map<String, dynamic> dados = json.decode(dadosDoUsuario());
  print(dados['cursos'][0]['dificuldade']);
}

String dadosDoUsuario() {
  return """
    {
    "nome": "Gabriel",
    "sobrenome": "Phelix",
    "idade": 25,
    "casado": false,
    "altura": 1.63,
    "cursos": [
      {
        "nome": "Dart",
        "dificuldade": 1
      },
      {
        "nome": "Flutter",
        "dificuldade": 2
      }
    ],
      "Endereço": {
      "Cidade": "Campinas",
      "País": "Brasil",
      "Número": 100
      }
    }
    """;
}

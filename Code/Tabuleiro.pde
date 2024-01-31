// Esta é a definição de uma classe chamada Tabuleiro.
class Tabuleiro {
  // Este array guarda todos os quadrados no tabuleiro.
  Quadrado[] quadrados;

  // Número de colunas e linhas no tabuleiro.
  int colunas = 32;
  int linhas = 32;

  // Tamanho dos quadrados no tabuleiro.
  int larguraQuadrado, alturaQuadrado;

  // Esta array guarda a palheta de cores atual do tabuleiro.
  color[] palheta;

  // Este é o construtor da classe Tabuleiro, ele é chamado quando criamos um novo tabuleiro.
  Tabuleiro(color[] palhetaQuadrado) {
    // Calculamos o tamanho dos quadrados com base no número de colunas e linhas.
    larguraQuadrado = width / colunas;
    alturaQuadrado = height / linhas;

    // Atribuímos a palheta de cores passada como argumento à variável palheta.
    palheta = palhetaQuadrado;

    // Inicializamos o array de quadrados.
    quadrados = new Quadrado[colunas * linhas];

    // Variáveis para a posição inicial dos quadrados.
    int posX = 0;
    int posY = 0;

    // Preenchemos o array de quadrados.
    for (int i = 0; i < quadrados.length; i++) {
      // Criamos um novo quadrado na posição atual.
      quadrados[i] = new Quadrado(posX, posY, larguraQuadrado, alturaQuadrado, palheta);

      // Atualizamos a posição para o próximo quadrado na mesma linha.
      posX = posX + larguraQuadrado;

      // Verificamos se passamos para a próxima linha.
      if (posX >= width) {
        posX = 0; // Reiniciamos a posição na horizontal.
        posY = posY + alturaQuadrado; // Movemo-nos para a próxima linha.
      }
    }
  }

  // Este método mostra todos os quadrados no tabuleiro.
  void display() {
    // Iteramos sobre todos os quadrados e chamamos o método display de cada um.
    for (int i = 0; i < quadrados.length; i++) {
      quadrados[i].display();
    }
  }

  // Este método muda as cores de todos os quadrados no tabuleiro.
  void changeColors() {
    // Iteramos sobre todos os quadrados e chamamos o método changeColor de cada um.
    for (int i = 0; i < quadrados.length; i++) {
      // Alteramos a palheta do quadrado com base na palheta do tabuleiro.
      quadrados[i].changeColor(palheta);
    }
  }
}

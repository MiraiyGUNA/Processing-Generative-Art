// Esta é a definição de uma classe chamada Quadrado.
class Quadrado {
  // Estas variáveis guardam a posição, tamanho e cor de um quadrado.
  int posX, posY;
  int largura, altura;
  color cor;

  // Este é o construtor da classe Quadrado, ele é chamado quando criamos um novo quadrado.
  Quadrado(int x, int y, int l, int a, color[] palheta) {
    // Aqui estamos a atribuir os valores iniciais às variáveis do quadrado.
    posX = x;
    posY = y;
    largura = l;
    altura = a;
    
    // A cor do quadrado é escolhida aleatoriamente de uma palheta de cores.
    cor = palheta[int(random(palheta.length))];
  }

  // Este método mostra o quadrado no ecrã.
  void display() {
    // Desenhamos um quadrado no ecrã usando as informações de posição, tamanho e cor.
    noStroke(); // Sem contorno no quadrado.
    fill(cor);   // Preenchemos o quadrado com a cor escolhida.
    rect(posX, posY, largura, altura); // Desenhamos o quadrado na posição especificada.
  }

  // Este método muda a cor do quadrado para uma nova cor aleatória da palheta.
  void changeColor(color[] palheta) {
    cor = palheta[int(random(palheta.length))];
  }
}

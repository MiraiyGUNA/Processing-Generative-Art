palhetaManager palhetaManager;
Tabuleiro tabuleiro;

void setup() {
  size(512, 512);

  // Inicializa a classe palhetaManager
  palhetaManager = new palhetaManager();

  // Inicializa o tabuleiro com a primeira palheta
  tabuleiro = new Tabuleiro(palhetaManager.getpalheta(0));
}

void draw() {
  background(255);
  tabuleiro.display();
}

void mouseClicked() {
  tabuleiro.changeColors();
}

void keyPressed() {
  if (key == 's' || key == 'S') {
    save("output.png");
  } else if (key >= '1' && key <= '9') {
    // Se a tecla é um número entre 1 e 9, mudamos para a palheta correspondente.
    int index = int(key) - int('1');
    tabuleiro = new Tabuleiro(palhetaManager.getpalheta(index));
    tabuleiro.changeColors();
  } else if (key == '0') {
    // Se a tecla '0' for pressionada, geramos uma nova palheta totalmente aleatória.
    tabuleiro = new Tabuleiro(palhetaManager.generateRandomPalette());
    tabuleiro.changeColors();
  }
}

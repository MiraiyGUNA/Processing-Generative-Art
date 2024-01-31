// Esta classe gerencia as palhetas de cores e suas alterações.
class palhetaManager {
  // palhetas predefinidas
  color[][] palhetas;

  // Construtor da classe palhetaManager
  palhetaManager() {
    // Inicializa as palhetas predefinidas
    palhetas = new color[][] {
      // palheta 1
      {
        color(166, 68, 76),
        color(125, 122, 191),
        color(94, 166, 83),
        color(217, 164, 65),
        color(217, 90, 78),
        color(56, 104, 166),
        color(56, 115, 87),
        color(225, 201, 128),
        color(198, 122, 171),
        color(207, 128, 59)
      },
      // palheta 2
      {
        color(204, 36, 29),
        color(152, 151, 26),
        color(215, 153, 33),
        color(69, 133, 136),
        color(177, 98, 134),
        color(104, 157, 106),
        color(168, 153, 132),
        color(40, 40, 40)
      },
      // palheta 3
      {
        color(46, 52, 64),
        color(216, 222, 233),
        color(191, 97, 106),
        color(69, 133, 136),
        color(208, 135, 112),
        color(104, 157, 106),
        color(235, 203, 139),
        color(163, 190, 140),
        color(180, 142, 173),
        color(94, 129, 172)
      },
      // palheta 4
      {
        color(242, 5, 25),
        color(166, 3, 33),
        color(153, 177, 191),
        color(196, 217, 186),
        color(242, 181, 145)
      }
    };
  }

  // Retorna uma palheta específica com base no índice
  color[] getpalheta(int index) {
    return palhetas[index];
  }

  // Gera uma palheta com cores totalmente aleatórias
  color[] generateRandomPalette() {
    return new color[] {
      color(int(random(0, 255)), int(random(0, 255)), int(random(0, 255))),
      color(int(random(0, 255)), int(random(0, 255)), int(random(0, 255))),
      color(int(random(0, 255)), int(random(0, 255)), int(random(0, 255))),
      color(int(random(0, 255)), int(random(0, 255)), int(random(0, 255))),
      color(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)))
    };
  }
}

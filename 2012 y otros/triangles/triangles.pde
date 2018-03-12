Jugador j;

void setup() {
  size(400, 600);
  frameRate(60);
  smooth();

  j = new Jugador(width/2, height/2);
}

void draw() {
  j.act();
}

void keyPressed() {
  if (keyCode == UP) {
    j.arriba = true;
  }
  else if (keyCode == DOWN) {
    j.abajo = true;
  }
  else if (keyCode == LEFT) {
    j.izquierda = true;
  }
  else if (keyCode == RIGHT) {
    j.derecha = true;
  }
  else if (keyCode == KeyEvent.VK_PLUS) {
    j.tam++;
  }
  else if (keyCode == KeyEvent.VK_MINUS) {
    j.tam--;
  }
}

void keyReleased() {
  if (keyCode == UP) {
    j.arriba = false;
  }
  else if (keyCode == DOWN) {
    j.abajo = false;
  }
  else if (keyCode == LEFT) {
    j.izquierda = false;
  }
  else if (keyCode == RIGHT) {
    j.derecha = false;
  }
}

class Jugador {
  ArrayList tiros;
  boolean abajo, arriba, izquierda, derecha;
  float x, y, vel, tam; 
  int ultimaTecla = 0;
  Jugador(float nx, float ny) {
    x = nx;
    y = ny;
    vel = 2;
    tam = 10;
    tiros = new ArrayList();
  }
  void act() {
    mover();
    draw();
  }
  void mover() {
    if (arriba) {
      y-=vel;
    }
    if (abajo) {
      y+=vel;
    }
    if (izquierda) {
      x-=vel;
    }
    if (derecha) {
      x+=vel;
    }
  }
  void draw() {
    triangle(x-tam, y+tam, x, y-tam, x+tam, y+tam);
  }
}


int OFF_MAX = 300;

public void setup() {
  size(1200, 1000, P3D);
}

public void draw() {
  background(0);
  translate(width / 2, height /2, -OFF_MAX);
  rotateY(frameCount * 0.01);
  rotateX(frameCount * 0.01);
  rotateZ(frameCount * 0.01);
  
  for (int x = -OFF_MAX; x <= OFF_MAX; x += 50) {
    for (int y = -OFF_MAX; y <= OFF_MAX; y += 50) {
      for (int z = -OFF_MAX; z <= OFF_MAX; z += 50) {
        pushMatrix();
        translate(x,y,z);
        rotateY(frameCount * 0.02);
        rotateX(frameCount * 0.02);
        rotateZ(frameCount * 0.02);
        fill(computeColorFromOffset(x), computeColorFromOffset(y), computeColorFromOffset(z));
        box((float) (20 + (Math.sin(frameCount / 20.0)) * 15));
        popMatrix();
      }
    }
  }
}

private int computeColorFromOffset(int offset) {
  return (int) ((offset + OFF_MAX) / (2.8 * OFF_MAX) * 255);
}

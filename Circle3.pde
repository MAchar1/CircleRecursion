void setup() {
size(800, 800);
noStroke();
noLoop();
}
void draw() {
drawCircle(width/2, 280, 5);
}
void drawCircle(int x, int radius, int level) {
float tt = 126 * level/4.0;
fill(tt);
/**
https://processing.org/reference/ellipse_.html
a float: x-coordinate of the ellipse
b float: y-coordinate of the ellipse
c float: width of the ellipse by default
d float: height of the ellipse by default
**/
ellipse(x, height/2, radius, radius);
ellipse(width/2, x, radius, radius);
if(level > 1) {
level = level - 1;
drawCircle(x - radius/2, radius/2, level);
drawCircle(x + radius/2, radius/2, level);
}
}

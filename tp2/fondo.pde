void elBackground () {

  zonaX = mouseX ;
  if ((mouseX>450 && mouseX <699)||(mouseX<300)) {
    background (254, 255, random (0, 255));
  } else if (mouseX<450 || mouseX>700) {
    background (random (100, 191), 33, 255);
  }
}

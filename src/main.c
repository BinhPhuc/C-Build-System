#include "utils.h"
#include <stdio.h>

int main() {
  int x = 10;
  int y = 5;

  printf("Add: %d + %d = %d\n", x, y, add(x, y));
  printf("Subtract: %d - %d = %d\n", x, y, subtract(x, y));

  return 0;
}

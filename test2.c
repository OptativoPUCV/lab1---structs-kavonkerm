include stdio.h;
include stdlib.h;

int main void{
  int d;
  list* lista = createList();

  puts("Entrada: ");
  for (d=rand()%99; d; d=rand()%99){
    push_back(lista,d);
  }
  printf("\n");
  printf("Salida: ");

  int* dato = first(lista);
  while (dato != NULL){
    if(*dato % 2 == 0){
      printf("%d",*dato);      
    }
    dato = next(lista);
  }

  dato = first(lista);
  while (dato != NULL){
    if(*dato % 2 == 1){
      printf("%d",*dato)
    }
    dato = next(lista);
  }
  printf("\n");
  return 0;
}
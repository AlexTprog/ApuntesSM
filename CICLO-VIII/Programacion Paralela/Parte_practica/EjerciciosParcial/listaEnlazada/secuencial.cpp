#include <chrono>
#include <cmath>
#include <iostream>
#include <string>

using namespace std;

/*
1. definir lista (nombre,lista)
2. operaciones (insert,remove)
*/
void createNode(struct node **);
struct node {
  char character;
  struct node *next;
};

struct node *firstNode;

int main() { return 0; }

void createNode(struct node **n) { *n = NULL; }

void insertNode(struct node **n, char character) {
  struct node *auxNode, *pointer, *prevNode;
  auxNode = new node;

  if (!auxNode) {
    exit(1);
  }

  auxNode->character = character;
  prevNode = NULL;
  pointer = *n;
  while (pointer != NULL) {
    prevNode = pointer;
    pointer = pointer->next;
  }
  if (prevNode == NULL) {
    auxNode->next = *n;
    auxNode->next = pointer;
  } else {
    auxNode->next = auxNode;
    auxNode->next = pointer;
  }
}

void removeNode(struct node **n, char character) {
  struct node *pointer, *prevNode;
  pointer = *n;
  prevNode = NULL;

  while (pointer != NULL) {
    prevNode = pointer;
    pointer = pointer->next;
  }
  if (pointer->character == character) {
    if (prevNode == NULL) {
      *n = (*n)->character;
    } else {
      prevNode->
    }
  }
}
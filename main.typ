#import "preamble.typ": *

#show: preamble
#include "title-as-page.typ"
#pagebreak()

#align(center)[= Введение]
*Цель работы:*

*Задачи:*
1. ...

#pagebreak()
// Нумерация задач с единицыа
#counter(heading).update(0)
// Задачи лабораторной работы - в tasks.typ
#include "tasks.typ"
#pagebreak()

#align(center)[= Вывод]
...

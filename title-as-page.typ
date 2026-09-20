// i18n date names
#import "@preview/icu-datetime:0.2.2": fmt

#let author = "Холкин Николай"
#let group = "РИ-340917"
#let course = [Виртуализация и управление инфраструктурой]
#let topic = [Тема]
#let report-number = 1

#{
  set document(title: topic)
  let today = datetime.today()

  grid(
    columns: (0.33fr, 0.67fr),
    image("images/clipboard-image.png"),
    align(center)[
      #v(1em)
      Министерство образования и науки Российской Федерации

      Федеральное государственное автономное образовательное учреждение высшего образования \
      "Уральский федеральный университет имени первого Президента России Б. Н. Ельцина"
    ],
  )

  v(1fr)

  align(center)[
    Институт радиоэлектроники и информационных технологий.

    Департамент информационных технологий и автоматики

    Курс "#course"
    #v(20pt)
  ]

  v(1fr)

  align(center)[
    Отчёт

    По лабораторной работе №#report-number

    *#topic*
  ]

  v(1.4fr)

  align(center)[
    Студент: #author
  ]

  v(1fr)

  align(center)[
    г. Екатеринбург #linebreak()
    #today.year() г.
  ]
  pagebreak()

  // Нумерация со второй страницы!!!
  set page(numbering: "1")
  outline(
    title: "Оглавление",
    indent: 0pt,
  )
}

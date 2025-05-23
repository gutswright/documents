// # CONSTANTS ================================================

#set page(width: 8.5in, height: 11in, margin: (x: 1cm, y: 1cm))
#set page(fill: luma(230))

// FUNCTIONS ===================================================

#set grid.hline(
  y: 1,
  start: 0,
  end: 4,
  stroke: 0.9pt,
  position: top,
)

#let job(hello, num) = [
  hi + #hello
  #{ 10 * num }
]


#let sectionHeader(Title) = [
  #align(center)[
    * - #Title - *
  ]
]

// #job("yo", 5)
#let experienceheader(company, role, location, date) = [
  #grid(
    columns: (5fr, 3fr),
    align(left)[#company | #role], align(right)[#location | #date],
  )
  #v(-.3cm)
  #line(length: 100%)
]

#let bulletpoints(activities, technologies) = [
  #grid(
    columns: (1fr, 1fr),
    align(left)[Standard Activities:
      #for act in activities [
        - #act
      ]
    ],
    align(left)[Technologies Utilized:
      #let fulllength = calc.floor(technologies.len()) - 1
      #let halflength = calc.floor(fulllength / 2)
      #v(-.2cm)
      #grid(
        columns: (1fr, 1fr),
        [
          #let n = 0
          #while n < halflength + 1 {
            [- #technologies.at(n)]
            n = n + 1
          }
        ],
        [
          #let n = halflength
          #while n < fulllength {
            n = n + 1
            [- #technologies.at(n)]
          }
        ],
      )[ ]
    ],
  )
]

// MAIN =======================================================

#align(
  center,
  text(17pt, fill: rgb("#1F4A2D"))[
    * Joshua Wright *
  ],
)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  align(center)[
    #link("mailto:gutsw20@gmail.com")[#text(weight: "bold", fill: rgb("#1F4A2D"), "gutsw20@gmail.com")]
  ],
  align(center)[
    #link("https://github.com/gutswright")[gutswright]
  ],
  align(center)[
    #link("www.linkedin.com/in/joshua-dean-wright")[Joshua (Guts) Wright]
  ],
  align(center)[
    #link("tel:3852834324")[3852834324]
  ],
)

#v(-.2cm)
#line(length: 100%)
#v(-.1cm)


#set text(15pt)

#sectionHeader[Experience]

#set text(11pt)


#v(-.4cm)
#experienceheader(
  "System8",
  "Automation Engineer",
  "Clearwater Florida",
  "Mar 2025 - Current",
)

#list([Built and deployed a Windows automation tool to export financial data from Bloomberg Terminal.])

#let activities = (
  [Design automation process],
  [Build Windows installer],
)

#let technologies = (
  [Powershell & batch script],
  [iexpress],
  [Excel & Macros],
  [Google Cloud CLI],
)

#bulletpoints(activities, technologies)



#experienceheader(
  "Otternaut (Sandbox SB04)",
  "Co-Founder & Software Engineer",
  "Orem Utah",
  "Aug 2024 – Apr 2025",
)

#list(
  [Launched a cross-platform SaaS mobile app for home service businesses using Flutter and FastAPI, integrated with Jobber API for real-time lead management.],
  [Supported 20+ active users and grew to \$359/month in recurring revenue.],
  [Spearheaded development of REST APIs, deep linking, and payment flows using Stripe and Supabase.],
  [Collaborated in a 3-person agile founding team; directly interfaced with customers to drive product iterations.],
)

#let activities = (
  [Collaborated in a 3-person founding team],
  [Agile Development + Speaking to customers],
  [Developing Android & IOS Apps],
  [Creating and testing REST API],
)

#let technologies = (
  [Flutter],
  [Mobile Deep Linking],
  [Google Maps & Stripe API],
  [Jobber API & OAuth2],
  [FastAPI],
  [Docker & Compose],
  [Supabase & PostgreSQL ],
  [Hetzner VPS],
)

#bulletpoints(activities, technologies)

#experienceheader(
  "AI-Tutor (UVU Research Project)",
  "Frontend Engineer",
  "Orem Utah",
  "Oct 2024 – May 2025",
)

#list(
  [Redesigned and deployed AI chatbot UI (Svelte + Tailwind) for 300+ students and faculty, enhancing real-time access to grades, materials, and feedback.],
  [Implemented live response streaming, cookie-based authentication, and LaTeX rendering with Katex.],
)


#let activities = (
  [Collaborated with professor of Technology Management],
  [Developing in Svelte],
)

#let technologies = (
  [Svelte (Javascript)],
  [HTML & Tailwind CSS],
  [Streaming Responses],
  [Katex Parsing],
)

#bulletpoints(activities, technologies)

#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  rect()[
    #grid(
      columns: (1fr, 1fr),
      "Grit Marketing | Sales Rep", align(right)[U.S., Summer 2021 & 2022],
    )
    #list([Closed 406 contracts and sold \$293K+ in pest control services across 8 states through door-to-door outreach.])
  ],
  rect()[
    #grid(
      columns: (1fr, 1fr),
      "LDS Church | Representative", align(right)[Kiribati, 2018 - 2019],
    )
    #list([Led group discussions, humanitarian projects, and mentored new representatives across island atolls.])
  ],
)

#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  rect()[
    #grid(
      columns: (1fr, 1fr),
      "UVU Math Lab | Math Tutor", align(right)[Orem Utah, 2023 & 2024],
    )
    #list([Tutored 5-15 college students from Trigonometry to Calculus to Proofs solving 1-5 problems 4 days/week.])
  ],
  rect()[
    #grid(
      columns: (7fr, 5fr),
      "Calculus Instructor | SI Leader", align(right)[Orem, UT Jul-Dec 2023],
    )
    #list([Taught Calculus to 3-10 students 4 times per week and cooridinated with professors to prepare material.])
  ],
)

#v(.2cm)
#set text(15pt)
#sectionHeader[Education]
#set text(11pt)

#experienceheader(
  "Computer Science",
  "Utah Valley University",
  "Orem, Utah",
  "August 2021 - April 2025",
)
#grid(
  columns: (1fr, 1fr),
  list([Bachelor of Science], [Mathematics Minor]), list([Chairman of Computer Science Club], [Dean's List]),
)


// CODE GRAVEYARD

// #rect(
//   width: 100%,
//   height: 100%,
//   fill: aqua,
// )
//
// #place(
//   top + center,
//   scope: "parent",
//   float: true,
//   text(1.4em, weight: "bold")[
//     My Document
//   ],
// )


//
// #grid(
//   columns: (1fr, 1fr),
//   rect()[
//
//     #grid(
//       columns: (5fr, 3fr),
//       "Grit Marketing | Sales Representative", align(right)[United Sates \ Summer 2021 & 2022],
//     )
//
//     #list([Closed 406 contracts and sold \$293K+ in pest control services across 8 states through door-to-door outreach.])
//
//   ],
// )



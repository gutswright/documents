#set page(width: 8.5in, height: 11in, margin: (x: 1cm, y: 1cm))

#align(
  center,
  text(17pt)[
    * Joshua Wright *
  ],
)

#place(
  top + center,
  scope: "parent",
  float: true,
  text(1.4em, weight: "bold")[
    My Document
  ],
)

#set grid.hline(
  y: 1,
  start: 0,
  end: 4,
  stroke: 0.9pt,
  position: top,
)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  align(center)[
    Software Engineer
  ],
  align(center)[
    Software Engineer
  ],
  align(center)[
    Software Engineer
  ],
  align(center)[
    Software Engineer
  ],
)

#v(-.3cm)
#line(length: 100%)

#set text(15pt)
#align(center)[
  #v(-.4cm)
  * - Experience - *
]

#set text(11pt)
#let job(hello, num) = [
  hi + #hello
  #{ 10 * num }
]

// #job("yo", 5)
#let experienceheader(company, role, location, date) = [
  #grid(
    columns: (1fr, 1fr),
    align(left)[#company | #role], align(right)[#location | #date],
  )
  #v(-.3cm)
  #line(length: 100%)
]

#experienceheader(
  "Otternaut (Sandbox SB04)",
  "Co-Founder & Software Engineer",
  "Orem Utah",
  "Aug 2024 – Apr 2025",
)

#list(
  [Smart Lead Management SaaS for Home Service Businesses],
  [Built and deployed a cross-platform mobile app that integrated with the Jobber API to manage real-time customer leads.],
  [supported 20+ active users and generated \$359 in monthly recurring revenue (MRR).],
)

#let bulletpoints(activities) = [
  #grid(
    columns: (1fr, 1fr),
    align(left)[Standard Activities
      #for act in activities [
        - #act
      ]
    ],
    align(left)[Technologies Utilized
      #grid(
        columns: (1fr, 1fr),
        list(
          [Flutter],
          [Mobile Deep Linking],
          [Google Maps API],
          [Jobber API & OAuth2],
          [FastAPI],
        ),
        list(
          [Docker & Compose],
          [Supabase & PostgreSQL ],
          [Stripe API],
          [Hetzner VPS],
          [SSH + rsync],
        ),
      )

    ],
  )
]

#let activities = (
  [Collaborated in a 3-person founding team],
  [Agile Development + Speaking to customers],
  [Developing Android & IOS Apps],
  [Creating and testing REST API],
  [Reading Documentation],
)


#bulletpoints(activities)

----------------

Standard Activities:

(Flutter, FastAPI, Google Maps API)

adapting through pivots; gained firsthand experience in agile development, technical ownership, and startup operations.

using .

Implemented deep linking and Firebase hosting for Android/iOS, learning and applying Supabase and advanced data handling under startup constraints.


Key lessons: importance of aligned team values, clear documentation, and building with user feedback early. Experience inspired the launch of a second SaaS business post-graduation.



// #rect(
//   width: 100%,
//   height: 100%,
//   fill: aqua,
// )

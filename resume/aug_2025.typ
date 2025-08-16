// # CONSTANTS ================================================

#set page(width: 8.5in, height: 11in, margin: (x: .8cm, y: .8cm))
// #set page(fill: luma(230))
#let adwaitaM = "Adwaita Mono"
#let adwaitaS = "Adwaita Sans"
#let regulartext = 10pt
// #060f09
// #0d1f12

#let ForestGreen = "#1F4A2D";

// #set text(font: "Libertinus Serif")
#set text(fill: rgb("#000000"), font: "JetBrains Mono NL")
// #set text(font: "Libertinus Serif", stretch: 50%)
// #set text(font: "FiraCode Nerd Font Mono Ret")
// #set text(font: "DejaVu Sans Mono")
// ------------------------------ I like
// #set text(font: "CaskaydiaCove NF")
// #set text(font: "Adwaita Sans")
// #set text(font: )

// FUNCTIONS ===================================================

#set grid.hline(
  y: 1,
  start: 0,
  end: 4,
  stroke: 0.9pt,
  position: top,
)

#let sectionHeader(Title) = [
  #align(center)[#text(weight: "bold", fill: rgb(ForestGreen), " - " + Title + " - ")
    
  ]
]

#let experienceheader(company, role, location, date) = [
  #set text(fill: rgb(ForestGreen), weight: "bold")
  #grid(
    columns: (5fr, 3fr),
    align(left)[#company: #role], align(right)[#location: #date],
  )
  #v(-.3cm)
  #line(length: 100%)
]

#let bulletpoints(activities, technologies) = [
  #let fulllength = calc.floor(technologies.len()) - 1
  #let halflength = calc.floor(fulllength / 2)
  #grid(
    columns: 1fr,
    align(left)[#text(weight: "bold", fill: rgb(ForestGreen), "Technologies Utilized:")
    #let n = 0
    #while n < fulllength {
      [#technologies.at(n), ]
      n = n + 1
    }
    #technologies.at(fulllength).
        ],
  )
]

// MAIN =======================================================

#align(
  center,
  text(17pt, fill: rgb(ForestGreen))[
    * Joshua Wright *
  ],
)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  align(center)[
    #link("mailto:gutsw20@gmail.com")[#stack(dir: ltr, spacing: 0.4em)[#image("./logos/Mail.svg", width: 8%)][#text(weight: "bold", fill: rgb(ForestGreen), "gutsw20@gmail.com")]]
  ],
  align(center)[
    #link("https://github.com/gutswright")[#stack(dir: ltr, spacing: 0.4em)[#image("./logos/GitHub.svg", width: 8%)][#text(weight: "bold", fill: rgb(ForestGreen), "gutswright")]]
  ],
  align(center)[
    #link("www.linkedin.com/in/joshua-dean-wright")[#stack(dir: ltr, spacing: 0.4em)[#image("./logos/LinkedIn.svg", width: 7%)][#text(weight: "bold", fill: rgb(ForestGreen), "Joshua (Guts) Wright")]]
  ],
  align(center)[
    #link("tel:3852834324")[#stack(dir: ltr, spacing: 0.4em)[#image("./logos/Phone.svg", width: 7%)][#text(weight: "bold", fill: rgb(ForestGreen), "3852834324")]]
  ],
)


#v(-.2cm)
#line(length: 100%)
#v(-.1cm)


#set text(15pt)

#sectionHeader[Experience]

#set text(regulartext)


#v(-.4cm)
#experienceheader(
  "Elysium",
  "Automation Engineer",
  "Clearwater, FL",
  "Mar 2025 - Current",
)

#list([Built and deployed a Windows automation tool to export financial data from Bloomberg Terminal.], [Created and deployed workflow orchestration tools to calculate values for 4 data pipelines utilizing daily refreshed data from over 150 Ticker Symbols.], [Created and deployed data visualization interface using Streamlit.])

#let activities = (
  [Design automation process],
  [Build Windows installer],
)

#let technologies = (
  [Powershell],
  [Batch script],
  [iexpress],
  [Excel & Macros],
  [GCP & Google Cloud CLI],
  [Terraform],
  [Streamlit],
  [Chart.js],
  [Dagster],
  [Airflow]
)

#bulletpoints(activities, technologies)

#experienceheader(
  "RK4",
  "Co-Founder & Engineer",
  "Orem, UT",
  "May 2025 - Current",
)

#list([Earned over \$10k in revenue by developing custom technology solutions for businesses.])

#let technologies = (
  [Svelte & SvelteKit],
  [CSS],
  [GSAP],
  [Blender],
  [Threlte],
  [Docker & Compose],
)

#bulletpoints(activities, technologies)




#experienceheader(
  "Otternaut (Sandbox SB04)",
  "Co-Founder",
  "Orem, UT",
  "Aug 2024 – Apr 2025",
)

#list(
  [Launched a cross-platform SaaS for home service businesses using the agile methodology and integrated with Jobber API for real-time lead management.],
  [Collaborated with founding team to develop software and supported 20+ active users; grew recurring revenue to \$359/month.],
  [Spearheaded the backend development and mobile app development.],
)

#let activities = (
  [Collaborating with founding team],
  [Utilized Agile Methodology],
  [Developing Android & IOS Apps],
  [Creating and testing REST API],
)

#let technologies = (
  [Flutter],
  [Mobile Deep Linking],
  [Google Maps],
  [Stripe API],
  [Jobber API],
  [OAuth2],
  [FastAPI],
  [Docker & Compose],
  [PostgreSQL],
  [Hetzner VPS],
)

#bulletpoints(activities, technologies)

#experienceheader(
  "AI-Tutor (UVU Research Project)",
  "Frontend Engineer",
  "Orem, UT",
  "Oct 2024 – May 2025",
)

#list(
  [Collaborated with Professor of Technology management to redesign and deploy AI chatbot UI for over 300 students and faculty.],
  [Enhanced real-time access to grades, materials, and feedback from professors.],
)


#let activities = (
  [Collaborating with professor of Technology Management],
  [Developing in Svelte],
)

#let technologies = (
  [Svelte (Typescript)],
  [HTML & Tailwind CSS],
  // [Streaming Responses],
  [Latex Rendering with Katex],
  [parsing & rendering streamed response in real-time],
  [cookie based authentication],
)

#bulletpoints(activities, technologies)

#let companyName = 12pt
#let textColor = "#122b1a"
 // weight: "bold")
#let role = 9pt
#let location = 9pt



#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  rect()[
    #grid(
      columns: (5fr, 14fr),
      align(top + left)[
        #text(companyName, fill: rgb(ForestGreen), "The Grit:")], align(right)[#text(role, fill: rgb(ForestGreen), "Sales Rep.") #text(role,"   U.S., Summer '21 & '22")],
    )
    #list([Closed 406 contracts and sold \$293K+ in pest control services in 8 months across 8 states through door-to-door outreach.])
  ],
  rect()[
    #grid(
      columns: (7fr, 5fr),

      align(top + left)[#text(companyName, fill: rgb(ForestGreen),"LDS Church:") #text(role, baseline: -2.5pt)[#text(fill: rgb(ForestGreen), "Missionary")]], align(right)[#text(location)[Kiribati, '18 & '19]],
    )
    #list([Led group discussions, humanitarian projects, and mentored new missionaries across island atolls.])
  ],
)

#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  rect()[
    #grid(
      columns: (1fr, 9fr),
      [#text(companyName, fill: rgb(ForestGreen), "UVU:")], align(right)[#text(role, fill: rgb(ForestGreen), "Math Tutor") #text(role,"            Orem UT, 2023 & 2024")],
    )
    #list([Tutored hundreds of college students from introductory to advanced college math courses.])
  ],
  rect()[
    #grid(
      columns: (1fr, 10fr),
      [#text(companyName, fill: rgb(ForestGreen), "UVU:")], align(right)[#text(role, fill: rgb(ForestGreen), "SI Leader")#text(role, "             Orem, UT Jul-Dec 2023")],
    )
    #list([Taught Calculus 4 times per week and coordinated with professors to prepare material.])
  ],
)

// #v(.2cm)
#set text(15pt)
#sectionHeader[Education]
#set text(regulartext)

#experienceheader(
  "Computer Science",
  "Utah Valley University",
  "Orem, UT",
  "August 2021 - April 2025",
)
#grid(
  columns: (1fr, 1fr),
  list([Bachelor of Science in Computer Science], [Mathematics Minor]),
  list([Chairman of Computer Science Club], [Dean's List]),
)

// Frontend Developer – UVU Excellence & Innovation Initiative (E2i)
// Creating a CLI tool for interfacing with files and directories (without leaving the terminal)




// Team-Building App Powered by LLMs and Qualtrics Data
// Jan 2025 – Apr 2025
//
// Built an interactive frontend in Streamlit for a team-matching platform that auto-generated 50+ project teams using LLM-driven analysis of Qualtrics survey data and employee profiles.
//
// Developed a dynamic editable modal with search and removal functionality, enabling users to fine-tune AI-generated teams before committing selections to the database.
//
// Enabled project organizers to define goals and constraints, allowing the LLM to recommend optimal team structures, roles, and members based on real-time inputs.
//
// Supported the distribution of 500,000 in grant funding used to incubate student-led ventures and contract-based software development for real businesses.
//
// E2i -> On a team of 4 developers that built a team building Application using LLM's & Qualtrics Data to Automatically create 50+ teams handled 500,000 of grant money.
//
// ok


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


    //   #let fulllength = calc.floor(technologies.len()) - 1
    //   #let halflength = calc.floor(fulllength / 2)
    //   #v(-.2cm)
    //   #grid(
    //     columns: (1fr, 1fr),
    //     [
    //       #let n = 0
    //       #while n < halflength + 1 {
    //         [- #technologies.at(n)]
    //         n = n + 1
    //       }
    //     ],
    //     [
    //       #let n = halflength
    //       #while n < fulllength {
    //         n = n + 1
    //         [- #technologies.at(n)]
    //       }
    //     ],
    //   )[ ]


// #let job(hello, num) = [
//   hi + #hello
//   #{ 10 * num }
// ]

// #job("yo", 5)

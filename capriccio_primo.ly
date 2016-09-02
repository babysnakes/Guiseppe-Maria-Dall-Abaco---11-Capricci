\version "2.18.2"

\header {
  title = "[Capriccio Primo]"
  composer = "Guiseppe Maria Dall' Abaco"
}

capriccio = \context Staff \relative c {c1}

\book {
  \score {
    {
      \clef "bass" {\capriccio}
    }
    \layout {}
    %% uncomment the following line to generate midi.
    %% \midi {}
  }
}
\version "2.18.2"

\header {
  title = "[Capriccio Primo]"
  composer = "Guiseppe Maria Dall' Abaco"
}

capriccio = \context Staff \relative c {

  \time 4/4
  \key c \minor
  \set Staff.midiInstrument = "cello"

  c8 ees' ees\trill d16 ees g,8 ees' aes, f' | % 1
  bes,, d' d\trill c16 d f,8 d' g, ees' | % 2
  aes,, c' c\trill b16 c ees,8 c' f, d' | % 3
  g,, c' b aes g f ees d | % 4
  c ees' ees\trill d16 ees g,8 ees' aes, f' | % 5
  bes,, d' d\trill c16 d f,8 d' g, ees' | % 6
  aes,, c' \grace d16 c8 b16 c ees,8 c' f, d' | % 7
  g,, c' b aes g fis aes g | % 8
  g, bes' bes\trill a16 bes d,8 bes' ees, c' | % 9
  f,, a' a\trill g16 a c,8 a' d, bes' | % 10
  ees,, g' g\trill fis16 g bes,8 g' c, a' | % 11
  d, g fis c bes g' g, g' | % 12
  d g fis c bes g' g, g' | % 13
  d g a g d fis a fis | % 13
  <g, d' bes'>1 \bar ":|." |
}

\book {
  \score {
    {
      \clef "bass"
      <<
        \new Voice {
          \repeat unfold 6 {
            s1 \noBreak s1 \break
          }
          s1 \noBreak s1 \noBreak s1 \break
        }
        \new Voice {\capriccio}
      >>
    }
    \layout {}
    %% uncomment the following line to generate midi.
    %% \midi {}
  }
}

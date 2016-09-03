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
  d g a g d fis a fis | % 14
  <g, d' bes'>1 \bar ":.|.:" | % 15
  g8 bes' bes\trill a16 bes d,8 bes' ees, c' | % 16
  f,, a' a\trill g16 a c,8 a' d, bes' | % 17
  ees,, g' \grace a16 g8 fis16 g bes,8 g' c, a' | % 18
  d, g fis ees d c bes a | % 19
  g bes' bes\trill a16 bes d,8 bes' ees, c' | % 20
  f,, a' a\trill g16 a c,8 a' d, bes' | % 21
  ees,, g' g\trill fis16 g bes,8 g' c, a' | % 22
  d,( g) fis( ees) d( ees) d( c) | % 23
  b( g' d') ees d g, b, g' | % 24
  c,\staccato g'\staccato ees' d ees g, ees' g, | % 25
  a, f' c' d c f, a, f' | % 26
  bes, f' d' c d f, d' f, | % 27
  a,( fis' c') d c fis, d' a | % 28
  bes d fis, g bes d, g d | % 29
  ees c' bes a g4 fis\trill | % 30
  g g,8. aes16 g4 f | % 31
  e8 c'( g' aes) g c,( e, c') | % 32
  f, c'( aes' g) aes c,( aes' c,) | % 33
  d, bes'( f' g) f bes,( d, bes') | % 34
  ees, bes'( g' f) g ees, d f' | % 35
  c,8 ees'' ees d16 ees g,8 ees' aes, f' | % 36
  bes,, d' d c16 d f,8 d' g, ees' | % 37
  aes,, c' c\trill b16 c ees,8 c' f, d' | % 38
  g,, b' b a16 b f8 b d, b' | % 39
  g, c' c b16 c g8 c ees, c' | % 40
  g, d'' d c16 d f,8 d' ees, c' | % 41
  d, b' c, aes' b, g' a, fis' | % 42
  g d ees  b c ees d c | % 43
  b aes g f ees c' c, c' | % 44
  g c b f ees c' c, c' | % 45
  g c b f ees c' c, c' | % 46
  g c d c g b d b | % 47
  <c, g' ees' c'>1 \bar ":|." |
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
          \repeat unfold 3 {
            s1 \noBreak s1 \break
          }
          \pageBreak
          \repeat unfold 4 {
            s1 \noBreak s1 \noBreak s1 \break
          }
          \repeat unfold 6 {
            s1 \noBreak s1 \break
          }
          s1 \noBreak s1 \noBreak s1 \break
          \pageBreak
        }
        \new Voice {\capriccio}
      >>
    }
    \layout {}
    %% uncomment the following line to generate midi.
    %% \midi {}
  }
}

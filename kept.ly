\version "2.24.3"

\header {
  title = "Kept - Walz Piano"
  subtitle = "Amnesty I"
  dedication = \markup{ \italic "This transcription is a work in progress" }
  composer = "Composed by Crystal Castles"
  arranger = "Arranged by Mateusz Bączek"
}

upper = \relative c'' {
  \clef treble
  \key d \minor
  \tempo 4 = 160
  \time 3/4

  % \markup \vspace #20

  a2 ^\markup { \italic sehnsucht } c4 |

  f, g f |
  a c4. d8 |

  c4 e, f |
  d' f, g |
  c e, f |
  a f d |
  c' d, f4 |

  a2 bes4 |
  a4 f g |
  f a, c |
  f a bes |

  a2. |
  g2 r8 f16 (g |
  a2.) |

  e4 d' c |

}

lower = \relative c {
  \clef bass
  \key d \minor
  \time 3/4

  \repeat unfold 4 {
    d4 <f a>-. <f a>-.
  }

  \repeat unfold 4 {
    bes, <d f>-. q
  }

  \repeat unfold 4 {
    f, <a c>-. q
  }

  \repeat unfold 4 {
    a <a cis>-. q
  }
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower  
  >>
  \layout { }
  \midi { }
}
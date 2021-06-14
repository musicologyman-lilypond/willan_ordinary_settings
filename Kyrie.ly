\version "2.22.0"

\header {
  tagline = ##f
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

\paper {
  indent = 0 \in
}

kyrieNotation = \relative d' {
  \clef treble
  \key d \major
  \time 4/4
  \autoBeamOff
  d4 d e fis8 fis |
  e2 d |
  e4 fis g e8 e |
  fis2 e | \break
  \time 3/2
  fis4 (a b) a g fis8 fis |
  \time 4/4
  e2 d \bar "||"
  e4 e fis a8 a |
  a4 (gis) a2 | \break
  b4 a g! e8 e |
  fis2  fis |
  gis4 gis a fis8 fis | \break
  b4 (a gis2) |
  fis1 \bar "||"
  d4 d e fis8 fis |
  e2 d | \break
  e4 fis g e8 e |
  fis2 e |
  \time 3/2
  fis4 (a b) a g fis8 fis |
  \time 4/4
  e2 d \bar "|."
}

kyrieText = \lyricmode {
  Lord, have mer -- cy up -- on us,
  Lord, have mer -- cy up -- on us,
  Lord, have mer -- cy up -- on us,
  Christ, have mer -- cy up -- on us,
  Christ, have mer -- cy up -- on us,
  Christ, have mer -- cy up -- on us,
  Lord, have mer -- cy up -- on us,
  Lord, have mer -- cy up -- on us,
  Lord, have mer -- cy up -- on us,
}


\book {

  \score {
    \header {
      piece = "Kyrie eleison"
      composer = "Willan"
    }

    <<
    \new Voice = "kyrieNotation" \kyrieNotation
    \new Lyrics \lyricsto "kyrieNotation" \kyrieText
    >>
    \layout {
      \context {
        \Staff
        \remove Time_signature_engraver
      }
    }
    \midi {}
  }

}

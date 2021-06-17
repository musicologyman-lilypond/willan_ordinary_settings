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
  #(set-paper-size "letter")
  indent = 0 \in
  top-margin = 0.5 \in
  bottom-margin = 0.5 \in
  left-margin =  0.5 \in
  right-margin = 0.5 \in
  ragged-bottom = ##f
  ragged-last-bottom = ##f
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

gloriaNotation = \relative d' {
  \key d \major
  \time 4/2
  d4 e g g fis g a2 |
  \time 3/2
  d,4 d e (fis) g2 |
  fis4 a2 gis4 a2 | \break
  r4 fis b2 a |
  r4 d, g2 fis |
  \time 4/2
  r4 d e (g ~ g) e fis a | \break
  \time 3/2
  b (d2) cis4 b2 |
  a1 a4 a |
  a fis b a g fis |
  \time 2/2
  g2 e \break
  \time 3/2
  fis (a) b |
  \time 4/2
  cis b4 (cis d cis) b2 |
  \time 3/2
  a1 a2 ~
  (a fis) d | \break
  g fis g4 (a) |
  b2 (a4 g a2~
  a d) a ~
  a r r \break
  fis2 b a
  g4 (e) e d e fis |
  d2 e2. e4 |
  \time 2/2
  fis1 \break
  \time 3/2
  fis2 b a |
  g4 (fis e) d e (fis) |
  d2 e2. e4 |
  fis2 fis fis |
  g g a |
  b4 g c2 b4 a |
  b1 g2 |
  a4 (g) a2 fis |
  e e fis4 fis | \break
  g2 g a |
  b4 g c2 b4 a |
  b1 g2 |
  a (fis) g | \break
  a1 a4 a |
  b2 g a4 a  |
  b2 a g |
  fis (a) fis |
  g fis fis |
  e d e |
  fis fis r |
  d4 d e (fis) g e |
  fis (a2 gis4) a2 | \break
  r4 d, e fis g e |
  fis1 a2 |
  a4 (fis b) a g (fis) |
  \time 2/2
  g2 e4 e | \break
  \time 3/2
  fis2 (a) b |
  \time 4/2
  cis b4 (cis d cis) b2 |
  \time 2/2
  a2 a4 a |
  \time 3/2
  a2 fis d |
  g (fis) g4 (a) | \break
  b2 (a4 g) a2 ~
  \time 1/2
  a4 r
  \time 2/2
  d2 (cis |
  \time 3/2
  fis, b a ~
  a4 fis g2. e4 |
  fis e8 d e1 ) |
  d1. \bar "|."
}

gloriaText = \lyricmode {
  \set stanza = \markup \normal-text "1."
  Glo -- ry be to God on high,
  and on earth peace, good will towards men.
  \set stanza = \markup \normal-text " 2."
  We praise thee,
  we bless thee,
  we wor -- ship thee, we
  glo -- ri -- fy thee,
  we give thanks to thee for thy great
  glo -- ry.
  \set stanza = \markup \normal-text " 3."
  O Lord God, heaven -- ly King.
  God __ the Fa -- ther Al -- might -- y. __
  \set stanza = \markup \normal-text " 4."
  O Lord, the on -- ly be -- got -- ten Son, Je -- sus Christ;
  \set stanza = \markup \normal-text " 5."
  O Lord God, Lamb __ of God, __ son of the Fa -- ther;
  that ta -- kest a -- way the sins of the world,
  have mer -- cy up -- on us.
  \set stanza = \markup \normal-text " 6."
  Thou that ta -- kest a -- way the sins of the world,
  re -- ceive our prayer.
  \set stanza = \markup \normal-text " 7."
  Thou that sit -- test at the right hand of God the Fa -- ther,
  have mer -- cy up -- on us.
  \set stanza = \markup \normal-text " 8."
  For thou on -- ly art ho -- ly;
  thou on -- ly art the Lord;
  \set stanza = \markup \normal-text " 9."
  thou on -- ly, O Christ, with the Ho -- ly Ghost,
  art __ most high in the glo -- ry of God __ the Fa -- ther. __
  A -- men.
}

\book {

  \score {
    \header {
      piece = \markup { \caps { "Kyrie eleison" } }
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

    \score {
    \header {
      piece = \markup \caps { "Gloria in excelsis" }
      composer = "Willan"
    }

    <<
    \new Voice = "gloriaNotation" \gloriaNotation
    \new Lyrics \lyricsto "gloriaNotation" \gloriaText
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

\version "2.18.2"
\header {
	title = "The Cinnamon Bear"
	composer = \markup {
		\line { "Music by" }
		\line { "Don Honrath" }
	}
	poet = "Lyrics by Glan Heisch"
	copyright = \markup \left-align \center-column {
		\line { "Copyright 1937 by RADIO TRANSCRIPTION CO. OF AMERICA LTD." }
		\line { "1509 No. Vine St. Hollywood, Calif." }
		\line { "All Rights Reserved Including The Right Of Public Performance For Profit" }
		\line { "International Copyright Secured" }
	}
	copyright = ""
}

flute = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\new Voice = "melody"  {
		\relative c' {
			\clef treble
			\key g \major
			\time 6/8
			\tempo "" 8 = 120

			R2.*5 \bar "||"
			\partial 4
			d8 e8

			\repeat volta 2 {
				\time 6/8
				g8 g g g4 a16 b16 | d8 d d d4 e16 fis16 | g8 g g fis g e |
				d d d dis4 e16 d | a8 a a b b a | g a b e4 g,16 a |
				b8 d b a g a | b g g g4 b16 a | g4 e8 e4 b'16 a16 |
				g4 e8 e4 fis8
			}
			\alternative {
				{
					\time 4/4
					g8 a b d e4. g8 |
					e c d b g4 d8 e |
				}
				{
					\time 4/4
					g8 a b d e4. g8 | e c d b g2~ | g1
					\bar "|."
				}
			}
		}
	}
}
verse_one = \lyricmode {

	I'm the | cinn- a- mon bear with the |
	shoe but- ton eyes  And I'm |
	look- ing for some- one to take by sur- prise I go |
	prow- ling and grow- ling each |
	night af- ter dark  But the |
	folks say my growls just a |
	cinn- a- mon bark  Tho I |
	growl gr- rah!  And I'll |
	growl gr- rooh! My |
	vic- tims on- ly say  Oh! |
	who's a- fraid of you?  I'm the |
}
verse_two = \lyricmode {
	_ _ |
	cinn- a- mon bear with the |
	shoe but- ton eyes  And I'm |
	huf- fy and fluf- fy and |
	tough for my size   I de- |
	vour lots of hon- ey and |
	cinn- a- mon buns  Just to |
	make me fe- ro- cious but |
	no- bod- y runs  Now I'll |
	growl gr- rah! And I'll |
	growl gr- rooh! And |
	_ _ _ _ _ _ |
	_ _ _ _ _ _ _ |
	if you'll act a- fraid I'm |
	much ob- liged to you.----
}

pianotop = \relative c' {
	\clef "treble"
	\key g \major
	<g' d' g>2. | <e g c e>4 c'8 <fis, b d>4 b8 | <e, a c>4 a8 <d, g b>4 g8 |
	<c, e a>4 fis8 <b, d g>4 e8 | d2.\fermata


}
pianobottom = \relative c' {
	\clef "bass"
	\key g \major
	b,2. | c4 r8 d4 r8 | e4 r8 g4 r8 |
	a4 r8 b4 r8 | d,2.\fermata

	\partial 4
	r4
	<g, d'>4. <c g'>4. | <b g'>4. <a g'>4 <g d' c'>8 |
	<b g' d'>4. <bes g' cis>4. | <a e' c'!>4. <dis c'>4. |
	<a e'>4. <b a'>4. |  |

}

\score {
	<<
		\flute
		\context Lyrics {
			\new Lyrics {
				\lyricsto "melody" {
					\verse_one
					\repeat unfold 2 {
						\skip 1 \skip 1 \skip 1
						\skip 1 \skip 1 \skip 1
						\skip 1 \skip 1 \skip 1
					}
				}
			}
		}
		\context Lyrics {
			\new Lyrics {
				\lyricsto "melody" {
					\verse_two
				}
			}
		}
	>>
	\layout { }
}
\score {
	<<
		\flute
		\new PianoStaff \with { instumentName = "#Piano" }
		<<
			\new Staff = "upper" \pianotop
			\new Staff = "lower" \pianobottom
		>>
	>>
	\layout { }
}
\score {
	\unfoldRepeats
	<<
		\flute
		\new PianoStaff \with { instumentName = "#Piano" }
		<<
			\new Staff = "upper" \pianotop
			\new Staff = "lower" \pianobottom
		>>
	>>
	\midi { }
}


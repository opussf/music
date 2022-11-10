\version "2.18.2"
date = #(strftime "%d %b %Y" (localtime (current-time)))
\header {
	title = "BREAKFAST AT TIFFANY'S"
	composer = \markup {
		\line { "Music by" }
		\line { "Henery Mancini" }
	}
	poet = "Lyrics by Glan Heisch"
	copyright = \markup \left-align \center-column {
		\line { "Copyright 1937 by RADIO TRANSCRIPTION CO. OF AMERICA LTD." }
		\line { "1509 No. Vine St. Hollywood, Calif." }
		\line { "All Rights Reserved Including The Right Of Public Performance For Profit" }
		\line { "International Copyright Secured" }
	}
}

flute = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\new Voice = "melody"  {
		\relative c' {
			\clef treble
			\key f \major
			\time 4/4
			\tempo "" 4 = 112

			R2.*4 \bar "||"
			r4 c'8( d f4 a4 | d2 \tuplet 3/2 { c4 bes a } | c4 bes a4. g8 |
			bes1) |



		}
	}
}

pianotop = \relative c' {
	\clef "treble"
	\key f \major

}
pianobottom = \relative c' {
	\clef "bass"
	\key f \major

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

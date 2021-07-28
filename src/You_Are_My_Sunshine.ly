\version "2.18.2"
\header {
	title = "YOU ARE MY SUNSHINE"
}

flute = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\new Voice = "melody"  {
		\relative c' {
			\clef treble
			\key f \major
			\time 2/2
			\tempo 4=150

			r4 c4 f g |

			\repeat volta 3 {
				a2 a~ | a4 a4 gis a | f2 f~ | f4 f g a |
				bes2 d | c bes | a1~ | a4 f g a | bes2 d~ |
				d4 d c bes | a2 f~ | f f4 g | a2. bes4 | g2. a4 |
				f1~ | f4 c f g | a2 a~ | a4 a gis a | f2 f~ |
				f4 f g a | bes2 d~ | d4 d c bes | a1~ | a4 f g a |
				bes2 d~ | d4 d c bes | a2 f~ | f f4 g | a2. bes4 |
				g2 g4 a |

			}

			\alternative {
				{
					f1~ | f4 c f g |
				}
				{
					f1~ | f4 c f g |
				}
				{
					f1~ | f1 |
					\bar "|."
				}
			}
		}
	}
}
guitar = \chordmode {
	r1 | f | f | f2 f:7 | f1:7 |
	bes | bes | f | f2 f2:7 | bes1 |

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

words = \lyricmode {
	Baf-- ta hin-- di | baf-- ta hin-- di | shash 'a-- ree-- eed | ya ba-- nat |
	ef-- ta-- hoo-- li | ya sa-- ba-- ya | wal-- la khosh-- sh | mnel shib-- bak |
	ef-- ta-- hee-- li | ya sa-- bey-- ya | 'an-- di bda-- 'a | lel set-- tat |
}

\score {
	<<
		\context ChordNames {
			\set chordChanges = ##t
			\set Staff.midiInstrument = #"acoustic guitar (nylon)"
			\guitar
		}
		\flute
		\context Lyrics {
			\lyricsto "melody" {
				\words
			}
		}
	>>
	\layout { }
}
\score {
    \unfoldRepeats
	<<
		\guitar
		\flute
	>>
	\midi { }
}

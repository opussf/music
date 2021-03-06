\version "2.18.2"
\header {
	title = "Bafta hindi"
	subtitle = "Indian Calico"
	composer = "Traditional"
}

flute = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\override Score.MetronomeMark.padding = #3
	\new Voice = "melody"  {
		\relative c'' {
			\clef treble
			\key c \major
			\time 4/4
			\tempo "" 4 = 160

			c4 c g g | c c g g | g g aes c | b aes g2 |
			\break
			g4 g aes f | f f g ees | ees ees f ees | d c g'2 |
			g4 g aes f | f f g ees | ees ees f ees | d c c2 |
			\bar "|."
		}
	}
}
guitar = \chordmode {
	c:m2 c:m/g | c:m c:m/g | c:m d:dim | g:7 c:m |
	c:m d:dim | g:7 c:m | c:m d:dim | g:7 c:m |
	c:m d:dim | g:7 c:m | c:m d:dim | g:7 c:m |

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
	<<
		\guitar
		\flute
	>>
	\midi { }
}

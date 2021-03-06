\version "2.18.2"
\header {
	title = "Entr'acte"
	subtitle = "from Carmen"
	composer = "Georges Bizet"
}

flute = \new Staff {
	\set Staff.midiInstrument = #"flute"
	\override Score.MetronomeMark.padding = #3
	\new Voice = "melody"  {
		\relative c'' {
			\clef treble
			\key ees \major
			\time 4/4
			\tempo "" 4 = 72

			R1*2 | ees4.\pp( f8 aes g f ees | bes'4 \tuplet 3/2 { c8 g c } bes4) r8 bes( | c\< d ees4\!~ ees8 d c g |
			%\break
			g bes \acciaccatura { f16 g16 } f8. ees16 f4\> bes,\!) | ees4.( f8 aes g f ees | bes'4 \tuplet 3/2 { c8 g c } bes4) r8 bes( | c8 d8 ees4~-"poco cresc." ees8 g f ees |
			%\break
			d c c ees c bes c d | ees4) f8( g bes g f ees | d f c d \acciaccatura { c16 d } c8 bes\> f g\! | ees4) bes2( ees4~ |
			%\break
			ees8 f g aes bes4) c8( d | ees f g ees bes4. c8 | d4. c8 bes\> aes f g | ees4\!) bes2( ees4~ |
			%\break
			ees8 f g aes bes4 ) c8( d | ees f g f ees4. g,8 | a4.) f'8( ees d e f | g4 f ees4. g,8 |
			%\break
			a2 bes4 aes | g) des2( bes8. aes16) | aes2( g4) r4 | r4 ees'2( des8. c16) | bes2( aes4) r4 |
			%\break
			r4 ees'4(~ ees8 b c d | f4


			\bar "|."
		}
	}
}

\score {
	<<
		\flute
	>>
	\layout { }
}
\score {
	<<
		\flute
	>>
	\midi { }
}

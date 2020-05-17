\version "2.19.0"
date = #(strftime "%d %b %Y" (localtime (current-time)))

\header {
	title = "Дөрвөн цагийн тал"
	copyright = \markup {
		\line { \date " - @VERSION@" }
	}
  	composer = "Л. Мөрдорж"
}

Soprano = \relative c' {
	\key bes \major
	\time 3/4
	\tempo "Maestoso" 4 = 80

	% Bar 1
	R2. | R | R | R |
	f8( f) bes4.( g8) |

	\break
	% Bar 6
	c8( d) f,2 | d8 f16 g bes4. g8 | c( bes) f2 |
	\repeat volta 2 {
		d'8\f bes f'4. d8 |

		\break
		% Bar 10
		g8 f g,2 |
		d'8 c16 d f,4. bes8 |
	}
	\alternative {
		{ c8 d bes2 }
		{ c8 d bes2~ | bes2.~ | bes8 r8 r4 r4 }
	}
}

words = \lyricmode {

	% Bar 5
	Янаг-гийн сайхан

	% Bar 6
	харц шиг |
	Яр гуй _ нүд— лэн |
	ми—шээ— сэн |
	\repeat volta 2 {
		Хан— шийн но— гоо |

		% Bar 10
		я— рай— сан |
		Хав— рын _ тал минь |
	}
	\alternative {
		{ нял— хар— на }
		{ цав— цай— на — — —  }
	}
}

upper_one = \relative c' {
	\key bes \major
	\time 3/4

	% Bar 1
	\stemUp
	d'8 bes \stemDown<f d' f>4. <g d'>8 |
	\stemUp <ees' g>8 <d f> <g,, d' g>2 |
	d''8 c16( d f,4. <g bes>8) |
	c8 d <d, f bes>2 |
	f8 f <d f bes>4. <c g'>8 |

	% Bar 6
	c'8 d8 <bes, d f>2 |
	d8 f16( g) <d f bes>4. g8 |
	c8 bes f2 |
	\repeat volta 2 {
		\stemDown
		d'8 bes( <f d' g>4. <g bes d>8) |

		% Bar 10
		\stemUp
		<ees' g>8^( <d f> <g,, d' g>2) |
		d''8 c16 d f,4. <ees g>8 |
	}
	\alternative {
		{ c'8^( d <d, f bes>2) }
		{ c'8^( d <d, f bes>2) | bes'8 ees g bes c d | \stemDown \ottava #-1 <f,, bes d>2.\fermata | }

	}
}

upper_two = \relative c' {
	\key bes \major
	\time 3/4

	% Bar 1
	\stemDown
	f8( r8 s2 |
	g2) s4 |
	<g bes>4 bes,4 r4 |
	ees4 s2 |
	s2. |

	% Bar 6
	<ees f>4 s2 |
	f,4 s4. c'16_( ees) |
	g4 d_( c) |
	\repeat volta 2 {
		s2. |

		% Bar 10
		g'2 s4 |
		<g bes>4 bes, r4 |
	}
	\alternative {
		{ ees4 s2 | }
		{ ees4 s2 | <c ees g>2. | s2. | }
	}

}

lower = \relative c' {
	\key bes \major
	\time 3/4
	\clef bass

	% Bar 1
	bes,8 f' d g bes d |
	<c, c,>4 r8 ees8( d c) |
	<d g,>4 d8( f bes d) |
	<f,, f'>4 bes8( d a') g16( f) |
	r4 bes,8( f' g bes) |

	% Bar 6
	<f, f'>4 r8 d'16^([ ees d8 c)] |
	bes4 g8^( d' g bes) |
	<f, f'>4 r8 d'16( ees) f8( f,) |
	\repeat volta 2 {
		bes( f' d f bes d ) |

		% Bar 10
		<c, c,>4 r8 ees8( d c) |
		<g d'>4 d'8( f bes c) |
	}
	\alternative {
		{ <f,, f'>4 bes8( d a') g16 f | }
		{ <f, f'>4 bes8( f' bes d) |
		\clef treble
		g8\rest c ees g g bes |
		<bes, d g bes>2\fermata r4 }
	}
}

lower_two = \relative c' {
	\key bes \major
	\time 3/4
	\clef bass

	% Bar 1
	s2. |
	s |
	s |
	s |
	s |

	% Bar 6
	s |
	s |
	s |
	\repeat volta 2 {
		s |

		% Bar 10
		s |
		s |
	}
	\alternative {
		{ s | }
		{ s |
		\clef treble
		\stemDown
		<bes g ees c> |
		s2. }
	}
}

\score {
	<<
		<<
			\new Staff \with { instrumentName = #"Soprano" } \Soprano
			\context Lyrics {
				\lyricsto "" {
					\words
				}
			}
		>>

		\new PianoStaff \with { instrumentName = #"Piano" }
		<<
			\new Staff {
				<<
					\upper_one
					\upper_two
				>>
			}
			\new Staff {
				<<
					\lower
					\lower_two
				>>
			}
		>>
	>>
	\layout { }
}
\score {
	\unfoldRepeats
	<<
		<<
			\new Staff \with { instrumentName = #"Soprano" } \Soprano
			\context Lyrics {
				\lyricsto "" {
					\words
				}
			}
		>>

		\new PianoStaff \with { instrumentName = #"Piano" }
		<<
			\new Staff {
				<<
					\upper_one
					\upper_two
				>>
			}
			\new Staff {
				<<
					\lower
					\lower_two
				>>
			}
		>>
	>>
	\midi { }
}

\markup {
	\hspace #0.1 % moves the column off the left margin;
	% can be removed if space on the page is tight
	\column {
		\line { \bold "2."
		\column {
			Уртын сайхан дуу шиг
			Ухаан санаа саруултгаж
			Зуун бээрээ дуниартсан
			Зуны тал минь униартана
			"This is verse two."
			"It has two lines."
		}
	}
	\combine \null \vspace #0.1 % adds vertical spacing between verses
	\line { \bold "3."
		\column {
			Нарны сайхан цацраг шиг
			Найман зүгтээ туяарч
            Намирсан тариа шаагиулсан
            Намрын тал минь шаргалтана
			"This is verse three."
			"It has two lines."
		}
	}
	\combine \null \vspace #0.1 % adds vertical spacing between verses
	\line { \bold "4."
		\column {
			Цагаан сайхан сэтгэл шиг
			Цасан цайдам алслаж
			Өврийн элчээ цантуулсан
			Өвлийн тал минь цавцайна
			"This is verse three."
			"It has two lines."
		}
	}
	}
	% can be removed if page space is tight

}
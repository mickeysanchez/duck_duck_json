Makes a search request to DuckDuckGo, scrapes the results, and returns a JSON version. 

JSON format:

	{
	  "definition": "definition text",
	  "definition_source": "url for definition source",
	  "image": "url for main search image",
	  "results": [
	    {
		  "url": "url for results",
		  "description": "text description of result",
		  "sponsored": boolean
		}  
	  ]
	  "related": [
	    {
		  "text": "description or related",
		  "url": "url to related"
		}
	  ]
	}
	
Notes for running PhantomJS on Heroku:

First, you need to install PhantomJS AND Ruby on Heroku. To do this you need to use multiple heroku buildpacks. Add a .buildpacks file to the root directory of your app, with this:

	https://github.com/stomita/heroku-buildpack-phantomjs.git
	https://github.com/heroku/heroku-buildpack-ruby.git
	
Second, you need to point your app to the PhantomJS executable files on Heroku. To do that, run these commands:

	heroku config:set PATH="/usr/local/bin:/usr/bin:/bin:/app/vendor/phantomjs/bin"
	heroku config:set LD_LIBRARY_PATH="/usr/local/lib:/usr/lib:/lib:/app/vendor/phantomjs/lib"
	
That should do it. If you run into an error, check your heroku logs. If you're getting the error "H14 no web processes running", try running:

	 heroku ps:scale web=1
	 

Results for "Music":

	{
	  "definition": "Music is an art form consisting of sound and silence, expressed through time.",
	  "definition_source": "https://duckduckgo.com/Music",
	  "image": "http://icons.duckduckgo.com/i/dc506a2e.jpg",
	  "results": [
	    {
	      "url": "http://r.duckduckgo.com/y.js?kh=-1&x=1&u2=http%3A%2F%2F1817345.r.msn.com%2F%3Fld%3DDvm1YI5HyFqty1Icy84GSd5jVUCUwk14xNQ%2Ds8uBbSgirsnnr8I6W6KZnxYZllsHgvIcVfDTJUsr4M5F9lZMZkmGZyaGUiAJ%2Dyx27Wr4bK5isqQmc6FPGC5VeN7mUBz6NAsx0LcLzdOy2tzflKnSbpGT_P69A%26u%3Dtrackicon.com%252fbase.php%253fc%253d8%2526key%253da08822de73c7bdd40012c76f39d63ea2%2526keyword%253dfree%2Bmusic%2Bdownloads%2526ad%253dall2%2526query%253dmusic",
	      "description": "Listen To Free Music Downloads. FREE. 100% Free Download.",
	      "sponsored": true
	    },
	    {
	      "url": "http://music.yahoo.com/",
	      "description": "Find all the new music and exclusive video performances on Yahoo Music. Get the latest news in our exclusive music blogs, listen to our online music radio and catch the latest music videos",
	      "sponsored": false
	    },
	    {
	      "url": "http://www.pandora.com/",
	      "description": "Pandora is free, personalized radio that plays music you'll love. Discover new music and enjoy old favorites. Start with your favorite artist, song or composer and Pandora will create a custom station that plays similar tracks.",
	      "sponsored": false
	    },
	    {
	      "url": "http://www.music.com/",
	      "description": "Music Videos by Your Favorite Artists for Free from Music.com",
	      "sponsored": false
	    },
	    {
	      "url": "http://www.mtv.com/music/",
	      "description": "Watch and listen to free music videos. Get the latest new music videos, news, interviews, downloads, lyrics and more on MTV.",
	      "sponsored": false
	    },
	    {
	      "url": "http://music.google.com/",
	      "description": "Google Play gives you one place to find, enjoy, & share Apps, Music, Movies & Books - instantly anywhere across the web & android devices. Google Play is your entertainment hub.",
	      "sponsored": false
	    },
	    {
	      "url": "http://www.playlist.com/",
	      "description": "Allows users to create a free playlist, to share it with their friends and to listen to songs on these playlists directly from their browsers. [United States only]",
	      "sponsored": false
	    },
	    {
	      "url": "http://www.allmusic.com/",
	      "description": "AllMusic provides comprehensive music info including reviews and biographies. Get recommendations for new music to listen to, stream or own.",
	      "sponsored": false
	    },
	    {
	      "url": "http://www.rhapsody.com/",
	      "description": "Rhapsody lets you play millions of songs on your phone, tablet, computer, and home audio system. Free 30-day Trial.",
	      "sponsored": false
	    },
	    {
	      "url": "http://www.artistdirect.com/",
	      "description": "Grab the Free Music Downloads, watch new music video, view your favorite band or recording artist photos, read breaking international music news, buy concert tickets online, and check out the MP3 Music, Song Lyrics and discount Music CD's on the ARTISTdirect Network!",
	      "sponsored": false
	    },
	    {
	      "url": "http://www.billboard.com/",
	      "description": "Daily music news, charts, music downloads, and artist features for rock, pop, country, rhythm and blues, jazz, world, and hip-hop.",
	      "sponsored": false
	    },
	    {
	      "url": "http://aolradio.slacker.com/",
	      "description": "Listen to AOL Radio powered by Slacker Radio. Over 200+ free internet radio stations from dozens of genres or create your own personal online music stations.",
	      "sponsored": false
	    },
	    {
	      "url": "http://grooveshark.com/",
	      "description": "Grooveshark is free music, online radio, and so much more. Enjoy unlimited free music streaming with a worldwide community of artists and music lovers.",
	      "sponsored": false
	    },
	    {
	      "url": "http://www.thefreedictionary.com/music",
	      "description": "They could not make these out at first, but as they became louder our friends thought they heard a sort of music like that made by a wheezy hand-organ; the music fell upon their ears in this way:",
	      "sponsored": false
	    },
	    {
	      "url": "http://dictionary.reference.com/browse/music",
	      "description": "music (\u02c8mju\u02d0z\u026ak) \u2014n: 1. an art form consisting of sequences of sounds in time, esp tones of definite pitch organized melodically, harmonically, rhythmically and according to tone colour",
	      "sponsored": false
	    },
	    {
	      "url": "http://www.bestbuy.com/site/Music-Movies/Music/cat02001.c?id=cat02001",
	      "description": "Get the latest CDs and exclusive music offers at BestBuy.com. Shop for music CDs, vinyl records, Blu-ray discs and music DVDs from the best new artists.",
	      "sponsored": false
	    },
	    {
	      "url": "http://dir.yahoo.com/entertainment/music/",
	      "description": "Find music artists, song lyrics, sheet music, guitar tabs, and information about musical instruments and styles such as rock and pop, rap, hip-hop, jazz, classical, country, and other genres.",
	      "sponsored": false
	    },
	    {
	      "url": "http://www.last.fm/music",
	      "description": "The world's largest online music catalogue, powered by your scrobbles. Free listening, videos, photos, stats, charts, biographies and concerts.",
	      "sponsored": false
	    },
	    {
	      "url": "http://www.allposters.com/-st/Music-Posters_c122_.htm",
	      "description": "Music Posters at AllPosters.com. Choose from over 500,000 Posters and Art Prints. Value Framing, Fast Delivery, 100% Satisfaction Guarantee.",
	      "sponsored": false
	    },
	    {
	      "url": "http://www.cmt.com/music/",
	      "description": "Visit CMT.com for your favorite Country Music. Hear New Songs, CDs and Full Albums. Watch Streaming Music Videos online, for free.",
	      "sponsored": false
	    },
	    {
	      "url": "http://www.wikihow.com/Category:Music",
	      "description": "wikiHow has Music how to articles with step-by-step instructions and photos. How to instructions on topics such as Songs and Song Writing, Musical Instruments, Singing and more.",
	      "sponsored": false
	    },
	    {
	      "url": "http://www.lyrics.com/",
	      "description": "Find lyrics for all the latest and greatest songs. Search by song, album, and genre.",
	      "sponsored": false
	    },
	    {
	      "url": "http://www.jango.com/",
	      "description": "Free internet radio, just like Pandora only fewer ads and more variety. Listen to hundreds of genre stations or create your own with your favorite music.",
	      "sponsored": false
	    },
	    {
	      "url": "http://www.mevio.com/music/",
	      "description": "Watch free music videos online at Mevio! The leading online music video network. Discover new music or find your favorites in all of the top genres.",
	      "sponsored": false
	    },
	    {
	      "url": "javascript:;",
	      "description": null,
	      "sponsored": false
	    }
	  ],
	  "related": [
	    {
	      "text": "Music is an art form consisting of sound and silence, expressed through time.",
	      "url": "https://duckduckgo.com/Music"
	    },
	    {
	      "text": "Musical notation, a system for writing musical sounds with their pitch, rhythm, timing, volume, and tonality.",
	      "url": "https://duckduckgo.com/Musical_notation"
	    },
	    {
	      "text": "Sheet music, paper with printed or written musical notation on it",
	      "url": "https://duckduckgo.com/Sheet_music"
	    },
	    {
	      "text": "Music (Carole King album), a 1972 album by Carole King",
	      "url": "https://duckduckgo.com/Music_(Carole_King_album)"
	    },
	    {
	      "text": "Music (311 album), a 1993 album by 311",
	      "url": "https://duckduckgo.com/Music_(311_album)"
	    },
	    {
	      "text": "Music (Madonna album), a 2000 album by Madonna",
	      "url": "https://duckduckgo.com/Music_(Madonna_album)"
	    },
	    {
	      "text": "Music (Erick Sermon album), a 2001 album by Erick Sermon",
	      "url": "https://duckduckgo.com/Music_(Erick_Sermon_album)"
	    },
	    {
	      "text": "Music (Mika Nakashima album), a 2005 album by Mika Nakashima",
	      "url": "https://duckduckgo.com/Music_(Mika_Nakashima_album)"
	    },
	    {
	      "text": "Music (Girugamesh album), a 2008 album",
	      "url": "https://duckduckgo.com/Music_(Girugamesh_album)"
	    },
	    {
	      "text": "\"Music (John Miles song)\", a 1976 single by John Miles from the album Rebel",
	      "url": "https://duckduckgo.com/Music_(John_Miles_song)"
	    },
	    {
	      "text": "\"Music\" (Madonna song), a 2000 single from Madonna's album Music",
	      "url": "https://duckduckgo.com/Music_(Madonna_song)"
	    },
	    {
	      "text": "\"Music\" (Erick Sermon and Marvin Gaye song), a 2001 single by Erick Sermon",
	      "url": "https://duckduckgo.com/Music_(Erick_Sermon_and_Marvin_Gaye_song)"
	    },
	    {
	      "text": "\"Music\" (Witchfinder General song), a 2003 single from Witchfinder General's album Friends of Hell",
	      "url": "https://duckduckgo.com/friends_of_Hell"
	    },
	    {
	      "text": "Music (software), a series of music creation programs",
	      "url": "https://duckduckgo.com/Music_(software)"
	    },
	    {
	      "text": "MUSIC-N, the first music programming language",
	      "url": "https://duckduckgo.com/MUSIC-N"
	    },
	    {
	      "text": "MUSIC/SP, a multi-user system for interactive computing",
	      "url": "https://duckduckgo.com/?q=MUSIC%2FSP"
	    },
	    {
	      "text": "Lorenzo Music (1937\u20132001), born Gerald David Music, American actor, voice of the cartoon cat Garfield",
	      "url": "https://duckduckgo.com/Lorenzo_Music"
	    },
	    {
	      "text": "Vedin Musi\u0107 (born 1973), Bosnian footballer",
	      "url": "https://duckduckgo.com/Vedin_Musi%C4%87"
	    },
	    {
	      "text": "Zoran Mu\u0161i\u010d (1909\u20132005), Slovene painter",
	      "url": "https://duckduckgo.com/Zoran_Mu%C5%A1i%C4%8D"
	    },
	    {
	      "text": "Multiple signal classification (MUSIC), a frequency estimation technique",
	      "url": "https://duckduckgo.com/Multiple_signal_classification"
	    },
	    {
	      "text": "Musical notation, a system for writing musical sounds with their pitch, rhythm, timing, volume, and tonality.",
	      "url": "https://duckduckgo.com/Musical_notation"
	    },
	    {
	      "text": "Sheet music, paper with printed or written musical notation on it",
	      "url": "https://duckduckgo.com/Sheet_music"
	    },
	    {
	      "text": "The Music, a British rock band",
	      "url": "https://duckduckgo.com/The_Music"
	    },
	    {
	      "text": "Wii Music, a 2008 video game for the Wii console that focuses on the simulation of musical instruments",
	      "url": "https://duckduckgo.com/Wii_Music"
	    },
	    {
	      "text": "Music (horse) - Music (foaled 1810) was a British Thoroughbred racehorse and broodmare who won the classic Oaks Stakes at Epsom Downs Racecourse in 1813.",
	      "url": "https://duckduckgo.com/Music_(horse)"
	    },
	    {
	      "text": "Musick Meanings",
	      "url": "https://duckduckgo.com/d/Musick"
	    }
	  ]
	}
	
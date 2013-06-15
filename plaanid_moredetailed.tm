<TeXmacs|1.0.7.16>

<style|generic>

<\body>
  <\with|font-family|rm>
    Plaanid_more detailed.

    \;

    \;

    <section|Annotation framework>

    <\folded-std>
      Okular (establish tags)
    <|folded-std>
      IMPLEMENTATION [More detailed versions embedded] - into small pieces.

      <\folded-std>
        BETTER WOULD BE: Add an (easily accessible) right-click insert tags
        option with a small pop-up result. \ Low-Tech alternative: Add a
        textbox for the note space.
      <|folded-std>
        Basically: To have text-selection-tool to do something that the
        highlight tool already does, but under a slightly different name.
        [And through a menu-item.]

        Currently - text selection tool may be the best thing to be updated,
        selects easily - is just one tool, and has a small menu (+highlight,
        +tag for it).

        Look up, how the notes are made, etc

        Extra feature to consider: just select lines, and tag them without
        highlight or really instead of it... (perhaps even invisible
        highlight)

        Think also about keyboard shortcuts on reading.
      </folded-std>

      <\folded-std>
        Save the contents of the tag-field, as a separate entity on the note.
      <|folded-std>
        Look up the pathway from the note object made on double-click, and
        the contents aspect in the XML file. Just redouble.
      </folded-std>

      <\folded-std>
        DIFFICULT: Make the tags visible on the sides or top_right corners if
        not too crowded, can be done even manually... Best place to make them
        visible, would be the sides.

        Whenever tags are present insert them visibly into the document with
        blue/green colour
      <|folded-std>
        TASK1 The location could be just above the highlight at its top-right
        edge, TASK2 with long selections also on the side with entailment
        (with some way of keeping them apart).
      </folded-std>

      <\folded-std>
        ADDITIONAL FEATURE: Color-code the limited number of tags, so that
        the visible coloration is automatic to a small set of tags [maybe
        also grey = other]
      <|folded-std>
        \;
      </folded-std>

      <\folded-std>
        Also required: ask for a feature? That highlights that also contain a
        note information should contain a small mark at the corners...
      <|folded-std>
        This marking would be very similar as to what would be required of
        tags, difference being that with tags, text content may be more
        easier shown.
      </folded-std>

      WISHLIST

      <\folded-std>
        There is a built-in search mode for review items that is not very
        useful. And someone also mentioned that it is not that much useful as
        could be.\ 
      <|folded-std>
        Should be able to search for contents, tags and all what-not. Maybe
        an advanced view with settings even.

        However this is not fully relevant, as searching should be done with
        a centralized search enginge anyway.
      </folded-std>

      \;

      NEXT STEP

      <\folded-std>
        Layer 0 to layer 5, switching between the layers each of them save on
        its own.\ 
      <|folded-std>
        Lots of purposes, maybe even smoothing after the first read...
      </folded-std>
    </folded-std>

    <\folded-std>
      Texmacs (TAGS + VISIBILITY IMPLEMENTED - now more specific debugging
      issues)
    <|folded-std>
      <\folded-std>
        Texmacs code _ needs to be unfolded for demonstration. Or maybe not,
        just can't use the summary function for it. Summary is good for other
        purposes.
      <|folded-std>
        \;

        <switch|<\shown>
          <assign|draft1|<\macro|x>
            <with|color|blue|<arg|x>>
          </macro>> Now this is the visible state1.<assign|draft2|<\macro|x>
            <with|color|blue|<arg|x>>
          </macro>> Now this is the visible state1.<assign|draft3|<\macro|x>
            <hidden|<arg|x>>
          </macro>> Now this is the visible state1.
        </shown>|<\hidden>
          <assign|draft1|<\macro|x>
            <hidden|<arg|x>>
          </macro>> Now this is the visible state2.<assign|draft2|<\macro|x>
            <with|color|blue|<arg|x>>
          </macro>> Now this is the visible state2.<assign|draft3|<\macro|x>
            <with|color|blue|<arg|x>>
          </macro>> Now this is the visible state2.
        </hidden>|<\hidden>
          <assign|draft1|<\macro|x>
            <with|color|blue|<arg|x>>
          </macro>> Now inside the switch macro, state
          3.<assign|draft2|<\macro|x>
            <hidden|<arg|x>>
          </macro>> Now state3.<assign|draft3|<\macro|x>
            <with|color|blue|<arg|x>>
          </macro>> Now state3.
        </hidden>>

        <draft1|Draft 1 text is now visible.>

        <draft2|Draft 2 text is now visible.>

        <draft3|Draft 3 text is now visible.>

        Hmmh, hidden code does not work: Thus by summary function, you can
        make switches for all tags to be hidden or to be shown.

        <\summarized-std>
          <assign|draft1|<\macro|x>
            <with|color|blue|<arg|x>>
          </macro>> Click to change visibility of drafts [now visible]
        <|summarized-std>
          <assign|draft1|<\macro|x>
            <hidden|<arg|x>>
          </macro>> Click to change visibility of drafts [now invisible]
        </summarized-std>

        <draft1|An example comment/olddraft state.>

        Macros are written here

        <assign|tagged|<macro|x|y|<with|color|dark red|<arg|x>
        <larger|<em|<flag|<arg|y>|brown>>>>>>

        \ - The macro without color selection.

        <assign|tag-col|<macro|x|y|color|<with|color|dark
        red|<larger|<em|<arg|x>>>><flag|<arg|y>|<arg|color>>>> The macro with
        color selection.

        \;

        Kuidas jätkata: If tag = miski.
      </folded-std>

      <\folded-std>
        Demo capabilities
      <|folded-std>
        TAGGING/FLAGGING

        Has some tag capability now, that can make flags<flag|like
        this|brown>, labels<label|no_colour_selection> and flags associated
        with particular contents [the source variable is still a mystery].

        EMBEDDED TAGS (but this is limited)

        You can embed tags like this <tagged|embedded
        text|tag1:tag2:tag3:tag4:tag5>, however you can not easily interlace
        two tag embeddings i think, because of conflicts. This could be a
        major limitation. Especially with view-\<gtr\> informative flags
        -\<gtr\> detailed, everything else is quite good.

        SWITCHING OFF and ON

        It is a hack, but I have also just solved this draft writing piece.
        Now all that's needed is a keyboard interface.

        <draft1|This ``draft'' text can be hidden on call.>

        \;
      </folded-std>

      <\folded-std>
        Problems
      <|folded-std>
        <\folded-std>
          Inter-operability, doc-\<gtr\>texmacs conversion [will forever
          remain]
        <|folded-std>
          Another concern is its very bad
          <tagged|inter-operability|critique>, Texmacs cannot open word or
          openoffice files. And possibly never will.

          Thus, as long as no source codes are circulated, and they probably
          will not be soon, converting to pdf will be the cleanest option.
        </folded-std>

        <\folded-std>
          Embeddedness issues - post in forums. /LITTLE CHANCE
        <|folded-std>
          May be indefinite as well, but I have higher hopes for okular. You
          should be able to mark just about anything. I guess with own
          writing, more primitive mark-up will have to be accepted.
        </folded-std>

        <\folded-std>
          Wrapping issues for basic macros - post in forums. /FIXED (I think)
        <|folded-std>
          \;
        </folded-std>

        <\folded-std>
          A quick issue - need a keyboard shortcut for fold. /ASKED
        <|folded-std>
          And for save, for that matter. ctrl + s does work for save
          eventually
        </folded-std>

        <\folded-std>
          Keyboard shortcut for one particular fold. Probably must be
          hardcoded. Future.
        <|folded-std>
          \;
        </folded-std>
      </folded-std>

      <\folded>
        To post in the forum
      <|folded>
        FOUND_ANSWER_SELF Does changing switches only work in beamer mode? At
        least with shortcut keys NO, you can also do it in other modes.

        FOUND_ANSWER_SELF A flat out bug, a simple macro does not allow
        word-wrap from page-limit anymore? - However it seems to have no
        problem with the preset features, so the problem should be with the
        macro...? - FIXED IT, but seems confusing still. Probably the
        /document command seems largely responsible for it. (maybe from
        before when generic was chosen?)

        ASKED_WAITING_FOR_ANSWERS Easier question, how to create a keyboard
        shortcut for a particular fold - or unfold.\ 

        Adding new keys should be not that difficult a problem.

        <\folded-std>
          Questions on paragraph interlacing
        <|folded-std>
          ## Tags to work across paragraph boundaries? - EASIEST?

          ## Embedding more than one section??? Not just impossible to
          interlace, but impossible to embrace as well? - PROLLY NO

          ## Ja with - generic , nt font või värv saab kohe lõpuni minna...
          need tagid tuleks samamoodi kuidagi withiga teha... NÕUAB NUPPU
          tagidele, nagu FOLDIL ja FONDIL nt on.

          For interlacing boundaries color+font seems like the best question.
          But intuitions say there is no chance already. [HTML syntax would
          allow this though.]

          BEGINNER'S HELP: ## How to insert those ``with''s, if you can't do
          that via the interface, mouse GUI and / does not help here, and
          other options don't appear to be visible. [Beginner's help.]

          [the font boundary limit does seem absolute...] can't interlace it
          no - how.

          You can put a Sans Serif inside a Roman if you want to, and that
          overrides the roman probably...
        </folded-std>

        \;

        Open questions: What is the source feature on the flag variable???
      </folded>

      <\folded-std>
        Notes for next step
      <|folded-std>
        The accessibility relations within fold/unfold and summary/detailed
        are different. This can be used to build a general switch on computer
        shortcuts at one point, which makes a particular tag at any point
        either visible or invisible.
      </folded-std>
    </folded-std>

    \;

    \;

    <section|GENERAL ISSUES>

    \;

    <\folded>
      Readings in general experimental linguistics
    <|folded>
      Now seems to be backtracked somewhat.

      [old] - write up evolutionary description of comm experiments - read
      finishedmerge-1 at one point.

      - general linguistic properties and timescales, database for teach.

      - write to Kristian Tylen
    </folded>

    <\folded-std>
      Some things about the conference?
    <|folded-std>
      Soon, talk to Cohnitz, e-mail the evolutionary folk, that people might
      be interested in methods and such...

      Also e-mail Kristian, this whole methods thing is interesting,

      Introduce also sociohistorical linguistics... [look up some papers and
      see how its done]
    </folded-std>

    <\folded-std>
      Generally for the summer.
    <|folded-std>
      PhD in Tallinn [building of a text-based linguistic community, may work
      for a PhD?], this also includes Undusk & things.

      <\folded-std>
        Krista Kerge

        https://www.etis.ee/portaal/isikuPublikatsioonid.aspx?PersonVID=38373&lang=
      <|folded-std>
        \ Kerge, Krista; Uusen, Anne (2010). Toimingu- ja tekstikeskne
        keelemaailm. Krista Kerge (Toim.). Tekstid ja taustad VI.
        Tekstiuurimus ja kool (95 - 111). Tallinn: Tallinna Ülikool

        Kerge, Krista (2012). Tekstitoimingute valdamine. Kadakas, Mari
        (Toim.). Gümnaasiumi valdkonnaraamat ?Eesti keel ja kirjandus? (Link
        - 14).Riiklik Eksami ja Kvalifikatsioonikeskus

        Sotsiohistoorilisest kogukonna konstrueerimisest.

        \;

        http://www.tlu.ee/et/opingud/oppimisvoimalused/doktoriope/Vastuvotukalender

        vt. ka Anna Verschik

        \ - https://www.etis.ee/portaal/isikuPublikatsioonid.aspx?PersonVID=36889

        \;

        Muide, Tartu FLEE-s on 5 kohta, igaks juhuks võiks uurida, kas siiski
        on võimalik?
      </folded-std>

      Calculate the times for comp. implem. of ok. some hope there?

      Already away, - u. al. 05/07/2013 - jooksulaagrisse, tagasi nädal enne
      genfi.\ 

      Osta piletid genfi.
    </folded-std>

    <\folded-std>
      Short break things
    <|folded-std>
      - <strong|Fill out papers for Archimedes>

      http://adm.archimedes.ee/stipendiumid/programm-dora/noorteadlaste-osalemine-rahvusvahelises-teadmisteringluses/

      https://taotlused.archimedes.ee/pub_login.php, pw. lbvLbfuD8M
      Peeter.Tinits

      - Repair Danish language politics wiki-entry

      - Look at Grzybek's things

      - Vaata tõlkevidina gdocs-

      - hmm.
    </folded-std>

    <\folded-std>
      Important dates: Next one XX/XX/XXXX!
    <|folded-std>
      \;
    </folded-std>

    \;
  </with>

  \;
</body>

<\initial>
  <\collection>
    <associate|font-family|tt>
    <associate|info-flag|detailed>
    <associate|language|verbatim>
    <associate|page-screen-height|1121280tmpt>
    <associate|page-screen-width|1729280tmpt>
    <associate|par-first|0cm>
    <associate|preamble|false>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|2|?>>
    <associate|auto-3|<tuple|1.2|?>>
    <associate|no_colour_selection|<tuple|1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Annotation
      framework> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|GENERAL
      ISSUES> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>
{-
Copyright (c) 2008, 2009
Russell O'Connor

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
-}

-- |Names for colours.
-- Names taken from SVG 1.1 specification,
-- <http://www.w3.org/TR/SVG11/types.html#ColorKeywords>
--
-- and from the @color-names@ repository:
-- <https://github.com/codebrainz/color-names/blob/master/output/colors.csv>
--
-- 'readColourName' takes a string naming a colour (must be all lowercase)
-- and returns the colour. This only takes SVG 1.1 color names into account.
-- Fails if the name is not recognized.
module Data.Colour.Names 
 (
  readColourName
 ,aliceblue
 ,antiquewhite
 ,aqua
 ,aquamarine
 ,azure
 ,beige
 ,bisque
 ,black
 ,blanchedalmond
 ,blue
 ,blueviolet
 ,brown
 ,burlywood
 ,cadetblue
 ,chartreuse
 ,chocolate
 ,coral
 ,cornflowerblue
 ,cornsilk
 ,crimson
 ,cyan
 ,darkblue
 ,darkcyan
 ,darkgoldenrod
 ,darkgray
 ,darkgreen
 ,darkgrey
 ,darkkhaki
 ,darkmagenta
 ,darkolivegreen
 ,darkorange
 ,darkorchid
 ,darkred
 ,darksalmon
 ,darkseagreen
 ,darkslateblue
 ,darkslategray
 ,darkslategrey
 ,darkturquoise
 ,darkviolet
 ,deeppink
 ,deepskyblue
 ,dimgray
 ,dimgrey
 ,dodgerblue
 ,firebrick
 ,floralwhite
 ,forestgreen
 ,fuchsia
 ,gainsboro
 ,ghostwhite
 ,gold
 ,goldenrod
 ,gray
 ,grey
 ,green
 ,greenyellow
 ,honeydew
 ,hotpink
 ,indianred
 ,indigo
 ,ivory
 ,khaki
 ,lavender
 ,lavenderblush
 ,lawngreen
 ,lemonchiffon
 ,lightblue
 ,lightcoral
 ,lightcyan
 ,lightgoldenrodyellow
 ,lightgray
 ,lightgreen
 ,lightgrey
 ,lightpink
 ,lightsalmon
 ,lightseagreen
 ,lightskyblue
 ,lightslategray
 ,lightslategrey
 ,lightsteelblue
 ,lightyellow
 ,lime
 ,limegreen
 ,linen
 ,magenta
 ,maroon
 ,mediumaquamarine
 ,mediumblue
 ,mediumorchid
 ,mediumpurple
 ,mediumseagreen
 ,mediumslateblue
 ,mediumspringgreen
 ,mediumturquoise
 ,mediumvioletred
 ,midnightblue
 ,mintcream
 ,mistyrose
 ,moccasin
 ,navajowhite
 ,navy
 ,oldlace
 ,olive
 ,olivedrab
 ,orange
 ,orangered
 ,orchid
 ,palegoldenrod
 ,palegreen
 ,paleturquoise
 ,palevioletred
 ,papayawhip
 ,peachpuff
 ,peru
 ,pink
 ,plum
 ,powderblue
 ,purple
 ,red
 ,rosybrown
 ,royalblue
 ,saddlebrown
 ,salmon
 ,sandybrown
 ,seagreen
 ,seashell
 ,sienna
 ,silver
 ,skyblue
 ,slateblue
 ,slategray
 ,slategrey
 ,snow
 ,springgreen
 ,steelblue
 ,tan
 ,teal
 ,thistle
 ,tomato
 ,turquoise
 ,violet
 ,wheat
 ,white
 ,whitesmoke
 ,yellow
 ,yellowgreen

 ,airForceBlueRaf
 ,airForceBlueUsaf
 ,airSuperiorityBlue
 ,alabamaCrimson
 ,aliceBlue
 ,alizarinCrimson
 ,alloyOrange
 ,almond
 ,amaranth
 ,amber
 ,amberSaeEce
 ,americanRose
 ,amethyst
 ,androidGreen
 ,antiFlashWhite
 ,antiqueBrass
 ,antiqueFuchsia
 ,antiqueRuby
 ,antiqueWhite
 ,aoEnglish
 ,appleGreen
 ,apricot
 ,armyGreen
 ,arsenic
 ,arylideYellow
 ,ashGrey
 ,asparagus
 ,atomicTangerine
 ,auburn
 ,aureolin
 ,aurometalsaurus
 ,avocado
 ,azureMistWeb
 ,babyBlue
 ,babyBlueEyes
 ,babyPink
 ,ballBlue
 ,bananaMania
 ,bananaYellow
 ,barnRed
 ,battleshipGrey
 ,bazaar
 ,beauBlue
 ,beaver
 ,bigDipORuby
 ,bistre
 ,bittersweet
 ,bittersweetShimmer
 ,blackBean
 ,blackLeatherJacket
 ,blackOlive
 ,blanchedAlmond
 ,blastOffBronze
 ,bleuDeFrance
 ,blizzardBlue
 ,blond
 ,blueBell
 ,blueCrayola
 ,blueGray
 ,blueGreen
 ,blueMunsell
 ,blueNcs
 ,bluePigment
 ,blueRyb
 ,blueSapphire
 ,blueViolet
 ,blush
 ,bole
 ,bondiBlue
 ,bone
 ,bostonUniversityRed
 ,bottleGreen
 ,boysenberry
 ,brandeisBlue
 ,brass
 ,brickRed
 ,brightCerulean
 ,brightGreen
 ,brightLavender
 ,brightMaroon
 ,brightPink
 ,brightTurquoise
 ,brightUbe
 ,brilliantLavender
 ,brilliantRose
 ,brinkPink
 ,britishRacingGreen
 ,bronze
 ,brownTraditional
 ,brownWeb
 ,bubbleGum
 ,bubbles
 ,buff
 ,bulgarianRose
 ,burgundy
 ,burntOrange
 ,burntSienna
 ,burntUmber
 ,byzantine
 ,byzantium
 ,cadet
 ,cadetBlue
 ,cadetGrey
 ,cadmiumGreen
 ,cadmiumOrange
 ,cadmiumRed
 ,cadmiumYellow
 ,cafAuLait
 ,cafNoir
 ,calPolyGreen
 ,cambridgeBlue
 ,camel
 ,cameoPink
 ,camouflageGreen
 ,canaryYellow
 ,candyAppleRed
 ,candyPink
 ,capri
 ,caputMortuum
 ,cardinal
 ,caribbeanGreen
 ,carmine
 ,carmineMP
 ,carminePink
 ,carmineRed
 ,carnationPink
 ,carnelian
 ,carolinaBlue
 ,carrotOrange
 ,catalinaBlue
 ,ceil
 ,celadon
 ,celadonBlue
 ,celadonGreen
 ,celesteColour
 ,celestialBlue
 ,cerise
 ,cerisePink
 ,cerulean
 ,ceruleanBlue
 ,ceruleanFrost
 ,cgBlue
 ,cgRed
 ,chamoisee
 ,champagne
 ,charcoal
 ,charmPink
 ,chartreuseTraditional
 ,chartreuseWeb
 ,cherry
 ,cherryBlossomPink
 ,chestnut
 ,chinaPink
 ,chinaRose
 ,chineseRed
 ,chocolateTraditional
 ,chocolateWeb
 ,chromeYellow
 ,cinereous
 ,cinnabar
 ,cinnamon
 ,citrine
 ,classicRose
 ,cobalt
 ,cocoaBrown
 ,coffee
 ,columbiaBlue
 ,congoPink
 ,coolBlack
 ,coolGrey
 ,copper
 ,copperCrayola
 ,copperPenny
 ,copperRed
 ,copperRose
 ,coquelicot
 ,coralPink
 ,coralRed
 ,cordovan
 ,corn
 ,cornellRed
 ,cornflowerBlue
 ,cosmicLatte
 ,cottonCandy
 ,cream
 ,crimsonGlory
 ,cyanProcess
 ,daffodil
 ,dandelion
 ,darkBlue
 ,darkBrown
 ,darkByzantium
 ,darkCandyAppleRed
 ,darkCerulean
 ,darkChestnut
 ,darkCoral
 ,darkCyan
 ,darkElectricBlue
 ,darkGoldenrod
 ,darkGray
 ,darkGreen
 ,darkImperialBlue
 ,darkJungleGreen
 ,darkKhaki
 ,darkLava
 ,darkLavender
 ,darkMagenta
 ,darkMidnightBlue
 ,darkOliveGreen
 ,darkOrange
 ,darkOrchid
 ,darkPastelBlue
 ,darkPastelGreen
 ,darkPastelPurple
 ,darkPastelRed
 ,darkPink
 ,darkPowderBlue
 ,darkRaspberry
 ,darkRed
 ,darkSalmon
 ,darkScarlet
 ,darkSeaGreen
 ,darkSienna
 ,darkSlateBlue
 ,darkSlateGray
 ,darkSpringGreen
 ,darkTan
 ,darkTangerine
 ,darkTaupe
 ,darkTerraCotta
 ,darkTurquoise
 ,darkViolet
 ,darkYellow
 ,dartmouthGreen
 ,davySGrey
 ,debianRed
 ,deepCarmine
 ,deepCarminePink
 ,deepCarrotOrange
 ,deepCerise
 ,deepChampagne
 ,deepChestnut
 ,deepCoffee
 ,deepFuchsia
 ,deepJungleGreen
 ,deepLilac
 ,deepMagenta
 ,deepPeach
 ,deepPink
 ,deepRuby
 ,deepSaffron
 ,deepSkyBlue
 ,deepTuscanRed
 ,denim
 ,desert
 ,desertSand
 ,dimGray
 ,dodgerBlue
 ,dogwoodRose
 ,dollarBill
 ,drab
 ,dukeBlue
 ,earthYellow
 ,ebony
 ,ecru
 ,eggplant
 ,eggshell
 ,egyptianBlue
 ,electricBlue
 ,electricCrimson
 ,electricCyan
 ,electricGreen
 ,electricIndigo
 ,electricLavender
 ,electricLime
 ,electricPurple
 ,electricUltramarine
 ,electricViolet
 ,electricYellow
 ,emerald
 ,englishLavender
 ,etonBlue
 ,fallow
 ,faluRed
 ,fandango
 ,fashionFuchsia
 ,fawn
 ,feldgrau
 ,fernGreen
 ,ferrariRed
 ,fieldDrab
 ,fireEngineRed
 ,flame
 ,flamingoPink
 ,flavescent
 ,flax
 ,floralWhite
 ,fluorescentOrange
 ,fluorescentPink
 ,fluorescentYellow
 ,folly
 ,forestGreenTraditional
 ,forestGreenWeb
 ,frenchBeige
 ,frenchBlue
 ,frenchLilac
 ,frenchLime
 ,frenchRaspberry
 ,frenchRose
 ,fuchsiaCrayola
 ,fuchsiaPink
 ,fuchsiaRose
 ,fulvous
 ,fuzzyWuzzy
 ,gamboge
 ,ghostWhite
 ,ginger
 ,glaucous
 ,glitter
 ,goldMetallic
 ,goldWebGolden
 ,goldenBrown
 ,goldenPoppy
 ,goldenYellow
 ,grannySmithApple
 ,grayAsparagus
 ,grayHtmlCssGray
 ,grayX11Gray
 ,greenColorWheelX11Green
 ,greenCrayola
 ,greenHtmlCssGreen
 ,greenMunsell
 ,greenNcs
 ,greenPigment
 ,greenRyb
 ,greenYellow
 ,grullo
 ,guppieGreen
 ,halayBe
 ,hanBlue
 ,hanPurple
 ,hansaYellow
 ,harlequin
 ,harvardCrimson
 ,harvestGold
 ,heartGold
 ,heliotrope
 ,hollywoodCerise
 ,honoluluBlue
 ,hookerSGreen
 ,hotMagenta
 ,hotPink
 ,hunterGreen
 ,iceberg
 ,icterine
 ,imperialBlue
 ,inchworm
 ,indiaGreen
 ,indianRed
 ,indianYellow
 ,indigoDye
 ,indigoWeb
 ,internationalKleinBlue
 ,internationalOrangeAerospace
 ,internationalOrangeEngineering
 ,internationalOrangeGoldenGateBridge
 ,iris
 ,isabelline
 ,islamicGreen
 ,jade
 ,jasmine
 ,jasper
 ,jazzberryJam
 ,jet
 ,jonquil
 ,juneBud
 ,jungleGreen
 ,kellyGreen
 ,kenyanCopper
 ,khakiHtmlCssKhaki
 ,khakiX11LightKhaki
 ,kuCrimson
 ,laSalleGreen
 ,languidLavender
 ,lapisLazuli
 ,laserLemon
 ,laurelGreen
 ,lava
 ,lavenderBlue
 ,lavenderBlush
 ,lavenderFloral
 ,lavenderGray
 ,lavenderIndigo
 ,lavenderMagenta
 ,lavenderMist
 ,lavenderPink
 ,lavenderPurple
 ,lavenderRose
 ,lavenderWeb
 ,lawnGreen
 ,lemon
 ,lemonChiffon
 ,lemonLime
 ,licorice
 ,lightApricot
 ,lightBlue
 ,lightBrown
 ,lightCarminePink
 ,lightCoral
 ,lightCornflowerBlue
 ,lightCrimson
 ,lightCyan
 ,lightFuchsiaPink
 ,lightGoldenrodYellow
 ,lightGray
 ,lightGreen
 ,lightKhaki
 ,lightPastelPurple
 ,lightPink
 ,lightRedOchre
 ,lightSalmon
 ,lightSalmonPink
 ,lightSeaGreen
 ,lightSkyBlue
 ,lightSlateGray
 ,lightTaupe
 ,lightThulianPink
 ,lightYellow
 ,lilac
 ,limeColorWheel
 ,limeGreen
 ,limeWebX11Green
 ,limerick
 ,lincolnGreen
 ,lion
 ,littleBoyBlue
 ,liver
 ,lust
 ,magentaDye
 ,magentaProcess
 ,magicMint
 ,magnolia
 ,mahogany
 ,maize
 ,majorelleBlue
 ,malachite
 ,manatee
 ,mangoTango
 ,mantis
 ,mardiGras
 ,maroonCrayola
 ,maroonHtmlCss
 ,maroonX11
 ,mauve
 ,mauveTaupe
 ,mauvelous
 ,mayaBlue
 ,meatBrown
 ,mediumAquamarine
 ,mediumBlue
 ,mediumCandyAppleRed
 ,mediumCarmine
 ,mediumChampagne
 ,mediumElectricBlue
 ,mediumJungleGreen
 ,mediumLavenderMagenta
 ,mediumOrchid
 ,mediumPersianBlue
 ,mediumPurple
 ,mediumRedViolet
 ,mediumRuby
 ,mediumSeaGreen
 ,mediumSlateBlue
 ,mediumSpringBud
 ,mediumSpringGreen
 ,mediumTaupe
 ,mediumTurquoise
 ,mediumTuscanRed
 ,mediumVermilion
 ,mediumVioletRed
 ,mellowApricot
 ,mellowYellow
 ,melon
 ,midnightBlue
 ,midnightGreenEagleGreen
 ,mikadoYellow
 ,mint
 ,mintCream
 ,mintGreen
 ,mistyRose
 ,modeBeige
 ,moonstoneBlue
 ,mordantRed19
 ,mossGreen
 ,mountainMeadow
 ,mountbattenPink
 ,msuGreen
 ,mulberry
 ,mustard
 ,myrtle
 ,nadeshikoPink
 ,napierGreen
 ,naplesYellow
 ,navajoWhite
 ,navyBlue
 ,neonCarrot
 ,neonFuchsia
 ,neonGreen
 ,newYorkPink
 ,nonPhotoBlue
 ,northTexasGreen
 ,oceanBoatBlue
 ,ochre
 ,officeGreen
 ,oldGold
 ,oldLace
 ,oldLavender
 ,oldMauve
 ,oldRose
 ,oliveDrab7
 ,oliveDrabWebOliveDrab3
 ,olivine
 ,onyx
 ,operaMauve
 ,orangeColorWheel
 ,orangePeel
 ,orangeRed
 ,orangeRyb
 ,orangeWebColor
 ,otterBrown
 ,ouCrimsonRed
 ,outerSpace
 ,outrageousOrange
 ,oxfordBlue
 ,pakistanGreen
 ,palatinateBlue
 ,palatinatePurple
 ,paleAqua
 ,paleBlue
 ,paleBrown
 ,paleCarmine
 ,paleCerulean
 ,paleChestnut
 ,paleCopper
 ,paleCornflowerBlue
 ,paleGold
 ,paleGoldenrod
 ,paleGreen
 ,paleLavender
 ,paleMagenta
 ,palePink
 ,palePlum
 ,paleRedViolet
 ,paleRobinEggBlue
 ,paleSilver
 ,paleSpringBud
 ,paleTaupe
 ,paleVioletRed
 ,pansyPurple
 ,papayaWhip
 ,parisGreen
 ,pastelBlue
 ,pastelBrown
 ,pastelGray
 ,pastelGreen
 ,pastelMagenta
 ,pastelOrange
 ,pastelPink
 ,pastelPurple
 ,pastelRed
 ,pastelViolet
 ,pastelYellow
 ,patriarch
 ,payneSGrey
 ,peach
 ,peachCrayola
 ,peachOrange
 ,peachPuff
 ,peachYellow
 ,pear
 ,pearl
 ,pearlAqua
 ,pearlyPurple
 ,peridot
 ,periwinkle
 ,persianBlue
 ,persianGreen
 ,persianIndigo
 ,persianOrange
 ,persianPink
 ,persianPlum
 ,persianRed
 ,persianRose
 ,persimmon
 ,phlox
 ,phthaloBlue
 ,phthaloGreen
 ,piggyPink
 ,pineGreen
 ,pinkLace
 ,pinkOrange
 ,pinkPearl
 ,pinkSherbet
 ,pistachio
 ,platinum
 ,plumTraditional
 ,plumWeb
 ,portlandOrange
 ,powderBlueWeb
 ,princetonOrange
 ,prune
 ,prussianBlue
 ,psychedelicPurple
 ,puce
 ,pumpkin
 ,purpleHeart
 ,purpleHtmlCss
 ,purpleMountainMajesty
 ,purpleMunsell
 ,purplePizzazz
 ,purpleTaupe
 ,purpleX11
 ,quartz
 ,rackley
 ,radicalRed
 ,rajah
 ,raspberry
 ,raspberryGlace
 ,raspberryPink
 ,raspberryRose
 ,rawUmber
 ,razzleDazzleRose
 ,razzmatazz
 ,redBrown
 ,redDevil
 ,redMunsell
 ,redNcs
 ,redOrange
 ,redPigment
 ,redRyb
 ,redViolet
 ,redwood
 ,regalia
 ,resolutionBlue
 ,richBlack
 ,richBrilliantLavender
 ,richCarmine
 ,richElectricBlue
 ,richLavender
 ,richLilac
 ,richMaroon
 ,rifleGreen
 ,robinEggBlue
 ,rose
 ,roseBonbon
 ,roseEbony
 ,roseGold
 ,roseMadder
 ,rosePink
 ,roseQuartz
 ,roseTaupe
 ,roseVale
 ,rosewood
 ,rossoCorsa
 ,rosyBrown
 ,royalAzure
 ,royalBlueTraditional
 ,royalBlueWeb
 ,royalFuchsia
 ,royalPurple
 ,royalYellow
 ,rubineRed
 ,ruby
 ,rubyRed
 ,ruddy
 ,ruddyBrown
 ,ruddyPink
 ,rufous
 ,russet
 ,rust
 ,rustyRed
 ,sacramentoStateGreen
 ,saddleBrown
 ,safetyOrangeBlazeOrange
 ,saffron
 ,salmonPink
 ,sand
 ,sandDune
 ,sandstorm
 ,sandyBrown
 ,sandyTaupe
 ,sangria
 ,sapGreen
 ,sapphire
 ,sapphireBlue
 ,satinSheenGold
 ,scarlet
 ,scarletCrayola
 ,schoolBusYellow
 ,screaminGreen
 ,seaBlue
 ,seaGreen
 ,sealBrown
 ,selectiveYellow
 ,sepia
 ,shadow
 ,shamrockGreen
 ,shockingPink
 ,shockingPinkCrayola
 ,sinopia
 ,skobeloff
 ,skyBlue
 ,skyMagenta
 ,slateBlue
 ,slateGray
 ,smaltDarkPowderBlue
 ,smokeyTopaz
 ,smokyBlack
 ,spiroDiscoBall
 ,springBud
 ,springGreen
 ,stPatrickSBlue
 ,steelBlue
 ,stilDeGrainYellow
 ,stizza
 ,stormcloud
 ,straw
 ,sunglow
 ,sunset
 ,tangelo
 ,tangerine
 ,tangerineYellow
 ,tangoPink
 ,taupe
 ,taupeGray
 ,teaGreen
 ,teaRoseOrange
 ,teaRoseRose
 ,tealBlue
 ,tealGreen
 ,telemagenta
 ,tennTawny
 ,terraCotta
 ,thulianPink
 ,tickleMePink
 ,tiffanyBlue
 ,tigerSEye
 ,timberwolf
 ,titaniumYellow
 ,toolbox
 ,topaz
 ,tractorRed
 ,trolleyGrey
 ,tropicalRainForest
 ,trueBlue
 ,tuftsBlue
 ,tumbleweed
 ,turkishRose
 ,turquoiseBlue
 ,turquoiseGreen
 ,tuscanRed
 ,twilightLavender
 ,tyrianPurple
 ,uaBlue
 ,uaRed
 ,ube
 ,uclaBlue
 ,uclaGold
 ,ufoGreen
 ,ultraPink
 ,ultramarine
 ,ultramarineBlue
 ,umber
 ,unbleachedSilk
 ,unitedNationsBlue
 ,universityOfCaliforniaGold
 ,unmellowYellow
 ,upForestGreen
 ,upMaroon
 ,upsdellRed
 ,urobilin
 ,usafaBlue
 ,uscCardinal
 ,uscGold
 ,utahCrimson
 ,vanilla
 ,vegasGold
 ,venetianRed
 ,verdigris
 ,vermilionCinnabar
 ,vermilionPlochere
 ,veronica
 ,violetBlue
 ,violetColorWheel
 ,violetRyb
 ,violetWeb
 ,viridian
 ,vividAuburn
 ,vividBurgundy
 ,vividCerise
 ,vividTangerine
 ,vividViolet
 ,warmBlack
 ,waterspout
 ,wenge
 ,whiteSmoke
 ,wildBlueYonder
 ,wildStrawberry
 ,wildWatermelon
 ,wine
 ,wineDregs
 ,wisteria
 ,woodBrown
 ,xanadu
 ,yaleBlue
 ,yellowGreen
 ,yellowMunsell
 ,yellowNcs
 ,yellowOrange
 ,yellowProcess
 ,yellowRyb
 ,zaffre
 ,zinnwalditeBrown
 )
where

import Prelude hiding (tan)
import Data.Colour.SRGB
import Data.Colour (black)

readColourName :: (Monad m, Ord a, Floating a) => String -> m (Colour a)
readColourName "aliceblue" = return aliceblue
readColourName "antiquewhite" = return antiquewhite
readColourName "aqua" = return aqua
readColourName "aquamarine" = return aquamarine
readColourName "azure" = return azure
readColourName "beige" = return beige
readColourName "bisque" = return bisque
readColourName "black" = return black
readColourName "blanchedalmond" = return blanchedalmond
readColourName "blue" = return blue
readColourName "blueviolet" = return blueviolet
readColourName "brown" = return brown
readColourName "burlywood" = return burlywood
readColourName "cadetblue" = return cadetblue
readColourName "chartreuse" = return chartreuse
readColourName "chocolate" = return chocolate
readColourName "coral" = return coral
readColourName "cornflowerblue" = return cornflowerblue
readColourName "cornsilk" = return cornsilk
readColourName "crimson" = return crimson
readColourName "cyan" = return cyan
readColourName "darkblue" = return darkblue
readColourName "darkcyan" = return darkcyan
readColourName "darkgoldenrod" = return darkgoldenrod
readColourName "darkgray" = return darkgray
readColourName "darkgreen" = return darkgreen
readColourName "darkgrey" = return darkgrey
readColourName "darkkhaki" = return darkkhaki
readColourName "darkmagenta" = return darkmagenta
readColourName "darkolivegreen" = return darkolivegreen
readColourName "darkorange" = return darkorange
readColourName "darkorchid" = return darkorchid
readColourName "darkred" = return darkred
readColourName "darksalmon" = return darksalmon
readColourName "darkseagreen" = return darkseagreen
readColourName "darkslateblue" = return darkslateblue
readColourName "darkslategray" = return darkslategray
readColourName "darkslategrey" = return darkslategrey
readColourName "darkturquoise" = return darkturquoise
readColourName "darkviolet" = return darkviolet
readColourName "deeppink" = return deeppink
readColourName "deepskyblue" = return deepskyblue
readColourName "dimgray" = return dimgray
readColourName "dimgrey" = return dimgrey
readColourName "dodgerblue" = return dodgerblue
readColourName "firebrick" = return firebrick
readColourName "floralwhite" = return floralwhite
readColourName "forestgreen" = return forestgreen
readColourName "fuchsia" = return fuchsia
readColourName "gainsboro" = return gainsboro
readColourName "ghostwhite" = return ghostwhite
readColourName "gold" = return gold
readColourName "goldenrod" = return goldenrod
readColourName "gray" = return gray
readColourName "grey" = return grey
readColourName "green" = return green
readColourName "greenyellow" = return greenyellow
readColourName "honeydew" = return honeydew
readColourName "hotpink" = return hotpink
readColourName "indianred" = return indianred
readColourName "indigo" = return indigo
readColourName "ivory" = return ivory
readColourName "khaki" = return khaki
readColourName "lavender" = return lavender
readColourName "lavenderblush" = return lavenderblush
readColourName "lawngreen" = return lawngreen
readColourName "lemonchiffon" = return lemonchiffon
readColourName "lightblue" = return lightblue
readColourName "lightcoral" = return lightcoral
readColourName "lightcyan" = return lightcyan
readColourName "lightgoldenrodyellow" = return lightgoldenrodyellow
readColourName "lightgray" = return lightgray
readColourName "lightgreen" = return lightgreen
readColourName "lightgrey" = return lightgrey
readColourName "lightpink" = return lightpink
readColourName "lightsalmon" = return lightsalmon
readColourName "lightseagreen" = return lightseagreen
readColourName "lightskyblue" = return lightskyblue
readColourName "lightslategray" = return lightslategray
readColourName "lightslategrey" = return lightslategrey
readColourName "lightsteelblue" = return lightsteelblue
readColourName "lightyellow" = return lightyellow
readColourName "lime" = return lime
readColourName "limegreen" = return limegreen
readColourName "linen" = return linen
readColourName "magenta" = return magenta
readColourName "maroon" = return maroon
readColourName "mediumaquamarine" = return mediumaquamarine
readColourName "mediumblue" = return mediumblue
readColourName "mediumorchid" = return mediumorchid
readColourName "mediumpurple" = return mediumpurple
readColourName "mediumseagreen" = return mediumseagreen
readColourName "mediumslateblue" = return mediumslateblue
readColourName "mediumspringgreen" = return mediumspringgreen
readColourName "mediumturquoise" = return mediumturquoise
readColourName "mediumvioletred" = return mediumvioletred
readColourName "midnightblue" = return midnightblue
readColourName "mintcream" = return mintcream
readColourName "mistyrose" = return mistyrose
readColourName "moccasin" = return moccasin
readColourName "navajowhite" = return navajowhite
readColourName "navy" = return navy
readColourName "oldlace" = return oldlace
readColourName "olive" = return olive
readColourName "olivedrab" = return olivedrab
readColourName "orange" = return orange
readColourName "orangered" = return orangered
readColourName "orchid" = return orchid
readColourName "palegoldenrod" = return palegoldenrod
readColourName "palegreen" = return palegreen
readColourName "paleturquoise" = return paleturquoise
readColourName "palevioletred" = return palevioletred
readColourName "papayawhip" = return papayawhip
readColourName "peachpuff" = return peachpuff
readColourName "peru" = return peru
readColourName "pink" = return pink
readColourName "plum" = return plum
readColourName "powderblue" = return powderblue
readColourName "purple" = return purple
readColourName "red" = return red
readColourName "rosybrown" = return rosybrown
readColourName "royalblue" = return royalblue
readColourName "saddlebrown" = return saddlebrown
readColourName "salmon" = return salmon
readColourName "sandybrown" = return sandybrown
readColourName "seagreen" = return seagreen
readColourName "seashell" = return seashell
readColourName "sienna" = return sienna
readColourName "silver" = return silver
readColourName "skyblue" = return skyblue
readColourName "slateblue" = return slateblue
readColourName "slategray" = return slategray
readColourName "slategrey" = return slategrey
readColourName "snow" = return snow
readColourName "springgreen" = return springgreen
readColourName "steelblue" = return steelblue
readColourName "tan" = return tan
readColourName "teal" = return teal
readColourName "thistle" = return thistle
readColourName "tomato" = return tomato
readColourName "turquoise" = return turquoise
readColourName "violet" = return violet
readColourName "wheat" = return wheat
readColourName "white" = return white
readColourName "whitesmoke" = return whitesmoke
readColourName "yellow" = return yellow
readColourName "yellowgreen" = return yellowgreen
readColourName x = fail $ 
  "Data.Colour.Names.readColourName: Unknown colour name "++show x

aliceblue :: (Ord a, Floating a) => Colour a
aliceblue = sRGB24 240 248 255

antiquewhite :: (Ord a, Floating a) => Colour a
antiquewhite = sRGB24 250 235 215

aqua :: (Ord a, Floating a) => Colour a
aqua = sRGB24 0 255 255

aquamarine :: (Ord a, Floating a) => Colour a
aquamarine = sRGB24 127 255 212

azure :: (Ord a, Floating a) => Colour a
azure = sRGB24 240 255 255

beige :: (Ord a, Floating a) => Colour a
beige = sRGB24 245 245 220

bisque :: (Ord a, Floating a) => Colour a
bisque = sRGB24 255 228 196

-- black is reexported from Data.Colour

blanchedalmond :: (Ord a, Floating a) => Colour a
blanchedalmond = sRGB24 255 235 205

blue :: (Ord a, Floating a) => Colour a
blue = sRGB24 0 0 255

blueviolet :: (Ord a, Floating a) => Colour a
blueviolet = sRGB24 138 43 226

brown :: (Ord a, Floating a) => Colour a
brown = sRGB24 165 42 42

burlywood :: (Ord a, Floating a) => Colour a
burlywood = sRGB24 222 184 135

cadetblue :: (Ord a, Floating a) => Colour a
cadetblue = sRGB24 95 158 160

chartreuse :: (Ord a, Floating a) => Colour a
chartreuse = sRGB24 127 255 0

chocolate :: (Ord a, Floating a) => Colour a
chocolate = sRGB24 210 105 30

coral :: (Ord a, Floating a) => Colour a
coral = sRGB24 255 127 80

cornflowerblue :: (Ord a, Floating a) => Colour a
cornflowerblue = sRGB24 100 149 237

cornsilk :: (Ord a, Floating a) => Colour a
cornsilk = sRGB24 255 248 220

crimson :: (Ord a, Floating a) => Colour a
crimson = sRGB24 220 20 60

cyan :: (Ord a, Floating a) => Colour a
cyan = sRGB24 0 255 255

darkblue :: (Ord a, Floating a) => Colour a
darkblue = sRGB24 0 0 139

darkcyan :: (Ord a, Floating a) => Colour a
darkcyan = sRGB24 0 139 139

darkgoldenrod :: (Ord a, Floating a) => Colour a
darkgoldenrod = sRGB24 184 134 11

darkgray :: (Ord a, Floating a) => Colour a
darkgray = sRGB24 169 169 169

darkgreen :: (Ord a, Floating a) => Colour a
darkgreen = sRGB24 0 100 0

darkgrey :: (Ord a, Floating a) => Colour a
darkgrey = sRGB24 169 169 169

darkkhaki :: (Ord a, Floating a) => Colour a
darkkhaki = sRGB24 189 183 107

darkmagenta :: (Ord a, Floating a) => Colour a
darkmagenta = sRGB24 139 0 139

darkolivegreen :: (Ord a, Floating a) => Colour a
darkolivegreen = sRGB24 85 107 47

darkorange :: (Ord a, Floating a) => Colour a
darkorange = sRGB24 255 140 0

darkorchid :: (Ord a, Floating a) => Colour a
darkorchid = sRGB24 153 50 204

darkred :: (Ord a, Floating a) => Colour a
darkred = sRGB24 139 0 0

darksalmon :: (Ord a, Floating a) => Colour a
darksalmon = sRGB24 233 150 122

darkseagreen :: (Ord a, Floating a) => Colour a
darkseagreen = sRGB24 143 188 143

darkslateblue :: (Ord a, Floating a) => Colour a
darkslateblue = sRGB24 72 61 139

darkslategray :: (Ord a, Floating a) => Colour a
darkslategray = sRGB24 47 79 79

darkslategrey :: (Ord a, Floating a) => Colour a
darkslategrey = sRGB24 47 79 79

darkturquoise :: (Ord a, Floating a) => Colour a
darkturquoise = sRGB24 0 206 209

darkviolet :: (Ord a, Floating a) => Colour a
darkviolet = sRGB24 148 0 211

deeppink :: (Ord a, Floating a) => Colour a
deeppink = sRGB24 255 20 147

deepskyblue :: (Ord a, Floating a) => Colour a
deepskyblue = sRGB24 0 191 255

dimgray :: (Ord a, Floating a) => Colour a
dimgray = sRGB24 105 105 105

dimgrey :: (Ord a, Floating a) => Colour a
dimgrey = sRGB24 105 105 105

dodgerblue :: (Ord a, Floating a) => Colour a
dodgerblue = sRGB24 30 144 255

firebrick :: (Ord a, Floating a) => Colour a
firebrick = sRGB24 178 34 34

floralwhite :: (Ord a, Floating a) => Colour a
floralwhite = sRGB24 255 250 240

forestgreen :: (Ord a, Floating a) => Colour a
forestgreen = sRGB24 34 139 34

fuchsia :: (Ord a, Floating a) => Colour a
fuchsia = sRGB24 255 0 255

gainsboro :: (Ord a, Floating a) => Colour a
gainsboro = sRGB24 220 220 220

ghostwhite :: (Ord a, Floating a) => Colour a
ghostwhite = sRGB24 248 248 255

gold :: (Ord a, Floating a) => Colour a
gold = sRGB24 255 215 0

goldenrod :: (Ord a, Floating a) => Colour a
goldenrod = sRGB24 218 165 32

gray :: (Ord a, Floating a) => Colour a
gray = sRGB24 128 128 128

grey :: (Ord a, Floating a) => Colour a
grey = sRGB24 128 128 128

green :: (Ord a, Floating a) => Colour a
green = sRGB24 0 128 0

greenyellow :: (Ord a, Floating a) => Colour a
greenyellow = sRGB24 173 255 47

honeydew :: (Ord a, Floating a) => Colour a
honeydew = sRGB24 240 255 240

hotpink :: (Ord a, Floating a) => Colour a
hotpink = sRGB24 255 105 180

indianred :: (Ord a, Floating a) => Colour a
indianred = sRGB24 205 92 92

indigo :: (Ord a, Floating a) => Colour a
indigo = sRGB24 75 0 130

ivory :: (Ord a, Floating a) => Colour a
ivory = sRGB24 255 255 240

khaki :: (Ord a, Floating a) => Colour a
khaki = sRGB24 240 230 140

lavender :: (Ord a, Floating a) => Colour a
lavender = sRGB24 230 230 250

lavenderblush :: (Ord a, Floating a) => Colour a
lavenderblush = sRGB24 255 240 245

lawngreen :: (Ord a, Floating a) => Colour a
lawngreen = sRGB24 124 252 0

lemonchiffon :: (Ord a, Floating a) => Colour a
lemonchiffon = sRGB24 255 250 205

lightblue :: (Ord a, Floating a) => Colour a
lightblue = sRGB24 173 216 230

lightcoral :: (Ord a, Floating a) => Colour a
lightcoral = sRGB24 240 128 128

lightcyan :: (Ord a, Floating a) => Colour a
lightcyan = sRGB24 224 255 255

lightgoldenrodyellow :: (Ord a, Floating a) => Colour a
lightgoldenrodyellow = sRGB24 250 250 210

lightgray :: (Ord a, Floating a) => Colour a
lightgray = sRGB24 211 211 211

lightgreen :: (Ord a, Floating a) => Colour a
lightgreen = sRGB24 144 238 144

lightgrey :: (Ord a, Floating a) => Colour a
lightgrey = sRGB24 211 211 211

lightpink :: (Ord a, Floating a) => Colour a
lightpink = sRGB24 255 182 193

lightsalmon :: (Ord a, Floating a) => Colour a
lightsalmon = sRGB24 255 160 122

lightseagreen :: (Ord a, Floating a) => Colour a
lightseagreen = sRGB24 32 178 170

lightskyblue :: (Ord a, Floating a) => Colour a
lightskyblue = sRGB24 135 206 250

lightslategray :: (Ord a, Floating a) => Colour a
lightslategray = sRGB24 119 136 153

lightslategrey :: (Ord a, Floating a) => Colour a
lightslategrey = sRGB24 119 136 153

lightsteelblue :: (Ord a, Floating a) => Colour a
lightsteelblue = sRGB24 176 196 222

lightyellow :: (Ord a, Floating a) => Colour a
lightyellow = sRGB24 255 255 224

lime :: (Ord a, Floating a) => Colour a
lime = sRGB24 0 255 0

limegreen :: (Ord a, Floating a) => Colour a
limegreen = sRGB24 50 205 50

linen :: (Ord a, Floating a) => Colour a
linen = sRGB24 250 240 230

magenta :: (Ord a, Floating a) => Colour a
magenta = sRGB24 255 0 255

maroon :: (Ord a, Floating a) => Colour a
maroon = sRGB24 128 0 0

mediumaquamarine :: (Ord a, Floating a) => Colour a
mediumaquamarine = sRGB24 102 205 170

mediumblue :: (Ord a, Floating a) => Colour a
mediumblue = sRGB24 0 0 205

mediumorchid :: (Ord a, Floating a) => Colour a
mediumorchid = sRGB24 186 85 211

mediumpurple :: (Ord a, Floating a) => Colour a
mediumpurple = sRGB24 147 112 219

mediumseagreen :: (Ord a, Floating a) => Colour a
mediumseagreen = sRGB24 60 179 113

mediumslateblue :: (Ord a, Floating a) => Colour a
mediumslateblue = sRGB24 123 104 238

mediumspringgreen :: (Ord a, Floating a) => Colour a
mediumspringgreen = sRGB24 0 250 154

mediumturquoise :: (Ord a, Floating a) => Colour a
mediumturquoise = sRGB24 72 209 204

mediumvioletred :: (Ord a, Floating a) => Colour a
mediumvioletred = sRGB24 199 21 133

midnightblue :: (Ord a, Floating a) => Colour a
midnightblue = sRGB24 25 25 112

mintcream :: (Ord a, Floating a) => Colour a
mintcream = sRGB24 245 255 250

mistyrose :: (Ord a, Floating a) => Colour a
mistyrose = sRGB24 255 228 225

moccasin :: (Ord a, Floating a) => Colour a
moccasin = sRGB24 255 228 181

navajowhite :: (Ord a, Floating a) => Colour a
navajowhite = sRGB24 255 222 173

navy :: (Ord a, Floating a) => Colour a
navy = sRGB24 0 0 128

oldlace :: (Ord a, Floating a) => Colour a
oldlace = sRGB24 253 245 230

olive :: (Ord a, Floating a) => Colour a
olive = sRGB24 128 128 0

olivedrab :: (Ord a, Floating a) => Colour a
olivedrab = sRGB24 107 142 35

orange :: (Ord a, Floating a) => Colour a
orange = sRGB24 255 165 0

orangered :: (Ord a, Floating a) => Colour a
orangered = sRGB24 255 69 0

orchid :: (Ord a, Floating a) => Colour a
orchid = sRGB24 218 112 214

palegoldenrod :: (Ord a, Floating a) => Colour a
palegoldenrod = sRGB24 238 232 170

palegreen :: (Ord a, Floating a) => Colour a
palegreen = sRGB24 152 251 152

paleturquoise :: (Ord a, Floating a) => Colour a
paleturquoise = sRGB24 175 238 238

palevioletred :: (Ord a, Floating a) => Colour a
palevioletred = sRGB24 219 112 147

papayawhip :: (Ord a, Floating a) => Colour a
papayawhip = sRGB24 255 239 213

peachpuff :: (Ord a, Floating a) => Colour a
peachpuff = sRGB24 255 218 185

peru :: (Ord a, Floating a) => Colour a
peru = sRGB24 205 133 63

pink :: (Ord a, Floating a) => Colour a
pink = sRGB24 255 192 203

plum :: (Ord a, Floating a) => Colour a
plum = sRGB24 221 160 221

powderblue :: (Ord a, Floating a) => Colour a
powderblue = sRGB24 176 224 230

purple :: (Ord a, Floating a) => Colour a
purple = sRGB24 128 0 128

red :: (Ord a, Floating a) => Colour a
red = sRGB24 255 0 0

rosybrown :: (Ord a, Floating a) => Colour a
rosybrown = sRGB24 188 143 143

royalblue :: (Ord a, Floating a) => Colour a
royalblue = sRGB24 65 105 225

saddlebrown :: (Ord a, Floating a) => Colour a
saddlebrown = sRGB24 139 69 19

salmon :: (Ord a, Floating a) => Colour a
salmon = sRGB24 250 128 114

sandybrown :: (Ord a, Floating a) => Colour a
sandybrown = sRGB24 244 164 96

seagreen :: (Ord a, Floating a) => Colour a
seagreen = sRGB24 46 139 87

seashell :: (Ord a, Floating a) => Colour a
seashell = sRGB24 255 245 238

sienna :: (Ord a, Floating a) => Colour a
sienna = sRGB24 160 82 45

silver :: (Ord a, Floating a) => Colour a
silver = sRGB24 192 192 192

skyblue :: (Ord a, Floating a) => Colour a
skyblue = sRGB24 135 206 235

slateblue :: (Ord a, Floating a) => Colour a
slateblue = sRGB24 106 90 205

slategray :: (Ord a, Floating a) => Colour a
slategray = sRGB24 112 128 144

slategrey :: (Ord a, Floating a) => Colour a
slategrey = sRGB24 112 128 144

snow :: (Ord a, Floating a) => Colour a
snow = sRGB24 255 250 250

springgreen :: (Ord a, Floating a) => Colour a
springgreen = sRGB24 0 255 127

steelblue :: (Ord a, Floating a) => Colour a
steelblue = sRGB24 70 130 180

tan :: (Ord a, Floating a) => Colour a
tan = sRGB24 210 180 140

teal :: (Ord a, Floating a) => Colour a
teal = sRGB24 0 128 128

thistle :: (Ord a, Floating a) => Colour a
thistle = sRGB24 216 191 216

tomato :: (Ord a, Floating a) => Colour a
tomato = sRGB24 255 99 71

turquoise :: (Ord a, Floating a) => Colour a
turquoise = sRGB24 64 224 208

violet :: (Ord a, Floating a) => Colour a
violet = sRGB24 238 130 238

wheat :: (Ord a, Floating a) => Colour a
wheat = sRGB24 245 222 179

white :: (Ord a, Floating a) => Colour a
white = sRGB24 255 255 255

whitesmoke :: (Ord a, Floating a) => Colour a
whitesmoke = sRGB24 245 245 245

yellow :: (Ord a, Floating a) => Colour a
yellow = sRGB24 255 255 0

yellowgreen :: (Ord a, Floating a) => Colour a
yellowgreen = sRGB24 154 205 50
airForceBlueRaf :: (Ord a, Floating a) => Colour a
airForceBlueRaf = sRGB24 93 138 168

airForceBlueUsaf :: (Ord a, Floating a) => Colour a
airForceBlueUsaf = sRGB24 0 48 143

airSuperiorityBlue :: (Ord a, Floating a) => Colour a
airSuperiorityBlue = sRGB24 114 160 193

alabamaCrimson :: (Ord a, Floating a) => Colour a
alabamaCrimson = sRGB24 163 38 56

aliceBlue :: (Ord a, Floating a) => Colour a
aliceBlue = sRGB24 240 248 255

alizarinCrimson :: (Ord a, Floating a) => Colour a
alizarinCrimson = sRGB24 227 38 54

alloyOrange :: (Ord a, Floating a) => Colour a
alloyOrange = sRGB24 196 98 16

almond :: (Ord a, Floating a) => Colour a
almond = sRGB24 239 222 205

amaranth :: (Ord a, Floating a) => Colour a
amaranth = sRGB24 229 43 80

amber :: (Ord a, Floating a) => Colour a
amber = sRGB24 255 191 0

amberSaeEce :: (Ord a, Floating a) => Colour a
amberSaeEce = sRGB24 255 126 0

americanRose :: (Ord a, Floating a) => Colour a
americanRose = sRGB24 255 3 62

amethyst :: (Ord a, Floating a) => Colour a
amethyst = sRGB24 153 102 204

androidGreen :: (Ord a, Floating a) => Colour a
androidGreen = sRGB24 164 198 57

antiFlashWhite :: (Ord a, Floating a) => Colour a
antiFlashWhite = sRGB24 242 243 244

antiqueBrass :: (Ord a, Floating a) => Colour a
antiqueBrass = sRGB24 205 149 117

antiqueFuchsia :: (Ord a, Floating a) => Colour a
antiqueFuchsia = sRGB24 145 92 131

antiqueRuby :: (Ord a, Floating a) => Colour a
antiqueRuby = sRGB24 132 27 45

antiqueWhite :: (Ord a, Floating a) => Colour a
antiqueWhite = sRGB24 250 235 215

aoEnglish :: (Ord a, Floating a) => Colour a
aoEnglish = sRGB24 0 128 0

appleGreen :: (Ord a, Floating a) => Colour a
appleGreen = sRGB24 141 182 0

apricot :: (Ord a, Floating a) => Colour a
apricot = sRGB24 251 206 177

armyGreen :: (Ord a, Floating a) => Colour a
armyGreen = sRGB24 75 83 32

arsenic :: (Ord a, Floating a) => Colour a
arsenic = sRGB24 59 68 75

arylideYellow :: (Ord a, Floating a) => Colour a
arylideYellow = sRGB24 233 214 107

ashGrey :: (Ord a, Floating a) => Colour a
ashGrey = sRGB24 178 190 181

asparagus :: (Ord a, Floating a) => Colour a
asparagus = sRGB24 135 169 107

atomicTangerine :: (Ord a, Floating a) => Colour a
atomicTangerine = sRGB24 255 153 102

auburn :: (Ord a, Floating a) => Colour a
auburn = sRGB24 165 42 42

aureolin :: (Ord a, Floating a) => Colour a
aureolin = sRGB24 253 238 0

aurometalsaurus :: (Ord a, Floating a) => Colour a
aurometalsaurus = sRGB24 110 127 128

avocado :: (Ord a, Floating a) => Colour a
avocado = sRGB24 86 130 3

azureMistWeb :: (Ord a, Floating a) => Colour a
azureMistWeb = sRGB24 240 255 255

babyBlue :: (Ord a, Floating a) => Colour a
babyBlue = sRGB24 137 207 240

babyBlueEyes :: (Ord a, Floating a) => Colour a
babyBlueEyes = sRGB24 161 202 241

babyPink :: (Ord a, Floating a) => Colour a
babyPink = sRGB24 244 194 194

ballBlue :: (Ord a, Floating a) => Colour a
ballBlue = sRGB24 33 171 205

bananaMania :: (Ord a, Floating a) => Colour a
bananaMania = sRGB24 250 231 181

bananaYellow :: (Ord a, Floating a) => Colour a
bananaYellow = sRGB24 255 225 53

barnRed :: (Ord a, Floating a) => Colour a
barnRed = sRGB24 124 10 2

battleshipGrey :: (Ord a, Floating a) => Colour a
battleshipGrey = sRGB24 132 132 130

bazaar :: (Ord a, Floating a) => Colour a
bazaar = sRGB24 152 119 123

beauBlue :: (Ord a, Floating a) => Colour a
beauBlue = sRGB24 188 212 230

beaver :: (Ord a, Floating a) => Colour a
beaver = sRGB24 159 129 112

bigDipORuby :: (Ord a, Floating a) => Colour a
bigDipORuby = sRGB24 156 37 66

bistre :: (Ord a, Floating a) => Colour a
bistre = sRGB24 61 43 31

bittersweet :: (Ord a, Floating a) => Colour a
bittersweet = sRGB24 254 111 94

bittersweetShimmer :: (Ord a, Floating a) => Colour a
bittersweetShimmer = sRGB24 191 79 81

blackBean :: (Ord a, Floating a) => Colour a
blackBean = sRGB24 61 12 2

blackLeatherJacket :: (Ord a, Floating a) => Colour a
blackLeatherJacket = sRGB24 37 53 41

blackOlive :: (Ord a, Floating a) => Colour a
blackOlive = sRGB24 59 60 54

blanchedAlmond :: (Ord a, Floating a) => Colour a
blanchedAlmond = sRGB24 255 235 205

blastOffBronze :: (Ord a, Floating a) => Colour a
blastOffBronze = sRGB24 165 113 100

bleuDeFrance :: (Ord a, Floating a) => Colour a
bleuDeFrance = sRGB24 49 140 231

blizzardBlue :: (Ord a, Floating a) => Colour a
blizzardBlue = sRGB24 172 229 238

blond :: (Ord a, Floating a) => Colour a
blond = sRGB24 250 240 190

blueBell :: (Ord a, Floating a) => Colour a
blueBell = sRGB24 162 162 208

blueCrayola :: (Ord a, Floating a) => Colour a
blueCrayola = sRGB24 31 117 254

blueGray :: (Ord a, Floating a) => Colour a
blueGray = sRGB24 102 153 204

blueGreen :: (Ord a, Floating a) => Colour a
blueGreen = sRGB24 13 152 186

blueMunsell :: (Ord a, Floating a) => Colour a
blueMunsell = sRGB24 0 147 175

blueNcs :: (Ord a, Floating a) => Colour a
blueNcs = sRGB24 0 135 189

bluePigment :: (Ord a, Floating a) => Colour a
bluePigment = sRGB24 51 51 153

blueRyb :: (Ord a, Floating a) => Colour a
blueRyb = sRGB24 2 71 254

blueSapphire :: (Ord a, Floating a) => Colour a
blueSapphire = sRGB24 18 97 128

blueViolet :: (Ord a, Floating a) => Colour a
blueViolet = sRGB24 138 43 226

blush :: (Ord a, Floating a) => Colour a
blush = sRGB24 222 93 131

bole :: (Ord a, Floating a) => Colour a
bole = sRGB24 121 68 59

bondiBlue :: (Ord a, Floating a) => Colour a
bondiBlue = sRGB24 0 149 182

bone :: (Ord a, Floating a) => Colour a
bone = sRGB24 227 218 201

bostonUniversityRed :: (Ord a, Floating a) => Colour a
bostonUniversityRed = sRGB24 204 0 0

bottleGreen :: (Ord a, Floating a) => Colour a
bottleGreen = sRGB24 0 106 78

boysenberry :: (Ord a, Floating a) => Colour a
boysenberry = sRGB24 135 50 96

brandeisBlue :: (Ord a, Floating a) => Colour a
brandeisBlue = sRGB24 0 112 255

brass :: (Ord a, Floating a) => Colour a
brass = sRGB24 181 166 66

brickRed :: (Ord a, Floating a) => Colour a
brickRed = sRGB24 203 65 84

brightCerulean :: (Ord a, Floating a) => Colour a
brightCerulean = sRGB24 29 172 214

brightGreen :: (Ord a, Floating a) => Colour a
brightGreen = sRGB24 102 255 0

brightLavender :: (Ord a, Floating a) => Colour a
brightLavender = sRGB24 191 148 228

brightMaroon :: (Ord a, Floating a) => Colour a
brightMaroon = sRGB24 195 33 72

brightPink :: (Ord a, Floating a) => Colour a
brightPink = sRGB24 255 0 127

brightTurquoise :: (Ord a, Floating a) => Colour a
brightTurquoise = sRGB24 8 232 222

brightUbe :: (Ord a, Floating a) => Colour a
brightUbe = sRGB24 209 159 232

brilliantLavender :: (Ord a, Floating a) => Colour a
brilliantLavender = sRGB24 244 187 255

brilliantRose :: (Ord a, Floating a) => Colour a
brilliantRose = sRGB24 255 85 163

brinkPink :: (Ord a, Floating a) => Colour a
brinkPink = sRGB24 251 96 127

britishRacingGreen :: (Ord a, Floating a) => Colour a
britishRacingGreen = sRGB24 0 66 37

bronze :: (Ord a, Floating a) => Colour a
bronze = sRGB24 205 127 50

brownTraditional :: (Ord a, Floating a) => Colour a
brownTraditional = sRGB24 150 75 0

brownWeb :: (Ord a, Floating a) => Colour a
brownWeb = sRGB24 165 42 42

bubbleGum :: (Ord a, Floating a) => Colour a
bubbleGum = sRGB24 255 193 204

bubbles :: (Ord a, Floating a) => Colour a
bubbles = sRGB24 231 254 255

buff :: (Ord a, Floating a) => Colour a
buff = sRGB24 240 220 130

bulgarianRose :: (Ord a, Floating a) => Colour a
bulgarianRose = sRGB24 72 6 7

burgundy :: (Ord a, Floating a) => Colour a
burgundy = sRGB24 128 0 32

burntOrange :: (Ord a, Floating a) => Colour a
burntOrange = sRGB24 204 85 0

burntSienna :: (Ord a, Floating a) => Colour a
burntSienna = sRGB24 233 116 81

burntUmber :: (Ord a, Floating a) => Colour a
burntUmber = sRGB24 138 51 36

byzantine :: (Ord a, Floating a) => Colour a
byzantine = sRGB24 189 51 164

byzantium :: (Ord a, Floating a) => Colour a
byzantium = sRGB24 112 41 99

cadet :: (Ord a, Floating a) => Colour a
cadet = sRGB24 83 104 114

cadetBlue :: (Ord a, Floating a) => Colour a
cadetBlue = sRGB24 95 158 160

cadetGrey :: (Ord a, Floating a) => Colour a
cadetGrey = sRGB24 145 163 176

cadmiumGreen :: (Ord a, Floating a) => Colour a
cadmiumGreen = sRGB24 0 107 60

cadmiumOrange :: (Ord a, Floating a) => Colour a
cadmiumOrange = sRGB24 237 135 45

cadmiumRed :: (Ord a, Floating a) => Colour a
cadmiumRed = sRGB24 227 0 34

cadmiumYellow :: (Ord a, Floating a) => Colour a
cadmiumYellow = sRGB24 255 246 0

cafAuLait :: (Ord a, Floating a) => Colour a
cafAuLait = sRGB24 166 123 91

cafNoir :: (Ord a, Floating a) => Colour a
cafNoir = sRGB24 75 54 33

calPolyGreen :: (Ord a, Floating a) => Colour a
calPolyGreen = sRGB24 30 77 43

cambridgeBlue :: (Ord a, Floating a) => Colour a
cambridgeBlue = sRGB24 163 193 173

camel :: (Ord a, Floating a) => Colour a
camel = sRGB24 193 154 107

cameoPink :: (Ord a, Floating a) => Colour a
cameoPink = sRGB24 239 187 204

camouflageGreen :: (Ord a, Floating a) => Colour a
camouflageGreen = sRGB24 120 134 107

canaryYellow :: (Ord a, Floating a) => Colour a
canaryYellow = sRGB24 255 239 0

candyAppleRed :: (Ord a, Floating a) => Colour a
candyAppleRed = sRGB24 255 8 0

candyPink :: (Ord a, Floating a) => Colour a
candyPink = sRGB24 228 113 122

capri :: (Ord a, Floating a) => Colour a
capri = sRGB24 0 191 255

caputMortuum :: (Ord a, Floating a) => Colour a
caputMortuum = sRGB24 89 39 32

cardinal :: (Ord a, Floating a) => Colour a
cardinal = sRGB24 196 30 58

caribbeanGreen :: (Ord a, Floating a) => Colour a
caribbeanGreen = sRGB24 0 204 153

carmine :: (Ord a, Floating a) => Colour a
carmine = sRGB24 150 0 24

carmineMP :: (Ord a, Floating a) => Colour a
carmineMP = sRGB24 215 0 64

carminePink :: (Ord a, Floating a) => Colour a
carminePink = sRGB24 235 76 66

carmineRed :: (Ord a, Floating a) => Colour a
carmineRed = sRGB24 255 0 56

carnationPink :: (Ord a, Floating a) => Colour a
carnationPink = sRGB24 255 166 201

carnelian :: (Ord a, Floating a) => Colour a
carnelian = sRGB24 179 27 27

carolinaBlue :: (Ord a, Floating a) => Colour a
carolinaBlue = sRGB24 153 186 221

carrotOrange :: (Ord a, Floating a) => Colour a
carrotOrange = sRGB24 237 145 33

catalinaBlue :: (Ord a, Floating a) => Colour a
catalinaBlue = sRGB24 6 42 120

ceil :: (Ord a, Floating a) => Colour a
ceil = sRGB24 146 161 207

celadon :: (Ord a, Floating a) => Colour a
celadon = sRGB24 172 225 175

celadonBlue :: (Ord a, Floating a) => Colour a
celadonBlue = sRGB24 0 123 167

celadonGreen :: (Ord a, Floating a) => Colour a
celadonGreen = sRGB24 47 132 124

celesteColour :: (Ord a, Floating a) => Colour a
celesteColour = sRGB24 178 255 255

celestialBlue :: (Ord a, Floating a) => Colour a
celestialBlue = sRGB24 73 151 208

cerise :: (Ord a, Floating a) => Colour a
cerise = sRGB24 222 49 99

cerisePink :: (Ord a, Floating a) => Colour a
cerisePink = sRGB24 236 59 131

cerulean :: (Ord a, Floating a) => Colour a
cerulean = sRGB24 0 123 167

ceruleanBlue :: (Ord a, Floating a) => Colour a
ceruleanBlue = sRGB24 42 82 190

ceruleanFrost :: (Ord a, Floating a) => Colour a
ceruleanFrost = sRGB24 109 155 195

cgBlue :: (Ord a, Floating a) => Colour a
cgBlue = sRGB24 0 122 165

cgRed :: (Ord a, Floating a) => Colour a
cgRed = sRGB24 224 60 49

chamoisee :: (Ord a, Floating a) => Colour a
chamoisee = sRGB24 160 120 90

champagne :: (Ord a, Floating a) => Colour a
champagne = sRGB24 250 214 165

charcoal :: (Ord a, Floating a) => Colour a
charcoal = sRGB24 54 69 79

charmPink :: (Ord a, Floating a) => Colour a
charmPink = sRGB24 230 143 172

chartreuseTraditional :: (Ord a, Floating a) => Colour a
chartreuseTraditional = sRGB24 223 255 0

chartreuseWeb :: (Ord a, Floating a) => Colour a
chartreuseWeb = sRGB24 127 255 0

cherry :: (Ord a, Floating a) => Colour a
cherry = sRGB24 222 49 99

cherryBlossomPink :: (Ord a, Floating a) => Colour a
cherryBlossomPink = sRGB24 255 183 197

chestnut :: (Ord a, Floating a) => Colour a
chestnut = sRGB24 205 92 92

chinaPink :: (Ord a, Floating a) => Colour a
chinaPink = sRGB24 222 111 161

chinaRose :: (Ord a, Floating a) => Colour a
chinaRose = sRGB24 168 81 110

chineseRed :: (Ord a, Floating a) => Colour a
chineseRed = sRGB24 170 56 30

chocolateTraditional :: (Ord a, Floating a) => Colour a
chocolateTraditional = sRGB24 123 63 0

chocolateWeb :: (Ord a, Floating a) => Colour a
chocolateWeb = sRGB24 210 105 30

chromeYellow :: (Ord a, Floating a) => Colour a
chromeYellow = sRGB24 255 167 0

cinereous :: (Ord a, Floating a) => Colour a
cinereous = sRGB24 152 129 123

cinnabar :: (Ord a, Floating a) => Colour a
cinnabar = sRGB24 227 66 52

cinnamon :: (Ord a, Floating a) => Colour a
cinnamon = sRGB24 210 105 30

citrine :: (Ord a, Floating a) => Colour a
citrine = sRGB24 228 208 10

classicRose :: (Ord a, Floating a) => Colour a
classicRose = sRGB24 251 204 231

cobalt :: (Ord a, Floating a) => Colour a
cobalt = sRGB24 0 71 171

cocoaBrown :: (Ord a, Floating a) => Colour a
cocoaBrown = sRGB24 210 105 30

coffee :: (Ord a, Floating a) => Colour a
coffee = sRGB24 111 78 55

columbiaBlue :: (Ord a, Floating a) => Colour a
columbiaBlue = sRGB24 155 221 255

congoPink :: (Ord a, Floating a) => Colour a
congoPink = sRGB24 248 131 121

coolBlack :: (Ord a, Floating a) => Colour a
coolBlack = sRGB24 0 46 99

coolGrey :: (Ord a, Floating a) => Colour a
coolGrey = sRGB24 140 146 172

copper :: (Ord a, Floating a) => Colour a
copper = sRGB24 184 115 51

copperCrayola :: (Ord a, Floating a) => Colour a
copperCrayola = sRGB24 218 138 103

copperPenny :: (Ord a, Floating a) => Colour a
copperPenny = sRGB24 173 111 105

copperRed :: (Ord a, Floating a) => Colour a
copperRed = sRGB24 203 109 81

copperRose :: (Ord a, Floating a) => Colour a
copperRose = sRGB24 153 102 102

coquelicot :: (Ord a, Floating a) => Colour a
coquelicot = sRGB24 255 56 0

coralPink :: (Ord a, Floating a) => Colour a
coralPink = sRGB24 248 131 121

coralRed :: (Ord a, Floating a) => Colour a
coralRed = sRGB24 255 64 64

cordovan :: (Ord a, Floating a) => Colour a
cordovan = sRGB24 137 63 69

corn :: (Ord a, Floating a) => Colour a
corn = sRGB24 251 236 93

cornellRed :: (Ord a, Floating a) => Colour a
cornellRed = sRGB24 179 27 27

cornflowerBlue :: (Ord a, Floating a) => Colour a
cornflowerBlue = sRGB24 100 149 237

cosmicLatte :: (Ord a, Floating a) => Colour a
cosmicLatte = sRGB24 255 248 231

cottonCandy :: (Ord a, Floating a) => Colour a
cottonCandy = sRGB24 255 188 217

cream :: (Ord a, Floating a) => Colour a
cream = sRGB24 255 253 208

crimsonGlory :: (Ord a, Floating a) => Colour a
crimsonGlory = sRGB24 190 0 50

cyanProcess :: (Ord a, Floating a) => Colour a
cyanProcess = sRGB24 0 183 235

daffodil :: (Ord a, Floating a) => Colour a
daffodil = sRGB24 255 255 49

dandelion :: (Ord a, Floating a) => Colour a
dandelion = sRGB24 240 225 48

darkBlue :: (Ord a, Floating a) => Colour a
darkBlue = sRGB24 0 0 139

darkBrown :: (Ord a, Floating a) => Colour a
darkBrown = sRGB24 101 67 33

darkByzantium :: (Ord a, Floating a) => Colour a
darkByzantium = sRGB24 93 57 84

darkCandyAppleRed :: (Ord a, Floating a) => Colour a
darkCandyAppleRed = sRGB24 164 0 0

darkCerulean :: (Ord a, Floating a) => Colour a
darkCerulean = sRGB24 8 69 126

darkChestnut :: (Ord a, Floating a) => Colour a
darkChestnut = sRGB24 152 105 96

darkCoral :: (Ord a, Floating a) => Colour a
darkCoral = sRGB24 205 91 69

darkCyan :: (Ord a, Floating a) => Colour a
darkCyan = sRGB24 0 139 139

darkElectricBlue :: (Ord a, Floating a) => Colour a
darkElectricBlue = sRGB24 83 104 120

darkGoldenrod :: (Ord a, Floating a) => Colour a
darkGoldenrod = sRGB24 184 134 11

darkGray :: (Ord a, Floating a) => Colour a
darkGray = sRGB24 169 169 169

darkGreen :: (Ord a, Floating a) => Colour a
darkGreen = sRGB24 1 50 32

darkImperialBlue :: (Ord a, Floating a) => Colour a
darkImperialBlue = sRGB24 0 65 106

darkJungleGreen :: (Ord a, Floating a) => Colour a
darkJungleGreen = sRGB24 26 36 33

darkKhaki :: (Ord a, Floating a) => Colour a
darkKhaki = sRGB24 189 183 107

darkLava :: (Ord a, Floating a) => Colour a
darkLava = sRGB24 72 60 50

darkLavender :: (Ord a, Floating a) => Colour a
darkLavender = sRGB24 115 79 150

darkMagenta :: (Ord a, Floating a) => Colour a
darkMagenta = sRGB24 139 0 139

darkMidnightBlue :: (Ord a, Floating a) => Colour a
darkMidnightBlue = sRGB24 0 51 102

darkOliveGreen :: (Ord a, Floating a) => Colour a
darkOliveGreen = sRGB24 85 107 47

darkOrange :: (Ord a, Floating a) => Colour a
darkOrange = sRGB24 255 140 0

darkOrchid :: (Ord a, Floating a) => Colour a
darkOrchid = sRGB24 153 50 204

darkPastelBlue :: (Ord a, Floating a) => Colour a
darkPastelBlue = sRGB24 119 158 203

darkPastelGreen :: (Ord a, Floating a) => Colour a
darkPastelGreen = sRGB24 3 192 60

darkPastelPurple :: (Ord a, Floating a) => Colour a
darkPastelPurple = sRGB24 150 111 214

darkPastelRed :: (Ord a, Floating a) => Colour a
darkPastelRed = sRGB24 194 59 34

darkPink :: (Ord a, Floating a) => Colour a
darkPink = sRGB24 231 84 128

darkPowderBlue :: (Ord a, Floating a) => Colour a
darkPowderBlue = sRGB24 0 51 153

darkRaspberry :: (Ord a, Floating a) => Colour a
darkRaspberry = sRGB24 135 38 87

darkRed :: (Ord a, Floating a) => Colour a
darkRed = sRGB24 139 0 0

darkSalmon :: (Ord a, Floating a) => Colour a
darkSalmon = sRGB24 233 150 122

darkScarlet :: (Ord a, Floating a) => Colour a
darkScarlet = sRGB24 86 3 25

darkSeaGreen :: (Ord a, Floating a) => Colour a
darkSeaGreen = sRGB24 143 188 143

darkSienna :: (Ord a, Floating a) => Colour a
darkSienna = sRGB24 60 20 20

darkSlateBlue :: (Ord a, Floating a) => Colour a
darkSlateBlue = sRGB24 72 61 139

darkSlateGray :: (Ord a, Floating a) => Colour a
darkSlateGray = sRGB24 47 79 79

darkSpringGreen :: (Ord a, Floating a) => Colour a
darkSpringGreen = sRGB24 23 114 69

darkTan :: (Ord a, Floating a) => Colour a
darkTan = sRGB24 145 129 81

darkTangerine :: (Ord a, Floating a) => Colour a
darkTangerine = sRGB24 255 168 18

darkTaupe :: (Ord a, Floating a) => Colour a
darkTaupe = sRGB24 72 60 50

darkTerraCotta :: (Ord a, Floating a) => Colour a
darkTerraCotta = sRGB24 204 78 92

darkTurquoise :: (Ord a, Floating a) => Colour a
darkTurquoise = sRGB24 0 206 209

darkViolet :: (Ord a, Floating a) => Colour a
darkViolet = sRGB24 148 0 211

darkYellow :: (Ord a, Floating a) => Colour a
darkYellow = sRGB24 155 135 12

dartmouthGreen :: (Ord a, Floating a) => Colour a
dartmouthGreen = sRGB24 0 112 60

davySGrey :: (Ord a, Floating a) => Colour a
davySGrey = sRGB24 85 85 85

debianRed :: (Ord a, Floating a) => Colour a
debianRed = sRGB24 215 10 83

deepCarmine :: (Ord a, Floating a) => Colour a
deepCarmine = sRGB24 169 32 62

deepCarminePink :: (Ord a, Floating a) => Colour a
deepCarminePink = sRGB24 239 48 56

deepCarrotOrange :: (Ord a, Floating a) => Colour a
deepCarrotOrange = sRGB24 233 105 44

deepCerise :: (Ord a, Floating a) => Colour a
deepCerise = sRGB24 218 50 135

deepChampagne :: (Ord a, Floating a) => Colour a
deepChampagne = sRGB24 250 214 165

deepChestnut :: (Ord a, Floating a) => Colour a
deepChestnut = sRGB24 185 78 72

deepCoffee :: (Ord a, Floating a) => Colour a
deepCoffee = sRGB24 112 66 65

deepFuchsia :: (Ord a, Floating a) => Colour a
deepFuchsia = sRGB24 193 84 193

deepJungleGreen :: (Ord a, Floating a) => Colour a
deepJungleGreen = sRGB24 0 75 73

deepLilac :: (Ord a, Floating a) => Colour a
deepLilac = sRGB24 153 85 187

deepMagenta :: (Ord a, Floating a) => Colour a
deepMagenta = sRGB24 204 0 204

deepPeach :: (Ord a, Floating a) => Colour a
deepPeach = sRGB24 255 203 164

deepPink :: (Ord a, Floating a) => Colour a
deepPink = sRGB24 255 20 147

deepRuby :: (Ord a, Floating a) => Colour a
deepRuby = sRGB24 132 63 91

deepSaffron :: (Ord a, Floating a) => Colour a
deepSaffron = sRGB24 255 153 51

deepSkyBlue :: (Ord a, Floating a) => Colour a
deepSkyBlue = sRGB24 0 191 255

deepTuscanRed :: (Ord a, Floating a) => Colour a
deepTuscanRed = sRGB24 102 66 77

denim :: (Ord a, Floating a) => Colour a
denim = sRGB24 21 96 189

desert :: (Ord a, Floating a) => Colour a
desert = sRGB24 193 154 107

desertSand :: (Ord a, Floating a) => Colour a
desertSand = sRGB24 237 201 175

dimGray :: (Ord a, Floating a) => Colour a
dimGray = sRGB24 105 105 105

dodgerBlue :: (Ord a, Floating a) => Colour a
dodgerBlue = sRGB24 30 144 255

dogwoodRose :: (Ord a, Floating a) => Colour a
dogwoodRose = sRGB24 215 24 104

dollarBill :: (Ord a, Floating a) => Colour a
dollarBill = sRGB24 133 187 101

drab :: (Ord a, Floating a) => Colour a
drab = sRGB24 150 113 23

dukeBlue :: (Ord a, Floating a) => Colour a
dukeBlue = sRGB24 0 0 156

earthYellow :: (Ord a, Floating a) => Colour a
earthYellow = sRGB24 225 169 95

ebony :: (Ord a, Floating a) => Colour a
ebony = sRGB24 85 93 80

ecru :: (Ord a, Floating a) => Colour a
ecru = sRGB24 194 178 128

eggplant :: (Ord a, Floating a) => Colour a
eggplant = sRGB24 97 64 81

eggshell :: (Ord a, Floating a) => Colour a
eggshell = sRGB24 240 234 214

egyptianBlue :: (Ord a, Floating a) => Colour a
egyptianBlue = sRGB24 16 52 166

electricBlue :: (Ord a, Floating a) => Colour a
electricBlue = sRGB24 125 249 255

electricCrimson :: (Ord a, Floating a) => Colour a
electricCrimson = sRGB24 255 0 63

electricCyan :: (Ord a, Floating a) => Colour a
electricCyan = sRGB24 0 255 255

electricGreen :: (Ord a, Floating a) => Colour a
electricGreen = sRGB24 0 255 0

electricIndigo :: (Ord a, Floating a) => Colour a
electricIndigo = sRGB24 111 0 255

electricLavender :: (Ord a, Floating a) => Colour a
electricLavender = sRGB24 244 187 255

electricLime :: (Ord a, Floating a) => Colour a
electricLime = sRGB24 204 255 0

electricPurple :: (Ord a, Floating a) => Colour a
electricPurple = sRGB24 191 0 255

electricUltramarine :: (Ord a, Floating a) => Colour a
electricUltramarine = sRGB24 63 0 255

electricViolet :: (Ord a, Floating a) => Colour a
electricViolet = sRGB24 143 0 255

electricYellow :: (Ord a, Floating a) => Colour a
electricYellow = sRGB24 255 255 0

emerald :: (Ord a, Floating a) => Colour a
emerald = sRGB24 80 200 120

englishLavender :: (Ord a, Floating a) => Colour a
englishLavender = sRGB24 180 131 149

etonBlue :: (Ord a, Floating a) => Colour a
etonBlue = sRGB24 150 200 162

fallow :: (Ord a, Floating a) => Colour a
fallow = sRGB24 193 154 107

faluRed :: (Ord a, Floating a) => Colour a
faluRed = sRGB24 128 24 24

fandango :: (Ord a, Floating a) => Colour a
fandango = sRGB24 181 51 137

fashionFuchsia :: (Ord a, Floating a) => Colour a
fashionFuchsia = sRGB24 244 0 161

fawn :: (Ord a, Floating a) => Colour a
fawn = sRGB24 229 170 112

feldgrau :: (Ord a, Floating a) => Colour a
feldgrau = sRGB24 77 93 83

fernGreen :: (Ord a, Floating a) => Colour a
fernGreen = sRGB24 79 121 66

ferrariRed :: (Ord a, Floating a) => Colour a
ferrariRed = sRGB24 255 40 0

fieldDrab :: (Ord a, Floating a) => Colour a
fieldDrab = sRGB24 108 84 30

fireEngineRed :: (Ord a, Floating a) => Colour a
fireEngineRed = sRGB24 206 32 41

flame :: (Ord a, Floating a) => Colour a
flame = sRGB24 226 88 34

flamingoPink :: (Ord a, Floating a) => Colour a
flamingoPink = sRGB24 252 142 172

flavescent :: (Ord a, Floating a) => Colour a
flavescent = sRGB24 247 233 142

flax :: (Ord a, Floating a) => Colour a
flax = sRGB24 238 220 130

floralWhite :: (Ord a, Floating a) => Colour a
floralWhite = sRGB24 255 250 240

fluorescentOrange :: (Ord a, Floating a) => Colour a
fluorescentOrange = sRGB24 255 191 0

fluorescentPink :: (Ord a, Floating a) => Colour a
fluorescentPink = sRGB24 255 20 147

fluorescentYellow :: (Ord a, Floating a) => Colour a
fluorescentYellow = sRGB24 204 255 0

folly :: (Ord a, Floating a) => Colour a
folly = sRGB24 255 0 79

forestGreenTraditional :: (Ord a, Floating a) => Colour a
forestGreenTraditional = sRGB24 1 68 33

forestGreenWeb :: (Ord a, Floating a) => Colour a
forestGreenWeb = sRGB24 34 139 34

frenchBeige :: (Ord a, Floating a) => Colour a
frenchBeige = sRGB24 166 123 91

frenchBlue :: (Ord a, Floating a) => Colour a
frenchBlue = sRGB24 0 114 187

frenchLilac :: (Ord a, Floating a) => Colour a
frenchLilac = sRGB24 134 96 142

frenchLime :: (Ord a, Floating a) => Colour a
frenchLime = sRGB24 204 255 0

frenchRaspberry :: (Ord a, Floating a) => Colour a
frenchRaspberry = sRGB24 199 44 72

frenchRose :: (Ord a, Floating a) => Colour a
frenchRose = sRGB24 246 74 138

fuchsiaCrayola :: (Ord a, Floating a) => Colour a
fuchsiaCrayola = sRGB24 193 84 193

fuchsiaPink :: (Ord a, Floating a) => Colour a
fuchsiaPink = sRGB24 255 119 255

fuchsiaRose :: (Ord a, Floating a) => Colour a
fuchsiaRose = sRGB24 199 67 117

fulvous :: (Ord a, Floating a) => Colour a
fulvous = sRGB24 228 132 0

fuzzyWuzzy :: (Ord a, Floating a) => Colour a
fuzzyWuzzy = sRGB24 204 102 102

gamboge :: (Ord a, Floating a) => Colour a
gamboge = sRGB24 228 155 15

ghostWhite :: (Ord a, Floating a) => Colour a
ghostWhite = sRGB24 248 248 255

ginger :: (Ord a, Floating a) => Colour a
ginger = sRGB24 176 101 0

glaucous :: (Ord a, Floating a) => Colour a
glaucous = sRGB24 96 130 182

glitter :: (Ord a, Floating a) => Colour a
glitter = sRGB24 230 232 250

goldMetallic :: (Ord a, Floating a) => Colour a
goldMetallic = sRGB24 212 175 55

goldWebGolden :: (Ord a, Floating a) => Colour a
goldWebGolden = sRGB24 255 215 0

goldenBrown :: (Ord a, Floating a) => Colour a
goldenBrown = sRGB24 153 101 21

goldenPoppy :: (Ord a, Floating a) => Colour a
goldenPoppy = sRGB24 252 194 0

goldenYellow :: (Ord a, Floating a) => Colour a
goldenYellow = sRGB24 255 223 0

grannySmithApple :: (Ord a, Floating a) => Colour a
grannySmithApple = sRGB24 168 228 160

grayAsparagus :: (Ord a, Floating a) => Colour a
grayAsparagus = sRGB24 70 89 69

grayHtmlCssGray :: (Ord a, Floating a) => Colour a
grayHtmlCssGray = sRGB24 128 128 128

grayX11Gray :: (Ord a, Floating a) => Colour a
grayX11Gray = sRGB24 190 190 190

greenColorWheelX11Green :: (Ord a, Floating a) => Colour a
greenColorWheelX11Green = sRGB24 0 255 0

greenCrayola :: (Ord a, Floating a) => Colour a
greenCrayola = sRGB24 28 172 120

greenHtmlCssGreen :: (Ord a, Floating a) => Colour a
greenHtmlCssGreen = sRGB24 0 128 0

greenMunsell :: (Ord a, Floating a) => Colour a
greenMunsell = sRGB24 0 168 119

greenNcs :: (Ord a, Floating a) => Colour a
greenNcs = sRGB24 0 159 107

greenPigment :: (Ord a, Floating a) => Colour a
greenPigment = sRGB24 0 165 80

greenRyb :: (Ord a, Floating a) => Colour a
greenRyb = sRGB24 102 176 50

greenYellow :: (Ord a, Floating a) => Colour a
greenYellow = sRGB24 173 255 47

grullo :: (Ord a, Floating a) => Colour a
grullo = sRGB24 169 154 134

guppieGreen :: (Ord a, Floating a) => Colour a
guppieGreen = sRGB24 0 255 127

halayBe :: (Ord a, Floating a) => Colour a
halayBe = sRGB24 102 56 84

hanBlue :: (Ord a, Floating a) => Colour a
hanBlue = sRGB24 68 108 207

hanPurple :: (Ord a, Floating a) => Colour a
hanPurple = sRGB24 82 24 250

hansaYellow :: (Ord a, Floating a) => Colour a
hansaYellow = sRGB24 233 214 107

harlequin :: (Ord a, Floating a) => Colour a
harlequin = sRGB24 63 255 0

harvardCrimson :: (Ord a, Floating a) => Colour a
harvardCrimson = sRGB24 201 0 22

harvestGold :: (Ord a, Floating a) => Colour a
harvestGold = sRGB24 218 145 0

heartGold :: (Ord a, Floating a) => Colour a
heartGold = sRGB24 128 128 0

heliotrope :: (Ord a, Floating a) => Colour a
heliotrope = sRGB24 223 115 255

hollywoodCerise :: (Ord a, Floating a) => Colour a
hollywoodCerise = sRGB24 244 0 161

honoluluBlue :: (Ord a, Floating a) => Colour a
honoluluBlue = sRGB24 0 127 191

hookerSGreen :: (Ord a, Floating a) => Colour a
hookerSGreen = sRGB24 73 121 107

hotMagenta :: (Ord a, Floating a) => Colour a
hotMagenta = sRGB24 255 29 206

hotPink :: (Ord a, Floating a) => Colour a
hotPink = sRGB24 255 105 180

hunterGreen :: (Ord a, Floating a) => Colour a
hunterGreen = sRGB24 53 94 59

iceberg :: (Ord a, Floating a) => Colour a
iceberg = sRGB24 113 166 210

icterine :: (Ord a, Floating a) => Colour a
icterine = sRGB24 252 247 94

imperialBlue :: (Ord a, Floating a) => Colour a
imperialBlue = sRGB24 0 35 149

inchworm :: (Ord a, Floating a) => Colour a
inchworm = sRGB24 178 236 93

indiaGreen :: (Ord a, Floating a) => Colour a
indiaGreen = sRGB24 19 136 8

indianRed :: (Ord a, Floating a) => Colour a
indianRed = sRGB24 205 92 92

indianYellow :: (Ord a, Floating a) => Colour a
indianYellow = sRGB24 227 168 87

indigoDye :: (Ord a, Floating a) => Colour a
indigoDye = sRGB24 0 65 106

indigoWeb :: (Ord a, Floating a) => Colour a
indigoWeb = sRGB24 75 0 130

internationalKleinBlue :: (Ord a, Floating a) => Colour a
internationalKleinBlue = sRGB24 0 47 167

internationalOrangeAerospace :: (Ord a, Floating a) => Colour a
internationalOrangeAerospace = sRGB24 255 79 0

internationalOrangeEngineering :: (Ord a, Floating a) => Colour a
internationalOrangeEngineering = sRGB24 186 22 12

internationalOrangeGoldenGateBridge :: (Ord a, Floating a) => Colour a
internationalOrangeGoldenGateBridge = sRGB24 192 54 44

iris :: (Ord a, Floating a) => Colour a
iris = sRGB24 90 79 207

isabelline :: (Ord a, Floating a) => Colour a
isabelline = sRGB24 244 240 236

islamicGreen :: (Ord a, Floating a) => Colour a
islamicGreen = sRGB24 0 144 0

jade :: (Ord a, Floating a) => Colour a
jade = sRGB24 0 168 107

jasmine :: (Ord a, Floating a) => Colour a
jasmine = sRGB24 248 222 126

jasper :: (Ord a, Floating a) => Colour a
jasper = sRGB24 215 59 62

jazzberryJam :: (Ord a, Floating a) => Colour a
jazzberryJam = sRGB24 165 11 94

jet :: (Ord a, Floating a) => Colour a
jet = sRGB24 52 52 52

jonquil :: (Ord a, Floating a) => Colour a
jonquil = sRGB24 250 218 94

juneBud :: (Ord a, Floating a) => Colour a
juneBud = sRGB24 189 218 87

jungleGreen :: (Ord a, Floating a) => Colour a
jungleGreen = sRGB24 41 171 135

kellyGreen :: (Ord a, Floating a) => Colour a
kellyGreen = sRGB24 76 187 23

kenyanCopper :: (Ord a, Floating a) => Colour a
kenyanCopper = sRGB24 124 28 5

khakiHtmlCssKhaki :: (Ord a, Floating a) => Colour a
khakiHtmlCssKhaki = sRGB24 195 176 145

khakiX11LightKhaki :: (Ord a, Floating a) => Colour a
khakiX11LightKhaki = sRGB24 240 230 140

kuCrimson :: (Ord a, Floating a) => Colour a
kuCrimson = sRGB24 232 0 13

laSalleGreen :: (Ord a, Floating a) => Colour a
laSalleGreen = sRGB24 8 120 48

languidLavender :: (Ord a, Floating a) => Colour a
languidLavender = sRGB24 214 202 221

lapisLazuli :: (Ord a, Floating a) => Colour a
lapisLazuli = sRGB24 38 97 156

laserLemon :: (Ord a, Floating a) => Colour a
laserLemon = sRGB24 254 254 34

laurelGreen :: (Ord a, Floating a) => Colour a
laurelGreen = sRGB24 169 186 157

lava :: (Ord a, Floating a) => Colour a
lava = sRGB24 207 16 32

lavenderBlue :: (Ord a, Floating a) => Colour a
lavenderBlue = sRGB24 204 204 255

lavenderBlush :: (Ord a, Floating a) => Colour a
lavenderBlush = sRGB24 255 240 245

lavenderFloral :: (Ord a, Floating a) => Colour a
lavenderFloral = sRGB24 181 126 220

lavenderGray :: (Ord a, Floating a) => Colour a
lavenderGray = sRGB24 196 195 208

lavenderIndigo :: (Ord a, Floating a) => Colour a
lavenderIndigo = sRGB24 148 87 235

lavenderMagenta :: (Ord a, Floating a) => Colour a
lavenderMagenta = sRGB24 238 130 238

lavenderMist :: (Ord a, Floating a) => Colour a
lavenderMist = sRGB24 230 230 250

lavenderPink :: (Ord a, Floating a) => Colour a
lavenderPink = sRGB24 251 174 210

lavenderPurple :: (Ord a, Floating a) => Colour a
lavenderPurple = sRGB24 150 123 182

lavenderRose :: (Ord a, Floating a) => Colour a
lavenderRose = sRGB24 251 160 227

lavenderWeb :: (Ord a, Floating a) => Colour a
lavenderWeb = sRGB24 230 230 250

lawnGreen :: (Ord a, Floating a) => Colour a
lawnGreen = sRGB24 124 252 0

lemon :: (Ord a, Floating a) => Colour a
lemon = sRGB24 255 247 0

lemonChiffon :: (Ord a, Floating a) => Colour a
lemonChiffon = sRGB24 255 250 205

lemonLime :: (Ord a, Floating a) => Colour a
lemonLime = sRGB24 227 255 0

licorice :: (Ord a, Floating a) => Colour a
licorice = sRGB24 26 17 16

lightApricot :: (Ord a, Floating a) => Colour a
lightApricot = sRGB24 253 213 177

lightBlue :: (Ord a, Floating a) => Colour a
lightBlue = sRGB24 173 216 230

lightBrown :: (Ord a, Floating a) => Colour a
lightBrown = sRGB24 181 101 29

lightCarminePink :: (Ord a, Floating a) => Colour a
lightCarminePink = sRGB24 230 103 113

lightCoral :: (Ord a, Floating a) => Colour a
lightCoral = sRGB24 240 128 128

lightCornflowerBlue :: (Ord a, Floating a) => Colour a
lightCornflowerBlue = sRGB24 147 204 234

lightCrimson :: (Ord a, Floating a) => Colour a
lightCrimson = sRGB24 245 105 145

lightCyan :: (Ord a, Floating a) => Colour a
lightCyan = sRGB24 224 255 255

lightFuchsiaPink :: (Ord a, Floating a) => Colour a
lightFuchsiaPink = sRGB24 249 132 239

lightGoldenrodYellow :: (Ord a, Floating a) => Colour a
lightGoldenrodYellow = sRGB24 250 250 210

lightGray :: (Ord a, Floating a) => Colour a
lightGray = sRGB24 211 211 211

lightGreen :: (Ord a, Floating a) => Colour a
lightGreen = sRGB24 144 238 144

lightKhaki :: (Ord a, Floating a) => Colour a
lightKhaki = sRGB24 240 230 140

lightPastelPurple :: (Ord a, Floating a) => Colour a
lightPastelPurple = sRGB24 177 156 217

lightPink :: (Ord a, Floating a) => Colour a
lightPink = sRGB24 255 182 193

lightRedOchre :: (Ord a, Floating a) => Colour a
lightRedOchre = sRGB24 233 116 81

lightSalmon :: (Ord a, Floating a) => Colour a
lightSalmon = sRGB24 255 160 122

lightSalmonPink :: (Ord a, Floating a) => Colour a
lightSalmonPink = sRGB24 255 153 153

lightSeaGreen :: (Ord a, Floating a) => Colour a
lightSeaGreen = sRGB24 32 178 170

lightSkyBlue :: (Ord a, Floating a) => Colour a
lightSkyBlue = sRGB24 135 206 250

lightSlateGray :: (Ord a, Floating a) => Colour a
lightSlateGray = sRGB24 119 136 153

lightTaupe :: (Ord a, Floating a) => Colour a
lightTaupe = sRGB24 179 139 109

lightThulianPink :: (Ord a, Floating a) => Colour a
lightThulianPink = sRGB24 230 143 172

lightYellow :: (Ord a, Floating a) => Colour a
lightYellow = sRGB24 255 255 224

lilac :: (Ord a, Floating a) => Colour a
lilac = sRGB24 200 162 200

limeColorWheel :: (Ord a, Floating a) => Colour a
limeColorWheel = sRGB24 191 255 0

limeGreen :: (Ord a, Floating a) => Colour a
limeGreen = sRGB24 50 205 50

limeWebX11Green :: (Ord a, Floating a) => Colour a
limeWebX11Green = sRGB24 0 255 0

limerick :: (Ord a, Floating a) => Colour a
limerick = sRGB24 157 194 9

lincolnGreen :: (Ord a, Floating a) => Colour a
lincolnGreen = sRGB24 25 89 5

lion :: (Ord a, Floating a) => Colour a
lion = sRGB24 193 154 107

littleBoyBlue :: (Ord a, Floating a) => Colour a
littleBoyBlue = sRGB24 108 160 220

liver :: (Ord a, Floating a) => Colour a
liver = sRGB24 83 75 79

lust :: (Ord a, Floating a) => Colour a
lust = sRGB24 230 32 32

magentaDye :: (Ord a, Floating a) => Colour a
magentaDye = sRGB24 202 31 123

magentaProcess :: (Ord a, Floating a) => Colour a
magentaProcess = sRGB24 255 0 144

magicMint :: (Ord a, Floating a) => Colour a
magicMint = sRGB24 170 240 209

magnolia :: (Ord a, Floating a) => Colour a
magnolia = sRGB24 248 244 255

mahogany :: (Ord a, Floating a) => Colour a
mahogany = sRGB24 192 64 0

maize :: (Ord a, Floating a) => Colour a
maize = sRGB24 251 236 93

majorelleBlue :: (Ord a, Floating a) => Colour a
majorelleBlue = sRGB24 96 80 220

malachite :: (Ord a, Floating a) => Colour a
malachite = sRGB24 11 218 81

manatee :: (Ord a, Floating a) => Colour a
manatee = sRGB24 151 154 170

mangoTango :: (Ord a, Floating a) => Colour a
mangoTango = sRGB24 255 130 67

mantis :: (Ord a, Floating a) => Colour a
mantis = sRGB24 116 195 101

mardiGras :: (Ord a, Floating a) => Colour a
mardiGras = sRGB24 136 0 133

maroonCrayola :: (Ord a, Floating a) => Colour a
maroonCrayola = sRGB24 195 33 72

maroonHtmlCss :: (Ord a, Floating a) => Colour a
maroonHtmlCss = sRGB24 128 0 0

maroonX11 :: (Ord a, Floating a) => Colour a
maroonX11 = sRGB24 176 48 96

mauve :: (Ord a, Floating a) => Colour a
mauve = sRGB24 224 176 255

mauveTaupe :: (Ord a, Floating a) => Colour a
mauveTaupe = sRGB24 145 95 109

mauvelous :: (Ord a, Floating a) => Colour a
mauvelous = sRGB24 239 152 170

mayaBlue :: (Ord a, Floating a) => Colour a
mayaBlue = sRGB24 115 194 251

meatBrown :: (Ord a, Floating a) => Colour a
meatBrown = sRGB24 229 183 59

mediumAquamarine :: (Ord a, Floating a) => Colour a
mediumAquamarine = sRGB24 102 221 170

mediumBlue :: (Ord a, Floating a) => Colour a
mediumBlue = sRGB24 0 0 205

mediumCandyAppleRed :: (Ord a, Floating a) => Colour a
mediumCandyAppleRed = sRGB24 226 6 44

mediumCarmine :: (Ord a, Floating a) => Colour a
mediumCarmine = sRGB24 175 64 53

mediumChampagne :: (Ord a, Floating a) => Colour a
mediumChampagne = sRGB24 243 229 171

mediumElectricBlue :: (Ord a, Floating a) => Colour a
mediumElectricBlue = sRGB24 3 80 150

mediumJungleGreen :: (Ord a, Floating a) => Colour a
mediumJungleGreen = sRGB24 28 53 45

mediumLavenderMagenta :: (Ord a, Floating a) => Colour a
mediumLavenderMagenta = sRGB24 221 160 221

mediumOrchid :: (Ord a, Floating a) => Colour a
mediumOrchid = sRGB24 186 85 211

mediumPersianBlue :: (Ord a, Floating a) => Colour a
mediumPersianBlue = sRGB24 0 103 165

mediumPurple :: (Ord a, Floating a) => Colour a
mediumPurple = sRGB24 147 112 219

mediumRedViolet :: (Ord a, Floating a) => Colour a
mediumRedViolet = sRGB24 187 51 133

mediumRuby :: (Ord a, Floating a) => Colour a
mediumRuby = sRGB24 170 64 105

mediumSeaGreen :: (Ord a, Floating a) => Colour a
mediumSeaGreen = sRGB24 60 179 113

mediumSlateBlue :: (Ord a, Floating a) => Colour a
mediumSlateBlue = sRGB24 123 104 238

mediumSpringBud :: (Ord a, Floating a) => Colour a
mediumSpringBud = sRGB24 201 220 135

mediumSpringGreen :: (Ord a, Floating a) => Colour a
mediumSpringGreen = sRGB24 0 250 154

mediumTaupe :: (Ord a, Floating a) => Colour a
mediumTaupe = sRGB24 103 76 71

mediumTurquoise :: (Ord a, Floating a) => Colour a
mediumTurquoise = sRGB24 72 209 204

mediumTuscanRed :: (Ord a, Floating a) => Colour a
mediumTuscanRed = sRGB24 121 68 59

mediumVermilion :: (Ord a, Floating a) => Colour a
mediumVermilion = sRGB24 217 96 59

mediumVioletRed :: (Ord a, Floating a) => Colour a
mediumVioletRed = sRGB24 199 21 133

mellowApricot :: (Ord a, Floating a) => Colour a
mellowApricot = sRGB24 248 184 120

mellowYellow :: (Ord a, Floating a) => Colour a
mellowYellow = sRGB24 248 222 126

melon :: (Ord a, Floating a) => Colour a
melon = sRGB24 253 188 180

midnightBlue :: (Ord a, Floating a) => Colour a
midnightBlue = sRGB24 25 25 112

midnightGreenEagleGreen :: (Ord a, Floating a) => Colour a
midnightGreenEagleGreen = sRGB24 0 73 83

mikadoYellow :: (Ord a, Floating a) => Colour a
mikadoYellow = sRGB24 255 196 12

mint :: (Ord a, Floating a) => Colour a
mint = sRGB24 62 180 137

mintCream :: (Ord a, Floating a) => Colour a
mintCream = sRGB24 245 255 250

mintGreen :: (Ord a, Floating a) => Colour a
mintGreen = sRGB24 152 255 152

mistyRose :: (Ord a, Floating a) => Colour a
mistyRose = sRGB24 255 228 225

modeBeige :: (Ord a, Floating a) => Colour a
modeBeige = sRGB24 150 113 23

moonstoneBlue :: (Ord a, Floating a) => Colour a
moonstoneBlue = sRGB24 115 169 194

mordantRed19 :: (Ord a, Floating a) => Colour a
mordantRed19 = sRGB24 174 12 0

mossGreen :: (Ord a, Floating a) => Colour a
mossGreen = sRGB24 173 223 173

mountainMeadow :: (Ord a, Floating a) => Colour a
mountainMeadow = sRGB24 48 186 143

mountbattenPink :: (Ord a, Floating a) => Colour a
mountbattenPink = sRGB24 153 122 141

msuGreen :: (Ord a, Floating a) => Colour a
msuGreen = sRGB24 24 69 59

mulberry :: (Ord a, Floating a) => Colour a
mulberry = sRGB24 197 75 140

mustard :: (Ord a, Floating a) => Colour a
mustard = sRGB24 255 219 88

myrtle :: (Ord a, Floating a) => Colour a
myrtle = sRGB24 33 66 30

nadeshikoPink :: (Ord a, Floating a) => Colour a
nadeshikoPink = sRGB24 246 173 198

napierGreen :: (Ord a, Floating a) => Colour a
napierGreen = sRGB24 42 128 0

naplesYellow :: (Ord a, Floating a) => Colour a
naplesYellow = sRGB24 250 218 94

navajoWhite :: (Ord a, Floating a) => Colour a
navajoWhite = sRGB24 255 222 173

navyBlue :: (Ord a, Floating a) => Colour a
navyBlue = sRGB24 0 0 128

neonCarrot :: (Ord a, Floating a) => Colour a
neonCarrot = sRGB24 255 163 67

neonFuchsia :: (Ord a, Floating a) => Colour a
neonFuchsia = sRGB24 254 65 100

neonGreen :: (Ord a, Floating a) => Colour a
neonGreen = sRGB24 57 255 20

newYorkPink :: (Ord a, Floating a) => Colour a
newYorkPink = sRGB24 215 131 127

nonPhotoBlue :: (Ord a, Floating a) => Colour a
nonPhotoBlue = sRGB24 164 221 237

northTexasGreen :: (Ord a, Floating a) => Colour a
northTexasGreen = sRGB24 5 144 51

oceanBoatBlue :: (Ord a, Floating a) => Colour a
oceanBoatBlue = sRGB24 0 119 190

ochre :: (Ord a, Floating a) => Colour a
ochre = sRGB24 204 119 34

officeGreen :: (Ord a, Floating a) => Colour a
officeGreen = sRGB24 0 128 0

oldGold :: (Ord a, Floating a) => Colour a
oldGold = sRGB24 207 181 59

oldLace :: (Ord a, Floating a) => Colour a
oldLace = sRGB24 253 245 230

oldLavender :: (Ord a, Floating a) => Colour a
oldLavender = sRGB24 121 104 120

oldMauve :: (Ord a, Floating a) => Colour a
oldMauve = sRGB24 103 49 71

oldRose :: (Ord a, Floating a) => Colour a
oldRose = sRGB24 192 128 129

oliveDrab7 :: (Ord a, Floating a) => Colour a
oliveDrab7 = sRGB24 60 52 31

oliveDrabWebOliveDrab3 :: (Ord a, Floating a) => Colour a
oliveDrabWebOliveDrab3 = sRGB24 107 142 35

olivine :: (Ord a, Floating a) => Colour a
olivine = sRGB24 154 185 115

onyx :: (Ord a, Floating a) => Colour a
onyx = sRGB24 53 56 57

operaMauve :: (Ord a, Floating a) => Colour a
operaMauve = sRGB24 183 132 167

orangeColorWheel :: (Ord a, Floating a) => Colour a
orangeColorWheel = sRGB24 255 127 0

orangePeel :: (Ord a, Floating a) => Colour a
orangePeel = sRGB24 255 159 0

orangeRed :: (Ord a, Floating a) => Colour a
orangeRed = sRGB24 255 69 0

orangeRyb :: (Ord a, Floating a) => Colour a
orangeRyb = sRGB24 251 153 2

orangeWebColor :: (Ord a, Floating a) => Colour a
orangeWebColor = sRGB24 255 165 0

otterBrown :: (Ord a, Floating a) => Colour a
otterBrown = sRGB24 101 67 33

ouCrimsonRed :: (Ord a, Floating a) => Colour a
ouCrimsonRed = sRGB24 153 0 0

outerSpace :: (Ord a, Floating a) => Colour a
outerSpace = sRGB24 65 74 76

outrageousOrange :: (Ord a, Floating a) => Colour a
outrageousOrange = sRGB24 255 110 74

oxfordBlue :: (Ord a, Floating a) => Colour a
oxfordBlue = sRGB24 0 33 71

pakistanGreen :: (Ord a, Floating a) => Colour a
pakistanGreen = sRGB24 0 102 0

palatinateBlue :: (Ord a, Floating a) => Colour a
palatinateBlue = sRGB24 39 59 226

palatinatePurple :: (Ord a, Floating a) => Colour a
palatinatePurple = sRGB24 104 40 96

paleAqua :: (Ord a, Floating a) => Colour a
paleAqua = sRGB24 188 212 230

paleBlue :: (Ord a, Floating a) => Colour a
paleBlue = sRGB24 175 238 238

paleBrown :: (Ord a, Floating a) => Colour a
paleBrown = sRGB24 152 118 84

paleCarmine :: (Ord a, Floating a) => Colour a
paleCarmine = sRGB24 175 64 53

paleCerulean :: (Ord a, Floating a) => Colour a
paleCerulean = sRGB24 155 196 226

paleChestnut :: (Ord a, Floating a) => Colour a
paleChestnut = sRGB24 221 173 175

paleCopper :: (Ord a, Floating a) => Colour a
paleCopper = sRGB24 218 138 103

paleCornflowerBlue :: (Ord a, Floating a) => Colour a
paleCornflowerBlue = sRGB24 171 205 239

paleGold :: (Ord a, Floating a) => Colour a
paleGold = sRGB24 230 190 138

paleGoldenrod :: (Ord a, Floating a) => Colour a
paleGoldenrod = sRGB24 238 232 170

paleGreen :: (Ord a, Floating a) => Colour a
paleGreen = sRGB24 152 251 152

paleLavender :: (Ord a, Floating a) => Colour a
paleLavender = sRGB24 220 208 255

paleMagenta :: (Ord a, Floating a) => Colour a
paleMagenta = sRGB24 249 132 229

palePink :: (Ord a, Floating a) => Colour a
palePink = sRGB24 250 218 221

palePlum :: (Ord a, Floating a) => Colour a
palePlum = sRGB24 221 160 221

paleRedViolet :: (Ord a, Floating a) => Colour a
paleRedViolet = sRGB24 219 112 147

paleRobinEggBlue :: (Ord a, Floating a) => Colour a
paleRobinEggBlue = sRGB24 150 222 209

paleSilver :: (Ord a, Floating a) => Colour a
paleSilver = sRGB24 201 192 187

paleSpringBud :: (Ord a, Floating a) => Colour a
paleSpringBud = sRGB24 236 235 189

paleTaupe :: (Ord a, Floating a) => Colour a
paleTaupe = sRGB24 188 152 126

paleVioletRed :: (Ord a, Floating a) => Colour a
paleVioletRed = sRGB24 219 112 147

pansyPurple :: (Ord a, Floating a) => Colour a
pansyPurple = sRGB24 120 24 74

papayaWhip :: (Ord a, Floating a) => Colour a
papayaWhip = sRGB24 255 239 213

parisGreen :: (Ord a, Floating a) => Colour a
parisGreen = sRGB24 80 200 120

pastelBlue :: (Ord a, Floating a) => Colour a
pastelBlue = sRGB24 174 198 207

pastelBrown :: (Ord a, Floating a) => Colour a
pastelBrown = sRGB24 131 105 83

pastelGray :: (Ord a, Floating a) => Colour a
pastelGray = sRGB24 207 207 196

pastelGreen :: (Ord a, Floating a) => Colour a
pastelGreen = sRGB24 119 221 119

pastelMagenta :: (Ord a, Floating a) => Colour a
pastelMagenta = sRGB24 244 154 194

pastelOrange :: (Ord a, Floating a) => Colour a
pastelOrange = sRGB24 255 179 71

pastelPink :: (Ord a, Floating a) => Colour a
pastelPink = sRGB24 222 165 164

pastelPurple :: (Ord a, Floating a) => Colour a
pastelPurple = sRGB24 179 158 181

pastelRed :: (Ord a, Floating a) => Colour a
pastelRed = sRGB24 255 105 97

pastelViolet :: (Ord a, Floating a) => Colour a
pastelViolet = sRGB24 203 153 201

pastelYellow :: (Ord a, Floating a) => Colour a
pastelYellow = sRGB24 253 253 150

patriarch :: (Ord a, Floating a) => Colour a
patriarch = sRGB24 128 0 128

payneSGrey :: (Ord a, Floating a) => Colour a
payneSGrey = sRGB24 83 104 120

peach :: (Ord a, Floating a) => Colour a
peach = sRGB24 255 229 180

peachCrayola :: (Ord a, Floating a) => Colour a
peachCrayola = sRGB24 255 203 164

peachOrange :: (Ord a, Floating a) => Colour a
peachOrange = sRGB24 255 204 153

peachPuff :: (Ord a, Floating a) => Colour a
peachPuff = sRGB24 255 218 185

peachYellow :: (Ord a, Floating a) => Colour a
peachYellow = sRGB24 250 223 173

pear :: (Ord a, Floating a) => Colour a
pear = sRGB24 209 226 49

pearl :: (Ord a, Floating a) => Colour a
pearl = sRGB24 234 224 200

pearlAqua :: (Ord a, Floating a) => Colour a
pearlAqua = sRGB24 136 216 192

pearlyPurple :: (Ord a, Floating a) => Colour a
pearlyPurple = sRGB24 183 104 162

peridot :: (Ord a, Floating a) => Colour a
peridot = sRGB24 230 226 0

periwinkle :: (Ord a, Floating a) => Colour a
periwinkle = sRGB24 204 204 255

persianBlue :: (Ord a, Floating a) => Colour a
persianBlue = sRGB24 28 57 187

persianGreen :: (Ord a, Floating a) => Colour a
persianGreen = sRGB24 0 166 147

persianIndigo :: (Ord a, Floating a) => Colour a
persianIndigo = sRGB24 50 18 122

persianOrange :: (Ord a, Floating a) => Colour a
persianOrange = sRGB24 217 144 88

persianPink :: (Ord a, Floating a) => Colour a
persianPink = sRGB24 247 127 190

persianPlum :: (Ord a, Floating a) => Colour a
persianPlum = sRGB24 112 28 28

persianRed :: (Ord a, Floating a) => Colour a
persianRed = sRGB24 204 51 51

persianRose :: (Ord a, Floating a) => Colour a
persianRose = sRGB24 254 40 162

persimmon :: (Ord a, Floating a) => Colour a
persimmon = sRGB24 236 88 0

phlox :: (Ord a, Floating a) => Colour a
phlox = sRGB24 223 0 255

phthaloBlue :: (Ord a, Floating a) => Colour a
phthaloBlue = sRGB24 0 15 137

phthaloGreen :: (Ord a, Floating a) => Colour a
phthaloGreen = sRGB24 18 53 36

piggyPink :: (Ord a, Floating a) => Colour a
piggyPink = sRGB24 253 221 230

pineGreen :: (Ord a, Floating a) => Colour a
pineGreen = sRGB24 1 121 111

pinkLace :: (Ord a, Floating a) => Colour a
pinkLace = sRGB24 255 221 244

pinkOrange :: (Ord a, Floating a) => Colour a
pinkOrange = sRGB24 255 153 102

pinkPearl :: (Ord a, Floating a) => Colour a
pinkPearl = sRGB24 231 172 207

pinkSherbet :: (Ord a, Floating a) => Colour a
pinkSherbet = sRGB24 247 143 167

pistachio :: (Ord a, Floating a) => Colour a
pistachio = sRGB24 147 197 114

platinum :: (Ord a, Floating a) => Colour a
platinum = sRGB24 229 228 226

plumTraditional :: (Ord a, Floating a) => Colour a
plumTraditional = sRGB24 142 69 133

plumWeb :: (Ord a, Floating a) => Colour a
plumWeb = sRGB24 221 160 221

portlandOrange :: (Ord a, Floating a) => Colour a
portlandOrange = sRGB24 255 90 54

powderBlueWeb :: (Ord a, Floating a) => Colour a
powderBlueWeb = sRGB24 176 224 230

princetonOrange :: (Ord a, Floating a) => Colour a
princetonOrange = sRGB24 255 143 0

prune :: (Ord a, Floating a) => Colour a
prune = sRGB24 112 28 28

prussianBlue :: (Ord a, Floating a) => Colour a
prussianBlue = sRGB24 0 49 83

psychedelicPurple :: (Ord a, Floating a) => Colour a
psychedelicPurple = sRGB24 223 0 255

puce :: (Ord a, Floating a) => Colour a
puce = sRGB24 204 136 153

pumpkin :: (Ord a, Floating a) => Colour a
pumpkin = sRGB24 255 117 24

purpleHeart :: (Ord a, Floating a) => Colour a
purpleHeart = sRGB24 105 53 156

purpleHtmlCss :: (Ord a, Floating a) => Colour a
purpleHtmlCss = sRGB24 128 0 128

purpleMountainMajesty :: (Ord a, Floating a) => Colour a
purpleMountainMajesty = sRGB24 150 120 182

purpleMunsell :: (Ord a, Floating a) => Colour a
purpleMunsell = sRGB24 159 0 197

purplePizzazz :: (Ord a, Floating a) => Colour a
purplePizzazz = sRGB24 254 78 218

purpleTaupe :: (Ord a, Floating a) => Colour a
purpleTaupe = sRGB24 80 64 77

purpleX11 :: (Ord a, Floating a) => Colour a
purpleX11 = sRGB24 160 32 240

quartz :: (Ord a, Floating a) => Colour a
quartz = sRGB24 81 72 79

rackley :: (Ord a, Floating a) => Colour a
rackley = sRGB24 93 138 168

radicalRed :: (Ord a, Floating a) => Colour a
radicalRed = sRGB24 255 53 94

rajah :: (Ord a, Floating a) => Colour a
rajah = sRGB24 251 171 96

raspberry :: (Ord a, Floating a) => Colour a
raspberry = sRGB24 227 11 93

raspberryGlace :: (Ord a, Floating a) => Colour a
raspberryGlace = sRGB24 145 95 109

raspberryPink :: (Ord a, Floating a) => Colour a
raspberryPink = sRGB24 226 80 152

raspberryRose :: (Ord a, Floating a) => Colour a
raspberryRose = sRGB24 179 68 108

rawUmber :: (Ord a, Floating a) => Colour a
rawUmber = sRGB24 130 102 68

razzleDazzleRose :: (Ord a, Floating a) => Colour a
razzleDazzleRose = sRGB24 255 51 204

razzmatazz :: (Ord a, Floating a) => Colour a
razzmatazz = sRGB24 227 37 107

redBrown :: (Ord a, Floating a) => Colour a
redBrown = sRGB24 165 42 42

redDevil :: (Ord a, Floating a) => Colour a
redDevil = sRGB24 134 1 17

redMunsell :: (Ord a, Floating a) => Colour a
redMunsell = sRGB24 242 0 60

redNcs :: (Ord a, Floating a) => Colour a
redNcs = sRGB24 196 2 51

redOrange :: (Ord a, Floating a) => Colour a
redOrange = sRGB24 255 83 73

redPigment :: (Ord a, Floating a) => Colour a
redPigment = sRGB24 237 28 36

redRyb :: (Ord a, Floating a) => Colour a
redRyb = sRGB24 254 39 18

redViolet :: (Ord a, Floating a) => Colour a
redViolet = sRGB24 199 21 133

redwood :: (Ord a, Floating a) => Colour a
redwood = sRGB24 171 78 82

regalia :: (Ord a, Floating a) => Colour a
regalia = sRGB24 82 45 128

resolutionBlue :: (Ord a, Floating a) => Colour a
resolutionBlue = sRGB24 0 35 135

richBlack :: (Ord a, Floating a) => Colour a
richBlack = sRGB24 0 64 64

richBrilliantLavender :: (Ord a, Floating a) => Colour a
richBrilliantLavender = sRGB24 241 167 254

richCarmine :: (Ord a, Floating a) => Colour a
richCarmine = sRGB24 215 0 64

richElectricBlue :: (Ord a, Floating a) => Colour a
richElectricBlue = sRGB24 8 146 208

richLavender :: (Ord a, Floating a) => Colour a
richLavender = sRGB24 167 107 207

richLilac :: (Ord a, Floating a) => Colour a
richLilac = sRGB24 182 102 210

richMaroon :: (Ord a, Floating a) => Colour a
richMaroon = sRGB24 176 48 96

rifleGreen :: (Ord a, Floating a) => Colour a
rifleGreen = sRGB24 65 72 51

robinEggBlue :: (Ord a, Floating a) => Colour a
robinEggBlue = sRGB24 0 204 204

rose :: (Ord a, Floating a) => Colour a
rose = sRGB24 255 0 127

roseBonbon :: (Ord a, Floating a) => Colour a
roseBonbon = sRGB24 249 66 158

roseEbony :: (Ord a, Floating a) => Colour a
roseEbony = sRGB24 103 72 70

roseGold :: (Ord a, Floating a) => Colour a
roseGold = sRGB24 183 110 121

roseMadder :: (Ord a, Floating a) => Colour a
roseMadder = sRGB24 227 38 54

rosePink :: (Ord a, Floating a) => Colour a
rosePink = sRGB24 255 102 204

roseQuartz :: (Ord a, Floating a) => Colour a
roseQuartz = sRGB24 170 152 169

roseTaupe :: (Ord a, Floating a) => Colour a
roseTaupe = sRGB24 144 93 93

roseVale :: (Ord a, Floating a) => Colour a
roseVale = sRGB24 171 78 82

rosewood :: (Ord a, Floating a) => Colour a
rosewood = sRGB24 101 0 11

rossoCorsa :: (Ord a, Floating a) => Colour a
rossoCorsa = sRGB24 212 0 0

rosyBrown :: (Ord a, Floating a) => Colour a
rosyBrown = sRGB24 188 143 143

royalAzure :: (Ord a, Floating a) => Colour a
royalAzure = sRGB24 0 56 168

royalBlueTraditional :: (Ord a, Floating a) => Colour a
royalBlueTraditional = sRGB24 0 35 102

royalBlueWeb :: (Ord a, Floating a) => Colour a
royalBlueWeb = sRGB24 65 105 225

royalFuchsia :: (Ord a, Floating a) => Colour a
royalFuchsia = sRGB24 202 44 146

royalPurple :: (Ord a, Floating a) => Colour a
royalPurple = sRGB24 120 81 169

royalYellow :: (Ord a, Floating a) => Colour a
royalYellow = sRGB24 250 218 94

rubineRed :: (Ord a, Floating a) => Colour a
rubineRed = sRGB24 209 0 86

ruby :: (Ord a, Floating a) => Colour a
ruby = sRGB24 224 17 95

rubyRed :: (Ord a, Floating a) => Colour a
rubyRed = sRGB24 155 17 30

ruddy :: (Ord a, Floating a) => Colour a
ruddy = sRGB24 255 0 40

ruddyBrown :: (Ord a, Floating a) => Colour a
ruddyBrown = sRGB24 187 101 40

ruddyPink :: (Ord a, Floating a) => Colour a
ruddyPink = sRGB24 225 142 150

rufous :: (Ord a, Floating a) => Colour a
rufous = sRGB24 168 28 7

russet :: (Ord a, Floating a) => Colour a
russet = sRGB24 128 70 27

rust :: (Ord a, Floating a) => Colour a
rust = sRGB24 183 65 14

rustyRed :: (Ord a, Floating a) => Colour a
rustyRed = sRGB24 218 44 67

sacramentoStateGreen :: (Ord a, Floating a) => Colour a
sacramentoStateGreen = sRGB24 0 86 63

saddleBrown :: (Ord a, Floating a) => Colour a
saddleBrown = sRGB24 139 69 19

safetyOrangeBlazeOrange :: (Ord a, Floating a) => Colour a
safetyOrangeBlazeOrange = sRGB24 255 103 0

saffron :: (Ord a, Floating a) => Colour a
saffron = sRGB24 244 196 48

salmonPink :: (Ord a, Floating a) => Colour a
salmonPink = sRGB24 255 145 164

sand :: (Ord a, Floating a) => Colour a
sand = sRGB24 194 178 128

sandDune :: (Ord a, Floating a) => Colour a
sandDune = sRGB24 150 113 23

sandstorm :: (Ord a, Floating a) => Colour a
sandstorm = sRGB24 236 213 64

sandyBrown :: (Ord a, Floating a) => Colour a
sandyBrown = sRGB24 244 164 96

sandyTaupe :: (Ord a, Floating a) => Colour a
sandyTaupe = sRGB24 150 113 23

sangria :: (Ord a, Floating a) => Colour a
sangria = sRGB24 146 0 10

sapGreen :: (Ord a, Floating a) => Colour a
sapGreen = sRGB24 80 125 42

sapphire :: (Ord a, Floating a) => Colour a
sapphire = sRGB24 15 82 186

sapphireBlue :: (Ord a, Floating a) => Colour a
sapphireBlue = sRGB24 0 103 165

satinSheenGold :: (Ord a, Floating a) => Colour a
satinSheenGold = sRGB24 203 161 53

scarlet :: (Ord a, Floating a) => Colour a
scarlet = sRGB24 255 36 0

scarletCrayola :: (Ord a, Floating a) => Colour a
scarletCrayola = sRGB24 253 14 53

schoolBusYellow :: (Ord a, Floating a) => Colour a
schoolBusYellow = sRGB24 255 216 0

screaminGreen :: (Ord a, Floating a) => Colour a
screaminGreen = sRGB24 118 255 122

seaBlue :: (Ord a, Floating a) => Colour a
seaBlue = sRGB24 0 105 148

seaGreen :: (Ord a, Floating a) => Colour a
seaGreen = sRGB24 46 139 87

sealBrown :: (Ord a, Floating a) => Colour a
sealBrown = sRGB24 50 20 20

selectiveYellow :: (Ord a, Floating a) => Colour a
selectiveYellow = sRGB24 255 186 0

sepia :: (Ord a, Floating a) => Colour a
sepia = sRGB24 112 66 20

shadow :: (Ord a, Floating a) => Colour a
shadow = sRGB24 138 121 93

shamrockGreen :: (Ord a, Floating a) => Colour a
shamrockGreen = sRGB24 0 158 96

shockingPink :: (Ord a, Floating a) => Colour a
shockingPink = sRGB24 252 15 192

shockingPinkCrayola :: (Ord a, Floating a) => Colour a
shockingPinkCrayola = sRGB24 255 111 255

sinopia :: (Ord a, Floating a) => Colour a
sinopia = sRGB24 203 65 11

skobeloff :: (Ord a, Floating a) => Colour a
skobeloff = sRGB24 0 116 116

skyBlue :: (Ord a, Floating a) => Colour a
skyBlue = sRGB24 135 206 235

skyMagenta :: (Ord a, Floating a) => Colour a
skyMagenta = sRGB24 207 113 175

slateBlue :: (Ord a, Floating a) => Colour a
slateBlue = sRGB24 106 90 205

slateGray :: (Ord a, Floating a) => Colour a
slateGray = sRGB24 112 128 144

smaltDarkPowderBlue :: (Ord a, Floating a) => Colour a
smaltDarkPowderBlue = sRGB24 0 51 153

smokeyTopaz :: (Ord a, Floating a) => Colour a
smokeyTopaz = sRGB24 147 61 65

smokyBlack :: (Ord a, Floating a) => Colour a
smokyBlack = sRGB24 16 12 8

spiroDiscoBall :: (Ord a, Floating a) => Colour a
spiroDiscoBall = sRGB24 15 192 252

springBud :: (Ord a, Floating a) => Colour a
springBud = sRGB24 167 252 0

springGreen :: (Ord a, Floating a) => Colour a
springGreen = sRGB24 0 255 127

stPatrickSBlue :: (Ord a, Floating a) => Colour a
stPatrickSBlue = sRGB24 35 41 122

steelBlue :: (Ord a, Floating a) => Colour a
steelBlue = sRGB24 70 130 180

stilDeGrainYellow :: (Ord a, Floating a) => Colour a
stilDeGrainYellow = sRGB24 250 218 94

stizza :: (Ord a, Floating a) => Colour a
stizza = sRGB24 153 0 0

stormcloud :: (Ord a, Floating a) => Colour a
stormcloud = sRGB24 79 102 106

straw :: (Ord a, Floating a) => Colour a
straw = sRGB24 228 217 111

sunglow :: (Ord a, Floating a) => Colour a
sunglow = sRGB24 255 204 51

sunset :: (Ord a, Floating a) => Colour a
sunset = sRGB24 250 214 165

tangelo :: (Ord a, Floating a) => Colour a
tangelo = sRGB24 249 77 0

tangerine :: (Ord a, Floating a) => Colour a
tangerine = sRGB24 242 133 0

tangerineYellow :: (Ord a, Floating a) => Colour a
tangerineYellow = sRGB24 255 204 0

tangoPink :: (Ord a, Floating a) => Colour a
tangoPink = sRGB24 228 113 122

taupe :: (Ord a, Floating a) => Colour a
taupe = sRGB24 72 60 50

taupeGray :: (Ord a, Floating a) => Colour a
taupeGray = sRGB24 139 133 137

teaGreen :: (Ord a, Floating a) => Colour a
teaGreen = sRGB24 208 240 192

teaRoseOrange :: (Ord a, Floating a) => Colour a
teaRoseOrange = sRGB24 248 131 121

teaRoseRose :: (Ord a, Floating a) => Colour a
teaRoseRose = sRGB24 244 194 194

tealBlue :: (Ord a, Floating a) => Colour a
tealBlue = sRGB24 54 117 136

tealGreen :: (Ord a, Floating a) => Colour a
tealGreen = sRGB24 0 130 127

telemagenta :: (Ord a, Floating a) => Colour a
telemagenta = sRGB24 207 52 118

tennTawny :: (Ord a, Floating a) => Colour a
tennTawny = sRGB24 205 87 0

terraCotta :: (Ord a, Floating a) => Colour a
terraCotta = sRGB24 226 114 91

thulianPink :: (Ord a, Floating a) => Colour a
thulianPink = sRGB24 222 111 161

tickleMePink :: (Ord a, Floating a) => Colour a
tickleMePink = sRGB24 252 137 172

tiffanyBlue :: (Ord a, Floating a) => Colour a
tiffanyBlue = sRGB24 10 186 181

tigerSEye :: (Ord a, Floating a) => Colour a
tigerSEye = sRGB24 224 141 60

timberwolf :: (Ord a, Floating a) => Colour a
timberwolf = sRGB24 219 215 210

titaniumYellow :: (Ord a, Floating a) => Colour a
titaniumYellow = sRGB24 238 230 0

toolbox :: (Ord a, Floating a) => Colour a
toolbox = sRGB24 116 108 192

topaz :: (Ord a, Floating a) => Colour a
topaz = sRGB24 255 200 124

tractorRed :: (Ord a, Floating a) => Colour a
tractorRed = sRGB24 253 14 53

trolleyGrey :: (Ord a, Floating a) => Colour a
trolleyGrey = sRGB24 128 128 128

tropicalRainForest :: (Ord a, Floating a) => Colour a
tropicalRainForest = sRGB24 0 117 94

trueBlue :: (Ord a, Floating a) => Colour a
trueBlue = sRGB24 0 115 207

tuftsBlue :: (Ord a, Floating a) => Colour a
tuftsBlue = sRGB24 65 125 193

tumbleweed :: (Ord a, Floating a) => Colour a
tumbleweed = sRGB24 222 170 136

turkishRose :: (Ord a, Floating a) => Colour a
turkishRose = sRGB24 181 114 129

turquoiseBlue :: (Ord a, Floating a) => Colour a
turquoiseBlue = sRGB24 0 255 239

turquoiseGreen :: (Ord a, Floating a) => Colour a
turquoiseGreen = sRGB24 160 214 180

tuscanRed :: (Ord a, Floating a) => Colour a
tuscanRed = sRGB24 124 72 72

twilightLavender :: (Ord a, Floating a) => Colour a
twilightLavender = sRGB24 138 73 107

tyrianPurple :: (Ord a, Floating a) => Colour a
tyrianPurple = sRGB24 102 2 60

uaBlue :: (Ord a, Floating a) => Colour a
uaBlue = sRGB24 0 51 170

uaRed :: (Ord a, Floating a) => Colour a
uaRed = sRGB24 217 0 76

ube :: (Ord a, Floating a) => Colour a
ube = sRGB24 136 120 195

uclaBlue :: (Ord a, Floating a) => Colour a
uclaBlue = sRGB24 83 104 149

uclaGold :: (Ord a, Floating a) => Colour a
uclaGold = sRGB24 255 179 0

ufoGreen :: (Ord a, Floating a) => Colour a
ufoGreen = sRGB24 60 208 112

ultraPink :: (Ord a, Floating a) => Colour a
ultraPink = sRGB24 255 111 255

ultramarine :: (Ord a, Floating a) => Colour a
ultramarine = sRGB24 18 10 143

ultramarineBlue :: (Ord a, Floating a) => Colour a
ultramarineBlue = sRGB24 65 102 245

umber :: (Ord a, Floating a) => Colour a
umber = sRGB24 99 81 71

unbleachedSilk :: (Ord a, Floating a) => Colour a
unbleachedSilk = sRGB24 255 221 202

unitedNationsBlue :: (Ord a, Floating a) => Colour a
unitedNationsBlue = sRGB24 91 146 229

universityOfCaliforniaGold :: (Ord a, Floating a) => Colour a
universityOfCaliforniaGold = sRGB24 183 135 39

unmellowYellow :: (Ord a, Floating a) => Colour a
unmellowYellow = sRGB24 255 255 102

upForestGreen :: (Ord a, Floating a) => Colour a
upForestGreen = sRGB24 1 68 33

upMaroon :: (Ord a, Floating a) => Colour a
upMaroon = sRGB24 123 17 19

upsdellRed :: (Ord a, Floating a) => Colour a
upsdellRed = sRGB24 174 32 41

urobilin :: (Ord a, Floating a) => Colour a
urobilin = sRGB24 225 173 33

usafaBlue :: (Ord a, Floating a) => Colour a
usafaBlue = sRGB24 0 79 152

uscCardinal :: (Ord a, Floating a) => Colour a
uscCardinal = sRGB24 153 0 0

uscGold :: (Ord a, Floating a) => Colour a
uscGold = sRGB24 255 204 0

utahCrimson :: (Ord a, Floating a) => Colour a
utahCrimson = sRGB24 211 0 63

vanilla :: (Ord a, Floating a) => Colour a
vanilla = sRGB24 243 229 171

vegasGold :: (Ord a, Floating a) => Colour a
vegasGold = sRGB24 197 179 88

venetianRed :: (Ord a, Floating a) => Colour a
venetianRed = sRGB24 200 8 21

verdigris :: (Ord a, Floating a) => Colour a
verdigris = sRGB24 67 179 174

vermilionCinnabar :: (Ord a, Floating a) => Colour a
vermilionCinnabar = sRGB24 227 66 52

vermilionPlochere :: (Ord a, Floating a) => Colour a
vermilionPlochere = sRGB24 217 96 59

veronica :: (Ord a, Floating a) => Colour a
veronica = sRGB24 160 32 240

violetBlue :: (Ord a, Floating a) => Colour a
violetBlue = sRGB24 50 74 178

violetColorWheel :: (Ord a, Floating a) => Colour a
violetColorWheel = sRGB24 127 0 255

violetRyb :: (Ord a, Floating a) => Colour a
violetRyb = sRGB24 134 1 175

violetWeb :: (Ord a, Floating a) => Colour a
violetWeb = sRGB24 238 130 238

viridian :: (Ord a, Floating a) => Colour a
viridian = sRGB24 64 130 109

vividAuburn :: (Ord a, Floating a) => Colour a
vividAuburn = sRGB24 146 39 36

vividBurgundy :: (Ord a, Floating a) => Colour a
vividBurgundy = sRGB24 159 29 53

vividCerise :: (Ord a, Floating a) => Colour a
vividCerise = sRGB24 218 29 129

vividTangerine :: (Ord a, Floating a) => Colour a
vividTangerine = sRGB24 255 160 137

vividViolet :: (Ord a, Floating a) => Colour a
vividViolet = sRGB24 159 0 255

warmBlack :: (Ord a, Floating a) => Colour a
warmBlack = sRGB24 0 66 66

waterspout :: (Ord a, Floating a) => Colour a
waterspout = sRGB24 164 244 249

wenge :: (Ord a, Floating a) => Colour a
wenge = sRGB24 100 84 82

whiteSmoke :: (Ord a, Floating a) => Colour a
whiteSmoke = sRGB24 245 245 245

wildBlueYonder :: (Ord a, Floating a) => Colour a
wildBlueYonder = sRGB24 162 173 208

wildStrawberry :: (Ord a, Floating a) => Colour a
wildStrawberry = sRGB24 255 67 164

wildWatermelon :: (Ord a, Floating a) => Colour a
wildWatermelon = sRGB24 252 108 133

wine :: (Ord a, Floating a) => Colour a
wine = sRGB24 114 47 55

wineDregs :: (Ord a, Floating a) => Colour a
wineDregs = sRGB24 103 49 71

wisteria :: (Ord a, Floating a) => Colour a
wisteria = sRGB24 201 160 220

woodBrown :: (Ord a, Floating a) => Colour a
woodBrown = sRGB24 193 154 107

xanadu :: (Ord a, Floating a) => Colour a
xanadu = sRGB24 115 134 120

yaleBlue :: (Ord a, Floating a) => Colour a
yaleBlue = sRGB24 15 77 146

yellowGreen :: (Ord a, Floating a) => Colour a
yellowGreen = sRGB24 154 205 50

yellowMunsell :: (Ord a, Floating a) => Colour a
yellowMunsell = sRGB24 239 204 0

yellowNcs :: (Ord a, Floating a) => Colour a
yellowNcs = sRGB24 255 211 0

yellowOrange :: (Ord a, Floating a) => Colour a
yellowOrange = sRGB24 255 174 66

yellowProcess :: (Ord a, Floating a) => Colour a
yellowProcess = sRGB24 255 239 0

yellowRyb :: (Ord a, Floating a) => Colour a
yellowRyb = sRGB24 254 254 51

zaffre :: (Ord a, Floating a) => Colour a
zaffre = sRGB24 0 20 168

zinnwalditeBrown :: (Ord a, Floating a) => Colour a
zinnwalditeBrown = sRGB24 44 22 8

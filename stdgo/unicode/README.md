# Module: `stdgo.unicode`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [class Unicode](<#class-unicode>)

  - [`function in_(_r:Int, _ranges:haxe.Rest<stdgo.unicode.RangeTable>):Bool`](<#unicode-function-in_>)

  - [`function isControl(_r:Int):Bool`](<#unicode-function-iscontrol>)

  - [`function isDigit(_r:Int):Bool`](<#unicode-function-isdigit>)

  - [`function isGraphic(_r:Int):Bool`](<#unicode-function-isgraphic>)

  - [`function isLetter(_r:Int):Bool`](<#unicode-function-isletter>)

  - [`function isLower(_r:Int):Bool`](<#unicode-function-islower>)

  - [`function isMark(_r:Int):Bool`](<#unicode-function-ismark>)

  - [`function isNumber(_r:Int):Bool`](<#unicode-function-isnumber>)

  - [`function isOneOf(_ranges:Array<stdgo.unicode.RangeTable>, _r:Int):Bool`](<#unicode-function-isoneof>)

  - [`function isPrint(_r:Int):Bool`](<#unicode-function-isprint>)

  - [`function isPunct(_r:Int):Bool`](<#unicode-function-ispunct>)

  - [`function isSpace(_r:Int):Bool`](<#unicode-function-isspace>)

  - [`function isSymbol(_r:Int):Bool`](<#unicode-function-issymbol>)

  - [`function isTitle(_r:Int):Bool`](<#unicode-function-istitle>)

  - [`function isUpper(_r:Int):Bool`](<#unicode-function-isupper>)

  - [`function is_(_rangeTab:stdgo.unicode.RangeTable, _r:Int):Bool`](<#unicode-function-is_>)

  - [`function simpleFold(_r:Int):Int`](<#unicode-function-simplefold>)

  - [`function to(__case:Int, _r:Int):Int`](<#unicode-function-to>)

  - [`function toLower(_r:Int):Int`](<#unicode-function-tolower>)

  - [`function toTitle(_r:Int):Int`](<#unicode-function-totitle>)

  - [`function toUpper(_r:Int):Int`](<#unicode-function-toupper>)

- [typedef SpecialCase](<#typedef-specialcase>)

- [typedef T\_d](<#typedef-t_d>)

- [abstract RangeTable](<#abstract-rangetable>)

- [abstract Range16](<#abstract-range16>)

- [abstract Range32](<#abstract-range32>)

- [abstract CaseRange](<#abstract-caserange>)

- [abstract T\_foldPair](<#abstract-t_foldpair>)

# Constants


```haxe
import stdgo.unicode.Unicode
```


```haxe
final lowerCase:stdgo.GoUInt64 = stdgo._internal.unicode.Unicode.lowerCase
```


```haxe
final maxASCII:Int = stdgo._internal.unicode.Unicode.maxASCII
```


```haxe
final maxCase:stdgo.GoUInt64 = stdgo._internal.unicode.Unicode.maxCase
```


```haxe
final maxLatin1:Int = stdgo._internal.unicode.Unicode.maxLatin1
```


```haxe
final maxRune:Int = stdgo._internal.unicode.Unicode.maxRune
```


```haxe
final replacementChar:Int = stdgo._internal.unicode.Unicode.replacementChar
```


```haxe
final titleCase:stdgo.GoUInt64 = stdgo._internal.unicode.Unicode.titleCase
```


```haxe
final upperCase:haxe.UInt64 = stdgo._internal.unicode.Unicode.upperCase
```


```haxe
final upperLower:Int = stdgo._internal.unicode.Unicode.upperLower
```


```haxe
final version:String = stdgo._internal.unicode.Unicode.version
```


# Variables


```haxe
import stdgo.unicode.Unicode
```


```haxe
var adlam:stdgo._internal.unicode.RangeTable
```


```haxe
var ahom:stdgo._internal.unicode.RangeTable
```


```haxe
var anatolian_Hieroglyphs:stdgo._internal.unicode.RangeTable
```


```haxe
var arabic:stdgo._internal.unicode.RangeTable
```


```haxe
var armenian:stdgo._internal.unicode.RangeTable
```


```haxe
var ascii_Hex_Digit:stdgo._internal.unicode.RangeTable
```


```haxe
var avestan:stdgo._internal.unicode.RangeTable
```


```haxe
var azeriCase:stdgo._internal.unicode.SpecialCase
```


```haxe
var balinese:stdgo._internal.unicode.RangeTable
```


```haxe
var bamum:stdgo._internal.unicode.RangeTable
```


```haxe
var bassa_Vah:stdgo._internal.unicode.RangeTable
```


```haxe
var batak:stdgo._internal.unicode.RangeTable
```


```haxe
var bengali:stdgo._internal.unicode.RangeTable
```


```haxe
var bhaiksuki:stdgo._internal.unicode.RangeTable
```


```haxe
var bidi_Control:stdgo._internal.unicode.RangeTable
```


```haxe
var bopomofo:stdgo._internal.unicode.RangeTable
```


```haxe
var brahmi:stdgo._internal.unicode.RangeTable
```


```haxe
var braille:stdgo._internal.unicode.RangeTable
```


```haxe
var buginese:stdgo._internal.unicode.RangeTable
```


```haxe
var buhid:stdgo._internal.unicode.RangeTable
```


```haxe
var c:stdgo._internal.unicode.RangeTable
```


```haxe
var canadian_Aboriginal:stdgo._internal.unicode.RangeTable
```


```haxe
var carian:stdgo._internal.unicode.RangeTable
```


```haxe
var caseRanges:Array<stdgo._internal.unicode.CaseRange>
```


```haxe
var categories:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


```haxe
var caucasian_Albanian:stdgo._internal.unicode.RangeTable
```


```haxe
var cc:stdgo._internal.unicode.RangeTable
```


```haxe
var cf:stdgo._internal.unicode.RangeTable
```


```haxe
var chakma:stdgo._internal.unicode.RangeTable
```


```haxe
var cham:stdgo._internal.unicode.RangeTable
```


```haxe
var cherokee:stdgo._internal.unicode.RangeTable
```


```haxe
var chorasmian:stdgo._internal.unicode.RangeTable
```


```haxe
var co:stdgo._internal.unicode.RangeTable
```


```haxe
var common:stdgo._internal.unicode.RangeTable
```


```haxe
var coptic:stdgo._internal.unicode.RangeTable
```


```haxe
var cs:stdgo._internal.unicode.RangeTable
```


```haxe
var cuneiform:stdgo._internal.unicode.RangeTable
```


```haxe
var cypriot:stdgo._internal.unicode.RangeTable
```


```haxe
var cypro_Minoan:stdgo._internal.unicode.RangeTable
```


```haxe
var cyrillic:stdgo._internal.unicode.RangeTable
```


```haxe
var dash:stdgo._internal.unicode.RangeTable
```


```haxe
var deprecated:stdgo._internal.unicode.RangeTable
```


```haxe
var deseret:stdgo._internal.unicode.RangeTable
```


```haxe
var devanagari:stdgo._internal.unicode.RangeTable
```


```haxe
var diacritic:stdgo._internal.unicode.RangeTable
```


```haxe
var digit:stdgo._internal.unicode.RangeTable
```


```haxe
var dives_Akuru:stdgo._internal.unicode.RangeTable
```


```haxe
var dogra:stdgo._internal.unicode.RangeTable
```


```haxe
var duployan:stdgo._internal.unicode.RangeTable
```


```haxe
var egyptian_Hieroglyphs:stdgo._internal.unicode.RangeTable
```


```haxe
var elbasan:stdgo._internal.unicode.RangeTable
```


```haxe
var elymaic:stdgo._internal.unicode.RangeTable
```


```haxe
var ethiopic:stdgo._internal.unicode.RangeTable
```


```haxe
var extender:stdgo._internal.unicode.RangeTable
```


```haxe
var foldCategory:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


```haxe
var foldScript:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


```haxe
var georgian:stdgo._internal.unicode.RangeTable
```


```haxe
var glagolitic:stdgo._internal.unicode.RangeTable
```


```haxe
var gothic:stdgo._internal.unicode.RangeTable
```


```haxe
var grantha:stdgo._internal.unicode.RangeTable
```


```haxe
var graphicRanges:Array<stdgo._internal.unicode.RangeTable>
```


```haxe
var greek:stdgo._internal.unicode.RangeTable
```


```haxe
var gujarati:stdgo._internal.unicode.RangeTable
```


```haxe
var gunjala_Gondi:stdgo._internal.unicode.RangeTable
```


```haxe
var gurmukhi:stdgo._internal.unicode.RangeTable
```


```haxe
var han:stdgo._internal.unicode.RangeTable
```


```haxe
var hangul:stdgo._internal.unicode.RangeTable
```


```haxe
var hanifi_Rohingya:stdgo._internal.unicode.RangeTable
```


```haxe
var hanunoo:stdgo._internal.unicode.RangeTable
```


```haxe
var hatran:stdgo._internal.unicode.RangeTable
```


```haxe
var hebrew:stdgo._internal.unicode.RangeTable
```


```haxe
var hex_Digit:stdgo._internal.unicode.RangeTable
```


```haxe
var hiragana:stdgo._internal.unicode.RangeTable
```


```haxe
var hyphen:stdgo._internal.unicode.RangeTable
```


```haxe
var ideographic:stdgo._internal.unicode.RangeTable
```


```haxe
var ids_Binary_Operator:stdgo._internal.unicode.RangeTable
```


```haxe
var ids_Trinary_Operator:stdgo._internal.unicode.RangeTable
```


```haxe
var imperial_Aramaic:stdgo._internal.unicode.RangeTable
```


```haxe
var inherited:stdgo._internal.unicode.RangeTable
```


```haxe
var inscriptional_Pahlavi:stdgo._internal.unicode.RangeTable
```


```haxe
var inscriptional_Parthian:stdgo._internal.unicode.RangeTable
```


```haxe
var javanese:stdgo._internal.unicode.RangeTable
```


```haxe
var join_Control:stdgo._internal.unicode.RangeTable
```


```haxe
var kaithi:stdgo._internal.unicode.RangeTable
```


```haxe
var kannada:stdgo._internal.unicode.RangeTable
```


```haxe
var katakana:stdgo._internal.unicode.RangeTable
```


```haxe
var kawi:stdgo._internal.unicode.RangeTable
```


```haxe
var kayah_Li:stdgo._internal.unicode.RangeTable
```


```haxe
var kharoshthi:stdgo._internal.unicode.RangeTable
```


```haxe
var khitan_Small_Script:stdgo._internal.unicode.RangeTable
```


```haxe
var khmer:stdgo._internal.unicode.RangeTable
```


```haxe
var khojki:stdgo._internal.unicode.RangeTable
```


```haxe
var khudawadi:stdgo._internal.unicode.RangeTable
```


```haxe
var l:stdgo._internal.unicode.RangeTable
```


```haxe
var lao:stdgo._internal.unicode.RangeTable
```


```haxe
var latin:stdgo._internal.unicode.RangeTable
```


```haxe
var lepcha:stdgo._internal.unicode.RangeTable
```


```haxe
var letter:stdgo._internal.unicode.RangeTable
```


```haxe
var limbu:stdgo._internal.unicode.RangeTable
```


```haxe
var linear_A:stdgo._internal.unicode.RangeTable
```


```haxe
var linear_B:stdgo._internal.unicode.RangeTable
```


```haxe
var lisu:stdgo._internal.unicode.RangeTable
```


```haxe
var ll:stdgo._internal.unicode.RangeTable
```


```haxe
var lm:stdgo._internal.unicode.RangeTable
```


```haxe
var lo:stdgo._internal.unicode.RangeTable
```


```haxe
var logical_Order_Exception:stdgo._internal.unicode.RangeTable
```


```haxe
var lower:stdgo._internal.unicode.RangeTable
```


```haxe
var lt:stdgo._internal.unicode.RangeTable
```


```haxe
var lu:stdgo._internal.unicode.RangeTable
```


```haxe
var lycian:stdgo._internal.unicode.RangeTable
```


```haxe
var lydian:stdgo._internal.unicode.RangeTable
```


```haxe
var m:stdgo._internal.unicode.RangeTable
```


```haxe
var mahajani:stdgo._internal.unicode.RangeTable
```


```haxe
var makasar:stdgo._internal.unicode.RangeTable
```


```haxe
var malayalam:stdgo._internal.unicode.RangeTable
```


```haxe
var mandaic:stdgo._internal.unicode.RangeTable
```


```haxe
var manichaean:stdgo._internal.unicode.RangeTable
```


```haxe
var marchen:stdgo._internal.unicode.RangeTable
```


```haxe
var mark:stdgo._internal.unicode.RangeTable
```


```haxe
var masaram_Gondi:stdgo._internal.unicode.RangeTable
```


```haxe
var mc:stdgo._internal.unicode.RangeTable
```


```haxe
var me:stdgo._internal.unicode.RangeTable
```


```haxe
var medefaidrin:stdgo._internal.unicode.RangeTable
```


```haxe
var meetei_Mayek:stdgo._internal.unicode.RangeTable
```


```haxe
var mende_Kikakui:stdgo._internal.unicode.RangeTable
```


```haxe
var meroitic_Cursive:stdgo._internal.unicode.RangeTable
```


```haxe
var meroitic_Hieroglyphs:stdgo._internal.unicode.RangeTable
```


```haxe
var miao:stdgo._internal.unicode.RangeTable
```


```haxe
var mn:stdgo._internal.unicode.RangeTable
```


```haxe
var modi:stdgo._internal.unicode.RangeTable
```


```haxe
var mongolian:stdgo._internal.unicode.RangeTable
```


```haxe
var mro:stdgo._internal.unicode.RangeTable
```


```haxe
var multani:stdgo._internal.unicode.RangeTable
```


```haxe
var myanmar:stdgo._internal.unicode.RangeTable
```


```haxe
var n:stdgo._internal.unicode.RangeTable
```


```haxe
var nabataean:stdgo._internal.unicode.RangeTable
```


```haxe
var nag_Mundari:stdgo._internal.unicode.RangeTable
```


```haxe
var nandinagari:stdgo._internal.unicode.RangeTable
```


```haxe
var nd:stdgo._internal.unicode.RangeTable
```


```haxe
var new_Tai_Lue:stdgo._internal.unicode.RangeTable
```


```haxe
var newa:stdgo._internal.unicode.RangeTable
```


```haxe
var nko:stdgo._internal.unicode.RangeTable
```


```haxe
var nl:stdgo._internal.unicode.RangeTable
```


```haxe
var no:stdgo._internal.unicode.RangeTable
```


```haxe
var noncharacter_Code_Point:stdgo._internal.unicode.RangeTable
```


```haxe
var number:stdgo._internal.unicode.RangeTable
```


```haxe
var nushu:stdgo._internal.unicode.RangeTable
```


```haxe
var nyiakeng_Puachue_Hmong:stdgo._internal.unicode.RangeTable
```


```haxe
var ogham:stdgo._internal.unicode.RangeTable
```


```haxe
var ol_Chiki:stdgo._internal.unicode.RangeTable
```


```haxe
var old_Hungarian:stdgo._internal.unicode.RangeTable
```


```haxe
var old_Italic:stdgo._internal.unicode.RangeTable
```


```haxe
var old_North_Arabian:stdgo._internal.unicode.RangeTable
```


```haxe
var old_Permic:stdgo._internal.unicode.RangeTable
```


```haxe
var old_Persian:stdgo._internal.unicode.RangeTable
```


```haxe
var old_Sogdian:stdgo._internal.unicode.RangeTable
```


```haxe
var old_South_Arabian:stdgo._internal.unicode.RangeTable
```


```haxe
var old_Turkic:stdgo._internal.unicode.RangeTable
```


```haxe
var old_Uyghur:stdgo._internal.unicode.RangeTable
```


```haxe
var oriya:stdgo._internal.unicode.RangeTable
```


```haxe
var osage:stdgo._internal.unicode.RangeTable
```


```haxe
var osmanya:stdgo._internal.unicode.RangeTable
```


```haxe
var other:stdgo._internal.unicode.RangeTable
```


```haxe
var other_Alphabetic:stdgo._internal.unicode.RangeTable
```


```haxe
var other_Default_Ignorable_Code_Point:stdgo._internal.unicode.RangeTable
```


```haxe
var other_Grapheme_Extend:stdgo._internal.unicode.RangeTable
```


```haxe
var other_ID_Continue:stdgo._internal.unicode.RangeTable
```


```haxe
var other_ID_Start:stdgo._internal.unicode.RangeTable
```


```haxe
var other_Lowercase:stdgo._internal.unicode.RangeTable
```


```haxe
var other_Math:stdgo._internal.unicode.RangeTable
```


```haxe
var other_Uppercase:stdgo._internal.unicode.RangeTable
```


```haxe
var p:stdgo._internal.unicode.RangeTable
```


```haxe
var pahawh_Hmong:stdgo._internal.unicode.RangeTable
```


```haxe
var palmyrene:stdgo._internal.unicode.RangeTable
```


```haxe
var pattern_Syntax:stdgo._internal.unicode.RangeTable
```


```haxe
var pattern_White_Space:stdgo._internal.unicode.RangeTable
```


```haxe
var pau_Cin_Hau:stdgo._internal.unicode.RangeTable
```


```haxe
var pc:stdgo._internal.unicode.RangeTable
```


```haxe
var pd:stdgo._internal.unicode.RangeTable
```


```haxe
var pe:stdgo._internal.unicode.RangeTable
```


```haxe
var pf:stdgo._internal.unicode.RangeTable
```


```haxe
var phags_Pa:stdgo._internal.unicode.RangeTable
```


```haxe
var phoenician:stdgo._internal.unicode.RangeTable
```


```haxe
var pi:stdgo._internal.unicode.RangeTable
```


```haxe
var po:stdgo._internal.unicode.RangeTable
```


```haxe
var prepended_Concatenation_Mark:stdgo._internal.unicode.RangeTable
```


```haxe
var printRanges:Array<stdgo._internal.unicode.RangeTable>
```


```haxe
var properties:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


```haxe
var ps:stdgo._internal.unicode.RangeTable
```


```haxe
var psalter_Pahlavi:stdgo._internal.unicode.RangeTable
```


```haxe
var punct:stdgo._internal.unicode.RangeTable
```


```haxe
var quotation_Mark:stdgo._internal.unicode.RangeTable
```


```haxe
var radical:stdgo._internal.unicode.RangeTable
```


```haxe
var regional_Indicator:stdgo._internal.unicode.RangeTable
```


```haxe
var rejang:stdgo._internal.unicode.RangeTable
```


```haxe
var runic:stdgo._internal.unicode.RangeTable
```


```haxe
var s:stdgo._internal.unicode.RangeTable
```


```haxe
var samaritan:stdgo._internal.unicode.RangeTable
```


```haxe
var saurashtra:stdgo._internal.unicode.RangeTable
```


```haxe
var sc:stdgo._internal.unicode.RangeTable
```


```haxe
var scripts:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


```haxe
var sentence_Terminal:stdgo._internal.unicode.RangeTable
```


```haxe
var sharada:stdgo._internal.unicode.RangeTable
```


```haxe
var shavian:stdgo._internal.unicode.RangeTable
```


```haxe
var siddham:stdgo._internal.unicode.RangeTable
```


```haxe
var signWriting:stdgo._internal.unicode.RangeTable
```


```haxe
var sinhala:stdgo._internal.unicode.RangeTable
```


```haxe
var sk:stdgo._internal.unicode.RangeTable
```


```haxe
var sm:stdgo._internal.unicode.RangeTable
```


```haxe
var so:stdgo._internal.unicode.RangeTable
```


```haxe
var soft_Dotted:stdgo._internal.unicode.RangeTable
```


```haxe
var sogdian:stdgo._internal.unicode.RangeTable
```


```haxe
var sora_Sompeng:stdgo._internal.unicode.RangeTable
```


```haxe
var soyombo:stdgo._internal.unicode.RangeTable
```


```haxe
var space:stdgo._internal.unicode.RangeTable
```


```haxe
var sterm:stdgo._internal.unicode.RangeTable
```


```haxe
var sundanese:stdgo._internal.unicode.RangeTable
```


```haxe
var syloti_Nagri:stdgo._internal.unicode.RangeTable
```


```haxe
var symbol:stdgo._internal.unicode.RangeTable
```


```haxe
var syriac:stdgo._internal.unicode.RangeTable
```


```haxe
var tagalog:stdgo._internal.unicode.RangeTable
```


```haxe
var tagbanwa:stdgo._internal.unicode.RangeTable
```


```haxe
var tai_Le:stdgo._internal.unicode.RangeTable
```


```haxe
var tai_Tham:stdgo._internal.unicode.RangeTable
```


```haxe
var tai_Viet:stdgo._internal.unicode.RangeTable
```


```haxe
var takri:stdgo._internal.unicode.RangeTable
```


```haxe
var tamil:stdgo._internal.unicode.RangeTable
```


```haxe
var tangsa:stdgo._internal.unicode.RangeTable
```


```haxe
var tangut:stdgo._internal.unicode.RangeTable
```


```haxe
var telugu:stdgo._internal.unicode.RangeTable
```


```haxe
var terminal_Punctuation:stdgo._internal.unicode.RangeTable
```


```haxe
var thaana:stdgo._internal.unicode.RangeTable
```


```haxe
var thai:stdgo._internal.unicode.RangeTable
```


```haxe
var tibetan:stdgo._internal.unicode.RangeTable
```


```haxe
var tifinagh:stdgo._internal.unicode.RangeTable
```


```haxe
var tirhuta:stdgo._internal.unicode.RangeTable
```


```haxe
var title:stdgo._internal.unicode.RangeTable
```


```haxe
var toto:stdgo._internal.unicode.RangeTable
```


```haxe
var turkishCase:stdgo._internal.unicode.SpecialCase
```


```haxe
var ugaritic:stdgo._internal.unicode.RangeTable
```


```haxe
var unified_Ideograph:stdgo._internal.unicode.RangeTable
```


```haxe
var upper:stdgo._internal.unicode.RangeTable
```


```haxe
var vai:stdgo._internal.unicode.RangeTable
```


```haxe
var variation_Selector:stdgo._internal.unicode.RangeTable
```


```haxe
var vithkuqi:stdgo._internal.unicode.RangeTable
```


```haxe
var wancho:stdgo._internal.unicode.RangeTable
```


```haxe
var warang_Citi:stdgo._internal.unicode.RangeTable
```


```haxe
var white_Space:stdgo._internal.unicode.RangeTable
```


```haxe
var yezidi:stdgo._internal.unicode.RangeTable
```


```haxe
var yi:stdgo._internal.unicode.RangeTable
```


```haxe
var z:stdgo._internal.unicode.RangeTable
```


```haxe
var zanabazar_Square:stdgo._internal.unicode.RangeTable
```


```haxe
var zl:stdgo._internal.unicode.RangeTable
```


```haxe
var zp:stdgo._internal.unicode.RangeTable
```


```haxe
var zs:stdgo._internal.unicode.RangeTable
```


# Classes


```haxe
import stdgo.unicode.*
```


## class Unicode


```
Package unicode provides data and functions to test some properties of
    Unicode code points.
```
### Unicode function in\_


```haxe
function in_(_r:Int, _ranges:haxe.Rest<stdgo.unicode.RangeTable>):Bool
```



In reports whether the rune is a member of one of the ranges.  

[\(view code\)](<./Unicode.hx#L1704>)


### Unicode function isControl


```haxe
function isControl(_r:Int):Bool
```


```
IsControl reports whether the rune is a control character.
        The C (Other) Unicode category includes more code points
        such as surrogates; use Is(C, r) to test for them.
```
[\(view code\)](<./Unicode.hx#L1712>)


### Unicode function isDigit


```haxe
function isDigit(_r:Int):Bool
```



IsDigit reports whether the rune is a decimal digit.  

[\(view code\)](<./Unicode.hx#L1672>)


### Unicode function isGraphic


```haxe
function isGraphic(_r:Int):Bool
```


```
IsGraphic reports whether the rune is defined as a Graphic by Unicode.
        Such characters include letters, marks, numbers, punctuation, symbols, and
        spaces, from categories L, M, N, P, S, Zs.
```
[\(view code\)](<./Unicode.hx#L1680>)


### Unicode function isLetter


```haxe
function isLetter(_r:Int):Bool
```



IsLetter reports whether the rune is a letter \(category L\).  

[\(view code\)](<./Unicode.hx#L1718>)


### Unicode function isLower


```haxe
function isLower(_r:Int):Bool
```



IsLower reports whether the rune is a lower case letter.  

[\(view code\)](<./Unicode.hx#L1774>)


### Unicode function isMark


```haxe
function isMark(_r:Int):Bool
```



IsMark reports whether the rune is a mark character \(category M\).  

[\(view code\)](<./Unicode.hx#L1724>)


### Unicode function isNumber


```haxe
function isNumber(_r:Int):Bool
```



IsNumber reports whether the rune is a number \(category N\).  

[\(view code\)](<./Unicode.hx#L1730>)


### Unicode function isOneOf


```haxe
function isOneOf(_ranges:Array<stdgo.unicode.RangeTable>, _r:Int):Bool
```


```
IsOneOf reports whether the rune is a member of one of the ranges.
        The function "In" provides a nicer signature and should be used in preference to IsOneOf.
```
[\(view code\)](<./Unicode.hx#L1697>)


### Unicode function isPrint


```haxe
function isPrint(_r:Int):Bool
```


```
IsPrint reports whether the rune is defined as printable by Go. Such
        characters include letters, marks, numbers, punctuation, symbols, and the
        ASCII space character, from categories L, M, N, P, S and the ASCII space
        character. This categorization is the same as IsGraphic except that the
        only spacing character is ASCII space, U+0020.
```
[\(view code\)](<./Unicode.hx#L1690>)


### Unicode function isPunct


```haxe
function isPunct(_r:Int):Bool
```


```
IsPunct reports whether the rune is a Unicode punctuation character
        (category P).
```
[\(view code\)](<./Unicode.hx#L1737>)


### Unicode function isSpace


```haxe
function isSpace(_r:Int):Bool
```


```
IsSpace reports whether the rune is a space character as defined
        by Unicode's White Space property; in the Latin-1 space
        this is
```
```
        	'\t', '\n', '\v', '\f', '\r', ' ', U+0085 (NEL), U+00A0 (NBSP).
```

Other definitions of spacing characters are set by category
Z and property Pattern\_White\_Space.  

[\(view code\)](<./Unicode.hx#L1750>)


### Unicode function isSymbol


```haxe
function isSymbol(_r:Int):Bool
```



IsSymbol reports whether the rune is a symbolic character.  

[\(view code\)](<./Unicode.hx#L1756>)


### Unicode function isTitle


```haxe
function isTitle(_r:Int):Bool
```



IsTitle reports whether the rune is a title case letter.  

[\(view code\)](<./Unicode.hx#L1780>)


### Unicode function isUpper


```haxe
function isUpper(_r:Int):Bool
```



IsUpper reports whether the rune is an upper case letter.  

[\(view code\)](<./Unicode.hx#L1768>)


### Unicode function is\_


```haxe
function is_(_rangeTab:stdgo.unicode.RangeTable, _r:Int):Bool
```



Is reports whether the rune is in the specified table of ranges.  

[\(view code\)](<./Unicode.hx#L1762>)


### Unicode function simpleFold


```haxe
function simpleFold(_r:Int):Int
```


```
SimpleFold iterates over Unicode code points equivalent under
        the Unicode-defined simple case folding. Among the code points
        equivalent to rune (including rune itself), SimpleFold returns the
        smallest rune > r if one exists, or else the smallest rune >= 0.
        If r is not a valid Unicode code point, SimpleFold(r) returns r.
```

For example:  

```
        	SimpleFold('A') = 'a'
        	SimpleFold('a') = 'A'
```
```
        	SimpleFold('K') = 'k'
        	SimpleFold('k') = '\u212A' (Kelvin symbol, K)
        	SimpleFold('\u212A') = 'K'
```
```
        	SimpleFold('1') = '1'
```
```
        	SimpleFold(-2) = -2
```
[\(view code\)](<./Unicode.hx#L1827>)


### Unicode function to


```haxe
function to(__case:Int, _r:Int):Int
```



To maps the rune to the specified case: UpperCase, LowerCase, or TitleCase.  

[\(view code\)](<./Unicode.hx#L1786>)


### Unicode function toLower


```haxe
function toLower(_r:Int):Int
```



ToLower maps the rune to lower case.  

[\(view code\)](<./Unicode.hx#L1798>)


### Unicode function toTitle


```haxe
function toTitle(_r:Int):Int
```



ToTitle maps the rune to title case.  

[\(view code\)](<./Unicode.hx#L1804>)


### Unicode function toUpper


```haxe
function toUpper(_r:Int):Int
```



ToUpper maps the rune to upper case.  

[\(view code\)](<./Unicode.hx#L1792>)


# Typedefs


```haxe
import stdgo.unicode.*
```


## typedef SpecialCase


```haxe
typedef SpecialCase = stdgo._internal.unicode.SpecialCase;
```


## typedef T\_d


```haxe
typedef T_d = stdgo._internal.unicode.T_d;
```


# Abstracts


## abstract RangeTable


[\(view file containing code\)](<./Unicode.hx>)


## abstract Range16


[\(view file containing code\)](<./Unicode.hx>)


## abstract Range32


[\(view file containing code\)](<./Unicode.hx>)


## abstract CaseRange


[\(view file containing code\)](<./Unicode.hx>)


## abstract T\_foldPair


[\(view file containing code\)](<./Unicode.hx>)



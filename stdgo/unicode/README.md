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
var adlam:stdgo.unicode.RangeTable
```


```haxe
var ahom:stdgo.unicode.RangeTable
```


```haxe
var anatolian_Hieroglyphs:stdgo.unicode.RangeTable
```


```haxe
var arabic:stdgo.unicode.RangeTable
```


```haxe
var armenian:stdgo.unicode.RangeTable
```


```haxe
var ascii_Hex_Digit:stdgo.unicode.RangeTable
```


```haxe
var avestan:stdgo.unicode.RangeTable
```


```haxe
var azeriCase:stdgo.unicode.SpecialCase
```


```haxe
var balinese:stdgo.unicode.RangeTable
```


```haxe
var bamum:stdgo.unicode.RangeTable
```


```haxe
var bassa_Vah:stdgo.unicode.RangeTable
```


```haxe
var batak:stdgo.unicode.RangeTable
```


```haxe
var bengali:stdgo.unicode.RangeTable
```


```haxe
var bhaiksuki:stdgo.unicode.RangeTable
```


```haxe
var bidi_Control:stdgo.unicode.RangeTable
```


```haxe
var bopomofo:stdgo.unicode.RangeTable
```


```haxe
var brahmi:stdgo.unicode.RangeTable
```


```haxe
var braille:stdgo.unicode.RangeTable
```


```haxe
var buginese:stdgo.unicode.RangeTable
```


```haxe
var buhid:stdgo.unicode.RangeTable
```


```haxe
var c:stdgo.unicode.RangeTable
```


```haxe
var canadian_Aboriginal:stdgo.unicode.RangeTable
```


```haxe
var carian:stdgo.unicode.RangeTable
```


```haxe
var caseRanges:Array<stdgo.unicode.CaseRange>
```


```haxe
var categories:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


```haxe
var caucasian_Albanian:stdgo.unicode.RangeTable
```


```haxe
var cc:stdgo.unicode.RangeTable
```


```haxe
var cf:stdgo.unicode.RangeTable
```


```haxe
var chakma:stdgo.unicode.RangeTable
```


```haxe
var cham:stdgo.unicode.RangeTable
```


```haxe
var cherokee:stdgo.unicode.RangeTable
```


```haxe
var chorasmian:stdgo.unicode.RangeTable
```


```haxe
var co:stdgo.unicode.RangeTable
```


```haxe
var common:stdgo.unicode.RangeTable
```


```haxe
var coptic:stdgo.unicode.RangeTable
```


```haxe
var cs:stdgo.unicode.RangeTable
```


```haxe
var cuneiform:stdgo.unicode.RangeTable
```


```haxe
var cypriot:stdgo.unicode.RangeTable
```


```haxe
var cypro_Minoan:stdgo.unicode.RangeTable
```


```haxe
var cyrillic:stdgo.unicode.RangeTable
```


```haxe
var dash:stdgo.unicode.RangeTable
```


```haxe
var deprecated:stdgo.unicode.RangeTable
```


```haxe
var deseret:stdgo.unicode.RangeTable
```


```haxe
var devanagari:stdgo.unicode.RangeTable
```


```haxe
var diacritic:stdgo.unicode.RangeTable
```


```haxe
var digit:stdgo.unicode.RangeTable
```


```haxe
var dives_Akuru:stdgo.unicode.RangeTable
```


```haxe
var dogra:stdgo.unicode.RangeTable
```


```haxe
var duployan:stdgo.unicode.RangeTable
```


```haxe
var egyptian_Hieroglyphs:stdgo.unicode.RangeTable
```


```haxe
var elbasan:stdgo.unicode.RangeTable
```


```haxe
var elymaic:stdgo.unicode.RangeTable
```


```haxe
var ethiopic:stdgo.unicode.RangeTable
```


```haxe
var extender:stdgo.unicode.RangeTable
```


```haxe
var foldCategory:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


```haxe
var foldScript:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


```haxe
var georgian:stdgo.unicode.RangeTable
```


```haxe
var glagolitic:stdgo.unicode.RangeTable
```


```haxe
var gothic:stdgo.unicode.RangeTable
```


```haxe
var grantha:stdgo.unicode.RangeTable
```


```haxe
var graphicRanges:Array<stdgo.unicode.RangeTable>
```


```haxe
var greek:stdgo.unicode.RangeTable
```


```haxe
var gujarati:stdgo.unicode.RangeTable
```


```haxe
var gunjala_Gondi:stdgo.unicode.RangeTable
```


```haxe
var gurmukhi:stdgo.unicode.RangeTable
```


```haxe
var han:stdgo.unicode.RangeTable
```


```haxe
var hangul:stdgo.unicode.RangeTable
```


```haxe
var hanifi_Rohingya:stdgo.unicode.RangeTable
```


```haxe
var hanunoo:stdgo.unicode.RangeTable
```


```haxe
var hatran:stdgo.unicode.RangeTable
```


```haxe
var hebrew:stdgo.unicode.RangeTable
```


```haxe
var hex_Digit:stdgo.unicode.RangeTable
```


```haxe
var hiragana:stdgo.unicode.RangeTable
```


```haxe
var hyphen:stdgo.unicode.RangeTable
```


```haxe
var ideographic:stdgo.unicode.RangeTable
```


```haxe
var ids_Binary_Operator:stdgo.unicode.RangeTable
```


```haxe
var ids_Trinary_Operator:stdgo.unicode.RangeTable
```


```haxe
var imperial_Aramaic:stdgo.unicode.RangeTable
```


```haxe
var inherited:stdgo.unicode.RangeTable
```


```haxe
var inscriptional_Pahlavi:stdgo.unicode.RangeTable
```


```haxe
var inscriptional_Parthian:stdgo.unicode.RangeTable
```


```haxe
var javanese:stdgo.unicode.RangeTable
```


```haxe
var join_Control:stdgo.unicode.RangeTable
```


```haxe
var kaithi:stdgo.unicode.RangeTable
```


```haxe
var kannada:stdgo.unicode.RangeTable
```


```haxe
var katakana:stdgo.unicode.RangeTable
```


```haxe
var kawi:stdgo.unicode.RangeTable
```


```haxe
var kayah_Li:stdgo.unicode.RangeTable
```


```haxe
var kharoshthi:stdgo.unicode.RangeTable
```


```haxe
var khitan_Small_Script:stdgo.unicode.RangeTable
```


```haxe
var khmer:stdgo.unicode.RangeTable
```


```haxe
var khojki:stdgo.unicode.RangeTable
```


```haxe
var khudawadi:stdgo.unicode.RangeTable
```


```haxe
var l:stdgo.unicode.RangeTable
```


```haxe
var lao:stdgo.unicode.RangeTable
```


```haxe
var latin:stdgo.unicode.RangeTable
```


```haxe
var lepcha:stdgo.unicode.RangeTable
```


```haxe
var letter:stdgo.unicode.RangeTable
```


```haxe
var limbu:stdgo.unicode.RangeTable
```


```haxe
var linear_A:stdgo.unicode.RangeTable
```


```haxe
var linear_B:stdgo.unicode.RangeTable
```


```haxe
var lisu:stdgo.unicode.RangeTable
```


```haxe
var ll:stdgo.unicode.RangeTable
```


```haxe
var lm:stdgo.unicode.RangeTable
```


```haxe
var lo:stdgo.unicode.RangeTable
```


```haxe
var logical_Order_Exception:stdgo.unicode.RangeTable
```


```haxe
var lower:stdgo.unicode.RangeTable
```


```haxe
var lt:stdgo.unicode.RangeTable
```


```haxe
var lu:stdgo.unicode.RangeTable
```


```haxe
var lycian:stdgo.unicode.RangeTable
```


```haxe
var lydian:stdgo.unicode.RangeTable
```


```haxe
var m:stdgo.unicode.RangeTable
```


```haxe
var mahajani:stdgo.unicode.RangeTable
```


```haxe
var makasar:stdgo.unicode.RangeTable
```


```haxe
var malayalam:stdgo.unicode.RangeTable
```


```haxe
var mandaic:stdgo.unicode.RangeTable
```


```haxe
var manichaean:stdgo.unicode.RangeTable
```


```haxe
var marchen:stdgo.unicode.RangeTable
```


```haxe
var mark:stdgo.unicode.RangeTable
```


```haxe
var masaram_Gondi:stdgo.unicode.RangeTable
```


```haxe
var mc:stdgo.unicode.RangeTable
```


```haxe
var me:stdgo.unicode.RangeTable
```


```haxe
var medefaidrin:stdgo.unicode.RangeTable
```


```haxe
var meetei_Mayek:stdgo.unicode.RangeTable
```


```haxe
var mende_Kikakui:stdgo.unicode.RangeTable
```


```haxe
var meroitic_Cursive:stdgo.unicode.RangeTable
```


```haxe
var meroitic_Hieroglyphs:stdgo.unicode.RangeTable
```


```haxe
var miao:stdgo.unicode.RangeTable
```


```haxe
var mn:stdgo.unicode.RangeTable
```


```haxe
var modi:stdgo.unicode.RangeTable
```


```haxe
var mongolian:stdgo.unicode.RangeTable
```


```haxe
var mro:stdgo.unicode.RangeTable
```


```haxe
var multani:stdgo.unicode.RangeTable
```


```haxe
var myanmar:stdgo.unicode.RangeTable
```


```haxe
var n:stdgo.unicode.RangeTable
```


```haxe
var nabataean:stdgo.unicode.RangeTable
```


```haxe
var nag_Mundari:stdgo.unicode.RangeTable
```


```haxe
var nandinagari:stdgo.unicode.RangeTable
```


```haxe
var nd:stdgo.unicode.RangeTable
```


```haxe
var new_Tai_Lue:stdgo.unicode.RangeTable
```


```haxe
var newa:stdgo.unicode.RangeTable
```


```haxe
var nko:stdgo.unicode.RangeTable
```


```haxe
var nl:stdgo.unicode.RangeTable
```


```haxe
var no:stdgo.unicode.RangeTable
```


```haxe
var noncharacter_Code_Point:stdgo.unicode.RangeTable
```


```haxe
var number:stdgo.unicode.RangeTable
```


```haxe
var nushu:stdgo.unicode.RangeTable
```


```haxe
var nyiakeng_Puachue_Hmong:stdgo.unicode.RangeTable
```


```haxe
var ogham:stdgo.unicode.RangeTable
```


```haxe
var ol_Chiki:stdgo.unicode.RangeTable
```


```haxe
var old_Hungarian:stdgo.unicode.RangeTable
```


```haxe
var old_Italic:stdgo.unicode.RangeTable
```


```haxe
var old_North_Arabian:stdgo.unicode.RangeTable
```


```haxe
var old_Permic:stdgo.unicode.RangeTable
```


```haxe
var old_Persian:stdgo.unicode.RangeTable
```


```haxe
var old_Sogdian:stdgo.unicode.RangeTable
```


```haxe
var old_South_Arabian:stdgo.unicode.RangeTable
```


```haxe
var old_Turkic:stdgo.unicode.RangeTable
```


```haxe
var old_Uyghur:stdgo.unicode.RangeTable
```


```haxe
var oriya:stdgo.unicode.RangeTable
```


```haxe
var osage:stdgo.unicode.RangeTable
```


```haxe
var osmanya:stdgo.unicode.RangeTable
```


```haxe
var other:stdgo.unicode.RangeTable
```


```haxe
var other_Alphabetic:stdgo.unicode.RangeTable
```


```haxe
var other_Default_Ignorable_Code_Point:stdgo.unicode.RangeTable
```


```haxe
var other_Grapheme_Extend:stdgo.unicode.RangeTable
```


```haxe
var other_ID_Continue:stdgo.unicode.RangeTable
```


```haxe
var other_ID_Start:stdgo.unicode.RangeTable
```


```haxe
var other_Lowercase:stdgo.unicode.RangeTable
```


```haxe
var other_Math:stdgo.unicode.RangeTable
```


```haxe
var other_Uppercase:stdgo.unicode.RangeTable
```


```haxe
var p:stdgo.unicode.RangeTable
```


```haxe
var pahawh_Hmong:stdgo.unicode.RangeTable
```


```haxe
var palmyrene:stdgo.unicode.RangeTable
```


```haxe
var pattern_Syntax:stdgo.unicode.RangeTable
```


```haxe
var pattern_White_Space:stdgo.unicode.RangeTable
```


```haxe
var pau_Cin_Hau:stdgo.unicode.RangeTable
```


```haxe
var pc:stdgo.unicode.RangeTable
```


```haxe
var pd:stdgo.unicode.RangeTable
```


```haxe
var pe:stdgo.unicode.RangeTable
```


```haxe
var pf:stdgo.unicode.RangeTable
```


```haxe
var phags_Pa:stdgo.unicode.RangeTable
```


```haxe
var phoenician:stdgo.unicode.RangeTable
```


```haxe
var pi:stdgo.unicode.RangeTable
```


```haxe
var po:stdgo.unicode.RangeTable
```


```haxe
var prepended_Concatenation_Mark:stdgo.unicode.RangeTable
```


```haxe
var printRanges:Array<stdgo.unicode.RangeTable>
```


```haxe
var properties:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


```haxe
var ps:stdgo.unicode.RangeTable
```


```haxe
var psalter_Pahlavi:stdgo.unicode.RangeTable
```


```haxe
var punct:stdgo.unicode.RangeTable
```


```haxe
var quotation_Mark:stdgo.unicode.RangeTable
```


```haxe
var radical:stdgo.unicode.RangeTable
```


```haxe
var regional_Indicator:stdgo.unicode.RangeTable
```


```haxe
var rejang:stdgo.unicode.RangeTable
```


```haxe
var runic:stdgo.unicode.RangeTable
```


```haxe
var s:stdgo.unicode.RangeTable
```


```haxe
var samaritan:stdgo.unicode.RangeTable
```


```haxe
var saurashtra:stdgo.unicode.RangeTable
```


```haxe
var sc:stdgo.unicode.RangeTable
```


```haxe
var scripts:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


```haxe
var sentence_Terminal:stdgo.unicode.RangeTable
```


```haxe
var sharada:stdgo.unicode.RangeTable
```


```haxe
var shavian:stdgo.unicode.RangeTable
```


```haxe
var siddham:stdgo.unicode.RangeTable
```


```haxe
var signWriting:stdgo.unicode.RangeTable
```


```haxe
var sinhala:stdgo.unicode.RangeTable
```


```haxe
var sk:stdgo.unicode.RangeTable
```


```haxe
var sm:stdgo.unicode.RangeTable
```


```haxe
var so:stdgo.unicode.RangeTable
```


```haxe
var soft_Dotted:stdgo.unicode.RangeTable
```


```haxe
var sogdian:stdgo.unicode.RangeTable
```


```haxe
var sora_Sompeng:stdgo.unicode.RangeTable
```


```haxe
var soyombo:stdgo.unicode.RangeTable
```


```haxe
var space:stdgo.unicode.RangeTable
```


```haxe
var sterm:stdgo.unicode.RangeTable
```


```haxe
var sundanese:stdgo.unicode.RangeTable
```


```haxe
var syloti_Nagri:stdgo.unicode.RangeTable
```


```haxe
var symbol:stdgo.unicode.RangeTable
```


```haxe
var syriac:stdgo.unicode.RangeTable
```


```haxe
var tagalog:stdgo.unicode.RangeTable
```


```haxe
var tagbanwa:stdgo.unicode.RangeTable
```


```haxe
var tai_Le:stdgo.unicode.RangeTable
```


```haxe
var tai_Tham:stdgo.unicode.RangeTable
```


```haxe
var tai_Viet:stdgo.unicode.RangeTable
```


```haxe
var takri:stdgo.unicode.RangeTable
```


```haxe
var tamil:stdgo.unicode.RangeTable
```


```haxe
var tangsa:stdgo.unicode.RangeTable
```


```haxe
var tangut:stdgo.unicode.RangeTable
```


```haxe
var telugu:stdgo.unicode.RangeTable
```


```haxe
var terminal_Punctuation:stdgo.unicode.RangeTable
```


```haxe
var thaana:stdgo.unicode.RangeTable
```


```haxe
var thai:stdgo.unicode.RangeTable
```


```haxe
var tibetan:stdgo.unicode.RangeTable
```


```haxe
var tifinagh:stdgo.unicode.RangeTable
```


```haxe
var tirhuta:stdgo.unicode.RangeTable
```


```haxe
var title:stdgo.unicode.RangeTable
```


```haxe
var toto:stdgo.unicode.RangeTable
```


```haxe
var turkishCase:stdgo.unicode.SpecialCase
```


```haxe
var ugaritic:stdgo.unicode.RangeTable
```


```haxe
var unified_Ideograph:stdgo.unicode.RangeTable
```


```haxe
var upper:stdgo.unicode.RangeTable
```


```haxe
var vai:stdgo.unicode.RangeTable
```


```haxe
var variation_Selector:stdgo.unicode.RangeTable
```


```haxe
var vithkuqi:stdgo.unicode.RangeTable
```


```haxe
var wancho:stdgo.unicode.RangeTable
```


```haxe
var warang_Citi:stdgo.unicode.RangeTable
```


```haxe
var white_Space:stdgo.unicode.RangeTable
```


```haxe
var yezidi:stdgo.unicode.RangeTable
```


```haxe
var yi:stdgo.unicode.RangeTable
```


```haxe
var z:stdgo.unicode.RangeTable
```


```haxe
var zanabazar_Square:stdgo.unicode.RangeTable
```


```haxe
var zl:stdgo.unicode.RangeTable
```


```haxe
var zp:stdgo.unicode.RangeTable
```


```haxe
var zs:stdgo.unicode.RangeTable
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



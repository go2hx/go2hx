# Module: `stdgo._internal.unicode`

[(view library index)](../../stdgo.md)


# Overview



# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _is16(_ranges:stdgo.Slice<stdgo._internal.unicode.Range16>, _r:stdgo.GoUInt16):Bool`](<#function-_is16>)

- [`function _is32(_ranges:stdgo.Slice<stdgo._internal.unicode.Range32>, _r:stdgo.GoUInt32):Bool`](<#function-_is32>)

- [`function _isExcludingLatin(_rangeTab:stdgo.Ref<stdgo._internal.unicode.RangeTable>, _r:stdgo.GoRune):Bool`](<#function-_isexcludinglatin>)

- [`function _to(__case:stdgo.GoInt, _r:stdgo.GoRune, _caseRange:stdgo.Slice<stdgo._internal.unicode.CaseRange>):{
	_1:Bool;
	_0:stdgo.GoRune;
}`](<#function-_to>)

- [`function in_(_r:stdgo.GoRune, _ranges:haxe.Rest<stdgo.Ref<stdgo._internal.unicode.RangeTable>>):Bool`](<#function-in_>)

- [`function isControl(_r:stdgo.GoRune):Bool`](<#function-iscontrol>)

- [`function isDigit(_r:stdgo.GoRune):Bool`](<#function-isdigit>)

- [`function isGraphic(_r:stdgo.GoRune):Bool`](<#function-isgraphic>)

- [`function isLetter(_r:stdgo.GoRune):Bool`](<#function-isletter>)

- [`function isLower(_r:stdgo.GoRune):Bool`](<#function-islower>)

- [`function isMark(_r:stdgo.GoRune):Bool`](<#function-ismark>)

- [`function isNumber(_r:stdgo.GoRune):Bool`](<#function-isnumber>)

- [`function isOneOf(_ranges:stdgo.Slice<stdgo.Ref<stdgo._internal.unicode.RangeTable>>, _r:stdgo.GoRune):Bool`](<#function-isoneof>)

- [`function isPrint(_r:stdgo.GoRune):Bool`](<#function-isprint>)

- [`function isPunct(_r:stdgo.GoRune):Bool`](<#function-ispunct>)

- [`function isSpace(_r:stdgo.GoRune):Bool`](<#function-isspace>)

- [`function isSymbol(_r:stdgo.GoRune):Bool`](<#function-issymbol>)

- [`function isTitle(_r:stdgo.GoRune):Bool`](<#function-istitle>)

- [`function isUpper(_r:stdgo.GoRune):Bool`](<#function-isupper>)

- [`function is_(_rangeTab:stdgo.Ref<stdgo._internal.unicode.RangeTable>, _r:stdgo.GoRune):Bool`](<#function-is_>)

- [`function simpleFold(_r:stdgo.GoRune):stdgo.GoRune`](<#function-simplefold>)

- [`function to(__case:stdgo.GoInt, _r:stdgo.GoRune):stdgo.GoRune`](<#function-to>)

- [`function toLower(_r:stdgo.GoRune):stdgo.GoRune`](<#function-tolower>)

- [`function toTitle(_r:stdgo.GoRune):stdgo.GoRune`](<#function-totitle>)

- [`function toUpper(_r:stdgo.GoRune):stdgo.GoRune`](<#function-toupper>)

- [class CaseRange](<#class-caserange>)

  - [`function new(?lo:stdgo.GoUInt32, ?hi:stdgo.GoUInt32, ?delta:stdgo._internal.unicode.T_d):Void`](<#caserange-function-new>)

- [class Range16](<#class-range16>)

  - [`function new(?lo:stdgo.GoUInt16, ?hi:stdgo.GoUInt16, ?stride:stdgo.GoUInt16):Void`](<#range16-function-new>)

- [class Range32](<#class-range32>)

  - [`function new(?lo:stdgo.GoUInt32, ?hi:stdgo.GoUInt32, ?stride:stdgo.GoUInt32):Void`](<#range32-function-new>)

- [class RangeTable](<#class-rangetable>)

  - [`function new(?r16:stdgo.Slice<stdgo._internal.unicode.Range16>, ?r32:stdgo.Slice<stdgo._internal.unicode.Range32>, ?latinOffset:stdgo.GoInt):Void`](<#rangetable-function-new>)

- [typedef SpecialCase](<#typedef-specialcase>)

- [typedef T\_d](<#typedef-t_d>)

# Examples


- [`exampleIsDigit`](<#exampleisdigit>)

- [`exampleIsLetter`](<#exampleisletter>)

- [`exampleIsLower`](<#exampleislower>)

- [`exampleIsNumber`](<#exampleisnumber>)

- [`exampleIsSpace`](<#exampleisspace>)

- [`exampleIsTitle`](<#exampleistitle>)

- [`exampleIsUpper`](<#exampleisupper>)

- [`exampleSimpleFold`](<#examplesimplefold>)

- [`exampleSpecialCase`](<#examplespecialcase>)

- [`exampleTo`](<#exampleto>)

- [`exampleToLower`](<#exampletolower>)

- [`exampleToTitle`](<#exampletotitle>)

- [`exampleToUpper`](<#exampletoupper>)

# Constants


```haxe
import stdgo._internal.unicode.Unicode
```


```haxe
final _linearMax:stdgo.GoUInt64 = ((18i64 : stdgo.GoUInt64))
```


```haxe
final _pC:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```


```haxe
final _pLl:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```


```haxe
final _pLmask:stdgo.GoUInt64 = ((96i64 : stdgo.GoUInt64))
```


```haxe
final _pLo:stdgo.GoUInt64 = ((96i64 : stdgo.GoUInt64))
```


```haxe
final _pLu:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```


```haxe
final _pN:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```


```haxe
final _pP:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```


```haxe
final _pS:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```


```haxe
final _pZ:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```


```haxe
final _pg:stdgo.GoUInt64 = ((144i64 : stdgo.GoUInt64))
```


```haxe
final _pp:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```


```haxe
final lowerCase:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```


```haxe
final maxASCII:stdgo.GoInt32 = ((127 : stdgo.GoInt32))
```


```haxe
final maxCase:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```


```haxe
final maxLatin1:stdgo.GoInt32 = ((255 : stdgo.GoInt32))
```


```haxe
final maxRune:stdgo.GoInt32 = ((1114111 : stdgo.GoInt32))
```


```haxe
final replacementChar:stdgo.GoInt32 = ((65533 : stdgo.GoInt32))
```


```haxe
final titleCase:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```


```haxe
final upperCase:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```


```haxe
final upperLower:stdgo.GoInt32 = ((1114112 : stdgo.GoInt32))
```


```haxe
final version:stdgo.GoString = (("15.0.0" : stdgo.GoString))
```


# Variables


```haxe
import stdgo._internal.unicode.Unicode
```


```haxe
var __ASCII_Hex_Digit:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Adlam:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Ahom:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Anatolian_Hieroglyphs:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Arabic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Armenian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Avestan:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Balinese:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Bamum:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Bassa_Vah:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Batak:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Bengali:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Bhaiksuki:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Bidi_Control:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Bopomofo:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Brahmi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Braille:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Buginese:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Buhid:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __C:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Canadian_Aboriginal:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Carian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __CaseRanges:stdgo.Slice<stdgo._internal.unicode.CaseRange>
```


```haxe
var __Caucasian_Albanian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Cc:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Cf:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Chakma:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Cham:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Cherokee:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Chorasmian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Co:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Common:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Coptic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Cs:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Cuneiform:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Cypriot:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Cypro_Minoan:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Cyrillic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Dash:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Deprecated:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Deseret:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Devanagari:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Diacritic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Dives_Akuru:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Dogra:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Duployan:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Egyptian_Hieroglyphs:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Elbasan:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Elymaic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Ethiopic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Extender:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Georgian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Glagolitic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Gothic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Grantha:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Greek:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Gujarati:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Gunjala_Gondi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Gurmukhi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Han:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Hangul:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Hanifi_Rohingya:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Hanunoo:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Hatran:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Hebrew:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Hex_Digit:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Hiragana:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Hyphen:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __IDS_Binary_Operator:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __IDS_Trinary_Operator:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Ideographic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Imperial_Aramaic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Inherited:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Inscriptional_Pahlavi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Inscriptional_Parthian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Javanese:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Join_Control:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Kaithi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Kannada:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Katakana:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Kawi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Kayah_Li:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Kharoshthi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Khitan_Small_Script:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Khmer:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Khojki:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Khudawadi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __L:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Lao:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Latin:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Lepcha:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Limbu:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Linear_A:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Linear_B:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Lisu:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Ll:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Lm:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Lo:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Logical_Order_Exception:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Lt:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Lu:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Lycian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Lydian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __M:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Mahajani:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Makasar:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Malayalam:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Mandaic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Manichaean:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Marchen:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Masaram_Gondi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Mc:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Me:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Medefaidrin:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Meetei_Mayek:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Mende_Kikakui:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Meroitic_Cursive:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Meroitic_Hieroglyphs:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Miao:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Mn:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Modi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Mongolian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Mro:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Multani:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Myanmar:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __N:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Nabataean:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Nag_Mundari:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Nandinagari:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Nd:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __New_Tai_Lue:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Newa:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Nko:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Nl:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __No:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Noncharacter_Code_Point:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Nushu:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Nyiakeng_Puachue_Hmong:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Ogham:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Ol_Chiki:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Old_Hungarian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Old_Italic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Old_North_Arabian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Old_Permic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Old_Persian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Old_Sogdian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Old_South_Arabian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Old_Turkic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Old_Uyghur:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Oriya:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Osage:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Osmanya:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Other_Alphabetic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Other_Default_Ignorable_Code_Point:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Other_Grapheme_Extend:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Other_ID_Continue:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Other_ID_Start:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Other_Lowercase:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Other_Math:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Other_Uppercase:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __P:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Pahawh_Hmong:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Palmyrene:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Pattern_Syntax:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Pattern_White_Space:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Pau_Cin_Hau:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Pc:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Pd:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Pe:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Pf:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Phags_Pa:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Phoenician:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Pi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Po:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Prepended_Concatenation_Mark:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Ps:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Psalter_Pahlavi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Quotation_Mark:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Radical:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Regional_Indicator:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Rejang:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Runic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __S:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Samaritan:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Saurashtra:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Sc:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Sentence_Terminal:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Sharada:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Shavian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Siddham:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __SignWriting:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Sinhala:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Sk:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Sm:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __So:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Soft_Dotted:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Sogdian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Sora_Sompeng:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Soyombo:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Sundanese:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Syloti_Nagri:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Syriac:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Tagalog:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Tagbanwa:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Tai_Le:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Tai_Tham:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Tai_Viet:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Takri:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Tamil:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Tangsa:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Tangut:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Telugu:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Terminal_Punctuation:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Thaana:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Thai:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Tibetan:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Tifinagh:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Tirhuta:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Toto:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __TurkishCase:stdgo._internal.unicode.SpecialCase
```


```haxe
var __Ugaritic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Unified_Ideograph:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Vai:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Variation_Selector:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Vithkuqi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Wancho:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Warang_Citi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __White_Space:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Yezidi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Yi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Z:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Zanabazar_Square:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Zl:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Zp:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var __Zs:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var _asciiFold:stdgo.GoArray<stdgo.GoUInt16>
```


```haxe
var _caseOrbit:stdgo.Slice<stdgo._internal.unicode.T_foldPair>
```


```haxe
var _foldCommon:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var _foldGreek:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var _foldInherited:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var _foldL:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var _foldLl:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var _foldLt:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var _foldLu:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var _foldM:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var _foldMn:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var _properties:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var adlam:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var ahom:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var anatolian_Hieroglyphs:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var arabic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var armenian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var ascii_Hex_Digit:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var avestan:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var azeriCase:stdgo._internal.unicode.SpecialCase
```


```haxe
var balinese:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var bamum:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var bassa_Vah:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var batak:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var bengali:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var bhaiksuki:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var bidi_Control:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var bopomofo:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var brahmi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var braille:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var buginese:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var buhid:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var c:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var canadian_Aboriginal:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var carian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var caseRanges:stdgo.Slice<stdgo._internal.unicode.CaseRange>
```


```haxe
var categories:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


```haxe
var caucasian_Albanian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var cc:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var cf:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var chakma:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var cham:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var cherokee:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var chorasmian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var co:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var common:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var coptic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var cs:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var cuneiform:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var cypriot:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var cypro_Minoan:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var cyrillic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var dash:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var deprecated:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var deseret:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var devanagari:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var diacritic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var digit:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var dives_Akuru:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var dogra:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var duployan:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var egyptian_Hieroglyphs:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var elbasan:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var elymaic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var ethiopic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var extender:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var foldCategory:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


```haxe
var foldScript:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


```haxe
var georgian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var glagolitic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var gothic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var grantha:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var graphicRanges:stdgo.Slice<stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


```haxe
var greek:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var gujarati:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var gunjala_Gondi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var gurmukhi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var han:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var hangul:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var hanifi_Rohingya:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var hanunoo:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var hatran:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var hebrew:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var hex_Digit:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var hiragana:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var hyphen:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var ideographic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var ids_Binary_Operator:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var ids_Trinary_Operator:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var imperial_Aramaic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var inherited:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var inscriptional_Pahlavi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var inscriptional_Parthian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var javanese:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var join_Control:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var kaithi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var kannada:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var katakana:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var kawi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var kayah_Li:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var kharoshthi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var khitan_Small_Script:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var khmer:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var khojki:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var khudawadi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var l:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var lao:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var latin:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var lepcha:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var letter:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var limbu:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var linear_A:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var linear_B:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var lisu:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var ll:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var lm:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var lo:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var logical_Order_Exception:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var lower:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var lt:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var lu:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var lycian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var lydian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var m:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var mahajani:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var makasar:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var malayalam:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var mandaic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var manichaean:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var marchen:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var mark:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var masaram_Gondi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var mc:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var me:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var medefaidrin:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var meetei_Mayek:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var mende_Kikakui:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var meroitic_Cursive:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var meroitic_Hieroglyphs:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var miao:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var mn:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var modi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var mongolian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var mro:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var multani:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var myanmar:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var n:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var nabataean:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var nag_Mundari:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var nandinagari:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var nd:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var new_Tai_Lue:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var newa:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var nko:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var nl:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var no:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var noncharacter_Code_Point:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var number:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var nushu:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var nyiakeng_Puachue_Hmong:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var ogham:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var ol_Chiki:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var old_Hungarian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var old_Italic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var old_North_Arabian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var old_Permic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var old_Persian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var old_Sogdian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var old_South_Arabian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var old_Turkic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var old_Uyghur:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var oriya:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var osage:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var osmanya:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var other:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var other_Alphabetic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var other_Default_Ignorable_Code_Point:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var other_Grapheme_Extend:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var other_ID_Continue:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var other_ID_Start:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var other_Lowercase:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var other_Math:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var other_Uppercase:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var p:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var pahawh_Hmong:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var palmyrene:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var pattern_Syntax:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var pattern_White_Space:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var pau_Cin_Hau:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var pc:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var pd:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var pe:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var pf:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var phags_Pa:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var phoenician:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var pi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var po:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var prepended_Concatenation_Mark:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var printRanges:stdgo.Slice<stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


```haxe
var properties:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


```haxe
var ps:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var psalter_Pahlavi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var punct:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var quotation_Mark:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var radical:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var regional_Indicator:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var rejang:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var runic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var s:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var samaritan:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var saurashtra:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var sc:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var scripts:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


```haxe
var sentence_Terminal:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var sharada:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var shavian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var siddham:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var signWriting:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var sinhala:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var sk:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var sm:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var so:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var soft_Dotted:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var sogdian:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var sora_Sompeng:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var soyombo:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var space:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var sterm:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var sundanese:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var syloti_Nagri:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var symbol:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var syriac:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var tagalog:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var tagbanwa:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var tai_Le:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var tai_Tham:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var tai_Viet:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var takri:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var tamil:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var tangsa:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var tangut:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var telugu:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var terminal_Punctuation:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var thaana:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var thai:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var tibetan:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var tifinagh:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var tirhuta:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var title:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var toto:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var turkishCase:stdgo._internal.unicode.SpecialCase
```


```haxe
var ugaritic:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var unified_Ideograph:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var upper:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var vai:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var variation_Selector:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var vithkuqi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var wancho:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var warang_Citi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var white_Space:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var yezidi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var yi:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var z:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var zanabazar_Square:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var zl:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var zp:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


```haxe
var zs:stdgo.Ref<stdgo._internal.unicode.RangeTable>
```


# Functions


```haxe
import stdgo._internal.unicode.Unicode
```


## function \_is16


```haxe
function _is16(_ranges:stdgo.Slice<stdgo._internal.unicode.Range16>, _r:stdgo.GoUInt16):Bool
```


[\(view code\)](<./Unicode.hx#L6591>)


## function \_is32


```haxe
function _is32(_ranges:stdgo.Slice<stdgo._internal.unicode.Range32>, _r:stdgo.GoUInt32):Bool
```


[\(view code\)](<./Unicode.hx#L6620>)


## function \_isExcludingLatin


```haxe
function _isExcludingLatin(_rangeTab:stdgo.Ref<stdgo._internal.unicode.RangeTable>, _r:stdgo.GoRune):Bool
```


[\(view code\)](<./Unicode.hx#L6660>)


## function \_to


```haxe
function _to(__case:stdgo.GoInt, _r:stdgo.GoRune, _caseRange:stdgo.Slice<stdgo._internal.unicode.CaseRange>):{
	_1:Bool;
	_0:stdgo.GoRune;
}
```


[\(view code\)](<./Unicode.hx#L6692>)


## function in\_


```haxe
function in_(_r:stdgo.GoRune, _ranges:haxe.Rest<stdgo.Ref<stdgo._internal.unicode.RangeTable>>):Bool
```


[\(view code\)](<./Unicode.hx#L6537>)


## function isControl


```haxe
function isControl(_r:stdgo.GoRune):Bool
```


[\(view code\)](<./Unicode.hx#L6546>)


## function isDigit


```haxe
function isDigit(_r:stdgo.GoRune):Bool
```


### exampleIsDigit


<details><summary></summary>
<p>


```haxe
function exampleIsDigit():Void {
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isDigit((2537 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isDigit((65 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L6511>)


## function isGraphic


```haxe
function isGraphic(_r:stdgo.GoRune):Bool
```


[\(view code\)](<./Unicode.hx#L6517>)


## function isLetter


```haxe
function isLetter(_r:stdgo.GoRune):Bool
```


### exampleIsLetter


<details><summary></summary>
<p>


```haxe
function exampleIsLetter():Void {
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isLetter((65 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isLetter((55 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L6552>)


## function isLower


```haxe
function isLower(_r:stdgo.GoRune):Bool
```


### exampleIsLower


<details><summary></summary>
<p>


```haxe
function exampleIsLower():Void {
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isLower((97 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isLower((65 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L6680>)


## function isMark


```haxe
function isMark(_r:stdgo.GoRune):Bool
```


[\(view code\)](<./Unicode.hx#L6558>)


## function isNumber


```haxe
function isNumber(_r:stdgo.GoRune):Bool
```


### exampleIsNumber


<details><summary></summary>
<p>


```haxe
function exampleIsNumber():Void {
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isNumber((8551 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isNumber((65 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L6561>)


## function isOneOf


```haxe
function isOneOf(_ranges:stdgo.Slice<stdgo.Ref<stdgo._internal.unicode.RangeTable>>, _r:stdgo.GoRune):Bool
```


[\(view code\)](<./Unicode.hx#L6529>)


## function isPrint


```haxe
function isPrint(_r:stdgo.GoRune):Bool
```


[\(view code\)](<./Unicode.hx#L6523>)


## function isPunct


```haxe
function isPunct(_r:stdgo.GoRune):Bool
```


[\(view code\)](<./Unicode.hx#L6567>)


## function isSpace


```haxe
function isSpace(_r:stdgo.GoRune):Bool
```


### exampleIsSpace


<details><summary></summary>
<p>


```haxe
function exampleIsSpace():Void {
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isSpace((32 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isSpace((10 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isSpace((9 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isSpace((97 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L6573>)


## function isSymbol


```haxe
function isSymbol(_r:stdgo.GoRune):Bool
```


[\(view code\)](<./Unicode.hx#L6585>)


## function isTitle


```haxe
function isTitle(_r:stdgo.GoRune):Bool
```


### exampleIsTitle


<details><summary></summary>
<p>


```haxe
function exampleIsTitle():Void {
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isTitle((453 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isTitle((97 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L6686>)


## function isUpper


```haxe
function isUpper(_r:stdgo.GoRune):Bool
```


### exampleIsUpper


<details><summary></summary>
<p>


```haxe
function exampleIsUpper():Void {
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isUpper((65 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isUpper((97 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L6674>)


## function is\_


```haxe
function is_(_rangeTab:stdgo.Ref<stdgo._internal.unicode.RangeTable>, _r:stdgo.GoRune):Bool
```


[\(view code\)](<./Unicode.hx#L6649>)


## function simpleFold


```haxe
function simpleFold(_r:stdgo.GoRune):stdgo.GoRune
```


### exampleSimpleFold


<details><summary></summary>
<p>


```haxe
function exampleSimpleFold():Void {
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.simpleFold((65 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.simpleFold((97 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.simpleFold((75 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.simpleFold((107 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.simpleFold((8490 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.simpleFold((49 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L6751>)


## function to


```haxe
function to(__case:stdgo.GoInt, _r:stdgo.GoRune):stdgo.GoRune
```


### exampleTo


<details><summary></summary>
<p>


```haxe
function exampleTo():Void {
        {};
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.to((0 : stdgo.GoInt), (103 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.to((1 : stdgo.GoInt), (103 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.to((2 : stdgo.GoInt), (103 : stdgo.GoInt32))));
        {};
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.to((0 : stdgo.GoInt), (71 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.to((1 : stdgo.GoInt), (71 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.to((2 : stdgo.GoInt), (71 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L6717>)


## function toLower


```haxe
function toLower(_r:stdgo.GoRune):stdgo.GoRune
```


### exampleToLower


<details><summary></summary>
<p>


```haxe
function exampleToLower():Void {
        {};
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.toLower((71 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L6733>)


## function toTitle


```haxe
function toTitle(_r:stdgo.GoRune):stdgo.GoRune
```


### exampleToTitle


<details><summary></summary>
<p>


```haxe
function exampleToTitle():Void {
        {};
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.toTitle((103 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L6742>)


## function toUpper


```haxe
function toUpper(_r:stdgo.GoRune):stdgo.GoRune
```


### exampleToUpper


<details><summary></summary>
<p>


```haxe
function exampleToUpper():Void {
        {};
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.toUpper((103 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L6724>)


# Classes


```haxe
import stdgo._internal.unicode.*
```


## class CaseRange


```haxe
var delta:stdgo._internal.unicode.T_d
```


```haxe
var hi:stdgo.GoUInt32
```


```haxe
var lo:stdgo.GoUInt32
```


### CaseRange function new


```haxe
function new(?lo:stdgo.GoUInt32, ?hi:stdgo.GoUInt32, ?delta:stdgo._internal.unicode.T_d):Void
```


[\(view code\)](<./Unicode.hx#L6487>)


## class Range16


```haxe
var hi:stdgo.GoUInt16
```


```haxe
var lo:stdgo.GoUInt16
```


```haxe
var stride:stdgo.GoUInt16
```


### Range16 function new


```haxe
function new(?lo:stdgo.GoUInt16, ?hi:stdgo.GoUInt16, ?stride:stdgo.GoUInt16):Void
```


[\(view code\)](<./Unicode.hx#L6459>)


## class Range32


```haxe
var hi:stdgo.GoUInt32
```


```haxe
var lo:stdgo.GoUInt32
```


```haxe
var stride:stdgo.GoUInt32
```


### Range32 function new


```haxe
function new(?lo:stdgo.GoUInt32, ?hi:stdgo.GoUInt32, ?stride:stdgo.GoUInt32):Void
```


[\(view code\)](<./Unicode.hx#L6473>)


## class RangeTable


```haxe
var latinOffset:stdgo.GoInt
```


```haxe
var r16:stdgo.Slice<stdgo._internal.unicode.Range16>
```


```haxe
var r32:stdgo.Slice<stdgo._internal.unicode.Range32>
```


### RangeTable function new


```haxe
function new(?r16:stdgo.Slice<stdgo._internal.unicode.Range16>, ?r32:stdgo.Slice<stdgo._internal.unicode.Range32>, ?latinOffset:stdgo.GoInt):Void
```


[\(view code\)](<./Unicode.hx#L6445>)


# Typedefs


```haxe
import stdgo._internal.unicode.*
```


## typedef SpecialCase


```haxe
typedef SpecialCase = stdgo.Slice<stdgo._internal.unicode.CaseRange>;
```


## typedef T\_d


```haxe
typedef T_d = stdgo.GoArray<stdgo.GoInt32>;
```



# Module: `stdgo.unicode`

[(view library index)](../stdgo.md)


# Overview



Package unicode provides data and functions to test some properties of
Unicode code points.  


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _is16(_ranges:stdgo.Slice<stdgo.unicode.Range16>, _r:stdgo.GoUInt16):Bool`](<#function-_is16>)

- [`function _is32(_ranges:stdgo.Slice<stdgo.unicode.Range32>, _r:stdgo.GoUInt32):Bool`](<#function-_is32>)

- [`function _isExcludingLatin(_rangeTab:stdgo.Ref<stdgo.unicode.RangeTable>, _r:stdgo.GoRune):Bool`](<#function-_isexcludinglatin>)

- [`function _to(__case:stdgo.GoInt, _r:stdgo.GoRune, _caseRange:stdgo.Slice<stdgo.unicode.CaseRange>):{
	_1:Bool;
	_0:stdgo.GoRune;
}`](<#function-_to>)

- [`function in_(_r:stdgo.GoRune, _ranges:haxe.Rest<stdgo.Ref<stdgo.unicode.RangeTable>>):Bool`](<#function-in_>)

- [`function isControl(_r:stdgo.GoRune):Bool`](<#function-iscontrol>)

- [`function isDigit(_r:stdgo.GoRune):Bool`](<#function-isdigit>)

- [`function isGraphic(_r:stdgo.GoRune):Bool`](<#function-isgraphic>)

- [`function isLetter(_r:stdgo.GoRune):Bool`](<#function-isletter>)

- [`function isLower(_r:stdgo.GoRune):Bool`](<#function-islower>)

- [`function isMark(_r:stdgo.GoRune):Bool`](<#function-ismark>)

- [`function isNumber(_r:stdgo.GoRune):Bool`](<#function-isnumber>)

- [`function isOneOf(_ranges:stdgo.Slice<stdgo.Ref<stdgo.unicode.RangeTable>>, _r:stdgo.GoRune):Bool`](<#function-isoneof>)

- [`function isPrint(_r:stdgo.GoRune):Bool`](<#function-isprint>)

- [`function isPunct(_r:stdgo.GoRune):Bool`](<#function-ispunct>)

- [`function isSpace(_r:stdgo.GoRune):Bool`](<#function-isspace>)

- [`function isSymbol(_r:stdgo.GoRune):Bool`](<#function-issymbol>)

- [`function isTitle(_r:stdgo.GoRune):Bool`](<#function-istitle>)

- [`function isUpper(_r:stdgo.GoRune):Bool`](<#function-isupper>)

- [`function is_(_rangeTab:stdgo.Ref<stdgo.unicode.RangeTable>, _r:stdgo.GoRune):Bool`](<#function-is_>)

- [`function simpleFold(_r:stdgo.GoRune):stdgo.GoRune`](<#function-simplefold>)

- [`function to(__case:stdgo.GoInt, _r:stdgo.GoRune):stdgo.GoRune`](<#function-to>)

- [`function toLower(_r:stdgo.GoRune):stdgo.GoRune`](<#function-tolower>)

- [`function toTitle(_r:stdgo.GoRune):stdgo.GoRune`](<#function-totitle>)

- [`function toUpper(_r:stdgo.GoRune):stdgo.GoRune`](<#function-toupper>)

- [class CaseRange](<#class-caserange>)

  - [`function new(?lo:stdgo.GoUInt32, ?hi:stdgo.GoUInt32, ?delta:Null<stdgo.unicode.T_d>):Void`](<#caserange-function-new>)

- [class Range16](<#class-range16>)

  - [`function new(?lo:stdgo.GoUInt16, ?hi:stdgo.GoUInt16, ?stride:stdgo.GoUInt16):Void`](<#range16-function-new>)

- [class Range32](<#class-range32>)

  - [`function new(?lo:stdgo.GoUInt32, ?hi:stdgo.GoUInt32, ?stride:stdgo.GoUInt32):Void`](<#range32-function-new>)

- [class RangeTable](<#class-rangetable>)

  - [`function new(?r16:stdgo.Slice<stdgo.unicode.Range16>, ?r32:stdgo.Slice<stdgo.unicode.Range32>, ?latinOffset:stdgo.GoInt):Void`](<#rangetable-function-new>)

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
import stdgo.unicode.Unicode
```


```haxe
final _linearMax:stdgo.GoUInt64 = ((18i64 : stdgo.GoUInt64))
```



linearMax is the maximum size table for linear search for non\-Latin1 rune.
Derived by running 'go test \-calibrate'.  

```haxe
final _pC:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```



Bit masks for each code point under U\+0100, for fast lookup.  


a control character.  

```haxe
final _pLl:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```



Bit masks for each code point under U\+0100, for fast lookup.  


a lower\-case letter.  

```haxe
final _pLmask:stdgo.GoUInt64 = ((96i64 : stdgo.GoUInt64))
```



Bit masks for each code point under U\+0100, for fast lookup.  

```haxe
final _pLo:stdgo.GoUInt64 = ((96i64 : stdgo.GoUInt64))
```



Bit masks for each code point under U\+0100, for fast lookup.  


a letter that is neither upper nor lower case.  

```haxe
final _pLu:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```



Bit masks for each code point under U\+0100, for fast lookup.  


an upper\-case letter.  

```haxe
final _pN:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```



Bit masks for each code point under U\+0100, for fast lookup.  


a numeral.  

```haxe
final _pP:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```



Bit masks for each code point under U\+0100, for fast lookup.  


a punctuation character.  

```haxe
final _pS:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```



Bit masks for each code point under U\+0100, for fast lookup.  


a symbolic character.  

```haxe
final _pZ:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```



Bit masks for each code point under U\+0100, for fast lookup.  


a spacing character.  

```haxe
final _pg:stdgo.GoUInt64 = ((144i64 : stdgo.GoUInt64))
```



Bit masks for each code point under U\+0100, for fast lookup.  


a graphical character according to the Unicode definition.  

```haxe
final _pp:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```



Bit masks for each code point under U\+0100, for fast lookup.  


a printable character according to Go's definition.  

```haxe
final lowerCase:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```



Indices into the Delta arrays inside CaseRanges for case mapping.  

```haxe
final maxASCII:stdgo.GoInt32 = ((127 : stdgo.GoInt32))
```



maximum ASCII value.  

```haxe
final maxCase:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```



Indices into the Delta arrays inside CaseRanges for case mapping.  

```haxe
final maxLatin1:stdgo.GoInt32 = ((255 : stdgo.GoInt32))
```



maximum Latin\-1 value.  

```haxe
final maxRune:stdgo.GoInt32 = ((1114111 : stdgo.GoInt32))
```



Maximum valid Unicode code point.  

```haxe
final replacementChar:stdgo.GoInt32 = ((65533 : stdgo.GoInt32))
```



Represents invalid code points.  

```haxe
final titleCase:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```



Indices into the Delta arrays inside CaseRanges for case mapping.  

```haxe
final upperCase:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```



Indices into the Delta arrays inside CaseRanges for case mapping.  

```haxe
final upperLower:stdgo.GoInt32 = ((1114112 : stdgo.GoInt32))
```



If the Delta field of a CaseRange is UpperLower, it means
this CaseRange represents a sequence of the form \(say\)
Upper Lower Upper Lower.  


\(Cannot be a valid delta.\)  

```haxe
final version:stdgo.GoString = (("15.0.0" : stdgo.GoString))
```



Version is the Unicode edition from which the tables are derived.  

# Variables


```haxe
import stdgo.unicode.Unicode
```


```haxe
var __ASCII_Hex_Digit:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Adlam:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Ahom:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Anatolian_Hieroglyphs:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Arabic:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Armenian:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Avestan:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Balinese:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Bamum:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Bassa_Vah:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Batak:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Bengali:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Bhaiksuki:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Bidi_Control:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Bopomofo:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Brahmi:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Braille:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Buginese:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Buhid:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __C:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Canadian_Aboriginal:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Carian:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __CaseRanges:stdgo.Slice<stdgo.unicode.CaseRange>
```


```haxe
var __Caucasian_Albanian:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Cc:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Cf:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Chakma:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Cham:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Cherokee:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Chorasmian:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Co:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Common:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Coptic:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Cs:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Cuneiform:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Cypriot:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Cypro_Minoan:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Cyrillic:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Dash:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Deprecated:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Deseret:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Devanagari:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Diacritic:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Dives_Akuru:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Dogra:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Duployan:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Egyptian_Hieroglyphs:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Elbasan:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Elymaic:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Ethiopic:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Extender:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Georgian:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Glagolitic:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Gothic:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Grantha:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Greek:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Gujarati:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Gunjala_Gondi:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Gurmukhi:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Han:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Hangul:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Hanifi_Rohingya:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Hanunoo:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Hatran:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Hebrew:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Hex_Digit:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Hiragana:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Hyphen:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __IDS_Binary_Operator:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __IDS_Trinary_Operator:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Ideographic:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Imperial_Aramaic:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Inherited:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Inscriptional_Pahlavi:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Inscriptional_Parthian:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Javanese:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Join_Control:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Kaithi:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Kannada:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Katakana:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Kawi:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Kayah_Li:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Kharoshthi:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Khitan_Small_Script:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Khmer:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Khojki:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Khudawadi:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __L:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Lao:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Latin:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Lepcha:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Limbu:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Linear_A:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Linear_B:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Lisu:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Ll:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Lm:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Lo:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Logical_Order_Exception:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Lt:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Lu:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Lycian:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Lydian:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __M:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Mahajani:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Makasar:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Malayalam:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Mandaic:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Manichaean:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Marchen:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Masaram_Gondi:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Mc:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Me:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Medefaidrin:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Meetei_Mayek:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Mende_Kikakui:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Meroitic_Cursive:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Meroitic_Hieroglyphs:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Miao:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Mn:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Modi:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Mongolian:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Mro:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Multani:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Myanmar:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __N:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Nabataean:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Nag_Mundari:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Nandinagari:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Nd:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __New_Tai_Lue:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Newa:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Nko:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Nl:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __No:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Noncharacter_Code_Point:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Nushu:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Nyiakeng_Puachue_Hmong:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Ogham:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Ol_Chiki:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Old_Hungarian:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Old_Italic:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Old_North_Arabian:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Old_Permic:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Old_Persian:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Old_Sogdian:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Old_South_Arabian:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Old_Turkic:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Old_Uyghur:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Oriya:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Osage:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Osmanya:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Other_Alphabetic:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Other_Default_Ignorable_Code_Point:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Other_Grapheme_Extend:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Other_ID_Continue:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Other_ID_Start:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Other_Lowercase:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Other_Math:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Other_Uppercase:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __P:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Pahawh_Hmong:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Palmyrene:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Pattern_Syntax:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Pattern_White_Space:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Pau_Cin_Hau:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Pc:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Pd:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Pe:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Pf:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Phags_Pa:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Phoenician:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Pi:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Po:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Prepended_Concatenation_Mark:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Ps:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Psalter_Pahlavi:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Quotation_Mark:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Radical:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Regional_Indicator:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Rejang:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Runic:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __S:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Samaritan:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Saurashtra:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Sc:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Sentence_Terminal:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Sharada:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Shavian:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Siddham:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __SignWriting:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Sinhala:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Sk:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Sm:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __So:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Soft_Dotted:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Sogdian:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Sora_Sompeng:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Soyombo:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Sundanese:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Syloti_Nagri:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Syriac:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Tagalog:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Tagbanwa:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Tai_Le:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Tai_Tham:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Tai_Viet:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Takri:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Tamil:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Tangsa:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Tangut:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Telugu:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Terminal_Punctuation:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Thaana:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Thai:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Tibetan:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Tifinagh:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Tirhuta:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Toto:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __TurkishCase:stdgo.unicode.SpecialCase
```


```haxe
var __Ugaritic:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Unified_Ideograph:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Vai:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Variation_Selector:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Vithkuqi:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Wancho:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Warang_Citi:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __White_Space:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Yezidi:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Yi:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Z:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Zanabazar_Square:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Zl:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Zp:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var __Zs:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var _asciiFold:stdgo.GoArray<stdgo.GoUInt16>
```


```haxe
var _caseOrbit:stdgo.Slice<stdgo.unicode.T_foldPair>
```


```haxe
var _foldCommon:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var _foldGreek:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var _foldInherited:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var _foldL:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var _foldLl:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var _foldLt:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var _foldLu:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var _foldM:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var _foldMn:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var _properties:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var adlam:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Adlam is the set of Unicode characters in script Adlam.  

```haxe
var ahom:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Ahom is the set of Unicode characters in script Ahom.  

```haxe
var anatolian_Hieroglyphs:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Anatolian\_Hieroglyphs is the set of Unicode characters in script Anatolian\_Hieroglyphs.  

```haxe
var arabic:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Arabic is the set of Unicode characters in script Arabic.  

```haxe
var armenian:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Armenian is the set of Unicode characters in script Armenian.  

```haxe
var ascii_Hex_Digit:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


ASCII\_Hex\_Digit is the set of Unicode characters with property ASCII\_Hex\_Digit.  

```haxe
var avestan:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Avestan is the set of Unicode characters in script Avestan.  

```haxe
var azeriCase:stdgo.unicode.SpecialCase
```


```haxe
var balinese:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Balinese is the set of Unicode characters in script Balinese.  

```haxe
var bamum:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Bamum is the set of Unicode characters in script Bamum.  

```haxe
var bassa_Vah:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Bassa\_Vah is the set of Unicode characters in script Bassa\_Vah.  

```haxe
var batak:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Batak is the set of Unicode characters in script Batak.  

```haxe
var bengali:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Bengali is the set of Unicode characters in script Bengali.  

```haxe
var bhaiksuki:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Bhaiksuki is the set of Unicode characters in script Bhaiksuki.  

```haxe
var bidi_Control:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Bidi\_Control is the set of Unicode characters with property Bidi\_Control.  

```haxe
var bopomofo:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Bopomofo is the set of Unicode characters in script Bopomofo.  

```haxe
var brahmi:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Brahmi is the set of Unicode characters in script Brahmi.  

```haxe
var braille:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Braille is the set of Unicode characters in script Braille.  

```haxe
var buginese:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Buginese is the set of Unicode characters in script Buginese.  

```haxe
var buhid:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Buhid is the set of Unicode characters in script Buhid.  

```haxe
var c:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  

```haxe
var canadian_Aboriginal:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Canadian\_Aboriginal is the set of Unicode characters in script Canadian\_Aboriginal.  

```haxe
var carian:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Carian is the set of Unicode characters in script Carian.  

```haxe
var caseRanges:stdgo.Slice<stdgo.unicode.CaseRange>
```



CaseRanges is the table describing case mappings for all letters with
non\-self mappings.  

```haxe
var categories:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.unicode.RangeTable>>
```



Categories is the set of Unicode category tables.  

```haxe
var caucasian_Albanian:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Caucasian\_Albanian is the set of Unicode characters in script Caucasian\_Albanian.  

```haxe
var cc:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Cc is the set of Unicode characters in category Cc \(Other, control\).  

```haxe
var cf:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Cf is the set of Unicode characters in category Cf \(Other, format\).  

```haxe
var chakma:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Chakma is the set of Unicode characters in script Chakma.  

```haxe
var cham:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Cham is the set of Unicode characters in script Cham.  

```haxe
var cherokee:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Cherokee is the set of Unicode characters in script Cherokee.  

```haxe
var chorasmian:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Chorasmian is the set of Unicode characters in script Chorasmian.  

```haxe
var co:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Co is the set of Unicode characters in category Co \(Other, private use\).  

```haxe
var common:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Common is the set of Unicode characters in script Common.  

```haxe
var coptic:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Coptic is the set of Unicode characters in script Coptic.  

```haxe
var cs:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Cs is the set of Unicode characters in category Cs \(Other, surrogate\).  

```haxe
var cuneiform:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Cuneiform is the set of Unicode characters in script Cuneiform.  

```haxe
var cypriot:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Cypriot is the set of Unicode characters in script Cypriot.  

```haxe
var cypro_Minoan:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Cypro\_Minoan is the set of Unicode characters in script Cypro\_Minoan.  

```haxe
var cyrillic:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Cyrillic is the set of Unicode characters in script Cyrillic.  

```haxe
var dash:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Dash is the set of Unicode characters with property Dash.  

```haxe
var deprecated:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Deprecated is the set of Unicode characters with property Deprecated.  

```haxe
var deseret:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Deseret is the set of Unicode characters in script Deseret.  

```haxe
var devanagari:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Devanagari is the set of Unicode characters in script Devanagari.  

```haxe
var diacritic:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Diacritic is the set of Unicode characters with property Diacritic.  

```haxe
var digit:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Digit is the set of Unicode characters with the "decimal digit" property.  

```haxe
var dives_Akuru:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Dives\_Akuru is the set of Unicode characters in script Dives\_Akuru.  

```haxe
var dogra:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Dogra is the set of Unicode characters in script Dogra.  

```haxe
var duployan:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Duployan is the set of Unicode characters in script Duployan.  

```haxe
var egyptian_Hieroglyphs:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Egyptian\_Hieroglyphs is the set of Unicode characters in script Egyptian\_Hieroglyphs.  

```haxe
var elbasan:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Elbasan is the set of Unicode characters in script Elbasan.  

```haxe
var elymaic:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Elymaic is the set of Unicode characters in script Elymaic.  

```haxe
var ethiopic:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Ethiopic is the set of Unicode characters in script Ethiopic.  

```haxe
var extender:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Extender is the set of Unicode characters with property Extender.  

```haxe
var foldCategory:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.unicode.RangeTable>>
```



FoldCategory maps a category name to a table of
code points outside the category that are equivalent under
simple case folding to code points inside the category.
If there is no entry for a category name, there are no such points.  

```haxe
var foldScript:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.unicode.RangeTable>>
```



FoldScript maps a script name to a table of
code points outside the script that are equivalent under
simple case folding to code points inside the script.
If there is no entry for a script name, there are no such points.  

```haxe
var georgian:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Georgian is the set of Unicode characters in script Georgian.  

```haxe
var glagolitic:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Glagolitic is the set of Unicode characters in script Glagolitic.  

```haxe
var gothic:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Gothic is the set of Unicode characters in script Gothic.  

```haxe
var grantha:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Grantha is the set of Unicode characters in script Grantha.  

```haxe
var graphicRanges:stdgo.Slice<stdgo.Ref<stdgo.unicode.RangeTable>>
```



GraphicRanges defines the set of graphic characters according to Unicode.  

```haxe
var greek:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Greek is the set of Unicode characters in script Greek.  

```haxe
var gujarati:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Gujarati is the set of Unicode characters in script Gujarati.  

```haxe
var gunjala_Gondi:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Gunjala\_Gondi is the set of Unicode characters in script Gunjala\_Gondi.  

```haxe
var gurmukhi:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Gurmukhi is the set of Unicode characters in script Gurmukhi.  

```haxe
var han:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Han is the set of Unicode characters in script Han.  

```haxe
var hangul:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Hangul is the set of Unicode characters in script Hangul.  

```haxe
var hanifi_Rohingya:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Hanifi\_Rohingya is the set of Unicode characters in script Hanifi\_Rohingya.  

```haxe
var hanunoo:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Hanunoo is the set of Unicode characters in script Hanunoo.  

```haxe
var hatran:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Hatran is the set of Unicode characters in script Hatran.  

```haxe
var hebrew:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Hebrew is the set of Unicode characters in script Hebrew.  

```haxe
var hex_Digit:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Hex\_Digit is the set of Unicode characters with property Hex\_Digit.  

```haxe
var hiragana:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Hiragana is the set of Unicode characters in script Hiragana.  

```haxe
var hyphen:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Hyphen is the set of Unicode characters with property Hyphen.  

```haxe
var ideographic:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Ideographic is the set of Unicode characters with property Ideographic.  

```haxe
var ids_Binary_Operator:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


IDS\_Binary\_Operator is the set of Unicode characters with property IDS\_Binary\_Operator.  

```haxe
var ids_Trinary_Operator:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


IDS\_Trinary\_Operator is the set of Unicode characters with property IDS\_Trinary\_Operator.  

```haxe
var imperial_Aramaic:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Imperial\_Aramaic is the set of Unicode characters in script Imperial\_Aramaic.  

```haxe
var inherited:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Inherited is the set of Unicode characters in script Inherited.  

```haxe
var inscriptional_Pahlavi:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Inscriptional\_Pahlavi is the set of Unicode characters in script Inscriptional\_Pahlavi.  

```haxe
var inscriptional_Parthian:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Inscriptional\_Parthian is the set of Unicode characters in script Inscriptional\_Parthian.  

```haxe
var javanese:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Javanese is the set of Unicode characters in script Javanese.  

```haxe
var join_Control:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Join\_Control is the set of Unicode characters with property Join\_Control.  

```haxe
var kaithi:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Kaithi is the set of Unicode characters in script Kaithi.  

```haxe
var kannada:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Kannada is the set of Unicode characters in script Kannada.  

```haxe
var katakana:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Katakana is the set of Unicode characters in script Katakana.  

```haxe
var kawi:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Kawi is the set of Unicode characters in script Kawi.  

```haxe
var kayah_Li:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Kayah\_Li is the set of Unicode characters in script Kayah\_Li.  

```haxe
var kharoshthi:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Kharoshthi is the set of Unicode characters in script Kharoshthi.  

```haxe
var khitan_Small_Script:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Khitan\_Small\_Script is the set of Unicode characters in script Khitan\_Small\_Script.  

```haxe
var khmer:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Khmer is the set of Unicode characters in script Khmer.  

```haxe
var khojki:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Khojki is the set of Unicode characters in script Khojki.  

```haxe
var khudawadi:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Khudawadi is the set of Unicode characters in script Khudawadi.  

```haxe
var l:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  

```haxe
var lao:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Lao is the set of Unicode characters in script Lao.  

```haxe
var latin:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Latin is the set of Unicode characters in script Latin.  

```haxe
var lepcha:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Lepcha is the set of Unicode characters in script Lepcha.  

```haxe
var letter:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Letter/L is the set of Unicode letters, category L.  

```haxe
var limbu:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Limbu is the set of Unicode characters in script Limbu.  

```haxe
var linear_A:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Linear\_A is the set of Unicode characters in script Linear\_A.  

```haxe
var linear_B:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Linear\_B is the set of Unicode characters in script Linear\_B.  

```haxe
var lisu:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Lisu is the set of Unicode characters in script Lisu.  

```haxe
var ll:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Ll is the set of Unicode characters in category Ll \(Letter, lowercase\).  

```haxe
var lm:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Lm is the set of Unicode characters in category Lm \(Letter, modifier\).  

```haxe
var lo:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Lo is the set of Unicode characters in category Lo \(Letter, other\).  

```haxe
var logical_Order_Exception:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Logical\_Order\_Exception is the set of Unicode characters with property Logical\_Order\_Exception.  

```haxe
var lower:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Lower is the set of Unicode lower case letters.  

```haxe
var lt:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Lt is the set of Unicode characters in category Lt \(Letter, titlecase\).  

```haxe
var lu:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Lu is the set of Unicode characters in category Lu \(Letter, uppercase\).  

```haxe
var lycian:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Lycian is the set of Unicode characters in script Lycian.  

```haxe
var lydian:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Lydian is the set of Unicode characters in script Lydian.  

```haxe
var m:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  

```haxe
var mahajani:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Mahajani is the set of Unicode characters in script Mahajani.  

```haxe
var makasar:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Makasar is the set of Unicode characters in script Makasar.  

```haxe
var malayalam:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Malayalam is the set of Unicode characters in script Malayalam.  

```haxe
var mandaic:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Mandaic is the set of Unicode characters in script Mandaic.  

```haxe
var manichaean:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Manichaean is the set of Unicode characters in script Manichaean.  

```haxe
var marchen:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Marchen is the set of Unicode characters in script Marchen.  

```haxe
var mark:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Mark/M is the set of Unicode mark characters, category M.  

```haxe
var masaram_Gondi:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Masaram\_Gondi is the set of Unicode characters in script Masaram\_Gondi.  

```haxe
var mc:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Mc is the set of Unicode characters in category Mc \(Mark, spacing combining\).  

```haxe
var me:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Me is the set of Unicode characters in category Me \(Mark, enclosing\).  

```haxe
var medefaidrin:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Medefaidrin is the set of Unicode characters in script Medefaidrin.  

```haxe
var meetei_Mayek:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Meetei\_Mayek is the set of Unicode characters in script Meetei\_Mayek.  

```haxe
var mende_Kikakui:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Mende\_Kikakui is the set of Unicode characters in script Mende\_Kikakui.  

```haxe
var meroitic_Cursive:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Meroitic\_Cursive is the set of Unicode characters in script Meroitic\_Cursive.  

```haxe
var meroitic_Hieroglyphs:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Meroitic\_Hieroglyphs is the set of Unicode characters in script Meroitic\_Hieroglyphs.  

```haxe
var miao:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Miao is the set of Unicode characters in script Miao.  

```haxe
var mn:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Mn is the set of Unicode characters in category Mn \(Mark, nonspacing\).  

```haxe
var modi:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Modi is the set of Unicode characters in script Modi.  

```haxe
var mongolian:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Mongolian is the set of Unicode characters in script Mongolian.  

```haxe
var mro:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Mro is the set of Unicode characters in script Mro.  

```haxe
var multani:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Multani is the set of Unicode characters in script Multani.  

```haxe
var myanmar:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Myanmar is the set of Unicode characters in script Myanmar.  

```haxe
var n:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  

```haxe
var nabataean:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Nabataean is the set of Unicode characters in script Nabataean.  

```haxe
var nag_Mundari:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Nag\_Mundari is the set of Unicode characters in script Nag\_Mundari.  

```haxe
var nandinagari:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Nandinagari is the set of Unicode characters in script Nandinagari.  

```haxe
var nd:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Nd is the set of Unicode characters in category Nd \(Number, decimal digit\).  

```haxe
var new_Tai_Lue:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


New\_Tai\_Lue is the set of Unicode characters in script New\_Tai\_Lue.  

```haxe
var newa:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Newa is the set of Unicode characters in script Newa.  

```haxe
var nko:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Nko is the set of Unicode characters in script Nko.  

```haxe
var nl:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Nl is the set of Unicode characters in category Nl \(Number, letter\).  

```haxe
var no:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


No is the set of Unicode characters in category No \(Number, other\).  

```haxe
var noncharacter_Code_Point:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Noncharacter\_Code\_Point is the set of Unicode characters with property Noncharacter\_Code\_Point.  

```haxe
var number:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Number/N is the set of Unicode number characters, category N.  

```haxe
var nushu:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Nushu is the set of Unicode characters in script Nushu.  

```haxe
var nyiakeng_Puachue_Hmong:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Nyiakeng\_Puachue\_Hmong is the set of Unicode characters in script Nyiakeng\_Puachue\_Hmong.  

```haxe
var ogham:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Ogham is the set of Unicode characters in script Ogham.  

```haxe
var ol_Chiki:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Ol\_Chiki is the set of Unicode characters in script Ol\_Chiki.  

```haxe
var old_Hungarian:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Old\_Hungarian is the set of Unicode characters in script Old\_Hungarian.  

```haxe
var old_Italic:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Old\_Italic is the set of Unicode characters in script Old\_Italic.  

```haxe
var old_North_Arabian:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Old\_North\_Arabian is the set of Unicode characters in script Old\_North\_Arabian.  

```haxe
var old_Permic:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Old\_Permic is the set of Unicode characters in script Old\_Permic.  

```haxe
var old_Persian:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Old\_Persian is the set of Unicode characters in script Old\_Persian.  

```haxe
var old_Sogdian:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Old\_Sogdian is the set of Unicode characters in script Old\_Sogdian.  

```haxe
var old_South_Arabian:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Old\_South\_Arabian is the set of Unicode characters in script Old\_South\_Arabian.  

```haxe
var old_Turkic:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Old\_Turkic is the set of Unicode characters in script Old\_Turkic.  

```haxe
var old_Uyghur:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Old\_Uyghur is the set of Unicode characters in script Old\_Uyghur.  

```haxe
var oriya:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Oriya is the set of Unicode characters in script Oriya.  

```haxe
var osage:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Osage is the set of Unicode characters in script Osage.  

```haxe
var osmanya:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Osmanya is the set of Unicode characters in script Osmanya.  

```haxe
var other:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Other/C is the set of Unicode control and special characters, category C.  

```haxe
var other_Alphabetic:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Other\_Alphabetic is the set of Unicode characters with property Other\_Alphabetic.  

```haxe
var other_Default_Ignorable_Code_Point:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Other\_Default\_Ignorable\_Code\_Point is the set of Unicode characters with property Other\_Default\_Ignorable\_Code\_Point.  

```haxe
var other_Grapheme_Extend:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Other\_Grapheme\_Extend is the set of Unicode characters with property Other\_Grapheme\_Extend.  

```haxe
var other_ID_Continue:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Other\_ID\_Continue is the set of Unicode characters with property Other\_ID\_Continue.  

```haxe
var other_ID_Start:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Other\_ID\_Start is the set of Unicode characters with property Other\_ID\_Start.  

```haxe
var other_Lowercase:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Other\_Lowercase is the set of Unicode characters with property Other\_Lowercase.  

```haxe
var other_Math:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Other\_Math is the set of Unicode characters with property Other\_Math.  

```haxe
var other_Uppercase:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Other\_Uppercase is the set of Unicode characters with property Other\_Uppercase.  

```haxe
var p:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  

```haxe
var pahawh_Hmong:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Pahawh\_Hmong is the set of Unicode characters in script Pahawh\_Hmong.  

```haxe
var palmyrene:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Palmyrene is the set of Unicode characters in script Palmyrene.  

```haxe
var pattern_Syntax:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Pattern\_Syntax is the set of Unicode characters with property Pattern\_Syntax.  

```haxe
var pattern_White_Space:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Pattern\_White\_Space is the set of Unicode characters with property Pattern\_White\_Space.  

```haxe
var pau_Cin_Hau:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Pau\_Cin\_Hau is the set of Unicode characters in script Pau\_Cin\_Hau.  

```haxe
var pc:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Pc is the set of Unicode characters in category Pc \(Punctuation, connector\).  

```haxe
var pd:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Pd is the set of Unicode characters in category Pd \(Punctuation, dash\).  

```haxe
var pe:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Pe is the set of Unicode characters in category Pe \(Punctuation, close\).  

```haxe
var pf:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Pf is the set of Unicode characters in category Pf \(Punctuation, final quote\).  

```haxe
var phags_Pa:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Phags\_Pa is the set of Unicode characters in script Phags\_Pa.  

```haxe
var phoenician:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Phoenician is the set of Unicode characters in script Phoenician.  

```haxe
var pi:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Pi is the set of Unicode characters in category Pi \(Punctuation, initial quote\).  

```haxe
var po:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Po is the set of Unicode characters in category Po \(Punctuation, other\).  

```haxe
var prepended_Concatenation_Mark:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Prepended\_Concatenation\_Mark is the set of Unicode characters with property Prepended\_Concatenation\_Mark.  

```haxe
var printRanges:stdgo.Slice<stdgo.Ref<stdgo.unicode.RangeTable>>
```



PrintRanges defines the set of printable characters according to Go.
ASCII space, U\+0020, is handled separately.  

```haxe
var properties:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.unicode.RangeTable>>
```



Properties is the set of Unicode property tables.  

```haxe
var ps:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Ps is the set of Unicode characters in category Ps \(Punctuation, open\).  

```haxe
var psalter_Pahlavi:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Psalter\_Pahlavi is the set of Unicode characters in script Psalter\_Pahlavi.  

```haxe
var punct:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Punct/P is the set of Unicode punctuation characters, category P.  

```haxe
var quotation_Mark:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Quotation\_Mark is the set of Unicode characters with property Quotation\_Mark.  

```haxe
var radical:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Radical is the set of Unicode characters with property Radical.  

```haxe
var regional_Indicator:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Regional\_Indicator is the set of Unicode characters with property Regional\_Indicator.  

```haxe
var rejang:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Rejang is the set of Unicode characters in script Rejang.  

```haxe
var runic:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Runic is the set of Unicode characters in script Runic.  

```haxe
var s:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  

```haxe
var samaritan:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Samaritan is the set of Unicode characters in script Samaritan.  

```haxe
var saurashtra:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Saurashtra is the set of Unicode characters in script Saurashtra.  

```haxe
var sc:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Sc is the set of Unicode characters in category Sc \(Symbol, currency\).  

```haxe
var scripts:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.unicode.RangeTable>>
```



Scripts is the set of Unicode script tables.  

```haxe
var sentence_Terminal:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Sentence\_Terminal is the set of Unicode characters with property Sentence\_Terminal.  

```haxe
var sharada:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Sharada is the set of Unicode characters in script Sharada.  

```haxe
var shavian:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Shavian is the set of Unicode characters in script Shavian.  

```haxe
var siddham:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Siddham is the set of Unicode characters in script Siddham.  

```haxe
var signWriting:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


SignWriting is the set of Unicode characters in script SignWriting.  

```haxe
var sinhala:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Sinhala is the set of Unicode characters in script Sinhala.  

```haxe
var sk:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Sk is the set of Unicode characters in category Sk \(Symbol, modifier\).  

```haxe
var sm:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Sm is the set of Unicode characters in category Sm \(Symbol, math\).  

```haxe
var so:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


So is the set of Unicode characters in category So \(Symbol, other\).  

```haxe
var soft_Dotted:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Soft\_Dotted is the set of Unicode characters with property Soft\_Dotted.  

```haxe
var sogdian:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Sogdian is the set of Unicode characters in script Sogdian.  

```haxe
var sora_Sompeng:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Sora\_Sompeng is the set of Unicode characters in script Sora\_Sompeng.  

```haxe
var soyombo:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Soyombo is the set of Unicode characters in script Soyombo.  

```haxe
var space:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Space/Z is the set of Unicode space characters, category Z.  

```haxe
var sterm:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


STerm is an alias for Sentence\_Terminal.  

```haxe
var sundanese:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Sundanese is the set of Unicode characters in script Sundanese.  

```haxe
var syloti_Nagri:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Syloti\_Nagri is the set of Unicode characters in script Syloti\_Nagri.  

```haxe
var symbol:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Symbol/S is the set of Unicode symbol characters, category S.  

```haxe
var syriac:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Syriac is the set of Unicode characters in script Syriac.  

```haxe
var tagalog:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Tagalog is the set of Unicode characters in script Tagalog.  

```haxe
var tagbanwa:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Tagbanwa is the set of Unicode characters in script Tagbanwa.  

```haxe
var tai_Le:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Tai\_Le is the set of Unicode characters in script Tai\_Le.  

```haxe
var tai_Tham:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Tai\_Tham is the set of Unicode characters in script Tai\_Tham.  

```haxe
var tai_Viet:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Tai\_Viet is the set of Unicode characters in script Tai\_Viet.  

```haxe
var takri:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Takri is the set of Unicode characters in script Takri.  

```haxe
var tamil:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Tamil is the set of Unicode characters in script Tamil.  

```haxe
var tangsa:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Tangsa is the set of Unicode characters in script Tangsa.  

```haxe
var tangut:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Tangut is the set of Unicode characters in script Tangut.  

```haxe
var telugu:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Telugu is the set of Unicode characters in script Telugu.  

```haxe
var terminal_Punctuation:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Terminal\_Punctuation is the set of Unicode characters with property Terminal\_Punctuation.  

```haxe
var thaana:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Thaana is the set of Unicode characters in script Thaana.  

```haxe
var thai:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Thai is the set of Unicode characters in script Thai.  

```haxe
var tibetan:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Tibetan is the set of Unicode characters in script Tibetan.  

```haxe
var tifinagh:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Tifinagh is the set of Unicode characters in script Tifinagh.  

```haxe
var tirhuta:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Tirhuta is the set of Unicode characters in script Tirhuta.  

```haxe
var title:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Title is the set of Unicode title case letters.  

```haxe
var toto:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Toto is the set of Unicode characters in script Toto.  

```haxe
var turkishCase:stdgo.unicode.SpecialCase
```


```haxe
var ugaritic:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Ugaritic is the set of Unicode characters in script Ugaritic.  

```haxe
var unified_Ideograph:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Unified\_Ideograph is the set of Unicode characters with property Unified\_Ideograph.  

```haxe
var upper:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Upper is the set of Unicode upper case letters.  

```haxe
var vai:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Vai is the set of Unicode characters in script Vai.  

```haxe
var variation_Selector:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Variation\_Selector is the set of Unicode characters with property Variation\_Selector.  

```haxe
var vithkuqi:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Vithkuqi is the set of Unicode characters in script Vithkuqi.  

```haxe
var wancho:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Wancho is the set of Unicode characters in script Wancho.  

```haxe
var warang_Citi:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Warang\_Citi is the set of Unicode characters in script Warang\_Citi.  

```haxe
var white_Space:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


White\_Space is the set of Unicode characters with property White\_Space.  

```haxe
var yezidi:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Yezidi is the set of Unicode characters in script Yezidi.  

```haxe
var yi:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Yi is the set of Unicode characters in script Yi.  

```haxe
var z:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  

```haxe
var zanabazar_Square:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Zanabazar\_Square is the set of Unicode characters in script Zanabazar\_Square.  

```haxe
var zl:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Zl is the set of Unicode characters in category Zl \(Separator, line\).  

```haxe
var zp:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Zp is the set of Unicode characters in category Zp \(Separator, paragraph\).  

```haxe
var zs:stdgo.Ref<stdgo.unicode.RangeTable>
```



These variables have type \*RangeTable.  


Zs is the set of Unicode characters in category Zs \(Separator, space\).  

# Functions


```haxe
import stdgo.unicode.Unicode
```


## function \_is16


```haxe
function _is16(_ranges:stdgo.Slice<stdgo.unicode.Range16>, _r:stdgo.GoUInt16):Bool
```



is16 reports whether r is in the sorted slice of 16\-bit ranges.  

[\(view code\)](<./Unicode.hx#L9615>)


## function \_is32


```haxe
function _is32(_ranges:stdgo.Slice<stdgo.unicode.Range32>, _r:stdgo.GoUInt32):Bool
```



is32 reports whether r is in the sorted slice of 32\-bit ranges.  

[\(view code\)](<./Unicode.hx#L9647>)


## function \_isExcludingLatin


```haxe
function _isExcludingLatin(_rangeTab:stdgo.Ref<stdgo.unicode.RangeTable>, _r:stdgo.GoRune):Bool
```


[\(view code\)](<./Unicode.hx#L9690>)


## function \_to


```haxe
function _to(__case:stdgo.GoInt, _r:stdgo.GoRune, _caseRange:stdgo.Slice<stdgo.unicode.CaseRange>):{
	_1:Bool;
	_0:stdgo.GoRune;
}
```



to maps the rune using the specified case mapping.
It additionally reports whether caseRange contained a mapping for r.  

[\(view code\)](<./Unicode.hx#L9735>)


## function in\_


```haxe
function in_(_r:stdgo.GoRune, _ranges:haxe.Rest<stdgo.Ref<stdgo.unicode.RangeTable>>):Bool
```



In reports whether the rune is a member of one of the ranges.  

[\(view code\)](<./Unicode.hx#L9527>)


## function isControl


```haxe
function isControl(_r:stdgo.GoRune):Bool
```



IsControl reports whether the rune is a control character.
The C \(Other\) Unicode category includes more code points
such as surrogates; use Is\(C, r\) to test for them.  

[\(view code\)](<./Unicode.hx#L9541>)


## function isDigit


```haxe
function isDigit(_r:stdgo.GoRune):Bool
```



IsDigit reports whether the rune is a decimal digit.  

### exampleIsDigit


<details><summary></summary>
<p>


```haxe
function exampleIsDigit():Void {
        stdgo.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.isDigit((2537 : stdgo.GoInt32))));
        stdgo.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.isDigit((65 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L9482>)


## function isGraphic


```haxe
function isGraphic(_r:stdgo.GoRune):Bool
```



IsGraphic reports whether the rune is defined as a Graphic by Unicode.
Such characters include letters, marks, numbers, punctuation, symbols, and
spaces, from categories L, M, N, P, S, Zs.  

[\(view code\)](<./Unicode.hx#L9493>)


## function isLetter


```haxe
function isLetter(_r:stdgo.GoRune):Bool
```



IsLetter reports whether the rune is a letter \(category L\).  

### exampleIsLetter


<details><summary></summary>
<p>


```haxe
function exampleIsLetter():Void {
        stdgo.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.isLetter((65 : stdgo.GoInt32))));
        stdgo.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.isLetter((55 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L9550>)


## function isLower


```haxe
function isLower(_r:stdgo.GoRune):Bool
```



IsLower reports whether the rune is a lower case letter.  

### exampleIsLower


<details><summary></summary>
<p>


```haxe
function exampleIsLower():Void {
        stdgo.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.isLower((97 : stdgo.GoInt32))));
        stdgo.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.isLower((65 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L9716>)


## function isMark


```haxe
function isMark(_r:stdgo.GoRune):Bool
```



IsMark reports whether the rune is a mark character \(category M\).  

[\(view code\)](<./Unicode.hx#L9559>)


## function isNumber


```haxe
function isNumber(_r:stdgo.GoRune):Bool
```



IsNumber reports whether the rune is a number \(category N\).  

### exampleIsNumber


<details><summary></summary>
<p>


```haxe
function exampleIsNumber():Void {
        stdgo.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.isNumber((8551 : stdgo.GoInt32))));
        stdgo.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.isNumber((65 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L9565>)


## function isOneOf


```haxe
function isOneOf(_ranges:stdgo.Slice<stdgo.Ref<stdgo.unicode.RangeTable>>, _r:stdgo.GoRune):Bool
```



IsOneOf reports whether the rune is a member of one of the ranges.
The function "In" provides a nicer signature and should be used in preference to IsOneOf.  

[\(view code\)](<./Unicode.hx#L9516>)


## function isPrint


```haxe
function isPrint(_r:stdgo.GoRune):Bool
```



IsPrint reports whether the rune is defined as printable by Go. Such
characters include letters, marks, numbers, punctuation, symbols, and the
ASCII space character, from categories L, M, N, P, S and the ASCII space
character. This categorization is the same as IsGraphic except that the
only spacing character is ASCII space, U\+0020.  

[\(view code\)](<./Unicode.hx#L9506>)


## function isPunct


```haxe
function isPunct(_r:stdgo.GoRune):Bool
```



IsPunct reports whether the rune is a Unicode punctuation character
\(category P\).  

[\(view code\)](<./Unicode.hx#L9575>)


## function isSpace


```haxe
function isSpace(_r:stdgo.GoRune):Bool
```



IsSpace reports whether the rune is a space character as defined
by Unicode's White Space property; in the Latin\-1 space
this is  

```
	'\t', '\n', '\v', '\f', '\r', ' ', U+0085 (NEL), U+00A0 (NBSP).
```

Other definitions of spacing characters are set by category
Z and property Pattern\_White\_Space.  

### exampleIsSpace


<details><summary></summary>
<p>


```haxe
function exampleIsSpace():Void {
        stdgo.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.isSpace((32 : stdgo.GoInt32))));
        stdgo.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.isSpace((10 : stdgo.GoInt32))));
        stdgo.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.isSpace((9 : stdgo.GoInt32))));
        stdgo.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.isSpace((97 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L9591>)


## function isSymbol


```haxe
function isSymbol(_r:stdgo.GoRune):Bool
```



IsSymbol reports whether the rune is a symbolic character.  

[\(view code\)](<./Unicode.hx#L9606>)


## function isTitle


```haxe
function isTitle(_r:stdgo.GoRune):Bool
```



IsTitle reports whether the rune is a title case letter.  

### exampleIsTitle


<details><summary></summary>
<p>


```haxe
function exampleIsTitle():Void {
        stdgo.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.isTitle((453 : stdgo.GoInt32))));
        stdgo.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.isTitle((97 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L9725>)


## function isUpper


```haxe
function isUpper(_r:stdgo.GoRune):Bool
```



IsUpper reports whether the rune is an upper case letter.  

### exampleIsUpper


<details><summary></summary>
<p>


```haxe
function exampleIsUpper():Void {
        stdgo.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.isUpper((65 : stdgo.GoInt32))));
        stdgo.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.isUpper((97 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L9707>)


## function is\_


```haxe
function is_(_rangeTab:stdgo.Ref<stdgo.unicode.RangeTable>, _r:stdgo.GoRune):Bool
```



Is reports whether the rune is in the specified table of ranges.  

[\(view code\)](<./Unicode.hx#L9679>)


## function simpleFold


```haxe
function simpleFold(_r:stdgo.GoRune):stdgo.GoRune
```



SimpleFold iterates over Unicode code points equivalent under
the Unicode\-defined simple case folding. Among the code points
equivalent to rune \(including rune itself\), SimpleFold returns the
smallest rune \> r if one exists, or else the smallest rune \>= 0.
If r is not a valid Unicode code point, SimpleFold\(r\) returns r.  


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
### exampleSimpleFold


<details><summary></summary>
<p>


```haxe
function exampleSimpleFold():Void {
        stdgo.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.simpleFold((65 : stdgo.GoInt32))));
        stdgo.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.simpleFold((97 : stdgo.GoInt32))));
        stdgo.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.simpleFold((75 : stdgo.GoInt32))));
        stdgo.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.simpleFold((107 : stdgo.GoInt32))));
        stdgo.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.simpleFold((8490 : stdgo.GoInt32))));
        stdgo.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.simpleFold((49 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L9826>)


## function to


```haxe
function to(__case:stdgo.GoInt, _r:stdgo.GoRune):stdgo.GoRune
```



To maps the rune to the specified case: UpperCase, LowerCase, or TitleCase.  

### exampleTo


<details><summary></summary>
<p>


```haxe
function exampleTo():Void {
        {};
        stdgo.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.to((0 : stdgo.GoInt), (103 : stdgo.GoInt32))));
        stdgo.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.to((1 : stdgo.GoInt), (103 : stdgo.GoInt32))));
        stdgo.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.to((2 : stdgo.GoInt), (103 : stdgo.GoInt32))));
        {};
        stdgo.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.to((0 : stdgo.GoInt), (71 : stdgo.GoInt32))));
        stdgo.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.to((1 : stdgo.GoInt), (71 : stdgo.GoInt32))));
        stdgo.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.to((2 : stdgo.GoInt), (71 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L9763>)


## function toLower


```haxe
function toLower(_r:stdgo.GoRune):stdgo.GoRune
```



ToLower maps the rune to lower case.  

### exampleToLower


<details><summary></summary>
<p>


```haxe
function exampleToLower():Void {
        {};
        stdgo.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.toLower((71 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L9785>)


## function toTitle


```haxe
function toTitle(_r:stdgo.GoRune):stdgo.GoRune
```



ToTitle maps the rune to title case.  

### exampleToTitle


<details><summary></summary>
<p>


```haxe
function exampleToTitle():Void {
        {};
        stdgo.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.toTitle((103 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L9797>)


## function toUpper


```haxe
function toUpper(_r:stdgo.GoRune):stdgo.GoRune
```



ToUpper maps the rune to upper case.  

### exampleToUpper


<details><summary></summary>
<p>


```haxe
function exampleToUpper():Void {
        {};
        stdgo.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.unicode.Unicode.toUpper((103 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Unicode.hx#L9773>)


# Classes


```haxe
import stdgo.unicode.*
```


## class CaseRange



CaseRange represents a range of Unicode code points for simple \(one
code point to one code point\) case conversion.
The range runs from Lo to Hi inclusive, with a fixed stride of 1. Deltas
are the number to add to the code point to reach the code point for a
different case for that character. They may be negative. If zero, it
means the character is in the corresponding case. There is a special
case representing sequences of alternating corresponding Upper and Lower
pairs. It appears with a fixed Delta of  

```
	{UpperLower, UpperLower, UpperLower}
```

The constant UpperLower has an otherwise impossible delta value.  

```haxe
var delta:stdgo.unicode.T_d
```


```haxe
var hi:stdgo.GoUInt32
```


```haxe
var lo:stdgo.GoUInt32
```


### CaseRange function new


```haxe
function new(?lo:stdgo.GoUInt32, ?hi:stdgo.GoUInt32, ?delta:Null<stdgo.unicode.T_d>):Void
```


[\(view code\)](<./Unicode.hx#L9443>)


## class Range16



Range16 represents of a range of 16\-bit Unicode code points. The range runs from Lo to Hi
inclusive and has the specified stride.  

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


[\(view code\)](<./Unicode.hx#L9392>)


## class Range32



Range32 represents of a range of Unicode code points and is used when one or
more of the values will not fit in 16 bits. The range runs from Lo to Hi
inclusive and has the specified stride. Lo and Hi must always be \>= 1\<\<16.  

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


[\(view code\)](<./Unicode.hx#L9413>)


## class RangeTable



RangeTable defines a set of Unicode code points by listing the ranges of
code points within the set. The ranges are listed in two slices
to save space: a slice of 16\-bit ranges and a slice of 32\-bit ranges.
The two slices must be in sorted order and non\-overlapping.
Also, R32 should contain only values \>= 0x10000 \(1\<\<16\).  

```haxe
var latinOffset:stdgo.GoInt
```


```haxe
var r16:stdgo.Slice<stdgo.unicode.Range16>
```


```haxe
var r32:stdgo.Slice<stdgo.unicode.Range32>
```


### RangeTable function new


```haxe
function new(?r16:stdgo.Slice<stdgo.unicode.Range16>, ?r32:stdgo.Slice<stdgo.unicode.Range32>, ?latinOffset:stdgo.GoInt):Void
```


[\(view code\)](<./Unicode.hx#L9372>)


# Typedefs


```haxe
import stdgo.unicode.*
```


## typedef SpecialCase


```haxe
typedef SpecialCase = stdgo.Slice<stdgo.unicode.CaseRange>;
```



SpecialCase represents language\-specific case mappings such as Turkish.
Methods of SpecialCase customize \(by overriding\) the standard mappings.  

## typedef T\_d


```haxe
typedef T_d = stdgo.GoArray<stdgo.GoInt32>;
```



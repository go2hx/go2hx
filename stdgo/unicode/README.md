# Module: `stdgo.unicode`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _is16(_ranges:stdgo.Slice<stdgo.unicode.Range16>, _r:stdgo.GoUInt16):Void`](<#function-_is16>)

- [`function _is32(_ranges:stdgo.Slice<stdgo.unicode.Range32>, _r:stdgo.GoUInt32):Void`](<#function-_is32>)

- [`function _isExcludingLatin(_rangeTab:stdgo.Ref<stdgo.unicode.RangeTable>, _r:stdgo.GoRune):Void`](<#function-_isexcludinglatin>)

- [`function _to(__case:stdgo.GoInt, _r:stdgo.GoRune, _caseRange:stdgo.Slice<stdgo.unicode.CaseRange>):Void`](<#function-_to>)

- [`function in_(_r:stdgo.GoRune, _ranges:haxe.Rest<stdgo.Ref<stdgo.unicode.RangeTable>>):Void`](<#function-in_>)

- [`function isControl(_r:stdgo.GoRune):Void`](<#function-iscontrol>)

- [`function isDigit(_r:stdgo.GoRune):Void`](<#function-isdigit>)

- [`function isGraphic(_r:stdgo.GoRune):Void`](<#function-isgraphic>)

- [`function isLetter(_r:stdgo.GoRune):Void`](<#function-isletter>)

- [`function isLower(_r:stdgo.GoRune):Void`](<#function-islower>)

- [`function isMark(_r:stdgo.GoRune):Void`](<#function-ismark>)

- [`function isNumber(_r:stdgo.GoRune):Void`](<#function-isnumber>)

- [`function isOneOf(_ranges:stdgo.Slice<stdgo.Ref<stdgo.unicode.RangeTable>>, _r:stdgo.GoRune):Void`](<#function-isoneof>)

- [`function isPrint(_r:stdgo.GoRune):Void`](<#function-isprint>)

- [`function isPunct(_r:stdgo.GoRune):Void`](<#function-ispunct>)

- [`function isSpace(_r:stdgo.GoRune):Void`](<#function-isspace>)

- [`function isSymbol(_r:stdgo.GoRune):Void`](<#function-issymbol>)

- [`function isTitle(_r:stdgo.GoRune):Void`](<#function-istitle>)

- [`function isUpper(_r:stdgo.GoRune):Void`](<#function-isupper>)

- [`function is_(_rangeTab:stdgo.Ref<stdgo.unicode.RangeTable>, _r:stdgo.GoRune):Void`](<#function-is_>)

- [`function simpleFold(_r:stdgo.GoRune):Void`](<#function-simplefold>)

- [`function to(__case:stdgo.GoInt, _r:stdgo.GoRune):Void`](<#function-to>)

- [`function toLower(_r:stdgo.GoRune):Void`](<#function-tolower>)

- [`function toTitle(_r:stdgo.GoRune):Void`](<#function-totitle>)

- [`function toUpper(_r:stdgo.GoRune):Void`](<#function-toupper>)

- [typedef CaseRange](<#typedef-caserange>)

- [typedef Range16](<#typedef-range16>)

- [typedef Range32](<#typedef-range32>)

- [typedef RangeTable](<#typedef-rangetable>)

- [typedef SpecialCase](<#typedef-specialcase>)

- [typedef SpecialCase\_asInterface](<#typedef-specialcase_asinterface>)

- [typedef SpecialCase\_static\_extension](<#typedef-specialcase_static_extension>)

- [typedef T\_d](<#typedef-t_d>)

- [typedef T\_foldPair](<#typedef-t_foldpair>)

# Variables


```haxe
import stdgo.unicode.Unicode
```


```haxe
var __ASCII_Hex_Digit:Dynamic
```


```haxe
var __Adlam:Dynamic
```


```haxe
var __Ahom:Dynamic
```


```haxe
var __Anatolian_Hieroglyphs:Dynamic
```


```haxe
var __Arabic:Dynamic
```


```haxe
var __Armenian:Dynamic
```


```haxe
var __Avestan:Dynamic
```


```haxe
var __Balinese:Dynamic
```


```haxe
var __Bamum:Dynamic
```


```haxe
var __Bassa_Vah:Dynamic
```


```haxe
var __Batak:Dynamic
```


```haxe
var __Bengali:Dynamic
```


```haxe
var __Bhaiksuki:Dynamic
```


```haxe
var __Bidi_Control:Dynamic
```


```haxe
var __Bopomofo:Dynamic
```


```haxe
var __Brahmi:Dynamic
```


```haxe
var __Braille:Dynamic
```


```haxe
var __Buginese:Dynamic
```


```haxe
var __Buhid:Dynamic
```


```haxe
var __C:Dynamic
```


```haxe
var __Canadian_Aboriginal:Dynamic
```


```haxe
var __Carian:Dynamic
```


```haxe
var __CaseRanges:Dynamic
```


```haxe
var __Caucasian_Albanian:Dynamic
```


```haxe
var __Cc:Dynamic
```


```haxe
var __Cf:Dynamic
```


```haxe
var __Chakma:Dynamic
```


```haxe
var __Cham:Dynamic
```


```haxe
var __Cherokee:Dynamic
```


```haxe
var __Chorasmian:Dynamic
```


```haxe
var __Co:Dynamic
```


```haxe
var __Common:Dynamic
```


```haxe
var __Coptic:Dynamic
```


```haxe
var __Cs:Dynamic
```


```haxe
var __Cuneiform:Dynamic
```


```haxe
var __Cypriot:Dynamic
```


```haxe
var __Cypro_Minoan:Dynamic
```


```haxe
var __Cyrillic:Dynamic
```


```haxe
var __Dash:Dynamic
```


```haxe
var __Deprecated:Dynamic
```


```haxe
var __Deseret:Dynamic
```


```haxe
var __Devanagari:Dynamic
```


```haxe
var __Diacritic:Dynamic
```


```haxe
var __Dives_Akuru:Dynamic
```


```haxe
var __Dogra:Dynamic
```


```haxe
var __Duployan:Dynamic
```


```haxe
var __Egyptian_Hieroglyphs:Dynamic
```


```haxe
var __Elbasan:Dynamic
```


```haxe
var __Elymaic:Dynamic
```


```haxe
var __Ethiopic:Dynamic
```


```haxe
var __Extender:Dynamic
```


```haxe
var __Georgian:Dynamic
```


```haxe
var __Glagolitic:Dynamic
```


```haxe
var __Gothic:Dynamic
```


```haxe
var __Grantha:Dynamic
```


```haxe
var __Greek:Dynamic
```


```haxe
var __Gujarati:Dynamic
```


```haxe
var __Gunjala_Gondi:Dynamic
```


```haxe
var __Gurmukhi:Dynamic
```


```haxe
var __Han:Dynamic
```


```haxe
var __Hangul:Dynamic
```


```haxe
var __Hanifi_Rohingya:Dynamic
```


```haxe
var __Hanunoo:Dynamic
```


```haxe
var __Hatran:Dynamic
```


```haxe
var __Hebrew:Dynamic
```


```haxe
var __Hex_Digit:Dynamic
```


```haxe
var __Hiragana:Dynamic
```


```haxe
var __Hyphen:Dynamic
```


```haxe
var __IDS_Binary_Operator:Dynamic
```


```haxe
var __IDS_Trinary_Operator:Dynamic
```


```haxe
var __Ideographic:Dynamic
```


```haxe
var __Imperial_Aramaic:Dynamic
```


```haxe
var __Inherited:Dynamic
```


```haxe
var __Inscriptional_Pahlavi:Dynamic
```


```haxe
var __Inscriptional_Parthian:Dynamic
```


```haxe
var __Javanese:Dynamic
```


```haxe
var __Join_Control:Dynamic
```


```haxe
var __Kaithi:Dynamic
```


```haxe
var __Kannada:Dynamic
```


```haxe
var __Katakana:Dynamic
```


```haxe
var __Kawi:Dynamic
```


```haxe
var __Kayah_Li:Dynamic
```


```haxe
var __Kharoshthi:Dynamic
```


```haxe
var __Khitan_Small_Script:Dynamic
```


```haxe
var __Khmer:Dynamic
```


```haxe
var __Khojki:Dynamic
```


```haxe
var __Khudawadi:Dynamic
```


```haxe
var __L:Dynamic
```


```haxe
var __Lao:Dynamic
```


```haxe
var __Latin:Dynamic
```


```haxe
var __Lepcha:Dynamic
```


```haxe
var __Limbu:Dynamic
```


```haxe
var __Linear_A:Dynamic
```


```haxe
var __Linear_B:Dynamic
```


```haxe
var __Lisu:Dynamic
```


```haxe
var __Ll:Dynamic
```


```haxe
var __Lm:Dynamic
```


```haxe
var __Lo:Dynamic
```


```haxe
var __Logical_Order_Exception:Dynamic
```


```haxe
var __Lt:Dynamic
```


```haxe
var __Lu:Dynamic
```


```haxe
var __Lycian:Dynamic
```


```haxe
var __Lydian:Dynamic
```


```haxe
var __M:Dynamic
```


```haxe
var __Mahajani:Dynamic
```


```haxe
var __Makasar:Dynamic
```


```haxe
var __Malayalam:Dynamic
```


```haxe
var __Mandaic:Dynamic
```


```haxe
var __Manichaean:Dynamic
```


```haxe
var __Marchen:Dynamic
```


```haxe
var __Masaram_Gondi:Dynamic
```


```haxe
var __Mc:Dynamic
```


```haxe
var __Me:Dynamic
```


```haxe
var __Medefaidrin:Dynamic
```


```haxe
var __Meetei_Mayek:Dynamic
```


```haxe
var __Mende_Kikakui:Dynamic
```


```haxe
var __Meroitic_Cursive:Dynamic
```


```haxe
var __Meroitic_Hieroglyphs:Dynamic
```


```haxe
var __Miao:Dynamic
```


```haxe
var __Mn:Dynamic
```


```haxe
var __Modi:Dynamic
```


```haxe
var __Mongolian:Dynamic
```


```haxe
var __Mro:Dynamic
```


```haxe
var __Multani:Dynamic
```


```haxe
var __Myanmar:Dynamic
```


```haxe
var __N:Dynamic
```


```haxe
var __Nabataean:Dynamic
```


```haxe
var __Nag_Mundari:Dynamic
```


```haxe
var __Nandinagari:Dynamic
```


```haxe
var __Nd:Dynamic
```


```haxe
var __New_Tai_Lue:Dynamic
```


```haxe
var __Newa:Dynamic
```


```haxe
var __Nko:Dynamic
```


```haxe
var __Nl:Dynamic
```


```haxe
var __No:Dynamic
```


```haxe
var __Noncharacter_Code_Point:Dynamic
```


```haxe
var __Nushu:Dynamic
```


```haxe
var __Nyiakeng_Puachue_Hmong:Dynamic
```


```haxe
var __Ogham:Dynamic
```


```haxe
var __Ol_Chiki:Dynamic
```


```haxe
var __Old_Hungarian:Dynamic
```


```haxe
var __Old_Italic:Dynamic
```


```haxe
var __Old_North_Arabian:Dynamic
```


```haxe
var __Old_Permic:Dynamic
```


```haxe
var __Old_Persian:Dynamic
```


```haxe
var __Old_Sogdian:Dynamic
```


```haxe
var __Old_South_Arabian:Dynamic
```


```haxe
var __Old_Turkic:Dynamic
```


```haxe
var __Old_Uyghur:Dynamic
```


```haxe
var __Oriya:Dynamic
```


```haxe
var __Osage:Dynamic
```


```haxe
var __Osmanya:Dynamic
```


```haxe
var __Other_Alphabetic:Dynamic
```


```haxe
var __Other_Default_Ignorable_Code_Point:Dynamic
```


```haxe
var __Other_Grapheme_Extend:Dynamic
```


```haxe
var __Other_ID_Continue:Dynamic
```


```haxe
var __Other_ID_Start:Dynamic
```


```haxe
var __Other_Lowercase:Dynamic
```


```haxe
var __Other_Math:Dynamic
```


```haxe
var __Other_Uppercase:Dynamic
```


```haxe
var __P:Dynamic
```


```haxe
var __Pahawh_Hmong:Dynamic
```


```haxe
var __Palmyrene:Dynamic
```


```haxe
var __Pattern_Syntax:Dynamic
```


```haxe
var __Pattern_White_Space:Dynamic
```


```haxe
var __Pau_Cin_Hau:Dynamic
```


```haxe
var __Pc:Dynamic
```


```haxe
var __Pd:Dynamic
```


```haxe
var __Pe:Dynamic
```


```haxe
var __Pf:Dynamic
```


```haxe
var __Phags_Pa:Dynamic
```


```haxe
var __Phoenician:Dynamic
```


```haxe
var __Pi:Dynamic
```


```haxe
var __Po:Dynamic
```


```haxe
var __Prepended_Concatenation_Mark:Dynamic
```


```haxe
var __Ps:Dynamic
```


```haxe
var __Psalter_Pahlavi:Dynamic
```


```haxe
var __Quotation_Mark:Dynamic
```


```haxe
var __Radical:Dynamic
```


```haxe
var __Regional_Indicator:Dynamic
```


```haxe
var __Rejang:Dynamic
```


```haxe
var __Runic:Dynamic
```


```haxe
var __S:Dynamic
```


```haxe
var __Samaritan:Dynamic
```


```haxe
var __Saurashtra:Dynamic
```


```haxe
var __Sc:Dynamic
```


```haxe
var __Sentence_Terminal:Dynamic
```


```haxe
var __Sharada:Dynamic
```


```haxe
var __Shavian:Dynamic
```


```haxe
var __Siddham:Dynamic
```


```haxe
var __SignWriting:Dynamic
```


```haxe
var __Sinhala:Dynamic
```


```haxe
var __Sk:Dynamic
```


```haxe
var __Sm:Dynamic
```


```haxe
var __So:Dynamic
```


```haxe
var __Soft_Dotted:Dynamic
```


```haxe
var __Sogdian:Dynamic
```


```haxe
var __Sora_Sompeng:Dynamic
```


```haxe
var __Soyombo:Dynamic
```


```haxe
var __Sundanese:Dynamic
```


```haxe
var __Syloti_Nagri:Dynamic
```


```haxe
var __Syriac:Dynamic
```


```haxe
var __Tagalog:Dynamic
```


```haxe
var __Tagbanwa:Dynamic
```


```haxe
var __Tai_Le:Dynamic
```


```haxe
var __Tai_Tham:Dynamic
```


```haxe
var __Tai_Viet:Dynamic
```


```haxe
var __Takri:Dynamic
```


```haxe
var __Tamil:Dynamic
```


```haxe
var __Tangsa:Dynamic
```


```haxe
var __Tangut:Dynamic
```


```haxe
var __Telugu:Dynamic
```


```haxe
var __Terminal_Punctuation:Dynamic
```


```haxe
var __Thaana:Dynamic
```


```haxe
var __Thai:Dynamic
```


```haxe
var __Tibetan:Dynamic
```


```haxe
var __Tifinagh:Dynamic
```


```haxe
var __Tirhuta:Dynamic
```


```haxe
var __Toto:Dynamic
```


```haxe
var __TurkishCase:Dynamic
```


```haxe
var __Ugaritic:Dynamic
```


```haxe
var __Unified_Ideograph:Dynamic
```


```haxe
var __Vai:Dynamic
```


```haxe
var __Variation_Selector:Dynamic
```


```haxe
var __Vithkuqi:Dynamic
```


```haxe
var __Wancho:Dynamic
```


```haxe
var __Warang_Citi:Dynamic
```


```haxe
var __White_Space:Dynamic
```


```haxe
var __Yezidi:Dynamic
```


```haxe
var __Yi:Dynamic
```


```haxe
var __Z:Dynamic
```


```haxe
var __Zanabazar_Square:Dynamic
```


```haxe
var __Zl:Dynamic
```


```haxe
var __Zp:Dynamic
```


```haxe
var __Zs:Dynamic
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _asciiFold:Dynamic
```


```haxe
var _caseOrbit:Dynamic
```


```haxe
var _foldCommon:Dynamic
```


```haxe
var _foldGreek:Dynamic
```


```haxe
var _foldInherited:Dynamic
```


```haxe
var _foldL:Dynamic
```


```haxe
var _foldLl:Dynamic
```


```haxe
var _foldLt:Dynamic
```


```haxe
var _foldLu:Dynamic
```


```haxe
var _foldM:Dynamic
```


```haxe
var _foldMn:Dynamic
```


```haxe
var _linearMax:Dynamic
```


```haxe
var _pC:Dynamic
```


```haxe
var _pLl:Dynamic
```


```haxe
var _pLmask:Dynamic
```


```haxe
var _pLo:Dynamic
```


```haxe
var _pLu:Dynamic
```


```haxe
var _pN:Dynamic
```


```haxe
var _pP:Dynamic
```


```haxe
var _pS:Dynamic
```


```haxe
var _pZ:Dynamic
```


```haxe
var _pg:Dynamic
```


```haxe
var _pp:Dynamic
```


```haxe
var _properties:Dynamic
```


```haxe
var adlam:Dynamic
```


```haxe
var ahom:Dynamic
```


```haxe
var anatolian_Hieroglyphs:Dynamic
```


```haxe
var arabic:Dynamic
```


```haxe
var armenian:Dynamic
```


```haxe
var ascii_Hex_Digit:Dynamic
```


```haxe
var avestan:Dynamic
```


```haxe
var azeriCase:Dynamic
```


```haxe
var balinese:Dynamic
```


```haxe
var bamum:Dynamic
```


```haxe
var bassa_Vah:Dynamic
```


```haxe
var batak:Dynamic
```


```haxe
var bengali:Dynamic
```


```haxe
var bhaiksuki:Dynamic
```


```haxe
var bidi_Control:Dynamic
```


```haxe
var bopomofo:Dynamic
```


```haxe
var brahmi:Dynamic
```


```haxe
var braille:Dynamic
```


```haxe
var buginese:Dynamic
```


```haxe
var buhid:Dynamic
```


```haxe
var c:Dynamic
```


```haxe
var canadian_Aboriginal:Dynamic
```


```haxe
var carian:Dynamic
```


```haxe
var caseRanges:Dynamic
```


```haxe
var categories:Dynamic
```


```haxe
var caucasian_Albanian:Dynamic
```


```haxe
var cc:Dynamic
```


```haxe
var cf:Dynamic
```


```haxe
var chakma:Dynamic
```


```haxe
var cham:Dynamic
```


```haxe
var cherokee:Dynamic
```


```haxe
var chorasmian:Dynamic
```


```haxe
var co:Dynamic
```


```haxe
var common:Dynamic
```


```haxe
var coptic:Dynamic
```


```haxe
var cs:Dynamic
```


```haxe
var cuneiform:Dynamic
```


```haxe
var cypriot:Dynamic
```


```haxe
var cypro_Minoan:Dynamic
```


```haxe
var cyrillic:Dynamic
```


```haxe
var dash:Dynamic
```


```haxe
var deprecated:Dynamic
```


```haxe
var deseret:Dynamic
```


```haxe
var devanagari:Dynamic
```


```haxe
var diacritic:Dynamic
```


```haxe
var digit:Dynamic
```


```haxe
var dives_Akuru:Dynamic
```


```haxe
var dogra:Dynamic
```


```haxe
var duployan:Dynamic
```


```haxe
var egyptian_Hieroglyphs:Dynamic
```


```haxe
var elbasan:Dynamic
```


```haxe
var elymaic:Dynamic
```


```haxe
var ethiopic:Dynamic
```


```haxe
var extender:Dynamic
```


```haxe
var foldCategory:Dynamic
```


```haxe
var foldScript:Dynamic
```


```haxe
var georgian:Dynamic
```


```haxe
var glagolitic:Dynamic
```


```haxe
var gothic:Dynamic
```


```haxe
var grantha:Dynamic
```


```haxe
var graphicRanges:Dynamic
```


```haxe
var greek:Dynamic
```


```haxe
var gujarati:Dynamic
```


```haxe
var gunjala_Gondi:Dynamic
```


```haxe
var gurmukhi:Dynamic
```


```haxe
var han:Dynamic
```


```haxe
var hangul:Dynamic
```


```haxe
var hanifi_Rohingya:Dynamic
```


```haxe
var hanunoo:Dynamic
```


```haxe
var hatran:Dynamic
```


```haxe
var hebrew:Dynamic
```


```haxe
var hex_Digit:Dynamic
```


```haxe
var hiragana:Dynamic
```


```haxe
var hyphen:Dynamic
```


```haxe
var ideographic:Dynamic
```


```haxe
var ids_Binary_Operator:Dynamic
```


```haxe
var ids_Trinary_Operator:Dynamic
```


```haxe
var imperial_Aramaic:Dynamic
```


```haxe
var inherited:Dynamic
```


```haxe
var inscriptional_Pahlavi:Dynamic
```


```haxe
var inscriptional_Parthian:Dynamic
```


```haxe
var javanese:Dynamic
```


```haxe
var join_Control:Dynamic
```


```haxe
var kaithi:Dynamic
```


```haxe
var kannada:Dynamic
```


```haxe
var katakana:Dynamic
```


```haxe
var kawi:Dynamic
```


```haxe
var kayah_Li:Dynamic
```


```haxe
var kharoshthi:Dynamic
```


```haxe
var khitan_Small_Script:Dynamic
```


```haxe
var khmer:Dynamic
```


```haxe
var khojki:Dynamic
```


```haxe
var khudawadi:Dynamic
```


```haxe
var l:Dynamic
```


```haxe
var lao:Dynamic
```


```haxe
var latin:Dynamic
```


```haxe
var lepcha:Dynamic
```


```haxe
var letter:Dynamic
```


```haxe
var limbu:Dynamic
```


```haxe
var linear_A:Dynamic
```


```haxe
var linear_B:Dynamic
```


```haxe
var lisu:Dynamic
```


```haxe
var ll:Dynamic
```


```haxe
var lm:Dynamic
```


```haxe
var lo:Dynamic
```


```haxe
var logical_Order_Exception:Dynamic
```


```haxe
var lower:Dynamic
```


```haxe
var lowerCase:Dynamic
```


```haxe
var lt:Dynamic
```


```haxe
var lu:Dynamic
```


```haxe
var lycian:Dynamic
```


```haxe
var lydian:Dynamic
```


```haxe
var m:Dynamic
```


```haxe
var mahajani:Dynamic
```


```haxe
var makasar:Dynamic
```


```haxe
var malayalam:Dynamic
```


```haxe
var mandaic:Dynamic
```


```haxe
var manichaean:Dynamic
```


```haxe
var marchen:Dynamic
```


```haxe
var mark:Dynamic
```


```haxe
var masaram_Gondi:Dynamic
```


```haxe
var maxASCII:Dynamic
```


```haxe
var maxCase:Dynamic
```


```haxe
var maxLatin1:Dynamic
```


```haxe
var maxRune:Dynamic
```


```haxe
var mc:Dynamic
```


```haxe
var me:Dynamic
```


```haxe
var medefaidrin:Dynamic
```


```haxe
var meetei_Mayek:Dynamic
```


```haxe
var mende_Kikakui:Dynamic
```


```haxe
var meroitic_Cursive:Dynamic
```


```haxe
var meroitic_Hieroglyphs:Dynamic
```


```haxe
var miao:Dynamic
```


```haxe
var mn:Dynamic
```


```haxe
var modi:Dynamic
```


```haxe
var mongolian:Dynamic
```


```haxe
var mro:Dynamic
```


```haxe
var multani:Dynamic
```


```haxe
var myanmar:Dynamic
```


```haxe
var n:Dynamic
```


```haxe
var nabataean:Dynamic
```


```haxe
var nag_Mundari:Dynamic
```


```haxe
var nandinagari:Dynamic
```


```haxe
var nd:Dynamic
```


```haxe
var new_Tai_Lue:Dynamic
```


```haxe
var newa:Dynamic
```


```haxe
var nko:Dynamic
```


```haxe
var nl:Dynamic
```


```haxe
var no:Dynamic
```


```haxe
var noncharacter_Code_Point:Dynamic
```


```haxe
var number:Dynamic
```


```haxe
var nushu:Dynamic
```


```haxe
var nyiakeng_Puachue_Hmong:Dynamic
```


```haxe
var ogham:Dynamic
```


```haxe
var ol_Chiki:Dynamic
```


```haxe
var old_Hungarian:Dynamic
```


```haxe
var old_Italic:Dynamic
```


```haxe
var old_North_Arabian:Dynamic
```


```haxe
var old_Permic:Dynamic
```


```haxe
var old_Persian:Dynamic
```


```haxe
var old_Sogdian:Dynamic
```


```haxe
var old_South_Arabian:Dynamic
```


```haxe
var old_Turkic:Dynamic
```


```haxe
var old_Uyghur:Dynamic
```


```haxe
var oriya:Dynamic
```


```haxe
var osage:Dynamic
```


```haxe
var osmanya:Dynamic
```


```haxe
var other:Dynamic
```


```haxe
var other_Alphabetic:Dynamic
```


```haxe
var other_Default_Ignorable_Code_Point:Dynamic
```


```haxe
var other_Grapheme_Extend:Dynamic
```


```haxe
var other_ID_Continue:Dynamic
```


```haxe
var other_ID_Start:Dynamic
```


```haxe
var other_Lowercase:Dynamic
```


```haxe
var other_Math:Dynamic
```


```haxe
var other_Uppercase:Dynamic
```


```haxe
var p:Dynamic
```


```haxe
var pahawh_Hmong:Dynamic
```


```haxe
var palmyrene:Dynamic
```


```haxe
var pattern_Syntax:Dynamic
```


```haxe
var pattern_White_Space:Dynamic
```


```haxe
var pau_Cin_Hau:Dynamic
```


```haxe
var pc:Dynamic
```


```haxe
var pd:Dynamic
```


```haxe
var pe:Dynamic
```


```haxe
var pf:Dynamic
```


```haxe
var phags_Pa:Dynamic
```


```haxe
var phoenician:Dynamic
```


```haxe
var pi:Dynamic
```


```haxe
var po:Dynamic
```


```haxe
var prepended_Concatenation_Mark:Dynamic
```


```haxe
var printRanges:Dynamic
```


```haxe
var properties:Dynamic
```


```haxe
var ps:Dynamic
```


```haxe
var psalter_Pahlavi:Dynamic
```


```haxe
var punct:Dynamic
```


```haxe
var quotation_Mark:Dynamic
```


```haxe
var radical:Dynamic
```


```haxe
var regional_Indicator:Dynamic
```


```haxe
var rejang:Dynamic
```


```haxe
var replacementChar:Dynamic
```


```haxe
var runic:Dynamic
```


```haxe
var s:Dynamic
```


```haxe
var samaritan:Dynamic
```


```haxe
var saurashtra:Dynamic
```


```haxe
var sc:Dynamic
```


```haxe
var scripts:Dynamic
```


```haxe
var sentence_Terminal:Dynamic
```


```haxe
var sharada:Dynamic
```


```haxe
var shavian:Dynamic
```


```haxe
var siddham:Dynamic
```


```haxe
var signWriting:Dynamic
```


```haxe
var sinhala:Dynamic
```


```haxe
var sk:Dynamic
```


```haxe
var sm:Dynamic
```


```haxe
var so:Dynamic
```


```haxe
var soft_Dotted:Dynamic
```


```haxe
var sogdian:Dynamic
```


```haxe
var sora_Sompeng:Dynamic
```


```haxe
var soyombo:Dynamic
```


```haxe
var space:Dynamic
```


```haxe
var sterm:Dynamic
```


```haxe
var sundanese:Dynamic
```


```haxe
var syloti_Nagri:Dynamic
```


```haxe
var symbol:Dynamic
```


```haxe
var syriac:Dynamic
```


```haxe
var tagalog:Dynamic
```


```haxe
var tagbanwa:Dynamic
```


```haxe
var tai_Le:Dynamic
```


```haxe
var tai_Tham:Dynamic
```


```haxe
var tai_Viet:Dynamic
```


```haxe
var takri:Dynamic
```


```haxe
var tamil:Dynamic
```


```haxe
var tangsa:Dynamic
```


```haxe
var tangut:Dynamic
```


```haxe
var telugu:Dynamic
```


```haxe
var terminal_Punctuation:Dynamic
```


```haxe
var thaana:Dynamic
```


```haxe
var thai:Dynamic
```


```haxe
var tibetan:Dynamic
```


```haxe
var tifinagh:Dynamic
```


```haxe
var tirhuta:Dynamic
```


```haxe
var title:Dynamic
```


```haxe
var titleCase:Dynamic
```


```haxe
var toto:Dynamic
```


```haxe
var turkishCase:Dynamic
```


```haxe
var ugaritic:Dynamic
```


```haxe
var unified_Ideograph:Dynamic
```


```haxe
var upper:Dynamic
```


```haxe
var upperCase:Dynamic
```


```haxe
var upperLower:Dynamic
```


```haxe
var vai:Dynamic
```


```haxe
var variation_Selector:Dynamic
```


```haxe
var version:Dynamic
```


```haxe
var vithkuqi:Dynamic
```


```haxe
var wancho:Dynamic
```


```haxe
var warang_Citi:Dynamic
```


```haxe
var white_Space:Dynamic
```


```haxe
var yezidi:Dynamic
```


```haxe
var yi:Dynamic
```


```haxe
var z:Dynamic
```


```haxe
var zanabazar_Square:Dynamic
```


```haxe
var zl:Dynamic
```


```haxe
var zp:Dynamic
```


```haxe
var zs:Dynamic
```


# Functions


```haxe
import stdgo.unicode.Unicode
```


## function \_is16


```haxe
function _is16(_ranges:stdgo.Slice<stdgo.unicode.Range16>, _r:stdgo.GoUInt16):Void
```


[\(view code\)](<./Unicode.hx#L546>)


## function \_is32


```haxe
function _is32(_ranges:stdgo.Slice<stdgo.unicode.Range32>, _r:stdgo.GoUInt32):Void
```


[\(view code\)](<./Unicode.hx#L547>)


## function \_isExcludingLatin


```haxe
function _isExcludingLatin(_rangeTab:stdgo.Ref<stdgo.unicode.RangeTable>, _r:stdgo.GoRune):Void
```


[\(view code\)](<./Unicode.hx#L549>)


## function \_to


```haxe
function _to(__case:stdgo.GoInt, _r:stdgo.GoRune, _caseRange:stdgo.Slice<stdgo.unicode.CaseRange>):Void
```


[\(view code\)](<./Unicode.hx#L553>)


## function in\_


```haxe
function in_(_r:stdgo.GoRune, _ranges:haxe.Rest<stdgo.Ref<stdgo.unicode.RangeTable>>):Void
```


[\(view code\)](<./Unicode.hx#L538>)


## function isControl


```haxe
function isControl(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Unicode.hx#L539>)


## function isDigit


```haxe
function isDigit(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Unicode.hx#L534>)


## function isGraphic


```haxe
function isGraphic(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Unicode.hx#L535>)


## function isLetter


```haxe
function isLetter(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Unicode.hx#L540>)


## function isLower


```haxe
function isLower(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Unicode.hx#L551>)


## function isMark


```haxe
function isMark(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Unicode.hx#L541>)


## function isNumber


```haxe
function isNumber(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Unicode.hx#L542>)


## function isOneOf


```haxe
function isOneOf(_ranges:stdgo.Slice<stdgo.Ref<stdgo.unicode.RangeTable>>, _r:stdgo.GoRune):Void
```


[\(view code\)](<./Unicode.hx#L537>)


## function isPrint


```haxe
function isPrint(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Unicode.hx#L536>)


## function isPunct


```haxe
function isPunct(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Unicode.hx#L543>)


## function isSpace


```haxe
function isSpace(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Unicode.hx#L544>)


## function isSymbol


```haxe
function isSymbol(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Unicode.hx#L545>)


## function isTitle


```haxe
function isTitle(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Unicode.hx#L552>)


## function isUpper


```haxe
function isUpper(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Unicode.hx#L550>)


## function is\_


```haxe
function is_(_rangeTab:stdgo.Ref<stdgo.unicode.RangeTable>, _r:stdgo.GoRune):Void
```


[\(view code\)](<./Unicode.hx#L548>)


## function simpleFold


```haxe
function simpleFold(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Unicode.hx#L558>)


## function to


```haxe
function to(__case:stdgo.GoInt, _r:stdgo.GoRune):Void
```


[\(view code\)](<./Unicode.hx#L554>)


## function toLower


```haxe
function toLower(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Unicode.hx#L556>)


## function toTitle


```haxe
function toTitle(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Unicode.hx#L557>)


## function toUpper


```haxe
function toUpper(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Unicode.hx#L555>)


# Typedefs


```haxe
import stdgo.unicode.*
```


## typedef CaseRange


```haxe
typedef CaseRange = Dynamic;
```


## typedef Range16


```haxe
typedef Range16 = Dynamic;
```


## typedef Range32


```haxe
typedef Range32 = Dynamic;
```


## typedef RangeTable


```haxe
typedef RangeTable = Dynamic;
```


## typedef SpecialCase


```haxe
typedef SpecialCase = stdgo._internal.unicode.SpecialCase;
```


## typedef SpecialCase\_asInterface


```haxe
typedef SpecialCase_asInterface = Dynamic;
```


## typedef SpecialCase\_static\_extension


```haxe
typedef SpecialCase_static_extension = Dynamic;
```


## typedef T\_d


```haxe
typedef T_d = stdgo._internal.unicode.T_d;
```


## typedef T\_foldPair


```haxe
typedef T_foldPair = Dynamic;
```



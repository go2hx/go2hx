package stdgo.strings;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _asciiSpace : Dynamic;
@:invalid var _countCutOff : Dynamic;
@:invalid var _maxInt : Dynamic;
typedef T_replacer = stdgo._internal.strings.Strings.T_replacer;
@:invalid typedef Builder = Dynamic;
@:invalid typedef Reader = Dynamic;
@:invalid typedef Replacer = Dynamic;
@:invalid typedef T_trieNode = Dynamic;
@:invalid typedef T_genericReplacer = Dynamic;
@:invalid typedef T_stringWriter = Dynamic;
@:invalid typedef T_singleStringReplacer = Dynamic;
@:invalid typedef T_byteStringReplacer = Dynamic;
@:invalid typedef T_stringFinder = Dynamic;
typedef T_appendSliceWriter = stdgo._internal.strings.Strings.T_appendSliceWriter;
typedef T_byteReplacer = stdgo._internal.strings.Strings.T_byteReplacer;
typedef T_asciiSet = stdgo._internal.strings.Strings.T_asciiSet;
function _noescape(_p:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {}
function clone(_s:stdgo.GoString):Void {}
function compare(_a:stdgo.GoString, _b:stdgo.GoString):Void {}
function stringFind(_pattern:stdgo.GoString, _text:stdgo.GoString):Void {}
function dumpTables(_pattern:stdgo.GoString):Void {}
function newReader(_s:stdgo.GoString):Void {}
function newReplacer(_oldnew:haxe.Rest<stdgo.GoString>):Void {}
function _makeGenericReplacer(_oldnew:stdgo.Slice<stdgo.GoString>):Void {}
function _getStringWriter(_w:stdgo._internal.io.Io.Writer):Void {}
function _makeSingleStringReplacer(_pattern:stdgo.GoString, _value:stdgo.GoString):Void {}
function _makeStringFinder(_pattern:stdgo.GoString):Void {}
function _longestCommonSuffix(_a:stdgo.GoString, _b:stdgo.GoString):Void {}
function _max(_a:stdgo.GoInt, _b:stdgo.GoInt):Void {}
function _explode(_s:stdgo.GoString, _n:stdgo.GoInt):Void {}
function count(_s:stdgo.GoString, _substr:stdgo.GoString):Void {}
function contains(_s:stdgo.GoString, _substr:stdgo.GoString):Void {}
function containsAny(_s:stdgo.GoString, _chars:stdgo.GoString):Void {}
function containsRune(_s:stdgo.GoString, _r:stdgo.GoRune):Void {}
function containsFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool):Void {}
function lastIndex(_s:stdgo.GoString, _substr:stdgo.GoString):Void {}
function indexByte(_s:stdgo.GoString, _c:stdgo.GoByte):Void {}
function indexRune(_s:stdgo.GoString, _r:stdgo.GoRune):Void {}
function indexAny(_s:stdgo.GoString, _chars:stdgo.GoString):Void {}
function lastIndexAny(_s:stdgo.GoString, _chars:stdgo.GoString):Void {}
function lastIndexByte(_s:stdgo.GoString, _c:stdgo.GoByte):Void {}
function _genSplit(_s:stdgo.GoString, _sep:stdgo.GoString, _sepSave:stdgo.GoInt, _n:stdgo.GoInt):Void {}
function splitN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):Void {}
function splitAfterN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):Void {}
function split(_s:stdgo.GoString, _sep:stdgo.GoString):Void {}
function splitAfter(_s:stdgo.GoString, _sep:stdgo.GoString):Void {}
function fields(_s:stdgo.GoString):Void {}
@:invalid typedef T_fieldsFunc_1___localname___span = Dynamic;
function fieldsFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool):Void {}
function join(_elems:stdgo.Slice<stdgo.GoString>, _sep:stdgo.GoString):Void {}
function hasPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):Void {}
function hasSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):Void {}
function map_(_mapping:stdgo.GoRune -> stdgo.GoRune, _s:stdgo.GoString):Void {}
function repeat(_s:stdgo.GoString, _count:stdgo.GoInt):Void {}
function toUpper(_s:stdgo.GoString):Void {}
function toLower(_s:stdgo.GoString):Void {}
function toTitle(_s:stdgo.GoString):Void {}
function toUpperSpecial(_c:stdgo._internal.unicode.Unicode.SpecialCase, _s:stdgo.GoString):Void {}
function toLowerSpecial(_c:stdgo._internal.unicode.Unicode.SpecialCase, _s:stdgo.GoString):Void {}
function toTitleSpecial(_c:stdgo._internal.unicode.Unicode.SpecialCase, _s:stdgo.GoString):Void {}
function toValidUTF8(_s:stdgo.GoString, _replacement:stdgo.GoString):Void {}
function _isSeparator(_r:stdgo.GoRune):Void {}
function title(_s:stdgo.GoString):Void {}
function trimLeftFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool):Void {}
function trimRightFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool):Void {}
function trimFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool):Void {}
function indexFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool):Void {}
function lastIndexFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool):Void {}
function _indexFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool, _truth:Bool):Void {}
function _lastIndexFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool, _truth:Bool):Void {}
function _makeASCIISet(_chars:stdgo.GoString):Void {}
function trim(_s:stdgo.GoString, _cutset:stdgo.GoString):Void {}
function trimLeft(_s:stdgo.GoString, _cutset:stdgo.GoString):Void {}
function _trimLeftByte(_s:stdgo.GoString, _c:stdgo.GoByte):Void {}
function _trimLeftASCII(_s:stdgo.GoString, _as:stdgo.Ref<T_asciiSet>):Void {}
function _trimLeftUnicode(_s:stdgo.GoString, _cutset:stdgo.GoString):Void {}
function trimRight(_s:stdgo.GoString, _cutset:stdgo.GoString):Void {}
function _trimRightByte(_s:stdgo.GoString, _c:stdgo.GoByte):Void {}
function _trimRightASCII(_s:stdgo.GoString, _as:stdgo.Ref<T_asciiSet>):Void {}
function _trimRightUnicode(_s:stdgo.GoString, _cutset:stdgo.GoString):Void {}
function trimSpace(_s:stdgo.GoString):Void {}
function trimPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):Void {}
function trimSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):Void {}
function replace(_s:stdgo.GoString, _old:stdgo.GoString, _new:stdgo.GoString, _n:stdgo.GoInt):Void {}
function replaceAll(_s:stdgo.GoString, _old:stdgo.GoString, _new:stdgo.GoString):Void {}
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Void {}
function index(_s:stdgo.GoString, _substr:stdgo.GoString):Void {}
function cut(_s:stdgo.GoString, _sep:stdgo.GoString):Void {}
function cutPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):Void {}
function cutSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):Void {}
@:invalid typedef Builder_asInterface = Dynamic;
@:invalid typedef Builder_static_extension = Dynamic;
@:invalid typedef Reader_asInterface = Dynamic;
@:invalid typedef Reader_static_extension = Dynamic;
@:invalid typedef Replacer_asInterface = Dynamic;
@:invalid typedef Replacer_static_extension = Dynamic;
@:invalid typedef T_trieNode_asInterface = Dynamic;
@:invalid typedef T_trieNode_static_extension = Dynamic;
@:invalid typedef T_genericReplacer_asInterface = Dynamic;
@:invalid typedef T_genericReplacer_static_extension = Dynamic;
@:invalid typedef T_stringWriter_asInterface = Dynamic;
@:invalid typedef T_stringWriter_static_extension = Dynamic;
@:invalid typedef T_singleStringReplacer_asInterface = Dynamic;
@:invalid typedef T_singleStringReplacer_static_extension = Dynamic;
@:invalid typedef T_byteStringReplacer_asInterface = Dynamic;
@:invalid typedef T_byteStringReplacer_static_extension = Dynamic;
@:invalid typedef T_stringFinder_asInterface = Dynamic;
@:invalid typedef T_stringFinder_static_extension = Dynamic;
@:invalid typedef T_appendSliceWriter_asInterface = Dynamic;
@:invalid typedef T_appendSliceWriter_static_extension = Dynamic;
@:invalid typedef T_byteReplacer_asInterface = Dynamic;
@:invalid typedef T_byteReplacer_static_extension = Dynamic;
@:invalid typedef T_asciiSet_asInterface = Dynamic;
@:invalid typedef T_asciiSet_static_extension = Dynamic;

package stdgo.bytes;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var errTooLarge : Dynamic;
@:invalid var _errNegativeRead : Dynamic;
@:invalid var _errUnreadByte : Dynamic;
@:invalid var _asciiSpace : Dynamic;
@:invalid var indexBytePortable : Dynamic;
@:invalid var _smallBufferSize : Dynamic;
@:invalid var _opRead : Dynamic;
@:invalid var _opInvalid : Dynamic;
@:invalid var _opReadRune1 : Dynamic;
@:invalid var _opReadRune2 : Dynamic;
@:invalid var _opReadRune3 : Dynamic;
@:invalid var _opReadRune4 : Dynamic;
@:invalid var _maxInt : Dynamic;
@:invalid var minRead : Dynamic;
@:invalid typedef Buffer = Dynamic;
@:invalid typedef Reader = Dynamic;
typedef T_readOp = stdgo._internal.bytes.Bytes.T_readOp;
typedef T_asciiSet = stdgo._internal.bytes.Bytes.T_asciiSet;
function _growSlice(_b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):Void {}
function newBuffer(_buf:stdgo.Slice<stdgo.GoByte>):Void {}
function newBufferString(_s:stdgo.GoString):Void {}
function equal(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Void {}
function compare(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Void {}
function _explode(_s:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):Void {}
function count(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):Void {}
function contains(_b:stdgo.Slice<stdgo.GoByte>, _subslice:stdgo.Slice<stdgo.GoByte>):Void {}
function containsAny(_b:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):Void {}
function containsRune(_b:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Void {}
function containsFunc(_b:stdgo.Slice<stdgo.GoByte>, _f:stdgo.GoRune -> Bool):Void {}
function indexByte(_b:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):Void {}
function _indexBytePortable(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):Void {}
function lastIndex(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):Void {}
function lastIndexByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):Void {}
function indexRune(_s:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Void {}
function indexAny(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):Void {}
function lastIndexAny(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):Void {}
function _genSplit(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _sepSave:stdgo.GoInt, _n:stdgo.GoInt):Void {}
function splitN(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):Void {}
function splitAfterN(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):Void {}
function split(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):Void {}
function splitAfter(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):Void {}
function fields(_s:stdgo.Slice<stdgo.GoByte>):Void {}
@:invalid typedef T_fieldsFunc_7___localname___span = Dynamic;
function fieldsFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:stdgo.GoRune -> Bool):Void {}
function join(_s:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>, _sep:stdgo.Slice<stdgo.GoByte>):Void {}
function hasPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):Void {}
function hasSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):Void {}
function map_(_mapping:(_r:stdgo.GoRune) -> stdgo.GoRune, _s:stdgo.Slice<stdgo.GoByte>):Void {}
function repeat(_b:stdgo.Slice<stdgo.GoByte>, _count:stdgo.GoInt):Void {}
function toUpper(_s:stdgo.Slice<stdgo.GoByte>):Void {}
function toLower(_s:stdgo.Slice<stdgo.GoByte>):Void {}
function toTitle(_s:stdgo.Slice<stdgo.GoByte>):Void {}
function toUpperSpecial(_c:stdgo._internal.unicode.Unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):Void {}
function toLowerSpecial(_c:stdgo._internal.unicode.Unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):Void {}
function toTitleSpecial(_c:stdgo._internal.unicode.Unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):Void {}
function toValidUTF8(_s:stdgo.Slice<stdgo.GoByte>, _replacement:stdgo.Slice<stdgo.GoByte>):Void {}
function _isSeparator(_r:stdgo.GoRune):Void {}
function title(_s:stdgo.Slice<stdgo.GoByte>):Void {}
function trimLeftFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune) -> Bool):Void {}
function trimRightFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune) -> Bool):Void {}
function trimFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune) -> Bool):Void {}
function trimPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):Void {}
function trimSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):Void {}
function indexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune) -> Bool):Void {}
function lastIndexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune) -> Bool):Void {}
function _indexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune) -> Bool, _truth:Bool):Void {}
function _lastIndexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune) -> Bool, _truth:Bool):Void {}
function _makeASCIISet(_chars:stdgo.GoString):Void {}
function _containsRune(_s:stdgo.GoString, _r:stdgo.GoRune):Void {}
function trim(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):Void {}
function trimLeft(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):Void {}
function _trimLeftByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):Void {}
function _trimLeftASCII(_s:stdgo.Slice<stdgo.GoByte>, _as:stdgo.Ref<T_asciiSet>):Void {}
function _trimLeftUnicode(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):Void {}
function trimRight(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):Void {}
function _trimRightByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):Void {}
function _trimRightASCII(_s:stdgo.Slice<stdgo.GoByte>, _as:stdgo.Ref<T_asciiSet>):Void {}
function _trimRightUnicode(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):Void {}
function trimSpace(_s:stdgo.Slice<stdgo.GoByte>):Void {}
function runes(_s:stdgo.Slice<stdgo.GoByte>):Void {}
function replace(_s:stdgo.Slice<stdgo.GoByte>, _old:stdgo.Slice<stdgo.GoByte>, _new:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):Void {}
function replaceAll(_s:stdgo.Slice<stdgo.GoByte>, _old:stdgo.Slice<stdgo.GoByte>, _new:stdgo.Slice<stdgo.GoByte>):Void {}
function equalFold(_s:stdgo.Slice<stdgo.GoByte>, _t:stdgo.Slice<stdgo.GoByte>):Void {}
function index(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):Void {}
function cut(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):Void {}
function clone(_b:stdgo.Slice<stdgo.GoByte>):Void {}
function cutPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):Void {}
function cutSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):Void {}
function newReader(_b:stdgo.Slice<stdgo.GoByte>):Void {}
@:invalid typedef Buffer_asInterface = Dynamic;
@:invalid typedef Buffer_static_extension = Dynamic;
@:invalid typedef Reader_asInterface = Dynamic;
@:invalid typedef Reader_static_extension = Dynamic;
@:invalid typedef T_asciiSet_asInterface = Dynamic;
@:invalid typedef T_asciiSet_static_extension = Dynamic;

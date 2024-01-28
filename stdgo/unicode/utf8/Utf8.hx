package stdgo.unicode.utf8;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _first : Dynamic;
@:invalid var _acceptRanges : Dynamic;
@:invalid var runeError : Dynamic;
@:invalid var runeSelf : Dynamic;
@:invalid var maxRune : Dynamic;
@:invalid var utfmax : Dynamic;
@:invalid var _surrogateMin : Dynamic;
@:invalid var _surrogateMax : Dynamic;
@:invalid var _t1 : Dynamic;
@:invalid var _tx : Dynamic;
@:invalid var _t2 : Dynamic;
@:invalid var _t3 : Dynamic;
@:invalid var _t4 : Dynamic;
@:invalid var _t5 : Dynamic;
@:invalid var _maskx : Dynamic;
@:invalid var _mask2 : Dynamic;
@:invalid var _mask3 : Dynamic;
@:invalid var _mask4 : Dynamic;
@:invalid var _rune1Max : Dynamic;
@:invalid var _rune2Max : Dynamic;
@:invalid var _rune3Max : Dynamic;
@:invalid var _locb : Dynamic;
@:invalid var _hicb : Dynamic;
@:invalid var _xx : Dynamic;
@:invalid var _as : Dynamic;
@:invalid var _s1 : Dynamic;
@:invalid var _s2 : Dynamic;
@:invalid var _s3 : Dynamic;
@:invalid var _s4 : Dynamic;
@:invalid var _s5 : Dynamic;
@:invalid var _s6 : Dynamic;
@:invalid var _s7 : Dynamic;
@:invalid typedef T_acceptRange = Dynamic;
function fullRune(_p:stdgo.Slice<stdgo.GoByte>):Void {}
function fullRuneInString(_s:stdgo.GoString):Void {}
function decodeRune(_p:stdgo.Slice<stdgo.GoByte>):Void {}
function decodeRuneInString(_s:stdgo.GoString):Void {}
function decodeLastRune(_p:stdgo.Slice<stdgo.GoByte>):Void {}
function decodeLastRuneInString(_s:stdgo.GoString):Void {}
function runeLen(_r:stdgo.GoRune):Void {}
function encodeRune(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Void {}
function appendRune(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Void {}
function _appendRuneNonASCII(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Void {}
function runeCount(_p:stdgo.Slice<stdgo.GoByte>):Void {}
function runeCountInString(_s:stdgo.GoString):Void {}
function runeStart(_b:stdgo.GoByte):Void {}
function valid(_p:stdgo.Slice<stdgo.GoByte>):Void {}
function validString(_s:stdgo.GoString):Void {}
function validRune(_r:stdgo.GoRune):Void {}

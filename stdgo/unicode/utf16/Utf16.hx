package stdgo.unicode.utf16;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var maxRune : Dynamic;
@:invalid var replacementChar : Dynamic;
@:invalid var _replacementChar : Dynamic;
@:invalid var _maxRune : Dynamic;
@:invalid var _surr1 : Dynamic;
@:invalid var _surr2 : Dynamic;
@:invalid var _surr3 : Dynamic;
@:invalid var _surrSelf : Dynamic;
function isSurrogate(_r:stdgo.GoRune):Void {}
function decodeRune(_r1:stdgo.GoRune, _r2:stdgo.GoRune):Void {}
function encodeRune(_r:stdgo.GoRune):Void {}
function encode(_s:stdgo.Slice<stdgo.GoRune>):Void {}
function appendRune(_a:stdgo.Slice<stdgo.GoUInt16>, _r:stdgo.GoRune):Void {}
function decode(_s:stdgo.Slice<stdgo.GoUInt16>):Void {}
function _decode(_s:stdgo.Slice<stdgo.GoUInt16>, _buf:stdgo.Slice<stdgo.GoRune>):Void {}

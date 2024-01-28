package stdgo.crypto.rand;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _jsCrypto : Dynamic;
@:invalid var _uint8Array : Dynamic;
@:invalid var reader : Dynamic;
@:invalid var _maxGetRandomRead : Dynamic;
@:invalid var _batchedGetRandom : Dynamic;
@:invalid typedef T_reader = Dynamic;
function read(_b:stdgo.Slice<stdgo.GoByte>):Void {}
function _batched(_f:stdgo.Slice<stdgo.GoByte> -> stdgo.Error, _readMax:stdgo.GoInt):Void {}
function _getRandom(_b:stdgo.Slice<stdgo.GoByte>):Void {}
function testRead(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testReadEmpty(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function prime(_rand:stdgo._internal.io.Io.Reader, _bits:stdgo.GoInt):Void {}
function int_(_rand:stdgo._internal.io.Io.Reader, _max:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):Void {}
@:invalid var _ : Dynamic;
@:invalid typedef T_reader_asInterface = Dynamic;
@:invalid typedef T_reader_static_extension = Dynamic;

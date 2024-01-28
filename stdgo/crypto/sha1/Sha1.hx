package stdgo.crypto.sha1;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _golden : Dynamic;
@:invalid var _largeUnmarshalTests : Dynamic;
@:invalid var _bench : Dynamic;
@:invalid var _buf : Dynamic;
@:invalid var _boringEnabled : Dynamic;
@:invalid var size : Dynamic;
@:invalid var blockSize : Dynamic;
@:invalid var _chunk : Dynamic;
@:invalid var _init0 : Dynamic;
@:invalid var _init1 : Dynamic;
@:invalid var _init2 : Dynamic;
@:invalid var _init3 : Dynamic;
@:invalid var _init4 : Dynamic;
@:invalid var _magic : Dynamic;
@:invalid var _marshaledSize : Dynamic;
@:invalid var __K0 : Dynamic;
@:invalid var __K1 : Dynamic;
@:invalid var __K2 : Dynamic;
@:invalid var __K3 : Dynamic;
@:invalid typedef T_digest = Dynamic;
@:invalid typedef T_sha1Test = Dynamic;
@:invalid typedef T_unmarshalTest = Dynamic;
function _boringNewSHA1():Void {}
function _boringUnreachable():Void {}
function _boringSHA1(_0:stdgo.Slice<stdgo.GoByte>):Void {}
function _consumeUint64(_b:stdgo.Slice<stdgo.GoByte>):Void {}
function _consumeUint32(_b:stdgo.Slice<stdgo.GoByte>):Void {}
function new_():Void {}
function sum(_data:stdgo.Slice<stdgo.GoByte>):Void {}
function testGolden(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testGoldenMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testSize(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testBlockSize(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testBlockGeneric(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _safeSum(_h:stdgo._internal.hash.Hash.Hash):Void {}
function testLargeHashes(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testAllocations(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _benchmarkSize(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _size:stdgo.GoInt):Void {}
function benchmarkHash8Bytes(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkHash320Bytes(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkHash1K(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkHash8K(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function _blockGeneric(_dig:stdgo.Ref<T_digest>, _p:stdgo.Slice<stdgo.GoByte>):Void {}
function _block(_dig:stdgo.Ref<T_digest>, _p:stdgo.Slice<stdgo.GoByte>):Void {}
@:invalid var _ : Dynamic;
@:invalid typedef T_digest_asInterface = Dynamic;
@:invalid typedef T_digest_static_extension = Dynamic;

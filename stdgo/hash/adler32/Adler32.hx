package stdgo.hash.adler32;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _golden : Dynamic;
@:invalid var _mod : Dynamic;
@:invalid var _nmax : Dynamic;
@:invalid var size : Dynamic;
@:invalid var _magic : Dynamic;
@:invalid var _marshaledSize : Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.hash.adler32.Adler32.T__struct_0;
typedef T_digest = stdgo._internal.hash.adler32.Adler32.T_digest;
function new_():Void {}
function _appendUint32(_b:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoUInt32):Void {}
function _readUint32(_b:stdgo.Slice<stdgo.GoByte>):Void {}
function _update(_d:T_digest, _p:stdgo.Slice<stdgo.GoByte>):Void {}
function checksum(_data:stdgo.Slice<stdgo.GoByte>):Void {}
function _checksum(_p:stdgo.Slice<stdgo.GoByte>):Void {}
function testGolden(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testGoldenMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function benchmarkAdler32KB(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
@:invalid typedef T_digest_asInterface = Dynamic;
@:invalid typedef T_digest_static_extension = Dynamic;

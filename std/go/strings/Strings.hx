package go.strings;

@:recv(Builder)
function _copyCheck(_b:Dynamic)
	_b._addr = _b;

@:recv(Builder)
function string(_b) {
	return ((stdgo.Go.toInterface((_b._buf : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : stdgo._internal.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo._internal.internal.reflect.GoType.pointerType({
		get: () -> stdgo._internal.internal.reflect.GoType.basic(string_kind)
	})) : stdgo.Pointer<stdgo.GoString>).value;
	// return (_b._buf : Slice<GoUInt8>);
}

function clone(_s)
	return _s;



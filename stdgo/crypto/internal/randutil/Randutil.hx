package stdgo.crypto.internal.randutil;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

/**
	// Package randutil contains internal randomness utilities for various
	// crypto packages.
**/
private var __go2hxdoc__package:Bool;

private var _closedChanOnce:stdgo.sync.Sync.Once = ({} : stdgo.sync.Sync.Once);
private var _closedChan:Chan<T__struct_0> = (null : Chan<T__struct_0>);

class T__struct_0_asInterface {
	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T__struct_0>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(crypto.internal.randutil.Randutil.T__struct_0_asInterface) class T__struct_0_static_extension {}
@:local @:using(crypto.internal.randutil.Randutil.T__struct_0_static_extension) private typedef T__struct_0 = {};

/**
	// MaybeReadByte reads a single byte from r with ~50% probability. This is used
	// to ensure that callers do not depend on non-guaranteed behaviour, e.g.
	// assuming that rsa.GenerateKey is deterministic w.r.t. a given random stream.
	//
	// This does not affect tests that pass a stream of fixed bytes as the random
	// source (e.g. a zeroReader).
**/
function maybeReadByte(_r:stdgo.io.Io.Reader):Void {
	_closedChanOnce.do_(function():Void {
		_closedChan = new Chan<T__struct_0>(0, () -> ({} : T__struct_0));
		if (_closedChan != null)
			_closedChan.__close__();
	});
	Go.select([
		_closedChan.__get__() => {
			var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...1) (0 : GoUInt8)]);
			_r.read((_buf.__slice__(0) : Slice<GoUInt8>));
		},
		_closedChan.__get__() => {
			return;
		}
	]);
}

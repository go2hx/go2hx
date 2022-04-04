package stdgo.crypto.hmac;

import stdgo.Chan;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.StdGoTypes;

typedef T_marshalable = StructType & {
	public function marshalBinary():{var _0:Slice<GoByte>; var _1:Error;};
	public function unmarshalBinary(_0:Slice<GoByte>):Error;
};

@:structInit class T_hmac {
	public function reset():Void {
		var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_h.value._marshaled) {
			{
				var _err:stdgo.Error = ((_h.value._inner.__underlying__().value : T_marshalable)).unmarshalBinary(_h.value._ipad);
				if (_err != null) {
					throw _err;
				};
			};
			return;
		};
		_h.value._inner.reset();
		_h.value._inner.write(_h.value._ipad);
		var __tmp__ = try {
			{value: ((_h.value._inner.__underlying__().value : T_marshalable)), ok: true};
		} catch (_) {
			{value: ((null : T_marshalable)), ok: false};
		}, _marshalableInner = __tmp__.value, _innerOK = __tmp__.ok;
		if (!_innerOK) {
			return;
		};
		var __tmp__ = try {
			{value: ((_h.value._outer.__underlying__().value : T_marshalable)), ok: true};
		} catch (_) {
			{value: ((null : T_marshalable)), ok: false};
		}, _marshalableOuter = __tmp__.value, _outerOK = __tmp__.ok;
		if (!_outerOK) {
			return;
		};
		var __tmp__ = _marshalableInner.marshalBinary(),
			_imarshal:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return;
		};
		_h.value._outer.reset();
		_h.value._outer.write(_h.value._opad);
		var __tmp__ = _marshalableOuter.marshalBinary(),
			_omarshal:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return;
		};
		_h.value._ipad = _imarshal;
		_h.value._opad = _omarshal;
		_h.value._marshaled = true;
	}

	public function blockSize():GoInt {
		var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _h.value._inner.blockSize();
	}

	public function size():GoInt {
		var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _h.value._outer.size();
	}

	public function write(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		return _h.value._inner.write(_p);
	}

	public function sum(_in:Slice<GoByte>):Slice<GoByte> {
		var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _origLen:GoInt = _in.length;
		_in = _h.value._inner.sum(_in);
		if (_h.value._marshaled) {
			{
				var _err:stdgo.Error = ((_h.value._outer.__underlying__().value : T_marshalable)).unmarshalBinary(_h.value._opad);
				if (_err != null) {
					throw _err;
				};
			};
		} else {
			_h.value._outer.reset();
			_h.value._outer.write(_h.value._opad);
		};
		_h.value._outer.write(_in.__slice__(_origLen));
		return _h.value._outer.sum(_in.__slice__(0, _origLen));
	}

	public var _opad:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var _ipad:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var _outer:stdgo.hash.Hash.Hash = ((null : stdgo.hash.Hash.Hash));
	public var _inner:stdgo.hash.Hash.Hash = ((null : stdgo.hash.Hash.Hash));
	public var _marshaled:Bool = false;

	public function new(?_opad:Slice<GoUInt8>, ?_ipad:Slice<GoUInt8>, ?_outer:stdgo.hash.Hash.Hash, ?_inner:stdgo.hash.Hash.Hash, ?_marshaled:Bool)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{'
			+ Go.string(_opad)
			+ " "
			+ Go.string(_ipad)
			+ " "
			+ Go.string(_outer)
			+ " "
			+ Go.string(_inner)
			+ " "
			+ Go.string(_marshaled)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_hmac(_opad, _ipad, _outer, _inner, _marshaled);
	}

	public function __set__(__tmp__) {
		this._opad = __tmp__._opad;
		this._ipad = __tmp__._ipad;
		this._outer = __tmp__._outer;
		this._inner = __tmp__._inner;
		this._marshaled = __tmp__._marshaled;
		return this;
	}
}

/**
	// New returns a new HMAC hash using the given hash.Hash type and key.
	// New functions like sha256.New from crypto/sha256 can be used as h.
	// h must return a new Hash every time it is called.
	// Note that unlike other hash implementations in the standard library,
	// the returned Hash does not implement encoding.BinaryMarshaler
	// or encoding.BinaryUnmarshaler.
**/
function new_(_h:() -> stdgo.hash.Hash.Hash, _key:Slice<GoByte>):stdgo.hash.Hash.Hash {
	var _hm:Pointer<T_hmac> = Go.pointer(new T_hmac());
	_hm.value._outer = _h();
	_hm.value._inner = _h();
	var _unique:Bool = true;
	{
		var a = function():Void {
			var recover_exception:Error = null;
			var deferstack:Array<Void->Void> = [];
			try {
				{
					deferstack.unshift(() -> {
						var a = function():Void {
							var recover_exception:Error = null;
							Go.recover();
						};
						a();
					});
				};
				if (Go.toInterface(_hm.value._outer) == Go.toInterface(_hm.value._inner)) {
					_unique = false;
				};
				for (defer in deferstack) {
					defer();
				};
			} catch (e) {
				recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
				{
					for (defer in deferstack) {
						defer();
					};
					if (recover_exception != null)
						throw recover_exception;
					return;
				};
			};
		};
		a();
	};
	if (!_unique) {
		throw "crypto/hmac: hash generation function does not produce unique values";
	};
	var _blocksize:GoInt = _hm.value._inner.blockSize();
	_hm.value._ipad = new Slice<GoUInt8>(...[for (i in 0...((_blocksize : GoInt)).toBasic()) ((0 : GoUInt8))]);
	_hm.value._opad = new Slice<GoUInt8>(...[for (i in 0...((_blocksize : GoInt)).toBasic()) ((0 : GoUInt8))]);
	if (_key.length > _blocksize) {
		_hm.value._outer.write(_key);
		_key = _hm.value._outer.sum(new Slice<GoUInt8>().nil());
	};
	Go.copy(_hm.value._ipad, _key);
	Go.copy(_hm.value._opad, _key);
	for (_i => _ in _hm.value._ipad) {
		_hm.value._ipad[_i] = _hm.value._ipad[_i] ^ (((54 : GoUInt8)));
	};
	for (_i => _ in _hm.value._opad) {
		_hm.value._opad[_i] = _hm.value._opad[_i] ^ (((92 : GoUInt8)));
	};
	_hm.value._inner.write(_hm.value._ipad);
	return _hm.value;
}

/**
	// Equal compares two MACs for equality without leaking timing information.
**/
function equal(_mac1:Slice<GoByte>, _mac2:Slice<GoByte>):Bool {
	return stdgo.crypto.subtle.Subtle.constantTimeCompare(_mac1, _mac2) == ((1 : GoInt));
}

class T_hmac_extension_fields {
	public function sum(__tmp__, _in:Slice<GoByte>):Slice<GoByte>
		return __tmp__.sum(_in);

	public function write(__tmp__, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.write(_p);

	public function size(__tmp__):GoInt
		return __tmp__.size();

	public function blockSize(__tmp__):GoInt
		return __tmp__.blockSize();

	public function reset(__tmp__):Void
		__tmp__.reset();
}

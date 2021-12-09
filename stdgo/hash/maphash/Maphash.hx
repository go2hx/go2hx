package stdgo.hash.maphash;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

@:structInit class Seed {
	public var _s:GoUInt64 = ((0 : GoUInt64));

	public function new(?_s:GoUInt64)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_s) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Seed(_s);
	}

	public function __set__(__tmp__) {
		this._s = __tmp__._s;
		return this;
	}
}

@:structInit class Hash {
	public function blockSize():GoInt {
		var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _h.value._buf.length;
	}

	public function size():GoInt {
		var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return ((8 : GoInt));
	}

	public function sum(_b:Slice<GoByte>):Slice<GoByte> {
		var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _x:GoUInt64 = _h.value.sum64();
		return _b.__append__((((_x >> ((0 : GoUnTypedInt))) : GoByte)), (((_x >> ((8 : GoUnTypedInt))) : GoByte)), (((_x >> ((16 : GoUnTypedInt))) : GoByte)),
			(((_x >> ((24 : GoUnTypedInt))) : GoByte)), (((_x >> ((32 : GoUnTypedInt))) : GoByte)), (((_x >> ((40 : GoUnTypedInt))) : GoByte)),
			(((_x >> ((48 : GoUnTypedInt))) : GoByte)), (((_x >> ((56 : GoUnTypedInt))) : GoByte)));
	}

	public function sum64():GoUInt64 {
		var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_h.value._initSeed();
		return _rthash(Go.pointer(_h.value._buf[((0 : GoInt))]), _h.value._n, _h.value._state._s);
	}

	public function _flush():Void {
		var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_h.value._n != _h.value._buf.length) {
			throw "maphash: flush of partially full buffer";
		};
		_h.value._initSeed();
		_h.value._state._s = _rthash(Go.pointer(_h.value._buf[((0 : GoInt))]), _h.value._n, _h.value._state._s);
		_h.value._n = ((0 : GoInt));
	}

	public function reset():Void {
		var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_h.value._initSeed();
		_h.value._state = _h.value._seed.__copy__();
		_h.value._n = ((0 : GoInt));
	}

	public function setSeed(_seed:Seed):Void {
		var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_seed._s == ((0 : GoUInt64))) {
			throw "maphash: use of uninitialized Seed";
		};
		_h.value._seed = _seed.__copy__();
		_h.value._state = _seed.__copy__();
		_h.value._n = ((0 : GoInt));
	}

	public function seed():Seed {
		var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_h.value._initSeed();
		return _h.value._seed.__copy__();
	}

	public function writeString(_s:GoString):{var _0:GoInt; var _1:Error;} {
		var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _size:GoInt = _s.length;
		if (_h.value._n > ((0 : GoInt)) && _h.value._n <= _bufSize) {
			var _k:GoInt = Go.copy(_h.value._buf.__slice__(_h.value._n), _s);
			_h.value._n = _h.value._n + (_k);
			if (_h.value._n < _bufSize) {
				return {_0: _size, _1: ((null : stdgo.Error))};
			};
			_s = _s.__slice__(_k);
			_h.value._flush();
		};
		if (_s.length > _bufSize) {
			_h.value._initSeed();
			while (_s.length > _bufSize) {
				var _ptr:Pointer<GoUInt8> = ((((((Go.pointer(_s) : stdgo.unsafe.Unsafe.Pointer_)) : Pointer<internal.unsafeheader.Unsafeheader.String_>))
					.value.data : Pointer<GoByte>));
				_h.value._state._s = _rthash(_ptr, _bufSize, _h.value._state._s);
				_s = _s.__slice__(_bufSize);
			};
		};
		Go.copy(_h.value._buf.__slice__(0), _s);
		_h.value._n = _s.length;
		return {_0: _size, _1: ((null : stdgo.Error))};
	}

	public function write(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _size:GoInt = _b.length;
		if (_h.value._n > ((0 : GoInt)) && _h.value._n <= _bufSize) {
			var _k:GoInt = Go.copy(_h.value._buf.__slice__(_h.value._n), _b);
			_h.value._n = _h.value._n + (_k);
			if (_h.value._n < _bufSize) {
				return {_0: _size, _1: ((null : stdgo.Error))};
			};
			_b = _b.__slice__(_k);
			_h.value._flush();
		};
		if (_b.length > _bufSize) {
			_h.value._initSeed();
			while (_b.length > _bufSize) {
				_h.value._state._s = _rthash(Go.pointer(_b[((0 : GoInt))]), _bufSize, _h.value._state._s);
				_b = _b.__slice__(_bufSize);
			};
		};
		Go.copy(_h.value._buf.__slice__(0), _b);
		_h.value._n = _b.length;
		return {_0: _size, _1: ((null : stdgo.Error))};
	}

	public function writeByte(_b:GoByte):Error {
		var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_h.value._n == _h.value._buf.length) {
			_h.value._flush();
		};
		_h.value._buf[_h.value._n] = _b;
		_h.value._n++;
		return ((null : stdgo.Error));
	}

	public function _initSeed():Void {
		var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_h.value._seed._s == ((0 : GoUInt64))) {
			var _seed:Seed = makeSeed().__copy__();
			_h.value._seed = _seed.__copy__();
			_h.value._state = _seed.__copy__();
		};
	}

	public var ___blank__0:GoArray<() -> Void> = new GoArray<() -> Void>(...[for (i in 0...0) null]);
	public var _seed:Seed = new Seed();
	public var _state:Seed = new Seed();
	public var _buf:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...128) ((0 : GoUInt8))]);
	public var _n:GoInt = ((0 : GoInt));

	public function new(?___blank__0:GoArray<() -> Void>, ?_seed:Seed, ?_state:Seed, ?_buf:GoArray<GoUInt8>, ?_n:GoInt)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{'
			+ Go.string(___blank__0)
			+ " "
			+ Go.string(_seed)
			+ " "
			+ Go.string(_state)
			+ " "
			+ Go.string(_buf)
			+ " "
			+ Go.string(_n)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Hash(___blank__0, _seed, _state, _buf, _n);
	}

	public function __set__(__tmp__) {
		this.___blank__0 = __tmp__.___blank__0;
		this._seed = __tmp__._seed;
		this._state = __tmp__._state;
		this._buf = __tmp__._buf;
		this._n = __tmp__._n;
		return this;
	}
}

final _bufSize:GoInt64 = ((128 : GoUnTypedInt));

/**
	// MakeSeed returns a new random seed.
**/
function makeSeed():Seed {
	var _s1:GoUInt64 = ((0 : GoUInt64)), _s2:GoUInt64 = ((0 : GoUInt64));
	while (true) {
		_s1 = ((_runtime_fastrand() : GoUInt64));
		_s2 = ((_runtime_fastrand() : GoUInt64));
		if (_s1 | _s2 != ((0 : GoUInt64))) {
			break;
		};
	};
	return (({_s: (_s1 << ((32 : GoUnTypedInt))) + _s2} : Seed)).__copy__();
}

/**
	//go:linkname runtime_fastrand runtime.fastrand
**/
function _runtime_fastrand():GoUInt32
	throw "not implemeneted";

function _rthash(_ptr:Pointer<GoByte>, _len:GoInt, _seed:GoUInt64):GoUInt64 {
	if (_len == ((0 : GoInt))) {
		return _seed;
	};
	if (stdgo.unsafe.Unsafe.sizeof(Go.toInterface(((((0 : GoUIntptr)) : GoUIntptr)))) == ((8 : GoUIntptr))) {
		return ((_runtime_memhash(((_ptr : stdgo.unsafe.Unsafe.Pointer_)), ((_seed : GoUIntptr)), ((_len : GoUIntptr))) : GoUInt64));
	};
	var _lo:GoUIntptr = _runtime_memhash(((_ptr : stdgo.unsafe.Unsafe.Pointer_)), ((_seed : GoUIntptr)), ((_len : GoUIntptr)));
	var _hi:GoUIntptr = _runtime_memhash(((_ptr : stdgo.unsafe.Unsafe.Pointer_)), (((_seed >> ((32 : GoUnTypedInt))) : GoUIntptr)), ((_len : GoUIntptr)));
	return (((_hi : GoUInt64)) << ((32 : GoUnTypedInt))) | ((_lo : GoUInt64));
}

/**
	//go:linkname runtime_memhash runtime.memhash
	//go:noescape
**/
function _runtime_memhash(_p:stdgo.unsafe.Unsafe.Pointer_, _seed:GoUIntptr, _s:GoUIntptr):GoUIntptr
	throw "not implemeneted";

class Hash_extension_fields {
	public function _initSeed(__tmp__):Void
		__tmp__._initSeed();

	public function writeByte(__tmp__, _b:GoByte):Error
		return __tmp__.writeByte(_b);

	public function write(__tmp__, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.write(_b);

	public function writeString(__tmp__, _s:GoString):{var _0:GoInt; var _1:Error;}
		return __tmp__.writeString(_s);

	public function seed(__tmp__):Seed
		return __tmp__.seed();

	public function setSeed(__tmp__, _seed:Seed):Void
		__tmp__.setSeed(_seed);

	public function reset(__tmp__):Void
		__tmp__.reset();

	public function _flush(__tmp__):Void
		__tmp__._flush();

	public function sum64(__tmp__):GoUInt64
		return __tmp__.sum64();

	public function sum(__tmp__, _b:Slice<GoByte>):Slice<GoByte>
		return __tmp__.sum(_b);

	public function size(__tmp__):GoInt
		return __tmp__.size();

	public function blockSize(__tmp__):GoInt
		return __tmp__.blockSize();
}

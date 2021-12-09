package stdgo.crypto.md5;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

@:structInit class T_digest {
	public function _checkSum():GoArray<GoByte> {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _tmp:GoArray<GoUInt8> = new GoArray<GoUInt8>(...([((128 : GoUInt8))].concat([for (i in 0...71) 0]))).copy();
		var _pad:GoUInt64 = (((55 : GoUInt64)) - _d.value._len) % ((64 : GoUInt64));
		stdgo.encoding.binary.Binary.littleEndian.putUint64(_tmp.__slice__(((1 : GoUInt64)) + _pad), (_d.value._len << ((3 : GoUnTypedInt))));
		_d.value.write(_tmp.__slice__(0, ((1 : GoUInt64)) + _pad + ((8 : GoUInt64))));
		if (_d.value._nx != ((0 : GoInt))) {
			throw "d.nx != 0";
		};
		var _digest:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...16) ((0 : GoUInt8))]);
		stdgo.encoding.binary.Binary.littleEndian.putUint32(_digest.__slice__(((0 : GoInt))), _d.value._s[((0 : GoInt))]);
		stdgo.encoding.binary.Binary.littleEndian.putUint32(_digest.__slice__(((4 : GoInt))), _d.value._s[((1 : GoInt))]);
		stdgo.encoding.binary.Binary.littleEndian.putUint32(_digest.__slice__(((8 : GoInt))), _d.value._s[((2 : GoInt))]);
		stdgo.encoding.binary.Binary.littleEndian.putUint32(_digest.__slice__(((12 : GoInt))), _d.value._s[((3 : GoInt))]);
		return _digest.copy();
	}

	public function sum(_in:Slice<GoByte>):Slice<GoByte> {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _d0:T_digest = _d.value.__copy__();
		var _hash:GoArray<GoUInt8> = _d0._checkSum().copy();
		return _in.__append__(..._hash.__slice__(0).toArray());
	}

	public function write(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _nn:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		_nn = _p.length;
		_d.value._len = _d.value._len + (((_nn : GoUInt64)));
		if (_d.value._nx > ((0 : GoInt))) {
			var _n:GoInt = Go.copy(_d.value._x.__slice__(_d.value._nx), _p);
			_d.value._nx = _d.value._nx + (_n);
			if (_d.value._nx == Md5.blockSize) {
				if (_haveAsm) {
					_block(_d, _d.value._x.__slice__(0));
				} else {
					_blockGeneric(_d, _d.value._x.__slice__(0));
				};
				_d.value._nx = ((0 : GoInt));
			};
			_p = _p.__slice__(_n);
		};
		if (_p.length >= Md5.blockSize) {
			var _n:GoInt = (_p.length & (Md5.blockSize - ((1 : GoUnTypedInt)))) ^ ((-1 : GoUnTypedInt));
			if (_haveAsm) {
				_block(_d, _p.__slice__(0, _n));
			} else {
				_blockGeneric(_d, _p.__slice__(0, _n));
			};
			_p = _p.__slice__(_n);
		};
		if (_p.length > ((0 : GoInt))) {
			_d.value._nx = Go.copy(_d.value._x.__slice__(0), _p);
		};
		return {_0: _nn, _1: _err};
	}

	public function blockSize():GoInt {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return Md5.blockSize;
	}

	public function size():GoInt {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return Md5.size;
	}

	public function unmarshalBinary(_b:Slice<GoByte>):Error {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_b.length < _magic.length || ((_b.__slice__(0, _magic.length) : GoString)) != _magic) {
			return stdgo.errors.Errors.new_("crypto/md5: invalid hash state identifier");
		};
		if (_b.length != _marshaledSize) {
			return stdgo.errors.Errors.new_("crypto/md5: invalid hash state size");
		};
		_b = _b.__slice__(_magic.length);
		{
			var __tmp__ = _consumeUint32(_b);
			_b = __tmp__._0;
			_d.value._s[((0 : GoInt))] = __tmp__._1;
		};
		{
			var __tmp__ = _consumeUint32(_b);
			_b = __tmp__._0;
			_d.value._s[((1 : GoInt))] = __tmp__._1;
		};
		{
			var __tmp__ = _consumeUint32(_b);
			_b = __tmp__._0;
			_d.value._s[((2 : GoInt))] = __tmp__._1;
		};
		{
			var __tmp__ = _consumeUint32(_b);
			_b = __tmp__._0;
			_d.value._s[((3 : GoInt))] = __tmp__._1;
		};
		_b = _b.__slice__(Go.copy(_d.value._x.__slice__(0), _b));
		{
			var __tmp__ = _consumeUint64(_b);
			_b = __tmp__._0;
			_d.value._len = __tmp__._1;
		};
		_d.value._nx = (((_d.value._len % Md5.blockSize) : GoInt));
		return ((null : stdgo.Error));
	}

	public function marshalBinary():{var _0:Slice<GoByte>; var _1:Error;} {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_marshaledSize : GoInt))
			.toBasic());
		_b = _b.__append__(..._magic.toArray());
		_b = _appendUint32(_b, _d.value._s[((0 : GoInt))]);
		_b = _appendUint32(_b, _d.value._s[((1 : GoInt))]);
		_b = _appendUint32(_b, _d.value._s[((2 : GoInt))]);
		_b = _appendUint32(_b, _d.value._s[((3 : GoInt))]);
		_b = _b.__append__(..._d.value._x.__slice__(0, _d.value._nx).toArray());
		_b = _b.__slice__(0, _b.length + _d.value._x.length - _d.value._nx);
		_b = _appendUint64(_b, _d.value._len);
		return {_0: _b, _1: ((null : stdgo.Error))};
	}

	public function reset():Void {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_d.value._s[((0 : GoInt))] = _init0;
		_d.value._s[((1 : GoInt))] = _init1;
		_d.value._s[((2 : GoInt))] = _init2;
		_d.value._s[((3 : GoInt))] = _init3;
		_d.value._nx = ((0 : GoInt));
		_d.value._len = ((0 : GoUInt64));
	}

	public var _s:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0...4) ((0 : GoUInt32))]);
	public var _x:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...64) ((0 : GoUInt8))]);
	public var _nx:GoInt = ((0 : GoInt));
	public var _len:GoUInt64 = ((0 : GoUInt64));

	public function new(?_s:GoArray<GoUInt32>, ?_x:GoArray<GoUInt8>, ?_nx:GoInt, ?_len:GoUInt64)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_s) + " " + Go.string(_x) + " " + Go.string(_nx) + " " + Go.string(_len) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_digest(_s, _x, _nx, _len);
	}

	public function __set__(__tmp__) {
		this._s = __tmp__._s;
		this._x = __tmp__._x;
		this._nx = __tmp__._nx;
		this._len = __tmp__._len;
		return this;
	}
}

final _init3:GoInt64 = ((271733878 : GoUnTypedInt));
final _magic:GoString = "md5\\x01";
final size:GoInt64 = ((16 : GoUnTypedInt));
final _init0:GoInt64 = ((1732584193 : GoUnTypedInt));
final blockSize:GoInt64 = ((64 : GoUnTypedInt));
final _init1:GoInt64 = (("4023233417" : GoUnTypedInt));
var _block:(Pointer<T_digest>, Slice<GoUInt8>) -> Void = _blockGeneric;
final _haveAsm:Bool = false;
final _marshaledSize:GoInt = _magic.length + ((4 : GoUnTypedInt)) * ((4 : GoUnTypedInt)) + blockSize + ((8 : GoInt));
final _init2:GoInt64 = (("2562383102" : GoUnTypedInt));

function _appendUint64(_b:Slice<GoByte>, _x:GoUInt64):Slice<GoByte> {
	var _a:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...8) ((0 : GoUInt8))]);
	stdgo.encoding.binary.Binary.bigEndian.putUint64(_a.__slice__(0), _x);
	return _b.__append__(..._a.__slice__(0).toArray());
}

function _appendUint32(_b:Slice<GoByte>, _x:GoUInt32):Slice<GoByte> {
	var _a:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...4) ((0 : GoUInt8))]);
	stdgo.encoding.binary.Binary.bigEndian.putUint32(_a.__slice__(0), _x);
	return _b.__append__(..._a.__slice__(0).toArray());
}

function _consumeUint64(_b:Slice<GoByte>):{var _0:Slice<GoByte>; var _1:GoUInt64;} {
	return {_0: _b.__slice__(((8 : GoInt))), _1: stdgo.encoding.binary.Binary.bigEndian.uint64(_b.__slice__(((0 : GoInt)), ((8 : GoInt))))};
}

function _consumeUint32(_b:Slice<GoByte>):{var _0:Slice<GoByte>; var _1:GoUInt32;} {
	return {_0: _b.__slice__(((4 : GoInt))), _1: stdgo.encoding.binary.Binary.bigEndian.uint32(_b.__slice__(((0 : GoInt)), ((4 : GoInt))))};
}

/**
	// New returns a new hash.Hash computing the MD5 checksum. The Hash also
	// implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
	// marshal and unmarshal the internal state of the hash.
**/
function new_():stdgo.hash.Hash.Hash {
	var _d:Pointer<T_digest> = Go.pointer(new T_digest());
	_d.value.reset();
	return _d.value;
}

/**
	// Sum returns the MD5 checksum of the data.
**/
function sum(_data:Slice<GoByte>):GoArray<GoByte> {
	var _d:T_digest = new T_digest();
	_d.reset();
	_d.write(_data);
	return _d._checkSum().copy();
}

function _blockGeneric(_dig:Pointer<T_digest>, _p:Slice<GoByte>):Void {
	var _a:GoUInt32 = _dig.value._s[((0 : GoInt))],
		_b:GoUInt32 = _dig.value._s[((1 : GoInt))],
		_c:GoUInt32 = _dig.value._s[((2 : GoInt))],
		_d:GoUInt32 = _dig.value._s[((3 : GoInt))];
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i <= _p.length - blockSize, _i = _i + (blockSize), {
			var _q:Slice<GoUInt8> = _p.__slice__(_i);
			_q = _q.__slice__(0, blockSize).setCap(((blockSize : GoInt)) - ((1 : GoInt)));
			var _aa:GoUInt32 = _a,
				_bb:GoUInt32 = _b,
				_cc:GoUInt32 = _c,
				_dd:GoUInt32 = _d;
			var _x0:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_q.__slice__(((4 : GoUnTypedInt)) * ((0 : GoUnTypedInt))));
			var _x1:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_q.__slice__(((4 : GoUnTypedInt)) * ((1 : GoUnTypedInt))));
			var _x2:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_q.__slice__(((4 : GoUnTypedInt)) * ((2 : GoUnTypedInt))));
			var _x3:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_q.__slice__(((4 : GoUnTypedInt)) * ((3 : GoUnTypedInt))));
			var _x4:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_q.__slice__(((4 : GoUnTypedInt)) * ((4 : GoUnTypedInt))));
			var _x5:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_q.__slice__(((4 : GoUnTypedInt)) * ((5 : GoUnTypedInt))));
			var _x6:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_q.__slice__(((4 : GoUnTypedInt)) * ((6 : GoUnTypedInt))));
			var _x7:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_q.__slice__(((4 : GoUnTypedInt)) * ((7 : GoUnTypedInt))));
			var _x8:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_q.__slice__(((4 : GoUnTypedInt)) * ((8 : GoUnTypedInt))));
			var _x9:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_q.__slice__(((4 : GoUnTypedInt)) * ((9 : GoUnTypedInt))));
			var _xa:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_q.__slice__(((4 : GoUnTypedInt)) * ((10 : GoUnTypedInt))));
			var _xb:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_q.__slice__(((4 : GoUnTypedInt)) * ((11 : GoUnTypedInt))));
			var _xc:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_q.__slice__(((4 : GoUnTypedInt)) * ((12 : GoUnTypedInt))));
			var _xd:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_q.__slice__(((4 : GoUnTypedInt)) * ((13 : GoUnTypedInt))));
			var _xe:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_q.__slice__(((4 : GoUnTypedInt)) * ((14 : GoUnTypedInt))));
			var _xf:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_q.__slice__(((4 : GoUnTypedInt)) * ((15 : GoUnTypedInt))));
			_a = _b + stdgo.math.bits.Bits.rotateLeft32((((_c ^ _d) & _b) ^ _d) + _a + _x0 + (("3614090360" : GoUInt32)), ((7 : GoInt)));
			_d = _a + stdgo.math.bits.Bits.rotateLeft32((((_b ^ _c) & _a) ^ _c) + _d + _x1 + (("3905402710" : GoUInt32)), ((12 : GoInt)));
			_c = _d + stdgo.math.bits.Bits.rotateLeft32((((_a ^ _b) & _d) ^ _b) + _c + _x2 + ((606105819 : GoUInt32)), ((17 : GoInt)));
			_b = _c + stdgo.math.bits.Bits.rotateLeft32((((_d ^ _a) & _c) ^ _a) + _b + _x3 + (("3250441966" : GoUInt32)), ((22 : GoInt)));
			_a = _b + stdgo.math.bits.Bits.rotateLeft32((((_c ^ _d) & _b) ^ _d) + _a + _x4 + (("4118548399" : GoUInt32)), ((7 : GoInt)));
			_d = _a + stdgo.math.bits.Bits.rotateLeft32((((_b ^ _c) & _a) ^ _c) + _d + _x5 + ((1200080426 : GoUInt32)), ((12 : GoInt)));
			_c = _d + stdgo.math.bits.Bits.rotateLeft32((((_a ^ _b) & _d) ^ _b) + _c + _x6 + (("2821735955" : GoUInt32)), ((17 : GoInt)));
			_b = _c + stdgo.math.bits.Bits.rotateLeft32((((_d ^ _a) & _c) ^ _a) + _b + _x7 + (("4249261313" : GoUInt32)), ((22 : GoInt)));
			_a = _b + stdgo.math.bits.Bits.rotateLeft32((((_c ^ _d) & _b) ^ _d) + _a + _x8 + ((1770035416 : GoUInt32)), ((7 : GoInt)));
			_d = _a + stdgo.math.bits.Bits.rotateLeft32((((_b ^ _c) & _a) ^ _c) + _d + _x9 + (("2336552879" : GoUInt32)), ((12 : GoInt)));
			_c = _d + stdgo.math.bits.Bits.rotateLeft32((((_a ^ _b) & _d) ^ _b) + _c + _xa + (("4294925233" : GoUInt32)), ((17 : GoInt)));
			_b = _c + stdgo.math.bits.Bits.rotateLeft32((((_d ^ _a) & _c) ^ _a) + _b + _xb + (("2304563134" : GoUInt32)), ((22 : GoInt)));
			_a = _b + stdgo.math.bits.Bits.rotateLeft32((((_c ^ _d) & _b) ^ _d) + _a + _xc + ((1804603682 : GoUInt32)), ((7 : GoInt)));
			_d = _a + stdgo.math.bits.Bits.rotateLeft32((((_b ^ _c) & _a) ^ _c) + _d + _xd + (("4254626195" : GoUInt32)), ((12 : GoInt)));
			_c = _d + stdgo.math.bits.Bits.rotateLeft32((((_a ^ _b) & _d) ^ _b) + _c + _xe + (("2792965006" : GoUInt32)), ((17 : GoInt)));
			_b = _c + stdgo.math.bits.Bits.rotateLeft32((((_d ^ _a) & _c) ^ _a) + _b + _xf + ((1236535329 : GoUInt32)), ((22 : GoInt)));
			_a = _b + stdgo.math.bits.Bits.rotateLeft32((((_b ^ _c) & _d) ^ _c) + _a + _x1 + (("4129170786" : GoUInt32)), ((5 : GoInt)));
			_d = _a + stdgo.math.bits.Bits.rotateLeft32((((_a ^ _b) & _c) ^ _b) + _d + _x6 + (("3225465664" : GoUInt32)), ((9 : GoInt)));
			_c = _d + stdgo.math.bits.Bits.rotateLeft32((((_d ^ _a) & _b) ^ _a) + _c + _xb + ((643717713 : GoUInt32)), ((14 : GoInt)));
			_b = _c + stdgo.math.bits.Bits.rotateLeft32((((_c ^ _d) & _a) ^ _d) + _b + _x0 + (("3921069994" : GoUInt32)), ((20 : GoInt)));
			_a = _b + stdgo.math.bits.Bits.rotateLeft32((((_b ^ _c) & _d) ^ _c) + _a + _x5 + (("3593408605" : GoUInt32)), ((5 : GoInt)));
			_d = _a + stdgo.math.bits.Bits.rotateLeft32((((_a ^ _b) & _c) ^ _b) + _d + _xa + ((38016083 : GoUInt32)), ((9 : GoInt)));
			_c = _d + stdgo.math.bits.Bits.rotateLeft32((((_d ^ _a) & _b) ^ _a) + _c + _xf + (("3634488961" : GoUInt32)), ((14 : GoInt)));
			_b = _c + stdgo.math.bits.Bits.rotateLeft32((((_c ^ _d) & _a) ^ _d) + _b + _x4 + (("3889429448" : GoUInt32)), ((20 : GoInt)));
			_a = _b + stdgo.math.bits.Bits.rotateLeft32((((_b ^ _c) & _d) ^ _c) + _a + _x9 + ((568446438 : GoUInt32)), ((5 : GoInt)));
			_d = _a + stdgo.math.bits.Bits.rotateLeft32((((_a ^ _b) & _c) ^ _b) + _d + _xe + (("3275163606" : GoUInt32)), ((9 : GoInt)));
			_c = _d + stdgo.math.bits.Bits.rotateLeft32((((_d ^ _a) & _b) ^ _a) + _c + _x3 + (("4107603335" : GoUInt32)), ((14 : GoInt)));
			_b = _c + stdgo.math.bits.Bits.rotateLeft32((((_c ^ _d) & _a) ^ _d) + _b + _x8 + ((1163531501 : GoUInt32)), ((20 : GoInt)));
			_a = _b + stdgo.math.bits.Bits.rotateLeft32((((_b ^ _c) & _d) ^ _c) + _a + _xd + (("2850285829" : GoUInt32)), ((5 : GoInt)));
			_d = _a + stdgo.math.bits.Bits.rotateLeft32((((_a ^ _b) & _c) ^ _b) + _d + _x2 + (("4243563512" : GoUInt32)), ((9 : GoInt)));
			_c = _d + stdgo.math.bits.Bits.rotateLeft32((((_d ^ _a) & _b) ^ _a) + _c + _x7 + ((1735328473 : GoUInt32)), ((14 : GoInt)));
			_b = _c + stdgo.math.bits.Bits.rotateLeft32((((_c ^ _d) & _a) ^ _d) + _b + _xc + (("2368359562" : GoUInt32)), ((20 : GoInt)));
			_a = _b + stdgo.math.bits.Bits.rotateLeft32((_b ^ _c ^ _d) + _a + _x5 + (("4294588738" : GoUInt32)), ((4 : GoInt)));
			_d = _a + stdgo.math.bits.Bits.rotateLeft32((_a ^ _b ^ _c) + _d + _x8 + (("2272392833" : GoUInt32)), ((11 : GoInt)));
			_c = _d + stdgo.math.bits.Bits.rotateLeft32((_d ^ _a ^ _b) + _c + _xb + ((1839030562 : GoUInt32)), ((16 : GoInt)));
			_b = _c + stdgo.math.bits.Bits.rotateLeft32((_c ^ _d ^ _a) + _b + _xe + (("4259657740" : GoUInt32)), ((23 : GoInt)));
			_a = _b + stdgo.math.bits.Bits.rotateLeft32((_b ^ _c ^ _d) + _a + _x1 + (("2763975236" : GoUInt32)), ((4 : GoInt)));
			_d = _a + stdgo.math.bits.Bits.rotateLeft32((_a ^ _b ^ _c) + _d + _x4 + ((1272893353 : GoUInt32)), ((11 : GoInt)));
			_c = _d + stdgo.math.bits.Bits.rotateLeft32((_d ^ _a ^ _b) + _c + _x7 + (("4139469664" : GoUInt32)), ((16 : GoInt)));
			_b = _c + stdgo.math.bits.Bits.rotateLeft32((_c ^ _d ^ _a) + _b + _xa + (("3200236656" : GoUInt32)), ((23 : GoInt)));
			_a = _b + stdgo.math.bits.Bits.rotateLeft32((_b ^ _c ^ _d) + _a + _xd + ((681279174 : GoUInt32)), ((4 : GoInt)));
			_d = _a + stdgo.math.bits.Bits.rotateLeft32((_a ^ _b ^ _c) + _d + _x0 + (("3936430074" : GoUInt32)), ((11 : GoInt)));
			_c = _d + stdgo.math.bits.Bits.rotateLeft32((_d ^ _a ^ _b) + _c + _x3 + (("3572445317" : GoUInt32)), ((16 : GoInt)));
			_b = _c + stdgo.math.bits.Bits.rotateLeft32((_c ^ _d ^ _a) + _b + _x6 + ((76029189 : GoUInt32)), ((23 : GoInt)));
			_a = _b + stdgo.math.bits.Bits.rotateLeft32((_b ^ _c ^ _d) + _a + _x9 + (("3654602809" : GoUInt32)), ((4 : GoInt)));
			_d = _a + stdgo.math.bits.Bits.rotateLeft32((_a ^ _b ^ _c) + _d + _xc + (("3873151461" : GoUInt32)), ((11 : GoInt)));
			_c = _d + stdgo.math.bits.Bits.rotateLeft32((_d ^ _a ^ _b) + _c + _xf + ((530742520 : GoUInt32)), ((16 : GoInt)));
			_b = _c + stdgo.math.bits.Bits.rotateLeft32((_c ^ _d ^ _a) + _b + _x2 + (("3299628645" : GoUInt32)), ((23 : GoInt)));
			_a = _b + stdgo.math.bits.Bits.rotateLeft32((_c ^ (_b | -1 ^ _d)) + _a + _x0 + (("4096336452" : GoUInt32)), ((6 : GoInt)));
			_d = _a + stdgo.math.bits.Bits.rotateLeft32((_b ^ (_a | -1 ^ _c)) + _d + _x7 + ((1126891415 : GoUInt32)), ((10 : GoInt)));
			_c = _d + stdgo.math.bits.Bits.rotateLeft32((_a ^ (_d | -1 ^ _b)) + _c + _xe + (("2878612391" : GoUInt32)), ((15 : GoInt)));
			_b = _c + stdgo.math.bits.Bits.rotateLeft32((_d ^ (_c | -1 ^ _a)) + _b + _x5 + (("4237533241" : GoUInt32)), ((21 : GoInt)));
			_a = _b + stdgo.math.bits.Bits.rotateLeft32((_c ^ (_b | -1 ^ _d)) + _a + _xc + ((1700485571 : GoUInt32)), ((6 : GoInt)));
			_d = _a + stdgo.math.bits.Bits.rotateLeft32((_b ^ (_a | -1 ^ _c)) + _d + _x3 + (("2399980690" : GoUInt32)), ((10 : GoInt)));
			_c = _d + stdgo.math.bits.Bits.rotateLeft32((_a ^ (_d | -1 ^ _b)) + _c + _xa + (("4293915773" : GoUInt32)), ((15 : GoInt)));
			_b = _c + stdgo.math.bits.Bits.rotateLeft32((_d ^ (_c | -1 ^ _a)) + _b + _x1 + (("2240044497" : GoUInt32)), ((21 : GoInt)));
			_a = _b + stdgo.math.bits.Bits.rotateLeft32((_c ^ (_b | -1 ^ _d)) + _a + _x8 + ((1873313359 : GoUInt32)), ((6 : GoInt)));
			_d = _a + stdgo.math.bits.Bits.rotateLeft32((_b ^ (_a | -1 ^ _c)) + _d + _xf + (("4264355552" : GoUInt32)), ((10 : GoInt)));
			_c = _d + stdgo.math.bits.Bits.rotateLeft32((_a ^ (_d | -1 ^ _b)) + _c + _x6 + (("2734768916" : GoUInt32)), ((15 : GoInt)));
			_b = _c + stdgo.math.bits.Bits.rotateLeft32((_d ^ (_c | -1 ^ _a)) + _b + _xd + ((1309151649 : GoUInt32)), ((21 : GoInt)));
			_a = _b + stdgo.math.bits.Bits.rotateLeft32((_c ^ (_b | -1 ^ _d)) + _a + _x4 + (("4149444226" : GoUInt32)), ((6 : GoInt)));
			_d = _a + stdgo.math.bits.Bits.rotateLeft32((_b ^ (_a | -1 ^ _c)) + _d + _xb + (("3174756917" : GoUInt32)), ((10 : GoInt)));
			_c = _d + stdgo.math.bits.Bits.rotateLeft32((_a ^ (_d | -1 ^ _b)) + _c + _x2 + ((718787259 : GoUInt32)), ((15 : GoInt)));
			_b = _c + stdgo.math.bits.Bits.rotateLeft32((_d ^ (_c | -1 ^ _a)) + _b + _x9 + (("3951481745" : GoUInt32)), ((21 : GoInt)));
			_a = _a + (_aa);
			_b = _b + (_bb);
			_c = _c + (_cc);
			_d = _d + (_dd);
		});
	};
	{
		final __tmp__0 = _a;
		final __tmp__1 = _b;
		final __tmp__2 = _c;
		final __tmp__3 = _d;
		_dig.value._s[((0 : GoInt))] = __tmp__0;
		_dig.value._s[((1 : GoInt))] = __tmp__1;
		_dig.value._s[((2 : GoInt))] = __tmp__2;
		_dig.value._s[((3 : GoInt))] = __tmp__3;
	};
}

@:keep var _ = {
	try {
		stdgo.crypto.Crypto.registerHash(stdgo.crypto.Crypto.md5, new_);
	} catch (e)
		if (e.message != "__return__")
			throw e;
	true;
};

class T_digest_extension_fields {
	public function reset(__tmp__):Void
		__tmp__.reset();

	public function marshalBinary(__tmp__):{var _0:Slice<GoByte>; var _1:Error;}
		return __tmp__.marshalBinary();

	public function unmarshalBinary(__tmp__, _b:Slice<GoByte>):Error
		return __tmp__.unmarshalBinary(_b);

	public function size(__tmp__):GoInt
		return __tmp__.size();

	public function blockSize(__tmp__):GoInt
		return __tmp__.blockSize();

	public function write(__tmp__, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.write(_p);

	public function sum(__tmp__, _in:Slice<GoByte>):Slice<GoByte>
		return __tmp__.sum(_in);

	public function _checkSum(__tmp__):GoArray<GoByte>
		return __tmp__._checkSum();
}

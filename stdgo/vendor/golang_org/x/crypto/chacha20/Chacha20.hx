package stdgo.vendor.golang_org.x.crypto.chacha20;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

@:structInit class Cipher {
	public function _xorKeyStreamBlocks(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_s.value._xorKeyStreamBlocksGeneric(_dst, _src);
	}

	public function _xorKeyStreamBlocksGeneric(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_dst.length != _src.length || _dst.length % _blockSize != ((0 : GoInt))) {
			throw "chacha20: internal error: wrong dst and/or src length";
		};
		var _c0:GoUInt32 = _j0,
			_c1:GoUInt32 = _j1,
			_c2:GoUInt32 = _j2,
			_c3:GoUInt32 = _j3,
			_c4:GoUInt32 = _s.value._key[((0 : GoInt))],
			_c5:GoUInt32 = _s.value._key[((1 : GoInt))],
			_c6:GoUInt32 = _s.value._key[((2 : GoInt))],
			_c7:GoUInt32 = _s.value._key[((3 : GoInt))],
			_c8:GoUInt32 = _s.value._key[((4 : GoInt))],
			_c9:GoUInt32 = _s.value._key[((5 : GoInt))],
			_c10:GoUInt32 = _s.value._key[((6 : GoInt))],
			_c11:GoUInt32 = _s.value._key[((7 : GoInt))],
			_:GoUInt32 = _s.value._counter,
			_c13:GoUInt32 = _s.value._nonce[((0 : GoInt))],
			_c14:GoUInt32 = _s.value._nonce[((1 : GoInt))],
			_c15:GoUInt32 = _s.value._nonce[((2 : GoInt))];
		if (!_s.value._precompDone) {
			{
				var __tmp__ = _quarterRound(_c1, _c5, _c9, _c13);
				_s.value._p1 = __tmp__._0;
				_s.value._p5 = __tmp__._1;
				_s.value._p9 = __tmp__._2;
				_s.value._p13 = __tmp__._3;
			};
			{
				var __tmp__ = _quarterRound(_c2, _c6, _c10, _c14);
				_s.value._p2 = __tmp__._0;
				_s.value._p6 = __tmp__._1;
				_s.value._p10 = __tmp__._2;
				_s.value._p14 = __tmp__._3;
			};
			{
				var __tmp__ = _quarterRound(_c3, _c7, _c11, _c15);
				_s.value._p3 = __tmp__._0;
				_s.value._p7 = __tmp__._1;
				_s.value._p11 = __tmp__._2;
				_s.value._p15 = __tmp__._3;
			};
			_s.value._precompDone = true;
		};
		while (_src.length >= ((64 : GoInt)) && _dst.length >= ((64 : GoInt))) {
			var __tmp__ = _quarterRound(_c0, _c4, _c8, _s.value._counter),
				_fcr0:GoUInt32 = __tmp__._0,
				_fcr4:GoUInt32 = __tmp__._1,
				_fcr8:GoUInt32 = __tmp__._2,
				_fcr12:GoUInt32 = __tmp__._3;
			var __tmp__ = _quarterRound(_fcr0, _s.value._p5, _s.value._p10, _s.value._p15),
				_x0:GoUInt32 = __tmp__._0,
				_x5:GoUInt32 = __tmp__._1,
				_x10:GoUInt32 = __tmp__._2,
				_x15:GoUInt32 = __tmp__._3;
			var __tmp__ = _quarterRound(_s.value._p1, _s.value._p6, _s.value._p11, _fcr12),
				_x1:GoUInt32 = __tmp__._0,
				_x6:GoUInt32 = __tmp__._1,
				_x11:GoUInt32 = __tmp__._2,
				_x12:GoUInt32 = __tmp__._3;
			var __tmp__ = _quarterRound(_s.value._p2, _s.value._p7, _fcr8, _s.value._p13),
				_x2:GoUInt32 = __tmp__._0,
				_x7:GoUInt32 = __tmp__._1,
				_x8:GoUInt32 = __tmp__._2,
				_x13:GoUInt32 = __tmp__._3;
			var __tmp__ = _quarterRound(_s.value._p3, _fcr4, _s.value._p9, _s.value._p14),
				_x3:GoUInt32 = __tmp__._0,
				_x4:GoUInt32 = __tmp__._1,
				_x9:GoUInt32 = __tmp__._2,
				_x14:GoUInt32 = __tmp__._3;
			{
				var _i:GoInt = ((0 : GoInt));
				Go.cfor(_i < ((9 : GoInt)), _i++, {
					{
						var __tmp__ = _quarterRound(_x0, _x4, _x8, _x12);
						_x0 = __tmp__._0;
						_x4 = __tmp__._1;
						_x8 = __tmp__._2;
						_x12 = __tmp__._3;
					};
					{
						var __tmp__ = _quarterRound(_x1, _x5, _x9, _x13);
						_x1 = __tmp__._0;
						_x5 = __tmp__._1;
						_x9 = __tmp__._2;
						_x13 = __tmp__._3;
					};
					{
						var __tmp__ = _quarterRound(_x2, _x6, _x10, _x14);
						_x2 = __tmp__._0;
						_x6 = __tmp__._1;
						_x10 = __tmp__._2;
						_x14 = __tmp__._3;
					};
					{
						var __tmp__ = _quarterRound(_x3, _x7, _x11, _x15);
						_x3 = __tmp__._0;
						_x7 = __tmp__._1;
						_x11 = __tmp__._2;
						_x15 = __tmp__._3;
					};
					{
						var __tmp__ = _quarterRound(_x0, _x5, _x10, _x15);
						_x0 = __tmp__._0;
						_x5 = __tmp__._1;
						_x10 = __tmp__._2;
						_x15 = __tmp__._3;
					};
					{
						var __tmp__ = _quarterRound(_x1, _x6, _x11, _x12);
						_x1 = __tmp__._0;
						_x6 = __tmp__._1;
						_x11 = __tmp__._2;
						_x12 = __tmp__._3;
					};
					{
						var __tmp__ = _quarterRound(_x2, _x7, _x8, _x13);
						_x2 = __tmp__._0;
						_x7 = __tmp__._1;
						_x8 = __tmp__._2;
						_x13 = __tmp__._3;
					};
					{
						var __tmp__ = _quarterRound(_x3, _x4, _x9, _x14);
						_x3 = __tmp__._0;
						_x4 = __tmp__._1;
						_x9 = __tmp__._2;
						_x14 = __tmp__._3;
					};
				});
			};
			_addXor(_dst.__slice__(((0 : GoInt)), ((4 : GoInt))), _src.__slice__(((0 : GoInt)), ((4 : GoInt))), _x0, _c0);
			_addXor(_dst.__slice__(((4 : GoInt)), ((8 : GoInt))), _src.__slice__(((4 : GoInt)), ((8 : GoInt))), _x1, _c1);
			_addXor(_dst.__slice__(((8 : GoInt)), ((12 : GoInt))), _src.__slice__(((8 : GoInt)), ((12 : GoInt))), _x2, _c2);
			_addXor(_dst.__slice__(((12 : GoInt)), ((16 : GoInt))), _src.__slice__(((12 : GoInt)), ((16 : GoInt))), _x3, _c3);
			_addXor(_dst.__slice__(((16 : GoInt)), ((20 : GoInt))), _src.__slice__(((16 : GoInt)), ((20 : GoInt))), _x4, _c4);
			_addXor(_dst.__slice__(((20 : GoInt)), ((24 : GoInt))), _src.__slice__(((20 : GoInt)), ((24 : GoInt))), _x5, _c5);
			_addXor(_dst.__slice__(((24 : GoInt)), ((28 : GoInt))), _src.__slice__(((24 : GoInt)), ((28 : GoInt))), _x6, _c6);
			_addXor(_dst.__slice__(((28 : GoInt)), ((32 : GoInt))), _src.__slice__(((28 : GoInt)), ((32 : GoInt))), _x7, _c7);
			_addXor(_dst.__slice__(((32 : GoInt)), ((36 : GoInt))), _src.__slice__(((32 : GoInt)), ((36 : GoInt))), _x8, _c8);
			_addXor(_dst.__slice__(((36 : GoInt)), ((40 : GoInt))), _src.__slice__(((36 : GoInt)), ((40 : GoInt))), _x9, _c9);
			_addXor(_dst.__slice__(((40 : GoInt)), ((44 : GoInt))), _src.__slice__(((40 : GoInt)), ((44 : GoInt))), _x10, _c10);
			_addXor(_dst.__slice__(((44 : GoInt)), ((48 : GoInt))), _src.__slice__(((44 : GoInt)), ((48 : GoInt))), _x11, _c11);
			_addXor(_dst.__slice__(((48 : GoInt)), ((52 : GoInt))), _src.__slice__(((48 : GoInt)), ((52 : GoInt))), _x12, _s.value._counter);
			_addXor(_dst.__slice__(((52 : GoInt)), ((56 : GoInt))), _src.__slice__(((52 : GoInt)), ((56 : GoInt))), _x13, _c13);
			_addXor(_dst.__slice__(((56 : GoInt)), ((60 : GoInt))), _src.__slice__(((56 : GoInt)), ((60 : GoInt))), _x14, _c14);
			_addXor(_dst.__slice__(((60 : GoInt)), ((64 : GoInt))), _src.__slice__(((60 : GoInt)), ((64 : GoInt))), _x15, _c15);
			_s.value._counter = _s.value._counter + (((1 : GoUInt32)));
			{
				final __tmp__0 = _src.__slice__(_blockSize);
				final __tmp__1 = _dst.__slice__(_blockSize);
				_src = __tmp__0;
				_dst = __tmp__1;
			};
		};
	}

	public function xorkeyStream(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_src.length == ((0 : GoInt))) {
			return;
		};
		if (_dst.length < _src.length) {
			throw "chacha20: output smaller than input";
		};
		_dst = _dst.__slice__(0, _src.length);
		if (golang_org.x.crypto.internal.subtle.Subtle.inexactOverlap(_dst, _src)) {
			throw "chacha20: invalid buffer overlap";
		};
		if (_s.value._len != ((0 : GoInt))) {
			var _keyStream:Slice<GoUInt8> = _s.value._buf.__slice__(_bufSize - _s.value._len);
			if (_src.length < _keyStream.length) {
				_keyStream = _keyStream.__slice__(0, _src.length);
			};
			_src[_keyStream.length - ((1 : GoInt))];
			for (_i => _b in _keyStream) {
				_dst[_i] = _src[_i] ^ _b;
			};
			_s.value._len = _s.value._len - (_keyStream.length);
			{
				final __tmp__0 = _dst.__slice__(_keyStream.length);
				final __tmp__1 = _src.__slice__(_keyStream.length);
				_dst = __tmp__0;
				_src = __tmp__1;
			};
		};
		if (_src.length == ((0 : GoInt))) {
			return;
		};
		var _numBlocks:GoUInt64 = (((_src.length : GoUInt64)) + _blockSize - ((1 : GoUInt64))) / _blockSize;
		if (_s.value._overflow || ((_s.value._counter : GoUInt64)) + _numBlocks > (((1 : GoUnTypedInt)) << ((32 : GoUnTypedInt)))) {
			throw "chacha20: counter overflow";
		} else if (((_s.value._counter : GoUInt64)) + _numBlocks == (((1 : GoUnTypedInt)) << ((32 : GoUnTypedInt)))) {
			_s.value._overflow = true;
		};
		var _full:GoInt = _src.length - _src.length % _bufSize;
		if (_full > ((0 : GoInt))) {
			_s.value._xorKeyStreamBlocks(_dst.__slice__(0, _full), _src.__slice__(0, _full));
		};
		{
			final __tmp__0 = _dst.__slice__(_full);
			final __tmp__1 = _src.__slice__(_full);
			_dst = __tmp__0;
			_src = __tmp__1;
		};
		final _blocksPerBuf:GoUnTypedInt = _bufSize / _blockSize;
		if (((_s.value._counter : GoUInt64)) + _blocksPerBuf > (((1 : GoUnTypedInt)) << ((32 : GoUnTypedInt)))) {
			_s.value._buf = new GoArray<GoUInt8>(...([].concat([for (i in 0...64) 0]))).copy();
			var _numBlocks:GoInt = (_src.length + _blockSize - ((1 : GoInt))) / _blockSize;
			var _buf:Slice<GoUInt8> = _s.value._buf.__slice__(_bufSize - _numBlocks * _blockSize);
			Go.copy(_buf, _src);
			_s.value._xorKeyStreamBlocksGeneric(_buf, _buf);
			_s.value._len = _buf.length - Go.copy(_dst, _buf);
			return;
		};
		if (_src.length > ((0 : GoInt))) {
			_s.value._buf = new GoArray<GoUInt8>(...([].concat([for (i in 0...64) 0]))).copy();
			Go.copy(_s.value._buf.__slice__(0), _src);
			_s.value._xorKeyStreamBlocks(_s.value._buf.__slice__(0), _s.value._buf.__slice__(0));
			_s.value._len = _bufSize - Go.copy(_dst, _s.value._buf.__slice__(0));
		};
	}

	public function setCounter(_counter:GoUInt32):Void {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _outputCounter:GoUInt32 = _s.value._counter - ((_s.value._len : GoUInt32)) / _blockSize;
		if (_s.value._overflow || _counter < _outputCounter) {
			throw "chacha20: SetCounter attempted to rollback counter";
		};
		if (_counter < _s.value._counter) {
			_s.value._len = (((_s.value._counter - _counter) : GoInt)) * _blockSize;
		} else {
			_s.value._counter = _counter;
			_s.value._len = ((0 : GoInt));
		};
	}

	public var _key:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0...8) ((0 : GoUInt32))]);
	public var _counter:GoUInt32 = ((0 : GoUInt32));
	public var _nonce:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0...3) ((0 : GoUInt32))]);
	public var _buf:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...64) ((0 : GoUInt8))]);
	public var _len:GoInt = ((0 : GoInt));
	public var _overflow:Bool = false;
	public var _precompDone:Bool = false;
	public var _p1:GoUInt32 = ((0 : GoUInt32));
	public var _p5:GoUInt32 = ((0 : GoUInt32));
	public var _p9:GoUInt32 = ((0 : GoUInt32));
	public var _p13:GoUInt32 = ((0 : GoUInt32));
	public var _p2:GoUInt32 = ((0 : GoUInt32));
	public var _p6:GoUInt32 = ((0 : GoUInt32));
	public var _p10:GoUInt32 = ((0 : GoUInt32));
	public var _p14:GoUInt32 = ((0 : GoUInt32));
	public var _p3:GoUInt32 = ((0 : GoUInt32));
	public var _p7:GoUInt32 = ((0 : GoUInt32));
	public var _p11:GoUInt32 = ((0 : GoUInt32));
	public var _p15:GoUInt32 = ((0 : GoUInt32));

	public function new(?_key:GoArray<GoUInt32>, ?_counter:GoUInt32, ?_nonce:GoArray<GoUInt32>, ?_buf:GoArray<GoUInt8>, ?_len:GoInt, ?_overflow:Bool,
			?_precompDone:Bool, ?_p1:GoUInt32, ?_p5:GoUInt32, ?_p9:GoUInt32, ?_p13:GoUInt32, ?_p2:GoUInt32, ?_p6:GoUInt32, ?_p10:GoUInt32, ?_p14:GoUInt32,
			?_p3:GoUInt32, ?_p7:GoUInt32, ?_p11:GoUInt32, ?_p15:GoUInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_key) + " " + Go.string(_counter) + " " + Go.string(_nonce) + " " + Go.string(_buf) + " " + Go.string(_len) + " "
			+ Go.string(_overflow) + " " + Go.string(_precompDone) + " " + Go.string(_p1) + " " + Go.string(_p5) + " " + Go.string(_p9) + " "
			+ Go.string(_p13) + " " + Go.string(_p2) + " " + Go.string(_p6) + " " + Go.string(_p10) + " " + Go.string(_p14) + " " + Go.string(_p3) + " "
			+ Go.string(_p7) + " " + Go.string(_p11) + " " + Go.string(_p15) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Cipher(_key, _counter, _nonce, _buf, _len, _overflow, _precompDone, _p1, _p5, _p9, _p13, _p2, _p6, _p10, _p14, _p3, _p7, _p11, _p15);
	}

	public function __set__(__tmp__) {
		this._key = __tmp__._key;
		this._counter = __tmp__._counter;
		this._nonce = __tmp__._nonce;
		this._buf = __tmp__._buf;
		this._len = __tmp__._len;
		this._overflow = __tmp__._overflow;
		this._precompDone = __tmp__._precompDone;
		this._p1 = __tmp__._p1;
		this._p5 = __tmp__._p5;
		this._p9 = __tmp__._p9;
		this._p13 = __tmp__._p13;
		this._p2 = __tmp__._p2;
		this._p6 = __tmp__._p6;
		this._p10 = __tmp__._p10;
		this._p14 = __tmp__._p14;
		this._p3 = __tmp__._p3;
		this._p7 = __tmp__._p7;
		this._p11 = __tmp__._p11;
		this._p15 = __tmp__._p15;
		return this;
	}
}

final _unaligned:Bool = stdgo.runtime.Runtime.goarch == (("386" : GoString))
	|| stdgo.runtime.Runtime.goarch == (("amd64" : GoString))
	|| stdgo.runtime.Runtime.goarch == (("arm64" : GoString))
	|| stdgo.runtime.Runtime.goarch == (("ppc64le" : GoString))
	|| stdgo.runtime.Runtime.goarch == (("s390x" : GoString));

final _blockSize:GoInt64 = ((64 : GoUnTypedInt));
final keySize:GoInt64 = ((32 : GoUnTypedInt));
var _0:stdgo.crypto.cipher.Cipher.Stream = ((new Pointer<Cipher>().nil() : Pointer<Cipher>)).value;
final _j0:GoUInt32 = ((1634760805 : GoUInt32));
final nonceSize:GoInt64 = ((12 : GoUnTypedInt));
final _j1:GoUInt32 = ((857760878 : GoUInt32));
final nonceSizeX:GoInt64 = ((24 : GoUnTypedInt));
final _j2:GoUInt32 = ((2036477234 : GoUInt32));
final _bufSize:GoUnTypedInt = _blockSize;
final _j3:GoUInt32 = ((1797285236 : GoUInt32));

/**
	// NewUnauthenticatedCipher creates a new ChaCha20 stream cipher with the given
	// 32 bytes key and a 12 or 24 bytes nonce. If a nonce of 24 bytes is provided,
	// the XChaCha20 construction will be used. It returns an error if key or nonce
	// have any other length.
	//
	// Note that ChaCha20, like all stream ciphers, is not authenticated and allows
	// attackers to silently tamper with the plaintext. For this reason, it is more
	// appropriate as a building block than as a standalone encryption mechanism.
	// Instead, consider using package golang.org/x/crypto/chacha20poly1305.
**/
function newUnauthenticatedCipher(_key:Slice<GoByte>, _nonce:Slice<GoByte>):{var _0:Pointer<Cipher>; var _1:Error;} {
	var _c:Pointer<Cipher> = Go.pointer(new Cipher());
	return _newUnauthenticatedCipher(_c, _key, _nonce);
}

function _newUnauthenticatedCipher(_c:Pointer<Cipher>, _key:Slice<GoByte>, _nonce:Slice<GoByte>):{var _0:Pointer<Cipher>; var _1:Error;} {
	if (_key.length != keySize) {
		return {_0: new Pointer<Cipher>().nil(), _1: stdgo.errors.Errors.new_("chacha20: wrong key size")};
	};
	if (_nonce.length == nonceSizeX) {
		{
			var __tmp__ = hchaCha20(_key, _nonce.__slice__(((0 : GoInt)), ((16 : GoInt))));
			_key = __tmp__._0;
		};
		var _cNonce:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((nonceSize : GoInt)).toBasic()) ((0 : GoUInt8))]);
		Go.copy(_cNonce.__slice__(((4 : GoInt)), ((12 : GoInt))), _nonce.__slice__(((16 : GoInt)), ((24 : GoInt))));
		_nonce = _cNonce;
	} else if (_nonce.length != nonceSize) {
		return {_0: new Pointer<Cipher>().nil(), _1: stdgo.errors.Errors.new_("chacha20: wrong nonce size")};
	};
	{
		final __tmp__0 = _key.__slice__(0, keySize);
		final __tmp__1 = _nonce.__slice__(0, nonceSize);
		_key = __tmp__0;
		_nonce = __tmp__1;
	};
	_c.value._key = new GoArray<GoUInt32>(stdgo.encoding.binary.Binary.littleEndian.uint32(_key.__slice__(((0 : GoInt)), ((4 : GoInt)))),
		stdgo.encoding.binary.Binary.littleEndian.uint32(_key.__slice__(((4 : GoInt)), ((8 : GoInt)))),
		stdgo.encoding.binary.Binary.littleEndian.uint32(_key.__slice__(((8 : GoInt)), ((12 : GoInt)))),
		stdgo.encoding.binary.Binary.littleEndian.uint32(_key.__slice__(((12 : GoInt)), ((16 : GoInt)))),
		stdgo.encoding.binary.Binary.littleEndian.uint32(_key.__slice__(((16 : GoInt)), ((20 : GoInt)))),
		stdgo.encoding.binary.Binary.littleEndian.uint32(_key.__slice__(((20 : GoInt)), ((24 : GoInt)))),
		stdgo.encoding.binary.Binary.littleEndian.uint32(_key.__slice__(((24 : GoInt)), ((28 : GoInt)))),
		stdgo.encoding.binary.Binary.littleEndian.uint32(_key.__slice__(((28 : GoInt)), ((32 : GoInt))))).copy();
	_c.value._nonce = new GoArray<GoUInt32>(stdgo.encoding.binary.Binary.littleEndian.uint32(_nonce.__slice__(((0 : GoInt)), ((4 : GoInt)))),
		stdgo.encoding.binary.Binary.littleEndian.uint32(_nonce.__slice__(((4 : GoInt)), ((8 : GoInt)))),
		stdgo.encoding.binary.Binary.littleEndian.uint32(_nonce.__slice__(((8 : GoInt)), ((12 : GoInt))))).copy();
	return {_0: _c, _1: ((null : stdgo.Error))};
}

/**
	// quarterRound is the core of ChaCha20. It shuffles the bits of 4 state words.
	// It's executed 4 times for each of the 20 ChaCha20 rounds, operating on all 16
	// words each round, in columnar or diagonal groups of 4 at a time.
**/
function _quarterRound(_a:GoUInt32, _b:GoUInt32, _c:GoUInt32, _d:GoUInt32):{
	var _0:GoUInt32;
	var _1:GoUInt32;
	var _2:GoUInt32;
	var _3:GoUInt32;
} {
	_a = _a + (_b);
	_d = _d ^ (_a);
	_d = stdgo.math.bits.Bits.rotateLeft32(_d, ((16 : GoInt)));
	_c = _c + (_d);
	_b = _b ^ (_c);
	_b = stdgo.math.bits.Bits.rotateLeft32(_b, ((12 : GoInt)));
	_a = _a + (_b);
	_d = _d ^ (_a);
	_d = stdgo.math.bits.Bits.rotateLeft32(_d, ((8 : GoInt)));
	_c = _c + (_d);
	_b = _b ^ (_c);
	_b = stdgo.math.bits.Bits.rotateLeft32(_b, ((7 : GoInt)));
	return {
		_0: _a,
		_1: _b,
		_2: _c,
		_3: _d
	};
}

/**
	// HChaCha20 uses the ChaCha20 core to generate a derived key from a 32 bytes
	// key and a 16 bytes nonce. It returns an error if key or nonce have any other
	// length. It is used as part of the XChaCha20 construction.
**/
function hchaCha20(_key:Slice<GoByte>, _nonce:Slice<GoByte>):{var _0:Slice<GoByte>; var _1:Error;} {
	var _out:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((((32 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
	return _hChaCha20(_out, _key, _nonce);
}

function _hChaCha20(_out:Slice<GoByte>, _key:Slice<GoByte>, _nonce:Slice<GoByte>):{var _0:Slice<GoByte>; var _1:Error;} {
	if (_key.length != keySize) {
		return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("chacha20: wrong HChaCha20 key size")};
	};
	if (_nonce.length != ((16 : GoInt))) {
		return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("chacha20: wrong HChaCha20 nonce size")};
	};
	var _x0:GoUInt32 = _j0,
		_x1:GoUInt32 = _j1,
		_x2:GoUInt32 = _j2,
		_x3:GoUInt32 = _j3;
	var _x4:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_key.__slice__(((0 : GoInt)), ((4 : GoInt))));
	var _x5:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_key.__slice__(((4 : GoInt)), ((8 : GoInt))));
	var _x6:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_key.__slice__(((8 : GoInt)), ((12 : GoInt))));
	var _x7:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_key.__slice__(((12 : GoInt)), ((16 : GoInt))));
	var _x8:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_key.__slice__(((16 : GoInt)), ((20 : GoInt))));
	var _x9:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_key.__slice__(((20 : GoInt)), ((24 : GoInt))));
	var _x10:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_key.__slice__(((24 : GoInt)), ((28 : GoInt))));
	var _x11:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_key.__slice__(((28 : GoInt)), ((32 : GoInt))));
	var _x12:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_nonce.__slice__(((0 : GoInt)), ((4 : GoInt))));
	var _x13:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_nonce.__slice__(((4 : GoInt)), ((8 : GoInt))));
	var _x14:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_nonce.__slice__(((8 : GoInt)), ((12 : GoInt))));
	var _x15:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_nonce.__slice__(((12 : GoInt)), ((16 : GoInt))));
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < ((10 : GoInt)), _i++, {
			{
				var __tmp__ = _quarterRound(_x0, _x4, _x8, _x12);
				_x0 = __tmp__._0;
				_x4 = __tmp__._1;
				_x8 = __tmp__._2;
				_x12 = __tmp__._3;
			};
			{
				var __tmp__ = _quarterRound(_x1, _x5, _x9, _x13);
				_x1 = __tmp__._0;
				_x5 = __tmp__._1;
				_x9 = __tmp__._2;
				_x13 = __tmp__._3;
			};
			{
				var __tmp__ = _quarterRound(_x2, _x6, _x10, _x14);
				_x2 = __tmp__._0;
				_x6 = __tmp__._1;
				_x10 = __tmp__._2;
				_x14 = __tmp__._3;
			};
			{
				var __tmp__ = _quarterRound(_x3, _x7, _x11, _x15);
				_x3 = __tmp__._0;
				_x7 = __tmp__._1;
				_x11 = __tmp__._2;
				_x15 = __tmp__._3;
			};
			{
				var __tmp__ = _quarterRound(_x0, _x5, _x10, _x15);
				_x0 = __tmp__._0;
				_x5 = __tmp__._1;
				_x10 = __tmp__._2;
				_x15 = __tmp__._3;
			};
			{
				var __tmp__ = _quarterRound(_x1, _x6, _x11, _x12);
				_x1 = __tmp__._0;
				_x6 = __tmp__._1;
				_x11 = __tmp__._2;
				_x12 = __tmp__._3;
			};
			{
				var __tmp__ = _quarterRound(_x2, _x7, _x8, _x13);
				_x2 = __tmp__._0;
				_x7 = __tmp__._1;
				_x8 = __tmp__._2;
				_x13 = __tmp__._3;
			};
			{
				var __tmp__ = _quarterRound(_x3, _x4, _x9, _x14);
				_x3 = __tmp__._0;
				_x4 = __tmp__._1;
				_x9 = __tmp__._2;
				_x14 = __tmp__._3;
			};
		});
	};
	_out[((31 : GoInt))];
	stdgo.encoding.binary.Binary.littleEndian.putUint32(_out.__slice__(((0 : GoInt)), ((4 : GoInt))), _x0);
	stdgo.encoding.binary.Binary.littleEndian.putUint32(_out.__slice__(((4 : GoInt)), ((8 : GoInt))), _x1);
	stdgo.encoding.binary.Binary.littleEndian.putUint32(_out.__slice__(((8 : GoInt)), ((12 : GoInt))), _x2);
	stdgo.encoding.binary.Binary.littleEndian.putUint32(_out.__slice__(((12 : GoInt)), ((16 : GoInt))), _x3);
	stdgo.encoding.binary.Binary.littleEndian.putUint32(_out.__slice__(((16 : GoInt)), ((20 : GoInt))), _x12);
	stdgo.encoding.binary.Binary.littleEndian.putUint32(_out.__slice__(((20 : GoInt)), ((24 : GoInt))), _x13);
	stdgo.encoding.binary.Binary.littleEndian.putUint32(_out.__slice__(((24 : GoInt)), ((28 : GoInt))), _x14);
	stdgo.encoding.binary.Binary.littleEndian.putUint32(_out.__slice__(((28 : GoInt)), ((32 : GoInt))), _x15);
	return {_0: _out, _1: ((null : stdgo.Error))};
}

/**
	// addXor reads a little endian uint32 from src, XORs it with (a + b) and
	// places the result in little endian byte order in dst.
**/
function _addXor(_dst:Slice<GoByte>, _src:Slice<GoByte>, _a:GoUInt32, _b:GoUInt32):Void {
	{
		_src[((3 : GoInt))];
		_dst[((3 : GoInt))];
	};
	if (_unaligned) {
		var _v:GoUInt32 = ((_src[((0 : GoInt))] : GoUInt32));
		_v = _v | ((((_src[((1 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))));
		_v = _v | ((((_src[((2 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))));
		_v = _v | ((((_src[((3 : GoInt))] : GoUInt32)) << ((24 : GoUnTypedInt))));
		_v = _v ^ (_a + _b);
		_dst[((0 : GoInt))] = ((_v : GoByte));
		_dst[((1 : GoInt))] = (((_v >> ((8 : GoUnTypedInt))) : GoByte));
		_dst[((2 : GoInt))] = (((_v >> ((16 : GoUnTypedInt))) : GoByte));
		_dst[((3 : GoInt))] = (((_v >> ((24 : GoUnTypedInt))) : GoByte));
	} else {
		_a = _a + (_b);
		_dst[((0 : GoInt))] = _src[((0 : GoInt))] ^ ((_a : GoByte));
		_dst[((1 : GoInt))] = _src[((1 : GoInt))] ^ (((_a >> ((8 : GoUnTypedInt))) : GoByte));
		_dst[((2 : GoInt))] = _src[((2 : GoInt))] ^ (((_a >> ((16 : GoUnTypedInt))) : GoByte));
		_dst[((3 : GoInt))] = _src[((3 : GoInt))] ^ (((_a >> ((24 : GoUnTypedInt))) : GoByte));
	};
}

class Cipher_extension_fields {
	public function setCounter(__tmp__, _counter:GoUInt32):Void
		__tmp__.setCounter(_counter);

	public function xorkeyStream(__tmp__, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void
		__tmp__.xorkeyStream(_dst, _src);

	public function _xorKeyStreamBlocksGeneric(__tmp__, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void
		__tmp__._xorKeyStreamBlocksGeneric(_dst, _src);

	public function _xorKeyStreamBlocks(__tmp__, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void
		__tmp__._xorKeyStreamBlocks(_dst, _src);
}

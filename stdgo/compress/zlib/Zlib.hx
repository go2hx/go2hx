package stdgo.compress.zlib;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

typedef Resetter = StructType & {
	public function reset(_r:stdgo.io.Io.Reader, _dict:Slice<GoByte>):Error;
};

@:structInit class T_reader {
	public function reset(_r:stdgo.io.Io.Reader, _dict:Slice<GoByte>):Error {
		var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_z.value = (({
			_decompressor: _z.value._decompressor,
			_r: ((null : stdgo.compress.flate.Flate.Reader)),
			_digest: ((null : stdgo.hash.Hash.Hash32)),
			_err: ((null : stdgo.Error)),
			_scratch: new GoArray<GoUInt8>(...[for (i in 0...4) ((0 : GoUInt8))])
		} : T_reader)).__copy__();
		{
			var __tmp__ = try {
				{value: ((_r.__underlying__().value : stdgo.compress.flate.Flate.Reader)), ok: true};
			} catch (_) {
				{value: ((null : stdgo.compress.flate.Flate.Reader)), ok: false};
			}, _fr = __tmp__.value, _ok = __tmp__.ok;
			if (_ok) {
				_z.value._r = _fr;
			} else {
				_z.value._r = bufio.Bufio.newReader(_r).value;
			};
		};
		{
			var __tmp__ = stdgo.io.Io.readFull(_z.value._r, _z.value._scratch.__slice__(((0 : GoInt)), ((2 : GoInt))));
			_z.value._err = __tmp__._1;
		};
		if (_z.value._err != null) {
			if (Go.toInterface(_z.value._err) == Go.toInterface(stdgo.io.Io.eof)) {
				_z.value._err = stdgo.io.Io.errUnexpectedEOF;
			};
			return _z.value._err;
		};
		var _h:GoUInt = (((_z.value._scratch[((0 : GoInt))] : GoUInt)) << ((8 : GoUnTypedInt))) | ((_z.value._scratch[((1 : GoInt))] : GoUInt));
		if ((_z.value._scratch[((0 : GoInt))] & ((15 : GoUInt8)) != _zlibDeflate) || (_h % ((31 : GoUInt)) != ((0 : GoUInt)))) {
			_z.value._err = errHeader;
			return _z.value._err;
		};
		var _haveDict:Bool = _z.value._scratch[((1 : GoInt))] & ((32 : GoUInt8)) != ((0 : GoUInt8));
		if (_haveDict) {
			{
				var __tmp__ = stdgo.io.Io.readFull(_z.value._r, _z.value._scratch.__slice__(((0 : GoInt)), ((4 : GoInt))));
				_z.value._err = __tmp__._1;
			};
			if (_z.value._err != null) {
				if (Go.toInterface(_z.value._err) == Go.toInterface(stdgo.io.Io.eof)) {
					_z.value._err = stdgo.io.Io.errUnexpectedEOF;
				};
				return _z.value._err;
			};
			var _checksum:GoUInt32 = (((_z.value._scratch[((0 : GoInt))] : GoUInt32)) << ((24 : GoUnTypedInt))) | (((_z.value._scratch[((1 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_z.value._scratch[((2 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | ((_z.value._scratch[((3 : GoInt))] : GoUInt32));
			if (_checksum != stdgo.hash.adler32.Adler32.checksum(_dict)) {
				_z.value._err = errDictionary;
				return _z.value._err;
			};
		};
		if (_z.value._decompressor == null) {
			if (_haveDict) {
				_z.value._decompressor = stdgo.compress.flate.Flate.newReaderDict(_z.value._r, _dict);
			} else {
				_z.value._decompressor = stdgo.compress.flate.Flate.newReader(_z.value._r);
			};
		} else {
			((_z.value._decompressor.__underlying__().value : stdgo.compress.flate.Flate.Resetter)).reset(_z.value._r, _dict);
		};
		_z.value._digest = stdgo.hash.adler32.Adler32.new_();
		return ((null : stdgo.Error));
	}

	public function close():Error {
		var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_z.value._err != null && Go.toInterface(_z.value._err) != Go.toInterface(stdgo.io.Io.eof)) {
			return _z.value._err;
		};
		_z.value._err = _z.value._decompressor.close();
		return _z.value._err;
	}

	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_z.value._err != null) {
			return {_0: ((0 : GoInt)), _1: _z.value._err};
		};
		var _n:GoInt = ((0 : GoInt));
		{
			var __tmp__ = _z.value._decompressor.read(_p);
			_n = __tmp__._0;
			_z.value._err = __tmp__._1;
		};
		_z.value._digest.write(_p.__slice__(((0 : GoInt)), _n));
		if (Go.toInterface(_z.value._err) != Go.toInterface(stdgo.io.Io.eof)) {
			return {_0: _n, _1: _z.value._err};
		};
		{
			var __tmp__ = stdgo.io.Io.readFull(_z.value._r, _z.value._scratch.__slice__(((0 : GoInt)), ((4 : GoInt)))),
				_:GoInt = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
					_err = stdgo.io.Io.errUnexpectedEOF;
				};
				_z.value._err = _err;
				return {_0: _n, _1: _z.value._err};
			};
		};
		var _checksum:GoUInt32 = (((_z.value._scratch[((0 : GoInt))] : GoUInt32)) << ((24 : GoUnTypedInt))) | (((_z.value._scratch[((1 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_z.value._scratch[((2 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | ((_z.value._scratch[((3 : GoInt))] : GoUInt32));
		if (_checksum != _z.value._digest.sum32()) {
			_z.value._err = errChecksum;
			return {_0: _n, _1: _z.value._err};
		};
		return {_0: _n, _1: stdgo.io.Io.eof};
	}

	public var _r:stdgo.compress.flate.Flate.Reader = ((null : stdgo.compress.flate.Flate.Reader));
	public var _decompressor:stdgo.io.Io.ReadCloser = ((null : stdgo.io.Io.ReadCloser));
	public var _digest:stdgo.hash.Hash.Hash32 = ((null : stdgo.hash.Hash.Hash32));
	public var _err:stdgo.Error = ((null : stdgo.Error));
	public var _scratch:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...4) ((0 : GoUInt8))]);

	public function new(?_r:stdgo.compress.flate.Flate.Reader, ?_decompressor:stdgo.io.Io.ReadCloser, ?_digest:stdgo.hash.Hash.Hash32, ?_err:stdgo.Error,
			?_scratch:GoArray<GoUInt8>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{'
			+ Go.string(_r)
			+ " "
			+ Go.string(_decompressor)
			+ " "
			+ Go.string(_digest)
			+ " "
			+ Go.string(_err)
			+ " "
			+ Go.string(_scratch)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_reader(_r, _decompressor, _digest, _err, _scratch);
	}

	public function __set__(__tmp__) {
		this._r = __tmp__._r;
		this._decompressor = __tmp__._decompressor;
		this._digest = __tmp__._digest;
		this._err = __tmp__._err;
		this._scratch = __tmp__._scratch;
		return this;
	}
}

@:structInit class Writer {
	public function close():Error {
		var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_z.value._wroteHeader) {
			_z.value._err = _z.value._writeHeader();
		};
		if (_z.value._err != null) {
			return _z.value._err;
		};
		_z.value._err = _z.value._compressor.value.close();
		if (_z.value._err != null) {
			return _z.value._err;
		};
		var _checksum:GoUInt32 = _z.value._digest.sum32();
		stdgo.encoding.binary.Binary.bigEndian.putUint32(_z.value._scratch.__slice__(0), _checksum);
		{
			var __tmp__ = _z.value._w.write(_z.value._scratch.__slice__(((0 : GoInt)), ((4 : GoInt))));
			_z.value._err = __tmp__._1;
		};
		return _z.value._err;
	}

	public function flush():Error {
		var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_z.value._wroteHeader) {
			_z.value._err = _z.value._writeHeader();
		};
		if (_z.value._err != null) {
			return _z.value._err;
		};
		_z.value._err = _z.value._compressor.value.flush();
		return _z.value._err;
	}

	public function write(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		if (!_z.value._wroteHeader) {
			_z.value._err = _z.value._writeHeader();
		};
		if (_z.value._err != null) {
			return {_0: ((0 : GoInt)), _1: _z.value._err};
		};
		if (_p.length == ((0 : GoInt))) {
			return {_0: ((0 : GoInt)), _1: ((null : stdgo.Error))};
		};
		{
			var __tmp__ = _z.value._compressor.value.write(_p);
			_n = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			_z.value._err = _err;
			return {_0: _n, _1: _err};
		};
		_z.value._digest.write(_p);
		return {_0: _n, _1: _err};
	}

	public function _writeHeader():Error {
		var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _err:Error = ((null : stdgo.Error));
		_z.value._wroteHeader = true;
		_z.value._scratch[((0 : GoInt))] = ((120 : GoUInt8));
		if (_z.value._level == -((2 : GoUnTypedInt)) || _z.value._level == ((0 : GoInt)) || _z.value._level == ((1 : GoInt))) {
			_z.value._scratch[((1 : GoInt))] = (((0 : GoUnTypedInt)) << ((6 : GoUnTypedInt)));
		} else
			if (_z.value._level == ((2 : GoInt)) || _z.value._level == ((3 : GoInt)) || _z.value._level == ((4 : GoInt)) || _z.value._level == ((5 : GoInt))) {
			_z.value._scratch[((1 : GoInt))] = (((1 : GoUnTypedInt)) << ((6 : GoUnTypedInt)));
		} else if (_z.value._level == ((6 : GoInt)) || _z.value._level == -((1 : GoUnTypedInt))) {
			_z.value._scratch[((1 : GoInt))] = (((2 : GoUnTypedInt)) << ((6 : GoUnTypedInt)));
		} else if (_z.value._level == ((7 : GoInt)) || _z.value._level == ((8 : GoInt)) || _z.value._level == ((9 : GoInt))) {
			_z.value._scratch[((1 : GoInt))] = (((3 : GoUnTypedInt)) << ((6 : GoUnTypedInt)));
		} else {
			throw "unreachable";
		};
		if (_z.value._dict != null && !_z.value._dict.isNil()) {
			_z.value._scratch[((1 : GoInt))] = _z.value._scratch[((1 : GoInt))] | ((((1 : GoUnTypedInt)) << ((5 : GoUnTypedInt))));
		};
		_z.value._scratch[((1 : GoInt))] = _z.value._scratch[((1 : GoInt))]
			+ ((((((31 : GoUInt16))
				- ((((_z.value._scratch[((0 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt)))
					+ ((_z.value._scratch[((1 : GoInt))] : GoUInt16))) % ((31 : GoUInt16))) : GoUInt8)));
		{
			{
				var __tmp__ = _z.value._w.write(_z.value._scratch.__slice__(((0 : GoInt)), ((2 : GoInt))));
				_err = __tmp__._1;
			};
			if (_err != null) {
				return _err;
			};
		};
		if (_z.value._dict != null && !_z.value._dict.isNil()) {
			stdgo.encoding.binary.Binary.bigEndian.putUint32(_z.value._scratch.__slice__(0), stdgo.hash.adler32.Adler32.checksum(_z.value._dict));
			{
				{
					var __tmp__ = _z.value._w.write(_z.value._scratch.__slice__(((0 : GoInt)), ((4 : GoInt))));
					_err = __tmp__._1;
				};
				if (_err != null) {
					return _err;
				};
			};
		};
		if (_z.value._compressor == null || _z.value._compressor.isNil()) {
			{
				var __tmp__ = stdgo.compress.flate.Flate.newWriterDict(_z.value._w, _z.value._level, _z.value._dict);
				_z.value._compressor = __tmp__._0;
				_err = __tmp__._1;
			};
			if (_err != null) {
				return _err;
			};
			_z.value._digest = stdgo.hash.adler32.Adler32.new_();
		};
		return ((null : stdgo.Error));
	}

	public function reset(_w:stdgo.io.Io.Writer):Void {
		var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_z.value._w = _w;
		if (_z.value._compressor != null && !_z.value._compressor.isNil()) {
			_z.value._compressor.value.reset(_w);
		};
		if (_z.value._digest != null) {
			_z.value._digest.reset();
		};
		_z.value._err = ((null : stdgo.Error));
		_z.value._scratch = new GoArray<GoUInt8>(...([].concat([for (i in 0...4) 0]))).copy();
		_z.value._wroteHeader = false;
	}

	public var _w:stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
	public var _level:GoInt = ((0 : GoInt));
	public var _dict:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var _compressor:Pointer<stdgo.compress.flate.Flate.Writer> = new Pointer<stdgo.compress.flate.Flate.Writer>().nil();
	public var _digest:stdgo.hash.Hash.Hash32 = ((null : stdgo.hash.Hash.Hash32));
	public var _err:stdgo.Error = ((null : stdgo.Error));
	public var _scratch:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...4) ((0 : GoUInt8))]);
	public var _wroteHeader:Bool = false;

	public function new(?_w:stdgo.io.Io.Writer, ?_level:GoInt, ?_dict:Slice<GoUInt8>, ?_compressor:Pointer<stdgo.compress.flate.Flate.Writer>,
			?_digest:stdgo.hash.Hash.Hash32, ?_err:stdgo.Error, ?_scratch:GoArray<GoUInt8>, ?_wroteHeader:Bool)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_w) + " " + Go.string(_level) + " " + Go.string(_dict) + " " + Go.string(_compressor) + " " + Go.string(_digest) + " "
			+ Go.string(_err) + " " + Go.string(_scratch) + " " + Go.string(_wroteHeader) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Writer(_w, _level, _dict, _compressor, _digest, _err, _scratch, _wroteHeader);
	}

	public function __set__(__tmp__) {
		this._w = __tmp__._w;
		this._level = __tmp__._level;
		this._dict = __tmp__._dict;
		this._compressor = __tmp__._compressor;
		this._digest = __tmp__._digest;
		this._err = __tmp__._err;
		this._scratch = __tmp__._scratch;
		this._wroteHeader = __tmp__._wroteHeader;
		return this;
	}
}

final bestCompression:GoUnTypedInt = stdgo.compress.flate.Flate.bestCompression;
var errHeader:stdgo.Error = stdgo.errors.Errors.new_("zlib: invalid header");
var errChecksum:stdgo.Error = stdgo.errors.Errors.new_("zlib: invalid checksum");
final bestSpeed:GoUnTypedInt = stdgo.compress.flate.Flate.bestSpeed;
var errDictionary:stdgo.Error = stdgo.errors.Errors.new_("zlib: invalid dictionary");
final huffmanOnly:GoUnTypedInt = stdgo.compress.flate.Flate.huffmanOnly;
final noCompression:GoUnTypedInt = stdgo.compress.flate.Flate.noCompression;
final defaultCompression:GoUnTypedInt = stdgo.compress.flate.Flate.defaultCompression;
final _zlibDeflate:GoInt64 = ((8 : GoUnTypedInt));

/**
	// NewReader creates a new ReadCloser.
	// Reads from the returned ReadCloser read and decompress data from r.
	// If r does not implement io.ByteReader, the decompressor may read more
	// data than necessary from r.
	// It is the caller's responsibility to call Close on the ReadCloser when done.
	//
	// The ReadCloser returned by NewReader also implements Resetter.
**/
function newReader(_r:stdgo.io.Io.Reader):{var _0:stdgo.io.Io.ReadCloser; var _1:Error;} {
	return newReaderDict(_r, new Slice<GoUInt8>().nil());
}

/**
	// NewReaderDict is like NewReader but uses a preset dictionary.
	// NewReaderDict ignores the dictionary if the compressed data does not refer to it.
	// If the compressed data refers to a different dictionary, NewReaderDict returns ErrDictionary.
	//
	// The ReadCloser returned by NewReaderDict also implements Resetter.
**/
function newReaderDict(_r:stdgo.io.Io.Reader, _dict:Slice<GoByte>):{var _0:stdgo.io.Io.ReadCloser; var _1:Error;} {
	var _z:Pointer<T_reader> = Go.pointer(new T_reader());
	var _err:stdgo.Error = _z.value.reset(_r, _dict);
	if (_err != null) {
		return {_0: ((null : stdgo.io.Io.ReadCloser)), _1: _err};
	};
	return {_0: _z.value, _1: ((null : stdgo.Error))};
}

/**
	// NewWriter creates a new Writer.
	// Writes to the returned Writer are compressed and written to w.
	//
	// It is the caller's responsibility to call Close on the Writer when done.
	// Writes may be buffered and not flushed until Close.
**/
function newWriter(_w:stdgo.io.Io.Writer):Pointer<Writer> {
	var __tmp__ = newWriterLevelDict(_w, defaultCompression, new Slice<GoUInt8>().nil()),
		_z:Pointer<Writer> = __tmp__._0,
		_:stdgo.Error = __tmp__._1;
	return _z;
}

/**
	// NewWriterLevel is like NewWriter but specifies the compression level instead
	// of assuming DefaultCompression.
	//
	// The compression level can be DefaultCompression, NoCompression, HuffmanOnly
	// or any integer value between BestSpeed and BestCompression inclusive.
	// The error returned will be nil if the level is valid.
**/
function newWriterLevel(_w:stdgo.io.Io.Writer, _level:GoInt):{var _0:Pointer<Writer>; var _1:Error;} {
	return newWriterLevelDict(_w, _level, new Slice<GoUInt8>().nil());
}

/**
	// NewWriterLevelDict is like NewWriterLevel but specifies a dictionary to
	// compress with.
	//
	// The dictionary may be nil. If not, its contents should not be modified until
	// the Writer is closed.
**/
function newWriterLevelDict(_w:stdgo.io.Io.Writer, _level:GoInt, _dict:Slice<GoByte>):{var _0:Pointer<Writer>; var _1:Error;} {
	if (_level < huffmanOnly || _level > bestCompression) {
		return {_0: new Pointer<Writer>().nil(), _1: stdgo.fmt.Fmt.errorf("zlib: invalid compression level: %d", Go.toInterface(_level))};
	};
	return {_0: Go.pointer((({
		_w: _w,
		_level: _level,
		_dict: _dict,
		_compressor: new Pointer<stdgo.compress.flate.Flate.Writer>().nil(),
		_digest: ((null : stdgo.hash.Hash.Hash32)),
		_err: ((null : stdgo.Error)),
		_scratch: new GoArray<GoUInt8>(...[for (i in 0...4) ((0 : GoUInt8))]),
		_wroteHeader: false
	} : Writer))), _1: ((null : stdgo.Error))};
}

class T_reader_extension_fields {
	public function read(__tmp__, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.read(_p);

	public function close(__tmp__):Error
		return __tmp__.close();

	public function reset(__tmp__, _r:stdgo.io.Io.Reader, _dict:Slice<GoByte>):Error
		return __tmp__.reset(_r, _dict);
}

class Writer_extension_fields {
	public function reset(__tmp__, _w:stdgo.io.Io.Writer):Void
		__tmp__.reset(_w);

	public function _writeHeader(__tmp__):Error
		return __tmp__._writeHeader();

	public function write(__tmp__, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.write(_p);

	public function flush(__tmp__):Error
		return __tmp__.flush();

	public function close(__tmp__):Error
		return __tmp__.close();
}

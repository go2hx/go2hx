package stdgo.encoding.base64;

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
	// Package base64 implements base64 encoding as specified by RFC 4648.
**/
private var __go2hxdoc__package:Bool;

/**
	// StdEncoding is the standard base64 encoding, as defined in
	// RFC 4648.
**/
var stdEncoding:Ref<Encoding> = newEncoding(Go.str("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"));

/**
	// URLEncoding is the alternate base64 encoding defined in RFC 4648.
	// It is typically used in URLs and file names.
**/
var urlencoding:Ref<Encoding> = newEncoding(Go.str("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"));

/**
	// RawStdEncoding is the standard raw, unpadded base64 encoding,
	// as defined in RFC 4648 section 3.2.
	// This is the same as StdEncoding but omits padding characters.
**/
var rawStdEncoding:Ref<Encoding> = stdEncoding.withPadding((-1 : GoInt32));

/**
	// RawURLEncoding is the unpadded alternate base64 encoding defined in RFC 4648.
	// It is typically used in URLs and file names.
	// This is the same as URLEncoding but omits padding characters.
**/
var rawURLEncoding:Ref<Encoding> = urlencoding.withPadding((-1 : GoInt32));

private var _pairs:Slice<T_testpair> = (new Slice<T_testpair>(0, 0, (new T_testpair(Go.str(20, 251, 156, 3, 217, 126), Go.str("FPucA9l+")) : T_testpair),
	(new T_testpair(Go.str(20, 251, 156, 3, 217), Go.str("FPucA9k=")) : T_testpair),
	(new T_testpair(Go.str(20, 251, 156, 3), Go.str("FPucAw==")) : T_testpair), (new T_testpair(Go.str(), Go.str()) : T_testpair),
	(new T_testpair(Go.str("f"), Go.str("Zg==")) : T_testpair), (new T_testpair(Go.str("fo"), Go.str("Zm8=")) : T_testpair),
	(new T_testpair(Go.str("foo"), Go.str("Zm9v")) : T_testpair), (new T_testpair(Go.str("foob"), Go.str("Zm9vYg==")) : T_testpair),
	(new T_testpair(Go.str("fooba"), Go.str("Zm9vYmE=")) : T_testpair), (new T_testpair(Go.str("foobar"), Go.str("Zm9vYmFy")) : T_testpair),
	(new T_testpair(Go.str("sure."), Go.str("c3VyZS4=")) : T_testpair), (new T_testpair(Go.str("sure"), Go.str("c3VyZQ==")) : T_testpair),
	(new T_testpair(Go.str("sur"), Go.str("c3Vy")) : T_testpair), (new T_testpair(Go.str("su"), Go.str("c3U=")) : T_testpair),
	(new T_testpair(Go.str("leasure."), Go.str("bGVhc3VyZS4=")) : T_testpair), (new T_testpair(Go.str("easure."), Go.str("ZWFzdXJlLg==")) : T_testpair),
	(new T_testpair(Go.str("asure."), Go.str("YXN1cmUu")) : T_testpair),
	(new T_testpair(Go.str("sure."), Go.str("c3VyZS4=")) : T_testpair)) : Slice<T_testpair>);

/**
	// A nonstandard encoding with a funny padding character, for testing
**/
private var _funnyEncoding:Ref<Encoding> = newEncoding(Go.str("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"))
	.withPadding(("@".code : GoRune));

private var _encodingTests:Slice<T_encodingTest> = (new Slice<T_encodingTest>(0, 0, (new T_encodingTest(stdEncoding, _stdRef) : T_encodingTest),
	(new T_encodingTest(urlencoding, _urlRef) : T_encodingTest), (new T_encodingTest(rawStdEncoding, _rawRef) : T_encodingTest),
	(new T_encodingTest(rawURLEncoding, _rawURLRef) : T_encodingTest), (new T_encodingTest(_funnyEncoding, _funnyRef) : T_encodingTest),
	(new T_encodingTest(stdEncoding.strict(), _stdRef) : T_encodingTest), (new T_encodingTest(urlencoding.strict(), _urlRef) : T_encodingTest),
	(new T_encodingTest(rawStdEncoding.strict(), _rawRef) : T_encodingTest), (new T_encodingTest(rawURLEncoding.strict(), _rawURLRef) : T_encodingTest),
	(new T_encodingTest(_funnyEncoding.strict(), _funnyRef) : T_encodingTest)) : Slice<T_encodingTest>);

private var _bigtest:T_testpair = (new T_testpair(Go.str("Twas brillig, and the slithy toves"),
	Go.str("VHdhcyBicmlsbGlnLCBhbmQgdGhlIHNsaXRoeSB0b3Zlcw==")) : T_testpair);

/**
	// Standard padding character
**/
final stdPadding:GoRune = ("=".code : GoRune);

/**
	// No padding
**/
final noPadding:GoRune = (-1 : GoInt32);

private final _encodeStd:GoString = Go.str("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
private final _encodeURL:GoString = Go.str("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_");

/**
	// An Encoding is a radix 64 encoding/decoding scheme, defined by a
	// 64-character alphabet. The most common encoding is the "base64"
	// encoding defined in RFC 4648 and used in MIME (RFC 2045) and PEM
	// (RFC 1421).  RFC 4648 also defines an alternate encoding, which is
	// the standard encoding with - and _ substituted for + and /.
**/
@:structInit @:using(stdgo.encoding.base64.Base64.Encoding_static_extension) class Encoding {
	public var _encode:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...64) (0 : GoUInt8)]);
	public var _decodeMap:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...256) (0 : GoUInt8)]);
	public var _padChar:GoInt32 = 0;
	public var _strict:Bool = false;

	public function new(?_encode:GoArray<GoUInt8>, ?_decodeMap:GoArray<GoUInt8>, ?_padChar:GoInt32, ?_strict:Bool) {
		if (_encode != null)
			this._encode = _encode;
		if (_decodeMap != null)
			this._decodeMap = _decodeMap;
		if (_padChar != null)
			this._padChar = _padChar;
		if (_strict != null)
			this._strict = _strict;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Encoding(_encode, _decodeMap, _padChar, _strict);
	}
}

@:structInit @:using(stdgo.encoding.base64.Base64.T_encoder_static_extension) private class T_encoder {
	public var _err:Error = (null : Error);
	public var _enc:Ref<Encoding> = (null : Encoding);
	public var _w:stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer);

	/**
		// buffered data waiting to be encoded
	**/
	public var _buf:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...3) (0 : GoUInt8)]);

	/**
		// number of bytes in buf
	**/
	public var _nbuf:GoInt = 0;

	/**
		// output buffer
	**/
	public var _out:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...1024) (0 : GoUInt8)]);

	public function new(?_err:Error, ?_enc:Ref<Encoding>, ?_w:stdgo.io.Io.Writer, ?_buf:GoArray<GoUInt8>, ?_nbuf:GoInt, ?_out:GoArray<GoUInt8>) {
		if (_err != null)
			this._err = _err;
		if (_enc != null)
			this._enc = _enc;
		if (_w != null)
			this._w = _w;
		if (_buf != null)
			this._buf = _buf;
		if (_nbuf != null)
			this._nbuf = _nbuf;
		if (_out != null)
			this._out = _out;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_encoder(_err, _enc, _w, _buf, _nbuf, _out);
	}
}

@:structInit @:using(stdgo.encoding.base64.Base64.T_decoder_static_extension) private class T_decoder {
	public var _err:Error = (null : Error);

	/**
		// error from r.Read
	**/
	public var _readErr:Error = (null : Error);

	public var _enc:Ref<Encoding> = (null : Encoding);
	public var _r:stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);

	/**
		// leftover input
	**/
	public var _buf:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...1024) (0 : GoUInt8)]);

	public var _nbuf:GoInt = 0;

	/**
		// leftover decoded output
	**/
	public var _out:Slice<GoUInt8> = (null : Slice<GoUInt8>);

	public var _outbuf:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...768) (0 : GoUInt8)]);

	public function new(?_err:Error, ?_readErr:Error, ?_enc:Ref<Encoding>, ?_r:stdgo.io.Io.Reader, ?_buf:GoArray<GoUInt8>, ?_nbuf:GoInt, ?_out:Slice<GoUInt8>,
			?_outbuf:GoArray<GoUInt8>) {
		if (_err != null)
			this._err = _err;
		if (_readErr != null)
			this._readErr = _readErr;
		if (_enc != null)
			this._enc = _enc;
		if (_r != null)
			this._r = _r;
		if (_buf != null)
			this._buf = _buf;
		if (_nbuf != null)
			this._nbuf = _nbuf;
		if (_out != null)
			this._out = _out;
		if (_outbuf != null)
			this._outbuf = _outbuf;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_decoder(_err, _readErr, _enc, _r, _buf, _nbuf, _out, _outbuf);
	}
}

@:structInit @:using(stdgo.encoding.base64.Base64.T_newlineFilteringReader_static_extension) private class T_newlineFilteringReader {
	public var _wrapped:stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);

	public function new(?_wrapped:stdgo.io.Io.Reader) {
		if (_wrapped != null)
			this._wrapped = _wrapped;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_newlineFilteringReader(_wrapped);
	}
}

@:structInit private class T_testpair {
	public var _decoded:GoString = "";
	public var _encoded:GoString = "";

	public function new(?_decoded:GoString, ?_encoded:GoString) {
		if (_decoded != null)
			this._decoded = _decoded;
		if (_encoded != null)
			this._encoded = _encoded;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_testpair(_decoded, _encoded);
	}
}

@:structInit private class T_encodingTest {
	/**
		// Encoding to test
	**/
	public var _enc:Ref<Encoding> = (null : Encoding);

	/**
		// Reference string converter
	**/
	public var _conv:GoString->GoString = null;

	public function new(?_enc:Ref<Encoding>, ?_conv:GoString->GoString) {
		if (_enc != null)
			this._enc = _enc;
		if (_conv != null)
			this._conv = _conv;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_encodingTest(_enc, _conv);
	}
}

@:structInit private class T_nextRead {
	/**
		// bytes to return
	**/
	public var _n:GoInt = 0;

	/**
		// error to return
	**/
	public var _err:Error = (null : Error);

	public function new(?_n:GoInt, ?_err:Error) {
		if (_n != null)
			this._n = _n;
		if (_err != null)
			this._err = _err;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_nextRead(_n, _err);
	}
}

/**
	// faultInjectReader returns data from source, rate-limited
	// and with the errors as written to nextc.
**/
@:structInit @:using(stdgo.encoding.base64.Base64.T_faultInjectReader_static_extension) private class T_faultInjectReader {
	public var _source:GoString = "";
	public var _nextc:Chan<T_nextRead> = (null : Chan<T_nextRead>);

	public function new(?_source:GoString, ?_nextc:Chan<T_nextRead>) {
		if (_source != null)
			this._source = _source;
		if (_nextc != null)
			this._nextc = _nextc;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_faultInjectReader(_source, _nextc);
	}
}

@:local private typedef T__struct_0 = {
	public var _input:GoString;

	/**
		// -1 means no corruption.
	**/
	public var _offset:GoInt;
};

@:local private typedef T__struct_1 = {
	public var _enc:Ref<Encoding>;
	public var _n:GoInt;
	public var _want:GoInt;
};

@:named @:using(stdgo.encoding.base64.Base64.CorruptInputError_static_extension) typedef CorruptInputError = GoInt64;

/**
	// NewEncoding returns a new padded Encoding defined by the given alphabet,
	// which must be a 64-byte string that does not contain the padding character
	// or CR / LF ('\r', '\n').
	// The resulting Encoding uses the default padding character ('='),
	// which may be changed or disabled via WithPadding.
**/
function newEncoding(_encoder:GoString):Ref<Encoding> {
	if ((_encoder.length) != ((64 : GoInt))) {
		throw Go.toInterface(Go.str("encoding alphabet is not 64-bytes long"));
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_encoder.length), _i++, {
			if ((_encoder[_i] == ("\n".code : GoRune)) || (_encoder[_i] == ("\r".code : GoRune))) {
				throw Go.toInterface(Go.str("encoding alphabet contains newline character"));
			};
		});
	};
	var _e = ({} : Encoding);
	_e._padChar = (61 : GoInt32);
	Go.copySlice((_e._encode.__slice__(0) : Slice<GoUInt8>), _encoder);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_e._decodeMap.length), _i++, {
			_e._decodeMap[_i] = (255 : GoUInt8);
		});
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_encoder.length), _i++, {
			_e._decodeMap[_encoder[_i]] = (_i : GoByte);
		});
	};
	return _e;
}

/**
	// NewEncoder returns a new base64 stream encoder. Data written to
	// the returned writer will be encoded using enc and then written to w.
	// Base64 encodings operate in 4-byte blocks; when finished
	// writing, the caller must Close the returned encoder to flush any
	// partially written blocks.
**/
function newEncoder(_enc:Ref<Encoding>, _w:stdgo.io.Io.Writer):stdgo.io.Io.WriteCloser {
	return Go.asInterface((({_enc: _enc, _w: _w} : T_encoder) : Ref<T_encoder>));
}

/**
	// assemble32 assembles 4 base64 digits into 3 bytes.
	// Each digit comes from the decode map, and will be 0xff
	// if it came from an invalid character.
**/
function _assemble32(_n1:GoByte, _n2:GoByte, _n3:GoByte, _n4:GoByte):{var _0:GoUInt32; var _1:Bool;} {
	var _dn:GoUInt32 = (0 : GoUInt32), _ok:Bool = false;
	if (_n1 | _n2 | _n3 | _n4 == ((255 : GoUInt8))) {
		return {_0: ("0" : GoUInt32), _1: false};
	};
	return
		{_0: ((((_n1 : GoUInt32) << (("26" : GoUInt64) : GoUInt64)) | ((_n2 : GoUInt32) << (("20" : GoUInt64) : GoUInt64))) | ((_n3 : GoUInt32) << (("14" : GoUInt64) : GoUInt64))) | ((_n4 : GoUInt32) << (("8" : GoUInt64) : GoUInt64)),
			_1: true};
}

/**
	// assemble64 assembles 8 base64 digits into 6 bytes.
	// Each digit comes from the decode map, and will be 0xff
	// if it came from an invalid character.
**/
function _assemble64(_n1:GoByte, _n2:GoByte, _n3:GoByte, _n4:GoByte, _n5:GoByte, _n6:GoByte, _n7:GoByte, _n8:GoByte):{var _0:GoUInt64; var _1:Bool;} {
	var _dn:GoUInt64 = (0 : GoUInt64), _ok:Bool = false;
	if (_n1 | _n2 | _n3 | _n4 | _n5 | _n6 | _n7 | _n8 == ((255 : GoUInt8))) {
		return {_0: ("0" : GoUInt64), _1: false};
	};
	return
		{_0: ((((((((_n1 : GoUInt64) << (("58" : GoUInt64) : GoUInt64)) | ((_n2 : GoUInt64) << (("52" : GoUInt64) : GoUInt64))) | ((_n3 : GoUInt64) << (("46" : GoUInt64) : GoUInt64))) | ((_n4 : GoUInt64) << (("40" : GoUInt64) : GoUInt64))) | ((_n5 : GoUInt64) << (("34" : GoUInt64) : GoUInt64))) | ((_n6 : GoUInt64) << (("28" : GoUInt64) : GoUInt64))) | ((_n7 : GoUInt64) << (("22" : GoUInt64) : GoUInt64))) | ((_n8 : GoUInt64) << (("16" : GoUInt64) : GoUInt64)),
			_1: true};
}

/**
	// NewDecoder constructs a new base64 stream decoder.
**/
function newDecoder(_enc:Ref<Encoding>, _r:stdgo.io.Io.Reader):stdgo.io.Io.Reader {
	return Go.asInterface((({_enc: _enc,
		_r: Go.asInterface(((new T_newlineFilteringReader(_r) : T_newlineFilteringReader) : Ref<T_newlineFilteringReader>))} : T_decoder) : Ref<T_decoder>));
}

/**
	// Do nothing to a reference base64 string (leave in standard format)
**/
function _stdRef(_ref:GoString):GoString {
	return _ref;
}

/**
	// Convert a reference string to URL-encoding
**/
function _urlRef(_ref:GoString):GoString {
	_ref = stdgo.strings.Strings.replaceAll(_ref, Go.str("+"), Go.str("-"));
	_ref = stdgo.strings.Strings.replaceAll(_ref, Go.str("/"), Go.str("_"));
	return _ref;
}

/**
	// Convert a reference string to raw, unpadded format
**/
function _rawRef(_ref:GoString):GoString {
	return stdgo.strings.Strings.trimRight(_ref, Go.str("="));
}

/**
	// Both URL and unpadding conversions
**/
function _rawURLRef(_ref:GoString):GoString {
	return _rawRef(_urlRef(_ref));
}

function _funnyRef(_ref:GoString):GoString {
	return stdgo.strings.Strings.replaceAll(_ref, Go.str("="), Go.str("@"));
}

function _testEqual(_t:Ref<stdgo.testing.Testing.T>, _msg:GoString, _args:haxe.Rest<AnyInterface>):Bool {
	var _args = new Slice<AnyInterface>(0, 0, ..._args);
	_t.helper();
	if (Go.toInterface(_args[(_args.length) - (2 : GoInt)]) != (Go.toInterface(_args[(_args.length) - (1 : GoInt)]))) {
		_t.errorf(_msg, ..._args.__toArray__());
		return false;
	};
	return true;
}

function testEncode(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _p in _pairs) {
		for (_1 => _tt in _encodingTests) {
			var _got:GoString = _tt._enc.encodeToString((_p._decoded : Slice<GoByte>));
			_testEqual(_t, Go.str("Encode(%q) = %q, want %q"), Go.toInterface(_p._decoded), Go.toInterface(_got), Go.toInterface(_tt._conv(_p._encoded)));
		};
	};
}

function testEncoder(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _p in _pairs) {
		var _bb = ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer) : Ref<stdgo.bytes.Bytes.Buffer>);
		var _encoder:stdgo.io.Io.WriteCloser = newEncoder(stdEncoding, Go.asInterface(_bb));
		_encoder.write((_p._decoded : Slice<GoByte>));
		_encoder.close();
		_testEqual(_t, Go.str("Encode(%q) = %q, want %q"), Go.toInterface(_p._decoded), Go.toInterface((_bb.string() : GoString)),
			Go.toInterface(_p._encoded));
	};
}

function testEncoderBuffering(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _input = (_bigtest._decoded : Slice<GoByte>);
	{
		var _bs:GoInt = (1 : GoInt);
		Go.cfor(_bs <= (12 : GoInt), _bs++, {
			var _bb = ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer) : Ref<stdgo.bytes.Bytes.Buffer>);
			var _encoder:stdgo.io.Io.WriteCloser = newEncoder(stdEncoding, Go.asInterface(_bb));
			{
				var _pos:GoInt = (0 : GoInt);
				Go.cfor(_pos < (_input.length), _pos = _pos + (_bs), {
					var _end:GoInt = _pos + _bs;
					if (_end > (_input.length)) {
						_end = (_input.length);
					};
					var __tmp__ = _encoder.write((_input.__slice__(_pos, _end) : Slice<GoUInt8>)),
						_n:GoInt = __tmp__._0,
						_err:Error = __tmp__._1;
					_testEqual(_t, Go.str("Write(%q) gave error %v, want %v"), Go.toInterface((_input.__slice__(_pos, _end) : Slice<GoUInt8>)),
						Go.toInterface(_err), Go.toInterface((null : Error)));
					_testEqual(_t, Go.str("Write(%q) gave length %v, want %v"), Go.toInterface((_input.__slice__(_pos, _end) : Slice<GoUInt8>)),
						Go.toInterface(_n), Go.toInterface(_end - _pos));
				});
			};
			var _err:Error = _encoder.close();
			_testEqual(_t, Go.str("Close gave error %v, want %v"), Go.toInterface(_err), Go.toInterface((null : Error)));
			_testEqual(_t, Go.str("Encoding/%d of %q = %q, want %q"), Go.toInterface(_bs), Go.toInterface(_bigtest._decoded),
				Go.toInterface((_bb.string() : GoString)), Go.toInterface(_bigtest._encoded));
		});
	};
}

function testDecode(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _p in _pairs) {
		for (_1 => _tt in _encodingTests) {
			var _encoded:GoString = _tt._conv(_p._encoded);
			var _dbuf = new Slice<GoUInt8>((_tt._enc.decodedLen((_encoded.length)) : GoInt).toBasic(), 0, ...[
				for (i in 0...(_tt._enc.decodedLen((_encoded.length)) : GoInt).toBasic()) (0 : GoUInt8)
			]);
			var __tmp__ = _tt._enc.decode(_dbuf, (_encoded : Slice<GoByte>)),
				_count:GoInt = __tmp__._0,
				_err:Error = __tmp__._1;
			_testEqual(_t, Go.str("Decode(%q) = error %v, want %v"), Go.toInterface(_encoded), Go.toInterface(_err), Go.toInterface((null : Error)));
			_testEqual(_t, Go.str("Decode(%q) = length %v, want %v"), Go.toInterface(_encoded), Go.toInterface(_count), Go.toInterface((_p._decoded.length)));
			_testEqual(_t, Go.str("Decode(%q) = %q, want %q"), Go.toInterface(_encoded),
				Go.toInterface(((_dbuf.__slice__((0 : GoInt), _count) : Slice<GoUInt8>) : GoString)), Go.toInterface(_p._decoded));
			{
				var __tmp__ = _tt._enc.decodeString(_encoded);
				_dbuf = __tmp__._0;
				_err = __tmp__._1;
			};
			_testEqual(_t, Go.str("DecodeString(%q) = error %v, want %v"), Go.toInterface(_encoded), Go.toInterface(_err), Go.toInterface((null : Error)));
			_testEqual(_t, Go.str("DecodeString(%q) = %q, want %q"), Go.toInterface(_encoded), Go.toInterface((_dbuf : GoString)),
				Go.toInterface(_p._decoded));
		};
	};
}

function testDecoder(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _p in _pairs) {
		var _decoder:stdgo.io.Io.Reader = newDecoder(stdEncoding, Go.asInterface(stdgo.strings.Strings.newReader(_p._encoded)));
		var _dbuf = new Slice<GoUInt8>((stdEncoding.decodedLen((_p._encoded.length)) : GoInt).toBasic(), 0, ...[
			for (i in 0...(stdEncoding.decodedLen((_p._encoded.length)) : GoInt).toBasic()) (0 : GoUInt8)
		]);
		var __tmp__ = _decoder.read(_dbuf),
			_count:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((_err != null) && (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof))) {
			_t.fatal(Go.toInterface(Go.str("Read failed")), Go.toInterface(_err));
		};
		_testEqual(_t, Go.str("Read from %q = length %v, want %v"), Go.toInterface(_p._encoded), Go.toInterface(_count), Go.toInterface((_p._decoded.length)));
		_testEqual(_t, Go.str("Decoding of %q = %q, want %q"), Go.toInterface(_p._encoded),
			Go.toInterface(((_dbuf.__slice__((0 : GoInt), _count) : Slice<GoUInt8>) : GoString)), Go.toInterface(_p._decoded));
		if (Go.toInterface(_err) != (Go.toInterface(stdgo.io.Io.eof))) {
			{
				var __tmp__ = _decoder.read(_dbuf);
				_err = __tmp__._1;
			};
		};
		_testEqual(_t, Go.str("Read from %q = %v, want %v"), Go.toInterface(_p._encoded), Go.toInterface(_err), Go.toInterface(stdgo.io.Io.eof));
	};
}

function testDecoderBuffering(_t:Ref<stdgo.testing.Testing.T>):Void {
	{
		var _bs:GoInt = (1 : GoInt);
		Go.cfor(_bs <= (12 : GoInt), _bs++, {
			var _decoder:stdgo.io.Io.Reader = newDecoder(stdEncoding, Go.asInterface(stdgo.strings.Strings.newReader(_bigtest._encoded)));
			var _buf = new Slice<GoUInt8>(((_bigtest._decoded.length) + (12 : GoInt) : GoInt).toBasic(), 0, ...[
				for (i in 0...((_bigtest._decoded.length) + (12 : GoInt) : GoInt).toBasic()) (0 : GoUInt8)
			]);
			var _total:GoInt = (0 : GoInt);
			var _n:GoInt = (0 : GoInt);
			var _err:Error = (null : Error);
			{
				_total = (0 : GoInt);
				while ((_total < _bigtest._decoded.length) && (_err == null)) {
					{
						var __tmp__ = _decoder.read((_buf.__slice__(_total, _total + _bs) : Slice<GoUInt8>));
						_n = __tmp__._0;
						_err = __tmp__._1;
					};
					_total = _total + (_n);
				};
			};
			if ((_err != null) && (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof))) {
				_t.errorf(Go.str("Read from %q at pos %d = %d, unexpected error %v"), Go.toInterface(_bigtest._encoded), Go.toInterface(_total),
					Go.toInterface(_n), Go.toInterface(_err));
			};
			_testEqual(_t, Go.str("Decoding/%d of %q = %q, want %q"), Go.toInterface(_bs), Go.toInterface(_bigtest._encoded),
				Go.toInterface(((_buf.__slice__((0 : GoInt), _total) : Slice<GoUInt8>) : GoString)), Go.toInterface(_bigtest._decoded));
		});
	};
}

function testDecodeCorrupt(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _testCases = (new Slice<T__struct_0>(0, 0, ({_input: Go.str(), _offset: (-1 : GoInt)} : T__struct_0),
		({_input: Go.str("\n"), _offset: (-1 : GoInt)} : T__struct_0), ({_input: Go.str("AAA=\n"), _offset: (-1 : GoInt)} : T__struct_0),
		({_input: Go.str("AAAA\n"), _offset: (-1 : GoInt)} : T__struct_0), ({_input: Go.str("!!!!"), _offset: (0 : GoInt)} : T__struct_0),
		({_input: Go.str("===="), _offset: (0 : GoInt)} : T__struct_0), ({_input: Go.str("x==="), _offset: (1 : GoInt)} : T__struct_0),
		({_input: Go.str("=AAA"), _offset: (0 : GoInt)} : T__struct_0), ({_input: Go.str("A=AA"), _offset: (1 : GoInt)} : T__struct_0),
		({_input: Go.str("AA=A"), _offset: (2 : GoInt)} : T__struct_0), ({_input: Go.str("AA==A"), _offset: (4 : GoInt)} : T__struct_0),
		({_input: Go.str("AAA=AAAA"), _offset: (4 : GoInt)} : T__struct_0), ({_input: Go.str("AAAAA"), _offset: (4 : GoInt)} : T__struct_0),
		({_input: Go.str("AAAAAA"), _offset: (4 : GoInt)} : T__struct_0), ({_input: Go.str("A="), _offset: (1 : GoInt)} : T__struct_0),
		({_input: Go.str("A=="), _offset: (1 : GoInt)} : T__struct_0), ({_input: Go.str("AA="), _offset: (3 : GoInt)} : T__struct_0),
		({_input: Go.str("AA=="), _offset: (-1 : GoInt)} : T__struct_0), ({_input: Go.str("AAA="), _offset: (-1 : GoInt)} : T__struct_0),
		({_input: Go.str("AAAA"), _offset: (-1 : GoInt)} : T__struct_0), ({_input: Go.str("AAAAAA="), _offset: (7 : GoInt)} : T__struct_0),
		({_input: Go.str("YWJjZA====="), _offset: (8 : GoInt)} : T__struct_0), ({_input: Go.str("A!\n"), _offset: (1 : GoInt)} : T__struct_0),
		({_input: Go.str("A=\n"), _offset: (1 : GoInt)} : T__struct_0)) : Slice<T__struct_0>);
	for (_0 => _tc in _testCases) {
		var _dbuf = new Slice<GoUInt8>((stdEncoding.decodedLen((_tc._input.length)) : GoInt).toBasic(), 0, ...[
			for (i in 0...(stdEncoding.decodedLen((_tc._input.length)) : GoInt).toBasic()) (0 : GoUInt8)
		]);
		var __tmp__ = stdEncoding.decode(_dbuf, (_tc._input : Slice<GoByte>)),
			_1:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_tc._offset == ((-1 : GoInt))) {
			if (_err != null) {
				_t.error(Go.toInterface(Go.str("Decoder wrongly detected corruption in")), Go.toInterface(_tc._input));
			};
			continue;
		};
		if (Go.typeEquals((_err : CorruptInputError))) {
			var _err:CorruptInputError = _err == null ? null : _err.__underlying__() == null ? null : _err == null ? null : _err.__underlying__().value;
			_testEqual(_t, Go.str("Corruption in %q at offset %v, want %v"), Go.toInterface(_tc._input), Go.toInterface((_err : GoInt)),
				Go.toInterface(_tc._offset));
		} else {
			var _err:Error = _err == null ? null : _err.__underlying__() == null ? null : _err == null ? null : _err.__underlying__().value;
			_t.error(Go.toInterface(Go.str("Decoder failed to detect corruption in")), Go.toInterface(_tc));
		};
	};
}

function testDecodeBounds(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...32) (0 : GoUInt8)]);
	try {
		var _s:GoString = stdEncoding.encodeToString((_buf.__slice__(0) : Slice<GoUInt8>));
		__deferstack__.unshift(() -> {
			var a = function():Void {
				{
					var _err:AnyInterface = ({
						final r = Go.recover_exception;
						Go.recover_exception = null;
						r;
					});
					if (_err != null) {
						_t.fatalf(Go.str("Decode panicked unexpectedly: %v\n%s"), _err, Go.toInterface(stdgo.runtime.debug.Debug.stack()));
					};
				};
			};
			a();
		});
		var __tmp__ = stdEncoding.decode((_buf.__slice__(0) : Slice<GoUInt8>), (_s : Slice<GoByte>)),
			_n:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((_n != (_buf.length)) || (_err != null)) {
			_t.fatalf(Go.str("StdEncoding.Decode = %d, %v, want %d, nil"), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface((_buf.length)));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testEncodedLen(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in (new Slice<T__struct_1>(0, 0, ({_enc: rawStdEncoding, _n: (0 : GoInt), _want: (0 : GoInt)} : T__struct_1),
		({_enc: rawStdEncoding, _n: (1 : GoInt), _want: (2 : GoInt)} : T__struct_1),
		({_enc: rawStdEncoding, _n: (2 : GoInt), _want: (3 : GoInt)} : T__struct_1),
		({_enc: rawStdEncoding, _n: (3 : GoInt), _want: (4 : GoInt)} : T__struct_1),
		({_enc: rawStdEncoding, _n: (7 : GoInt), _want: (10 : GoInt)} : T__struct_1),
		({_enc: stdEncoding, _n: (0 : GoInt), _want: (0 : GoInt)} : T__struct_1), ({_enc: stdEncoding, _n: (1 : GoInt), _want: (4 : GoInt)} : T__struct_1),
		({_enc: stdEncoding, _n: (2 : GoInt), _want: (4 : GoInt)} : T__struct_1), ({_enc: stdEncoding, _n: (3 : GoInt), _want: (4 : GoInt)} : T__struct_1),
		({_enc: stdEncoding, _n: (4 : GoInt), _want: (8 : GoInt)} : T__struct_1),
		({_enc: stdEncoding, _n: (7 : GoInt), _want: (12 : GoInt)} : T__struct_1)) : Slice<T__struct_1>)) {
		{
			var _got:GoInt = _tt._enc.encodedLen(_tt._n);
			if (_got != (_tt._want)) {
				_t.errorf(Go.str("EncodedLen(%d): got %d, want %d"), Go.toInterface(_tt._n), Go.toInterface(_got), Go.toInterface(_tt._want));
			};
		};
	};
}

function testDecodedLen(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in (new Slice<T__struct_1>(0, 0, ({_enc: rawStdEncoding, _n: (0 : GoInt), _want: (0 : GoInt)} : T__struct_1),
		({_enc: rawStdEncoding, _n: (2 : GoInt), _want: (1 : GoInt)} : T__struct_1),
		({_enc: rawStdEncoding, _n: (3 : GoInt), _want: (2 : GoInt)} : T__struct_1),
		({_enc: rawStdEncoding, _n: (4 : GoInt), _want: (3 : GoInt)} : T__struct_1),
		({_enc: rawStdEncoding, _n: (10 : GoInt), _want: (7 : GoInt)} : T__struct_1),
		({_enc: stdEncoding, _n: (0 : GoInt), _want: (0 : GoInt)} : T__struct_1), ({_enc: stdEncoding, _n: (4 : GoInt), _want: (3 : GoInt)} : T__struct_1),
		({_enc: stdEncoding, _n: (8 : GoInt), _want: (6 : GoInt)} : T__struct_1)) : Slice<T__struct_1>)) {
		{
			var _got:GoInt = _tt._enc.decodedLen(_tt._n);
			if (_got != (_tt._want)) {
				_t.errorf(Go.str("DecodedLen(%d): got %d, want %d"), Go.toInterface(_tt._n), Go.toInterface(_got), Go.toInterface(_tt._want));
			};
		};
	};
}

function testBig(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _n:GoInt = (3001 : GoInt);
	var _raw = new Slice<GoUInt8>((_n : GoInt).toBasic(), 0, ...[for (i in 0...(_n : GoInt).toBasic()) (0 : GoUInt8)]);
	{};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _n, _i++, {
			_raw[_i] = Go.str("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")[
				_i % (Go.str("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ").length)
			];
		});
	};
	var _encoded = ({} : stdgo.bytes.Bytes.Buffer);
	var _w:stdgo.io.Io.WriteCloser = newEncoder(stdEncoding, Go.asInterface(_encoded));
	var __tmp__ = _w.write(_raw),
		_nn:GoInt = __tmp__._0,
		_err:Error = __tmp__._1;
	if ((_nn != _n) || (_err != null)) {
		_t.fatalf(Go.str("Encoder.Write(raw) = %d, %v want %d, nil"), Go.toInterface(_nn), Go.toInterface(_err), Go.toInterface(_n));
	};
	_err = _w.close();
	if (_err != null) {
		_t.fatalf(Go.str("Encoder.Close() = %v want nil"), Go.toInterface(_err));
	};
	var __tmp__ = stdgo.io.Io.readAll(newDecoder(stdEncoding, Go.asInterface(_encoded))),
		_decoded:Slice<GoUInt8> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatalf(Go.str("io.ReadAll(NewDecoder(...)): %v"), Go.toInterface(_err));
	};
	if (!stdgo.bytes.Bytes.equal(_raw, _decoded)) {
		var _i:GoInt = (0 : GoInt);
		{
			_i = (0 : GoInt);
			Go.cfor((_i < _decoded.length) && (_i < _raw.length), _i++, {
				if (_decoded[_i] != (_raw[_i])) {
					break;
				};
			});
		};
		_t.errorf(Go.str("Decode(Encode(%d-byte string)) failed at offset %d"), Go.toInterface(_n), Go.toInterface(_i));
	};
}

function testNewLineCharacters(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	var _examples = (new Slice<GoString>(0, 0, Go.str("c3VyZQ=="), Go.str("c3VyZQ==\r"), Go.str("c3VyZQ==\n"), Go.str("c3VyZQ==\r\n"), Go.str("c3VyZ\r\nQ=="),
		Go.str("c3V\ryZ\nQ=="), Go.str("c3V\nyZ\rQ=="), Go.str("c3VyZ\nQ=="), Go.str("c3VyZQ\n=="), Go.str("c3VyZQ=\n="),
		Go.str("c3VyZQ=\r\n\r\n=")) : Slice<GoString>);
	for (_0 => _e in _examples) {
		var __tmp__ = stdEncoding.decodeString(_e),
			_buf:Slice<GoUInt8> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.errorf(Go.str("Decode(%q) failed: %v"), Go.toInterface(_e), Go.toInterface(_err));
			continue;
		};
		{
			var _s:GoString = (_buf : GoString);
			if (_s != (Go.str("sure"))) {
				_t.errorf(Go.str("Decode(%q) = %q, want %q"), Go.toInterface(_e), Go.toInterface(_s), Go.toInterface(Go.str("sure")));
			};
		};
	};
}

/**
	// tests that we don't ignore errors from our underlying reader
**/
function testDecoderIssue3577(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _next = new Chan<T_nextRead>((10 : GoInt).toBasic(), () -> ({} : T_nextRead));
	var _wantErr:Error = stdgo.errors.Errors.new_(Go.str("my error"));
	_next.__send__((new T_nextRead((5 : GoInt), (null : Error)) : T_nextRead));
	_next.__send__((new T_nextRead((10 : GoInt), _wantErr) : T_nextRead));
	_next.__send__((new T_nextRead((0 : GoInt), _wantErr) : T_nextRead));
	var _d:stdgo.io.Io.Reader = newDecoder(stdEncoding,
		Go.asInterface((({_source: Go.str("VHdhcyBicmlsbGlnLCBhbmQgdGhlIHNsaXRoeSB0b3Zlcw=="),
			_nextc: _next} : T_faultInjectReader) : Ref<T_faultInjectReader>)));
	var _errc = new Chan<Error>((1 : GoInt).toBasic(), () -> (null : Error));
	Go.routine(() -> {
		var a = function():Void {
			var __tmp__ = stdgo.io.Io.readAll(_d), _0:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
			_errc.__send__(_err);
		};
		a();
	});
	Go.select([
		stdgo.time.Time.after((("5000000000" : GoInt64) : stdgo.time.Time.Duration)).__get__() => {
			_t.errorf(Go.str("timeout; Decoder blocked without returning an error"));
		},
		var _err = _errc.__get__() => {
			if (Go.toInterface(_err) != (Go.toInterface(_wantErr))) {
				_t.errorf(Go.str("got error %v; want %v"), Go.toInterface(_err), Go.toInterface(_wantErr));
			};
		}
	]);
}

function testDecoderIssue4779(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _encoded:GoString = "CP/EAT8AAAEF\nAQEBAQEBAAAAAAAAAAMAAQIEBQYHCAkKCwEAAQUBAQEBAQEAAAAAAAAAAQACAwQFBgcICQoLEAAB\nBAEDAgQCBQcGCAUDDDMBAAIRAwQhEjEFQVFhEyJxgTIGFJGhsUIjJBVSwWIzNHKC0UMHJZJT8OHx\nY3M1FqKygyZEk1RkRcKjdDYX0lXiZfKzhMPTdePzRieUpIW0lcTU5PSltcXV5fVWZnaGlqa2xtbm\n9jdHV2d3h5ent8fX5/cRAAICAQIEBAMEBQYHBwYFNQEAAhEDITESBEFRYXEiEwUygZEUobFCI8FS\n0fAzJGLhcoKSQ1MVY3M08SUGFqKygwcmNcLSRJNUoxdkRVU2dGXi8rOEw9N14/NGlKSFtJXE1OT0\npbXF1eX1VmZ2hpamtsbW5vYnN0dXZ3eHl6e3x//aAAwDAQACEQMRAD8A9VSSSSUpJJJJSkkkJ+Tj\n1kiy1jCJJDnAcCTykpKkuQ6p/jN6FgmxlNduXawwAzaGH+V6jn/R/wCt71zdn+N/qL3kVYFNYB4N\nji6PDVjWpKp9TSXnvTf8bFNjg3qOEa2n6VlLpj/rT/pf567DpX1i6L1hs9Py67X8mqdtg/rUWbbf\n+gkp0kkkklKSSSSUpJJJJT//0PVUkkklKVLq3WMDpGI7KzrNjADtYNXvI/Mqr/Pd/q9W3vaxjnvM\nNaCXE9gNSvGPrf8AWS3qmba5jjsJhoB0DAf0NDf6sevf+/lf8Hj0JJATfWT6/dV6oXU1uOLQeKKn\nEQP+Hubtfe/+R7Mf/g7f5xcocp++Z11JMCJPgFBxOg7/AOuqDx8I/ikpkXkmSdU8mJIJA/O8EMAy\nj+mSARB/17pKVXYWHXjsj7yIex0PadzXMO1zT5KHoNA3HT8ietoGhgjsfA+CSnvvqh/jJtqsrwOv\n2b6NGNzXfTYexzJ+nU7/ALkf4P8Awv6P9KvTQQ4AgyDqCF85Pho3CTB7eHwXoH+LT65uZbX9X+o2\nbqbPb06551Y4\n";
	var _encodedShort:GoString = stdgo.strings.Strings.replaceAll(_encoded, Go.str("\n"), Go.str());
	var _dec:stdgo.io.Io.Reader = newDecoder(stdEncoding, Go.asInterface(stdgo.strings.Strings.newReader(_encoded)));
	var __tmp__ = stdgo.io.Io.readAll(_dec),
		_res1:Slice<GoUInt8> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.errorf(Go.str("ReadAll failed: %v"), Go.toInterface(_err));
	};
	_dec = newDecoder(stdEncoding, Go.asInterface(stdgo.strings.Strings.newReader(_encodedShort)));
	var _res2:Slice<GoByte> = (null : Slice<GoUInt8>);
	{
		var __tmp__ = stdgo.io.Io.readAll(_dec);
		_res2 = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		_t.errorf(Go.str("ReadAll failed: %v"), Go.toInterface(_err));
	};
	if (!stdgo.bytes.Bytes.equal(_res1, _res2)) {
		_t.error(Go.toInterface(Go.str("Decoded results not equal")));
	};
}

function testDecoderIssue7733(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __tmp__ = stdEncoding.decodeString(Go.str("YWJjZA=====")),
		_s:Slice<GoUInt8> = __tmp__._0,
		_err:Error = __tmp__._1;
	var _want:CorruptInputError = (("8" : GoInt64) : CorruptInputError);
	if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(Go.asInterface(_want)), Go.toInterface(_err))) {
		_t.errorf(Go.str("Error = %v; want CorruptInputError(8)"), Go.toInterface(_err));
	};
	if ((_s : GoString) != (Go.str("abcd"))) {
		_t.errorf(Go.str("DecodeString = %q; want abcd"), Go.toInterface(_s));
	};
}

function testDecoderIssue15656(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __tmp__ = stdEncoding.strict().decodeString(Go.str("WvLTlMrX9NpYDQlEIFlnDB==")),
		_0:Slice<GoUInt8> = __tmp__._0,
		_err:Error = __tmp__._1;
	var _want:CorruptInputError = (("22" : GoInt64) : CorruptInputError);
	if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(Go.asInterface(_want)), Go.toInterface(_err))) {
		_t.errorf(Go.str("Error = %v; want CorruptInputError(22)"), Go.toInterface(_err));
	};
	{
		var __tmp__ = stdEncoding.strict().decodeString(Go.str("WvLTlMrX9NpYDQlEIFlnDA=="));
		_err = __tmp__._1;
	};
	if (_err != null) {
		_t.errorf(Go.str("Error = %v; want nil"), Go.toInterface(_err));
	};
	{
		var __tmp__ = stdEncoding.decodeString(Go.str("WvLTlMrX9NpYDQlEIFlnDB=="));
		_err = __tmp__._1;
	};
	if (_err != null) {
		_t.errorf(Go.str("Error = %v; want nil"), Go.toInterface(_err));
	};
}

function benchmarkEncodeToString(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _data = new Slice<GoUInt8>((8192 : GoInt).toBasic(), 0, ...[for (i in 0...(8192 : GoInt).toBasic()) (0 : GoUInt8)]);
	_b.setBytes((_data.length : GoInt64));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			stdEncoding.encodeToString(_data);
		});
	};
}

function benchmarkDecodeString(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _sizes = (new Slice<GoInt>(0, 0, (2 : GoInt), (4 : GoInt), (8 : GoInt), (64 : GoInt), (8192 : GoInt)) : Slice<GoInt>);
	var _benchFunc = function(_b:Ref<stdgo.testing.Testing.B>, _benchSize:GoInt):Void {
		var _data:GoString = stdEncoding.encodeToString(new Slice<GoUInt8>((_benchSize : GoInt).toBasic(), 0,
			...[for (i in 0...(_benchSize : GoInt).toBasic()) (0 : GoUInt8)]));
		_b.setBytes((_data.length : GoInt64));
		_b.resetTimer();
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _b.n, _i++, {
				stdEncoding.decodeString(_data);
			});
		};
	};
	for (_0 => _size in _sizes) {
		_b.run(stdgo.fmt.Fmt.sprintf(Go.str("%d"), Go.toInterface(_size)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
			_benchFunc(_b, _size);
		});
	};
}

function testDecoderRaw(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _source:GoString = Go.str("AAAAAA");
	var _want = (new Slice<GoUInt8>(0, 0, (0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8)) : Slice<GoUInt8>);
	var __tmp__ = rawURLEncoding.decodeString(_source),
		_dec1:Slice<GoUInt8> = __tmp__._0,
		_err:Error = __tmp__._1;
	if ((_err != null) || !stdgo.bytes.Bytes.equal(_dec1, _want)) {
		_t.errorf(Go.str("RawURLEncoding.DecodeString(%q) = %x, %v, want %x, nil"), Go.toInterface(_source), Go.toInterface(_dec1), Go.toInterface(_err),
			Go.toInterface(_want));
	};
	var _r:stdgo.io.Io.Reader = newDecoder(rawURLEncoding, Go.asInterface(stdgo.bytes.Bytes.newReader((_source : Slice<GoByte>))));
	var __tmp__ = stdgo.io.Io.readAll(stdgo.io.Io.limitReader(_r, ("100" : GoInt64))),
		_dec2:Slice<GoUInt8> = __tmp__._0,
		_err:Error = __tmp__._1;
	if ((_err != null) || !stdgo.bytes.Bytes.equal(_dec2, _want)) {
		_t.errorf(Go.str("reading NewDecoder(RawURLEncoding, %q) = %x, %v, want %x, nil"), Go.toInterface(_source), Go.toInterface(_dec2),
			Go.toInterface(_err), Go.toInterface(_want));
	};
	_r = newDecoder(urlencoding, Go.asInterface(stdgo.bytes.Bytes.newReader((_source + Go.str("==") : Slice<GoByte>))));
	var __tmp__ = stdgo.io.Io.readAll(_r),
		_dec3:Slice<GoUInt8> = __tmp__._0,
		_err:Error = __tmp__._1;
	if ((_err != null) || !stdgo.bytes.Bytes.equal(_dec3, _want)) {
		_t.errorf(Go.str("reading NewDecoder(URLEncoding, %q) = %x, %v, want %x, nil"), Go.toInterface(_source + Go.str("==")), Go.toInterface(_dec3),
			Go.toInterface(_err), Go.toInterface(_want));
	};
}

class Encoding_asInterface {
	/**
		// DecodedLen returns the maximum length in bytes of the decoded data
		// corresponding to n bytes of base64-encoded data.
	**/
	@:keep
	public function decodedLen(_n:GoInt):GoInt
		return __self__.value.decodedLen(_n);

	/**
		// Decode decodes src using the encoding enc. It writes at most
		// DecodedLen(len(src)) bytes to dst and returns the number of bytes
		// written. If src contains invalid base64 data, it will return the
		// number of bytes successfully written and CorruptInputError.
		// New line characters (\r and \n) are ignored.
	**/
	@:keep
	public function decode(_dst:Slice<GoByte>, _src:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.decode(_dst, _src);

	/**
		// DecodeString returns the bytes represented by the base64 string s.
	**/
	@:keep
	public function decodeString(_s:GoString):{var _0:Slice<GoByte>; var _1:Error;}
		return __self__.value.decodeString(_s);

	/**
		// decodeQuantum decodes up to 4 base64 bytes. The received parameters are
		// the destination buffer dst, the source buffer src and an index in the
		// source buffer si.
		// It returns the number of bytes read from src, the number of bytes written
		// to dst, and an error, if any.
	**/
	@:keep
	public function _decodeQuantum(_dst:Slice<GoByte>, _src:Slice<GoByte>, _si:GoInt):{var _0:GoInt; var _1:GoInt; var _2:Error;}
		return __self__.value._decodeQuantum(_dst, _src, _si);

	/**
		// EncodedLen returns the length in bytes of the base64 encoding
		// of an input buffer of length n.
	**/
	@:keep
	public function encodedLen(_n:GoInt):GoInt
		return __self__.value.encodedLen(_n);

	/**
		// EncodeToString returns the base64 encoding of src.
	**/
	@:keep
	public function encodeToString(_src:Slice<GoByte>):GoString
		return __self__.value.encodeToString(_src);

	/**
		// Encode encodes src using the encoding enc, writing
		// EncodedLen(len(src)) bytes to dst.
		//
		// The encoding pads the output to a multiple of 4 bytes,
		// so Encode is not appropriate for use on individual blocks
		// of a large data stream. Use NewEncoder() instead.
	**/
	@:keep
	public function encode(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void
		__self__.value.encode(_dst, _src);

	/**
		// Strict creates a new encoding identical to enc except with
		// strict decoding enabled. In this mode, the decoder requires that
		// trailing padding bits are zero, as described in RFC 4648 section 3.5.
		//
		// Note that the input is still malleable, as new line characters
		// (CR and LF) are still ignored.
	**/
	@:keep
	public function strict():Ref<Encoding>
		return __self__.value.strict();

	/**
		// WithPadding creates a new encoding identical to enc except
		// with a specified padding character, or NoPadding to disable padding.
		// The padding character must not be '\r' or '\n', must not
		// be contained in the encoding's alphabet and must be a rune equal or
		// below '\xff'.
	**/
	@:keep
	public function withPadding(_padding:GoRune):Ref<Encoding>
		return __self__.value.withPadding(_padding);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& stdgo.reflect.Reflect.isReflectTypeRef(__type__)) ? __self__.value : __self__, __type__);

	var __self__:Pointer<Encoding>;
	var __type__:stdgo.reflect.Reflect.Type;
}

@:keep @:allow(stdgo.encoding.base64.Base64.Encoding_asInterface) class Encoding_static_extension {
	/**
		// DecodedLen returns the maximum length in bytes of the decoded data
		// corresponding to n bytes of base64-encoded data.
	**/
	@:keep
	static public function decodedLen(_enc:Ref<Encoding>, _n:GoInt):GoInt {
		if (_enc._padChar == ((-1 : GoInt32))) {
			return (_n * (6 : GoInt)) / (8 : GoInt);
		};
		return (_n / (4 : GoInt)) * (3 : GoInt);
	}

	/**
		// Decode decodes src using the encoding enc. It writes at most
		// DecodedLen(len(src)) bytes to dst and returns the number of bytes
		// written. If src contains invalid base64 data, it will return the
		// number of bytes successfully written and CorruptInputError.
		// New line characters (\r and \n) are ignored.
	**/
	@:keep
	static public function decode(_enc:Ref<Encoding>, _dst:Slice<GoByte>, _src:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
		if ((_src.length) == ((0 : GoInt))) {
			return {_0: (0 : GoInt), _1: (null : Error)};
		};
		_enc._decodeMap;
		var _si:GoInt = (0 : GoInt);
		while ((false && ((_src.length - _si) >= (8 : GoInt))) && ((_dst.length - _n) >= (8 : GoInt))) {
			var _src2 = (_src.__slice__(_si, _si + (8 : GoInt)) : Slice<GoUInt8>);
			{
				var __tmp__ = _assemble64(_enc._decodeMap[_src2[(0 : GoInt)]], _enc._decodeMap[_src2[(1 : GoInt)]], _enc._decodeMap[_src2[(2 : GoInt)]],
					_enc._decodeMap[_src2[(3 : GoInt)]], _enc._decodeMap[_src2[(4 : GoInt)]], _enc._decodeMap[_src2[(5 : GoInt)]],
					_enc._decodeMap[_src2[(6 : GoInt)]], _enc._decodeMap[_src2[(7 : GoInt)]]),
					_dn:GoUInt64 = __tmp__._0,
					_ok:Bool = __tmp__._1;
				if (_ok) {
					stdgo.encoding.binary.Binary.bigEndian.putUint64((_dst.__slice__(_n) : Slice<GoUInt8>), _dn);
					_n = _n + ((6 : GoInt));
					_si = _si + ((8 : GoInt));
				} else {
					var _ninc:GoInt = (0 : GoInt);
					{
						var __tmp__ = _enc._decodeQuantum((_dst.__slice__(_n) : Slice<GoUInt8>), _src, _si);
						_si = __tmp__._0;
						_ninc = __tmp__._1;
						_err = __tmp__._2;
					};
					_n = _n + (_ninc);
					if (_err != null) {
						return {_0: _n, _1: _err};
					};
				};
			};
		};
		while (((_src.length - _si) >= (4 : GoInt)) && ((_dst.length - _n) >= (4 : GoInt))) {
			var _src2 = (_src.__slice__(_si, _si + (4 : GoInt)) : Slice<GoUInt8>);
			{
				var __tmp__ = _assemble32(_enc._decodeMap[_src2[(0 : GoInt)]], _enc._decodeMap[_src2[(1 : GoInt)]], _enc._decodeMap[_src2[(2 : GoInt)]],
					_enc._decodeMap[_src2[(3 : GoInt)]]),
					_dn:GoUInt32 = __tmp__._0,
					_ok:Bool = __tmp__._1;
				if (_ok) {
					stdgo.encoding.binary.Binary.bigEndian.putUint32((_dst.__slice__(_n) : Slice<GoUInt8>), _dn);
					_n = _n + ((3 : GoInt));
					_si = _si + ((4 : GoInt));
				} else {
					var _ninc:GoInt = (0 : GoInt);
					{
						var __tmp__ = _enc._decodeQuantum((_dst.__slice__(_n) : Slice<GoUInt8>), _src, _si);
						_si = __tmp__._0;
						_ninc = __tmp__._1;
						_err = __tmp__._2;
					};
					_n = _n + (_ninc);
					if (_err != null) {
						return {_0: _n, _1: _err};
					};
				};
			};
		};
		while (_si < (_src.length)) {
			var _ninc:GoInt = (0 : GoInt);
			{
				var __tmp__ = _enc._decodeQuantum((_dst.__slice__(_n) : Slice<GoUInt8>), _src, _si);
				_si = __tmp__._0;
				_ninc = __tmp__._1;
				_err = __tmp__._2;
			};
			_n = _n + (_ninc);
			if (_err != null) {
				return {_0: _n, _1: _err};
			};
		};
		return {_0: _n, _1: _err};
	}

	/**
		// DecodeString returns the bytes represented by the base64 string s.
	**/
	@:keep
	static public function decodeString(_enc:Ref<Encoding>, _s:GoString):{var _0:Slice<GoByte>; var _1:Error;} {
		var _dbuf = new Slice<GoUInt8>((_enc.decodedLen((_s.length)) : GoInt).toBasic(), 0,
			...[for (i in 0...(_enc.decodedLen((_s.length)) : GoInt).toBasic()) (0 : GoUInt8)]);
		var __tmp__ = _enc.decode(_dbuf, (_s : Slice<GoByte>)),
			_n:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		return {_0: (_dbuf.__slice__(0, _n) : Slice<GoUInt8>), _1: _err};
	}

	/**
		// decodeQuantum decodes up to 4 base64 bytes. The received parameters are
		// the destination buffer dst, the source buffer src and an index in the
		// source buffer si.
		// It returns the number of bytes read from src, the number of bytes written
		// to dst, and an error, if any.
	**/
	@:keep
	static public function _decodeQuantum(_enc:Ref<Encoding>, _dst:Slice<GoByte>, _src:Slice<GoByte>, _si:GoInt):{var _0:GoInt; var _1:GoInt; var _2:Error;} {
		var _nsi:GoInt = (0 : GoInt),
			_n:GoInt = (0 : GoInt),
			_err:Error = (null : Error);
		var _dbuf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...4) (0 : GoUInt8)]);
		var _dlen:GoInt = (4 : GoInt);
		_enc._decodeMap;
		{
			var _j:GoInt = (0 : GoInt);
			Go.cfor(_j < (_dbuf.length), _j++, {
				if ((_src.length) == (_si)) {
					if (_j == ((0 : GoInt))) {
						return {_0: _si, _1: (0 : GoInt), _2: (null : Error)};
					} else if (_j == ((1 : GoInt)) || _enc._padChar != ((-1 : GoInt32))) {
						return {_0: _si, _1: (0 : GoInt), _2: Go.asInterface((_si - _j : CorruptInputError))};
					};
					_dlen = _j;
					break;
				};
				var _in:GoUInt8 = _src[_si];
				_si++;
				var _out:GoUInt8 = _enc._decodeMap[_in];
				if (_out != ((255 : GoUInt8))) {
					_dbuf[_j] = _out;
					continue;
				};
				if ((_in == ("\n".code : GoRune)) || (_in == ("\r".code : GoRune))) {
					_j--;
					continue;
				};
				if ((_in : GoRune) != (_enc._padChar)) {
					return {_0: _si, _1: (0 : GoInt), _2: Go.asInterface((_si - (1 : GoInt) : CorruptInputError))};
				};
				if (_j == ((0 : GoInt)) || _j == ((1 : GoInt))) {
					return {_0: _si, _1: (0 : GoInt), _2: Go.asInterface((_si - (1 : GoInt) : CorruptInputError))};
				} else if (_j == ((2 : GoInt))) {
					while ((_si < _src.length) && ((_src[_si] == ("\n".code : GoRune)) || (_src[_si] == ("\r".code : GoRune)))) {
						_si++;
					};
					if (_si == ((_src.length))) {
						return {_0: _si, _1: (0 : GoInt), _2: Go.asInterface((_src.length : CorruptInputError))};
					};
					if ((_src[_si] : GoRune) != (_enc._padChar)) {
						return {_0: _si, _1: (0 : GoInt), _2: Go.asInterface((_si - (1 : GoInt) : CorruptInputError))};
					};
					_si++;
				};
				while ((_si < _src.length) && ((_src[_si] == ("\n".code : GoRune)) || (_src[_si] == ("\r".code : GoRune)))) {
					_si++;
				};
				if (_si < (_src.length)) {
					_err = Go.asInterface((_si : CorruptInputError));
				};
				_dlen = _j;
				break;
			});
		};
		var _val:GoUInt = ((((_dbuf[(0 : GoInt)] : GoUInt) << (("18" : GoUInt64) : GoUInt64)) | ((_dbuf[(1 : GoInt)] : GoUInt) << (("12" : GoUInt64) : GoUInt64))) | ((_dbuf[(2 : GoInt)] : GoUInt) << (("6" : GoUInt64) : GoUInt64))) | (_dbuf[(3 : GoInt)] : GoUInt);
		{
			final __tmp__0 = (_val >> ("0" : GoUInt64) : GoByte);
			final __tmp__1 = (_val >> ("8" : GoUInt64) : GoByte);
			final __tmp__2 = (_val >> ("16" : GoUInt64) : GoByte);
			_dbuf[(2 : GoInt)] = __tmp__0;
			_dbuf[(1 : GoInt)] = __tmp__1;
			_dbuf[(0 : GoInt)] = __tmp__2;
		};
		{
			var __switchIndex__ = -1;
			while (true) {
				if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _dlen == ((4 : GoInt)))) {
					_dst[(2 : GoInt)] = _dbuf[(2 : GoInt)];
					_dbuf[(2 : GoInt)] = (0 : GoUInt8);
					@:fallthrough {
						__switchIndex__ = 1;
						continue;
					};
					break;
				} else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _dlen == ((3 : GoInt)))) {
					_dst[(1 : GoInt)] = _dbuf[(1 : GoInt)];
					if (_enc._strict && (_dbuf[(2 : GoInt)] != (0 : GoUInt8))) {
						return {_0: _si, _1: (0 : GoInt), _2: Go.asInterface((_si - (1 : GoInt) : CorruptInputError))};
					};
					_dbuf[(1 : GoInt)] = (0 : GoUInt8);
					@:fallthrough {
						__switchIndex__ = 2;
						continue;
					};
					break;
				} else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _dlen == ((2 : GoInt)))) {
					_dst[(0 : GoInt)] = _dbuf[(0 : GoInt)];
					if (_enc._strict && ((_dbuf[(1 : GoInt)] != (0 : GoUInt8)) || (_dbuf[(2 : GoInt)] != (0 : GoUInt8)))) {
						return {_0: _si, _1: (0 : GoInt), _2: Go.asInterface((_si - (2 : GoInt) : CorruptInputError))};
					};
					break;
					break;
				};
				break;
			};
		};
		return {_0: _si, _1: _dlen - (1 : GoInt), _2: _err};
	}

	/**
		// EncodedLen returns the length in bytes of the base64 encoding
		// of an input buffer of length n.
	**/
	@:keep
	static public function encodedLen(_enc:Ref<Encoding>, _n:GoInt):GoInt {
		if (_enc._padChar == ((-1 : GoInt32))) {
			return ((_n * (8 : GoInt)) + (5 : GoInt)) / (6 : GoInt);
		};
		return ((_n + (2 : GoInt)) / (3 : GoInt)) * (4 : GoInt);
	}

	/**
		// EncodeToString returns the base64 encoding of src.
	**/
	@:keep
	static public function encodeToString(_enc:Ref<Encoding>, _src:Slice<GoByte>):GoString {
		var _buf = new Slice<GoUInt8>((_enc.encodedLen((_src.length)) : GoInt).toBasic(), 0,
			...[for (i in 0...(_enc.encodedLen((_src.length)) : GoInt).toBasic()) (0 : GoUInt8)]);
		_enc.encode(_buf, _src);
		return (_buf : GoString);
	}

	/**
		// Encode encodes src using the encoding enc, writing
		// EncodedLen(len(src)) bytes to dst.
		//
		// The encoding pads the output to a multiple of 4 bytes,
		// so Encode is not appropriate for use on individual blocks
		// of a large data stream. Use NewEncoder() instead.
	**/
	@:keep
	static public function encode(_enc:Ref<Encoding>, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
		if ((_src.length) == ((0 : GoInt))) {
			return;
		};
		_enc._encode;
		var _di:GoInt = (0 : GoInt), _si:GoInt = (0 : GoInt);
		var _n:GoInt = (_src.length / (3 : GoInt)) * (3 : GoInt);
		while (_si < _n) {
			var _val:GoUInt = (((_src[_si + (0 : GoInt)] : GoUInt) << (("16" : GoUInt64) : GoUInt64)) | ((_src[_si + (1 : GoInt)] : GoUInt) << (("8" : GoUInt64) : GoUInt64))) | (_src[_si
				+ (2 : GoInt)] : GoUInt);
			_dst[_di + (0 : GoInt)] = _enc._encode[(_val >> (("18" : GoUInt64) : GoUInt64)) & ("63" : GoUInt)];
			_dst[_di + (1 : GoInt)] = _enc._encode[(_val >> (("12" : GoUInt64) : GoUInt64)) & ("63" : GoUInt)];
			_dst[_di + (2 : GoInt)] = _enc._encode[(_val >> (("6" : GoUInt64) : GoUInt64)) & ("63" : GoUInt)];
			_dst[_di + (3 : GoInt)] = _enc._encode[_val & ("63" : GoUInt)];
			_si = _si + ((3 : GoInt));
			_di = _di + ((4 : GoInt));
		};
		var _remain:GoInt = (_src.length) - _si;
		if (_remain == ((0 : GoInt))) {
			return;
		};
		var _val:GoUInt = (_src[_si + (0 : GoInt)] : GoUInt) << ("16" : GoUInt64);
		if (_remain == ((2 : GoInt))) {
			_val = _val | ((_src[_si + (1 : GoInt)] : GoUInt) << (("8" : GoUInt64) : GoUInt64));
		};
		_dst[_di + (0 : GoInt)] = _enc._encode[(_val >> (("18" : GoUInt64) : GoUInt64)) & ("63" : GoUInt)];
		_dst[_di + (1 : GoInt)] = _enc._encode[(_val >> (("12" : GoUInt64) : GoUInt64)) & ("63" : GoUInt)];
		if (_remain == ((2 : GoInt))) {
			_dst[_di + (2 : GoInt)] = _enc._encode[(_val >> (("6" : GoUInt64) : GoUInt64)) & ("63" : GoUInt)];
			if (_enc._padChar != ((-1 : GoInt32))) {
				_dst[_di + (3 : GoInt)] = (_enc._padChar : GoByte);
			};
		} else if (_remain == ((1 : GoInt))) {
			if (_enc._padChar != ((-1 : GoInt32))) {
				_dst[_di + (2 : GoInt)] = (_enc._padChar : GoByte);
				_dst[_di + (3 : GoInt)] = (_enc._padChar : GoByte);
			};
		};
	}

	/**
		// Strict creates a new encoding identical to enc except with
		// strict decoding enabled. In this mode, the decoder requires that
		// trailing padding bits are zero, as described in RFC 4648 section 3.5.
		//
		// Note that the input is still malleable, as new line characters
		// (CR and LF) are still ignored.
	**/
	@:keep
	static public function strict(_enc:Encoding):Ref<Encoding> {
		_enc._strict = true;
		return (_enc : Ref<Encoding>);
	}

	/**
		// WithPadding creates a new encoding identical to enc except
		// with a specified padding character, or NoPadding to disable padding.
		// The padding character must not be '\r' or '\n', must not
		// be contained in the encoding's alphabet and must be a rune equal or
		// below '\xff'.
	**/
	@:keep
	static public function withPadding(_enc:Encoding, _padding:GoRune):Ref<Encoding> {
		if (((_padding == ("\r".code : GoRune)) || (_padding == ("\n".code : GoRune))) || (_padding > (255 : GoInt32))) {
			throw Go.toInterface(Go.str("invalid padding"));
		};
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (_enc._encode.length), _i++, {
				if ((_enc._encode[_i] : GoRune) == (_padding)) {
					throw Go.toInterface(Go.str("padding contained in alphabet"));
				};
			});
		};
		_enc._padChar = _padding;
		return (_enc : Ref<Encoding>);
	}
}

private class T_encoder_asInterface {
	/**
		// Close flushes any pending output from the encoder.
		// It is an error to call Write after calling Close.
	**/
	@:keep
	public function close():Error
		return __self__.value.close();

	@:keep
	public function write(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.write(_p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& stdgo.reflect.Reflect.isReflectTypeRef(__type__)) ? __self__.value : __self__, __type__);

	var __self__:Pointer<T_encoder>;
	var __type__:stdgo.reflect.Reflect.Type;
}

@:keep @:allow(stdgo.encoding.base64.Base64.T_encoder_asInterface) class T_encoder_static_extension {
	/**
		// Close flushes any pending output from the encoder.
		// It is an error to call Write after calling Close.
	**/
	@:keep
	static public function close(_e:Ref<T_encoder>):Error {
		if ((_e._err == null) && (_e._nbuf > (0 : GoInt))) {
			_e._enc.encode((_e._out.__slice__(0) : Slice<GoUInt8>), (_e._buf.__slice__(0, _e._nbuf) : Slice<GoUInt8>));
			{
				var __tmp__ = _e._w.write((_e._out.__slice__(0, _e._enc.encodedLen(_e._nbuf)) : Slice<GoUInt8>));
				_e._err = __tmp__._1;
			};
			_e._nbuf = (0 : GoInt);
		};
		return _e._err;
	}

	@:keep
	static public function write(_e:Ref<T_encoder>, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
		if (_e._err != null) {
			return {_0: (0 : GoInt), _1: _e._err};
		};
		if (_e._nbuf > (0 : GoInt)) {
			var _i:GoInt = (0 : GoInt);
			{
				_i = (0 : GoInt);
				Go.cfor((_i < _p.length) && (_e._nbuf < (3:GoInt)), _i++, {
					_e._buf[_e._nbuf] = _p[_i];
					_e._nbuf++;
				});
			};
			_n = _n + (_i);
			_p = (_p.__slice__(_i) : Slice<GoUInt8>);
			if (_e._nbuf < (3:GoInt)) {
				return {_0: _n, _1: _err};
			};
			_e._enc.encode((_e._out.__slice__(0) : Slice<GoUInt8>), (_e._buf.__slice__(0) : Slice<GoUInt8>));
			{
				{
					var __tmp__ = _e._w.write((_e._out.__slice__(0, (4 : GoInt)) : Slice<GoUInt8>));
					_e._err = __tmp__._1;
				};
				if (_e._err != null) {
					return {_0: _n, _1: _e._err};
				};
			};
			_e._nbuf = (0 : GoInt);
		};
		while ((_p.length) >= (3 : GoInt)) {
			var _nn:GoInt = (768 : GoInt);
			if (_nn > (_p.length)) {
				_nn = (_p.length);
				_nn = _nn - (_nn % (3 : GoInt));
			};
			_e._enc.encode((_e._out.__slice__(0) : Slice<GoUInt8>), (_p.__slice__(0, _nn) : Slice<GoUInt8>));
			{
				{
					var __tmp__ = _e._w.write((_e._out.__slice__((0 : GoInt), (_nn / (3 : GoInt)) * (4 : GoInt)) : Slice<GoUInt8>));
					_e._err = __tmp__._1;
				};
				if (_e._err != null) {
					return {_0: _n, _1: _e._err};
				};
			};
			_n = _n + (_nn);
			_p = (_p.__slice__(_nn) : Slice<GoUInt8>);
		};
		Go.copySlice((_e._buf.__slice__(0) : Slice<GoUInt8>), _p);
		_e._nbuf = (_p.length);
		_n = _n + ((_p.length));
		return {_0: _n, _1: _err};
	}
}

private class T_decoder_asInterface {
	@:keep
	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& stdgo.reflect.Reflect.isReflectTypeRef(__type__)) ? __self__.value : __self__, __type__);

	var __self__:Pointer<T_decoder>;
	var __type__:stdgo.reflect.Reflect.Type;
}

@:keep @:allow(stdgo.encoding.base64.Base64.T_decoder_asInterface) class T_decoder_static_extension {
	@:keep
	static public function read(_d:Ref<T_decoder>, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
		if ((_d._out.length) > (0 : GoInt)) {
			_n = Go.copySlice(_p, _d._out);
			_d._out = (_d._out.__slice__(_n) : Slice<GoUInt8>);
			return {_0: _n, _1: (null : Error)};
		};
		if (_d._err != null) {
			return {_0: (0 : GoInt), _1: _d._err};
		};
		while ((_d._nbuf < (4:GoInt)) && (_d._readErr == null)) {
			var _nn:GoInt = (_p.length / (3 : GoInt)) * (4 : GoInt);
			if (_nn < (4:GoInt)) {
				_nn = (4 : GoInt);
			};
			if (_nn > (_d._buf.length)) {
				_nn = (_d._buf.length);
			};
			{
				var __tmp__ = _d._r.read((_d._buf.__slice__(_d._nbuf, _nn) : Slice<GoUInt8>));
				_nn = __tmp__._0;
				_d._readErr = __tmp__._1;
			};
			_d._nbuf = _d._nbuf + (_nn);
		};
		if (_d._nbuf < (4:GoInt)) {
			if ((_d._enc._padChar == (-1 : GoInt32)) && (_d._nbuf > (0 : GoInt))) {
				var _nw:GoInt = (0 : GoInt);
				{
					var __tmp__ = _d._enc.decode((_d._outbuf.__slice__(0) : Slice<GoUInt8>), (_d._buf.__slice__(0, _d._nbuf) : Slice<GoUInt8>));
					_nw = __tmp__._0;
					_d._err = __tmp__._1;
				};
				_d._nbuf = (0 : GoInt);
				_d._out = (_d._outbuf.__slice__(0, _nw) : Slice<GoUInt8>);
				_n = Go.copySlice(_p, _d._out);
				_d._out = (_d._out.__slice__(_n) : Slice<GoUInt8>);
				if ((_n > (0 : GoInt)) || ((_p.length == (0 : GoInt)) && (_d._out.length > (0 : GoInt)))) {
					return {_0: _n, _1: (null : Error)};
				};
				if (_d._err != null) {
					return {_0: (0 : GoInt), _1: _d._err};
				};
			};
			_d._err = _d._readErr;
			if ((Go.toInterface(_d._err) == Go.toInterface(stdgo.io.Io.eof)) && (_d._nbuf > (0 : GoInt))) {
				_d._err = stdgo.io.Io.errUnexpectedEOF;
			};
			return {_0: (0 : GoInt), _1: _d._err};
		};
		var _nr:GoInt = (_d._nbuf / (4 : GoInt)) * (4 : GoInt);
		var _nw:GoInt = (_d._nbuf / (4 : GoInt)) * (3 : GoInt);
		if (_nw > (_p.length)) {
			{
				var __tmp__ = _d._enc.decode((_d._outbuf.__slice__(0) : Slice<GoUInt8>), (_d._buf.__slice__(0, _nr) : Slice<GoUInt8>));
				_nw = __tmp__._0;
				_d._err = __tmp__._1;
			};
			_d._out = (_d._outbuf.__slice__(0, _nw) : Slice<GoUInt8>);
			_n = Go.copySlice(_p, _d._out);
			_d._out = (_d._out.__slice__(_n) : Slice<GoUInt8>);
		} else {
			{
				var __tmp__ = _d._enc.decode(_p, (_d._buf.__slice__(0, _nr) : Slice<GoUInt8>));
				_n = __tmp__._0;
				_d._err = __tmp__._1;
			};
		};
		_d._nbuf = _d._nbuf - (_nr);
		Go.copySlice((_d._buf.__slice__(0, _d._nbuf) : Slice<GoUInt8>), (_d._buf.__slice__(_nr) : Slice<GoUInt8>));
		return {_0: _n, _1: _d._err};
	}
}

private class T_newlineFilteringReader_asInterface {
	@:keep
	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& stdgo.reflect.Reflect.isReflectTypeRef(__type__)) ? __self__.value : __self__, __type__);

	var __self__:Pointer<T_newlineFilteringReader>;
	var __type__:stdgo.reflect.Reflect.Type;
}

@:keep @:allow(stdgo.encoding.base64.Base64.T_newlineFilteringReader_asInterface) class T_newlineFilteringReader_static_extension {
	@:keep
	static public function read(_r:Ref<T_newlineFilteringReader>, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var __tmp__ = _r._wrapped.read(_p),
			_n:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		while (_n > (0 : GoInt)) {
			var _offset:GoInt = (0 : GoInt);
			for (_i => _b in (_p.__slice__(0, _n) : Slice<GoUInt8>)) {
				if ((_b != ("\r".code : GoRune)) && (_b != ("\n".code : GoRune))) {
					if (_i != (_offset)) {
						_p[_offset] = _b;
					};
					_offset++;
				};
			};
			if (_offset > (0 : GoInt)) {
				return {_0: _offset, _1: _err};
			};
			{
				var __tmp__ = _r._wrapped.read(_p);
				_n = __tmp__._0;
				_err = __tmp__._1;
			};
		};
		return {_0: _n, _1: _err};
	}
}

private class T_faultInjectReader_asInterface {
	@:keep
	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& stdgo.reflect.Reflect.isReflectTypeRef(__type__)) ? __self__.value : __self__, __type__);

	var __self__:Pointer<T_faultInjectReader>;
	var __type__:stdgo.reflect.Reflect.Type;
}

@:keep @:allow(stdgo.encoding.base64.Base64.T_faultInjectReader_asInterface) class T_faultInjectReader_static_extension {
	@:keep
	static public function read(_r:Ref<T_faultInjectReader>, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _nr:T_nextRead = (_r._nextc.__get__() == null ? null : _r._nextc.__get__().__copy__());
		if ((_p.length) > _nr._n) {
			_p = (_p.__slice__(0, _nr._n) : Slice<GoUInt8>);
		};
		var _n:GoInt = Go.copySlice(_p, _r._source);
		_r._source = (_r._source.__slice__(_n) : GoString);
		return {_0: _n, _1: _nr._err};
	}
}

class CorruptInputError_asInterface {
	@:keep
	public function error():GoString
		return __self__.value.error();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& stdgo.reflect.Reflect.isReflectTypeRef(__type__)) ? __self__.value : __self__, __type__);

	var __self__:Pointer<CorruptInputError>;
	var __type__:stdgo.reflect.Reflect.Type;
}

@:keep @:allow(stdgo.encoding.base64.Base64.CorruptInputError_asInterface) class CorruptInputError_static_extension {
	@:keep
	static public function error(_e:CorruptInputError):GoString {
		return Go.str("illegal base64 data at input byte ") + stdgo.strconv.Strconv.formatInt((_e : GoInt64), (10 : GoInt));
	}
}

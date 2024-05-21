package stdgo._internal.encoding.base64;
private var __go2hxdoc__package : Bool;
final stdPadding : stdgo.GoInt32 = (61 : stdgo.GoInt32);
final noPadding : stdgo.GoInt32 = (-1 : stdgo.GoInt32);
final _decodeMapInitialize : stdgo.GoString = stdgo.Go.str(255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255);
final _encodeStd : stdgo.GoString = ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" : stdgo.GoString);
final _encodeURL : stdgo.GoString = ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_" : stdgo.GoString);
var stdEncoding : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding> = newEncoding(("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" : stdgo.GoString));
var urlencoding : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding> = newEncoding(("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_" : stdgo.GoString));
var rawStdEncoding : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding> = stdEncoding.withPadding((-1 : stdgo.GoInt32));
var rawURLEncoding : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding> = urlencoding.withPadding((-1 : stdgo.GoInt32));
var _pairs : stdgo.Slice<stdgo._internal.encoding.base64.Base64.T_testpair> = (new stdgo.Slice<stdgo._internal.encoding.base64.Base64.T_testpair>(18, 18, ...[
(new stdgo._internal.encoding.base64.Base64.T_testpair(stdgo.Go.str(20, 251, 156, 3, 217, "~")?.__copy__(), ("FPucA9l+" : stdgo.GoString)) : stdgo._internal.encoding.base64.Base64.T_testpair),
(new stdgo._internal.encoding.base64.Base64.T_testpair(stdgo.Go.str(20, 251, 156, 3, 217)?.__copy__(), ("FPucA9k=" : stdgo.GoString)) : stdgo._internal.encoding.base64.Base64.T_testpair),
(new stdgo._internal.encoding.base64.Base64.T_testpair(stdgo.Go.str(20, 251, 156, 3)?.__copy__(), ("FPucAw==" : stdgo.GoString)) : stdgo._internal.encoding.base64.Base64.T_testpair),
(new stdgo._internal.encoding.base64.Base64.T_testpair(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.encoding.base64.Base64.T_testpair),
(new stdgo._internal.encoding.base64.Base64.T_testpair(("f" : stdgo.GoString), ("Zg==" : stdgo.GoString)) : stdgo._internal.encoding.base64.Base64.T_testpair),
(new stdgo._internal.encoding.base64.Base64.T_testpair(("fo" : stdgo.GoString), ("Zm8=" : stdgo.GoString)) : stdgo._internal.encoding.base64.Base64.T_testpair),
(new stdgo._internal.encoding.base64.Base64.T_testpair(("foo" : stdgo.GoString), ("Zm9v" : stdgo.GoString)) : stdgo._internal.encoding.base64.Base64.T_testpair),
(new stdgo._internal.encoding.base64.Base64.T_testpair(("foob" : stdgo.GoString), ("Zm9vYg==" : stdgo.GoString)) : stdgo._internal.encoding.base64.Base64.T_testpair),
(new stdgo._internal.encoding.base64.Base64.T_testpair(("fooba" : stdgo.GoString), ("Zm9vYmE=" : stdgo.GoString)) : stdgo._internal.encoding.base64.Base64.T_testpair),
(new stdgo._internal.encoding.base64.Base64.T_testpair(("foobar" : stdgo.GoString), ("Zm9vYmFy" : stdgo.GoString)) : stdgo._internal.encoding.base64.Base64.T_testpair),
(new stdgo._internal.encoding.base64.Base64.T_testpair(("sure." : stdgo.GoString), ("c3VyZS4=" : stdgo.GoString)) : stdgo._internal.encoding.base64.Base64.T_testpair),
(new stdgo._internal.encoding.base64.Base64.T_testpair(("sure" : stdgo.GoString), ("c3VyZQ==" : stdgo.GoString)) : stdgo._internal.encoding.base64.Base64.T_testpair),
(new stdgo._internal.encoding.base64.Base64.T_testpair(("sur" : stdgo.GoString), ("c3Vy" : stdgo.GoString)) : stdgo._internal.encoding.base64.Base64.T_testpair),
(new stdgo._internal.encoding.base64.Base64.T_testpair(("su" : stdgo.GoString), ("c3U=" : stdgo.GoString)) : stdgo._internal.encoding.base64.Base64.T_testpair),
(new stdgo._internal.encoding.base64.Base64.T_testpair(("leasure." : stdgo.GoString), ("bGVhc3VyZS4=" : stdgo.GoString)) : stdgo._internal.encoding.base64.Base64.T_testpair),
(new stdgo._internal.encoding.base64.Base64.T_testpair(("easure." : stdgo.GoString), ("ZWFzdXJlLg==" : stdgo.GoString)) : stdgo._internal.encoding.base64.Base64.T_testpair),
(new stdgo._internal.encoding.base64.Base64.T_testpair(("asure." : stdgo.GoString), ("YXN1cmUu" : stdgo.GoString)) : stdgo._internal.encoding.base64.Base64.T_testpair),
(new stdgo._internal.encoding.base64.Base64.T_testpair(("sure." : stdgo.GoString), ("c3VyZS4=" : stdgo.GoString)) : stdgo._internal.encoding.base64.Base64.T_testpair)].concat([for (i in 18 ... (18 > 18 ? 18 : 18 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.base64.Base64.T_testpair)])) : stdgo.Slice<stdgo._internal.encoding.base64.Base64.T_testpair>);
var _funnyEncoding : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding> = newEncoding(("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" : stdgo.GoString)).withPadding(((64 : stdgo.GoInt32) : stdgo.GoRune));
var _encodingTests : stdgo.Slice<stdgo._internal.encoding.base64.Base64.T_encodingTest> = (new stdgo.Slice<stdgo._internal.encoding.base64.Base64.T_encodingTest>(10, 10, ...[(new stdgo._internal.encoding.base64.Base64.T_encodingTest(stdEncoding, _stdRef) : stdgo._internal.encoding.base64.Base64.T_encodingTest), (new stdgo._internal.encoding.base64.Base64.T_encodingTest(urlencoding, _urlRef) : stdgo._internal.encoding.base64.Base64.T_encodingTest), (new stdgo._internal.encoding.base64.Base64.T_encodingTest(rawStdEncoding, _rawRef) : stdgo._internal.encoding.base64.Base64.T_encodingTest), (new stdgo._internal.encoding.base64.Base64.T_encodingTest(rawURLEncoding, _rawURLRef) : stdgo._internal.encoding.base64.Base64.T_encodingTest), (new stdgo._internal.encoding.base64.Base64.T_encodingTest(_funnyEncoding, _funnyRef) : stdgo._internal.encoding.base64.Base64.T_encodingTest), (new stdgo._internal.encoding.base64.Base64.T_encodingTest(stdEncoding.strict(), _stdRef) : stdgo._internal.encoding.base64.Base64.T_encodingTest), (new stdgo._internal.encoding.base64.Base64.T_encodingTest(urlencoding.strict(), _urlRef) : stdgo._internal.encoding.base64.Base64.T_encodingTest), (new stdgo._internal.encoding.base64.Base64.T_encodingTest(rawStdEncoding.strict(), _rawRef) : stdgo._internal.encoding.base64.Base64.T_encodingTest), (new stdgo._internal.encoding.base64.Base64.T_encodingTest(rawURLEncoding.strict(), _rawURLRef) : stdgo._internal.encoding.base64.Base64.T_encodingTest), (new stdgo._internal.encoding.base64.Base64.T_encodingTest(_funnyEncoding.strict(), _funnyRef) : stdgo._internal.encoding.base64.Base64.T_encodingTest)].concat([for (i in 10 ... (10 > 10 ? 10 : 10 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.base64.Base64.T_encodingTest)])) : stdgo.Slice<stdgo._internal.encoding.base64.Base64.T_encodingTest>);
var _bigtest : stdgo._internal.encoding.base64.Base64.T_testpair = (new stdgo._internal.encoding.base64.Base64.T_testpair(("Twas brillig, and the slithy toves" : stdgo.GoString), ("VHdhcyBicmlsbGlnLCBhbmQgdGhlIHNsaXRoeSB0b3Zlcw==" : stdgo.GoString)) : stdgo._internal.encoding.base64.Base64.T_testpair);
@:structInit @:using(stdgo._internal.encoding.base64.Base64.Encoding_static_extension) class Encoding {
    public var _encode : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoUInt8)]);
    public var _decodeMap : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoUInt8)]);
    public var _padChar : stdgo.GoInt32 = 0;
    public var _strict : Bool = false;
    public function new(?_encode:stdgo.GoArray<stdgo.GoUInt8>, ?_decodeMap:stdgo.GoArray<stdgo.GoUInt8>, ?_padChar:stdgo.GoInt32, ?_strict:Bool) {
        if (_encode != null) this._encode = _encode;
        if (_decodeMap != null) this._decodeMap = _decodeMap;
        if (_padChar != null) this._padChar = _padChar;
        if (_strict != null) this._strict = _strict;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Encoding(_encode, _decodeMap, _padChar, _strict);
    }
}
@:structInit @:private @:using(stdgo._internal.encoding.base64.Base64.T_encoder_static_extension) class T_encoder {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding> = (null : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding>);
    public var _w : stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(3, 3, ...[for (i in 0 ... 3) (0 : stdgo.GoUInt8)]);
    public var _nbuf : stdgo.GoInt = 0;
    public var _out : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1024, 1024, ...[for (i in 0 ... 1024) (0 : stdgo.GoUInt8)]);
    public function new(?_err:stdgo.Error, ?_enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding>, ?_w:stdgo._internal.io.Io.Writer, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_nbuf:stdgo.GoInt, ?_out:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_err != null) this._err = _err;
        if (_enc != null) this._enc = _enc;
        if (_w != null) this._w = _w;
        if (_buf != null) this._buf = _buf;
        if (_nbuf != null) this._nbuf = _nbuf;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encoder(_err, _enc, _w, _buf, _nbuf, _out);
    }
}
@:structInit @:private @:using(stdgo._internal.encoding.base64.Base64.T_decoder_static_extension) class T_decoder {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _readErr : stdgo.Error = (null : stdgo.Error);
    public var _enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding> = (null : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding>);
    public var _r : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1024, 1024, ...[for (i in 0 ... 1024) (0 : stdgo.GoUInt8)]);
    public var _nbuf : stdgo.GoInt = 0;
    public var _out : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _outbuf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(768, 768, ...[for (i in 0 ... 768) (0 : stdgo.GoUInt8)]);
    public function new(?_err:stdgo.Error, ?_readErr:stdgo.Error, ?_enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding>, ?_r:stdgo._internal.io.Io.Reader, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_nbuf:stdgo.GoInt, ?_out:stdgo.Slice<stdgo.GoUInt8>, ?_outbuf:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_err != null) this._err = _err;
        if (_readErr != null) this._readErr = _readErr;
        if (_enc != null) this._enc = _enc;
        if (_r != null) this._r = _r;
        if (_buf != null) this._buf = _buf;
        if (_nbuf != null) this._nbuf = _nbuf;
        if (_out != null) this._out = _out;
        if (_outbuf != null) this._outbuf = _outbuf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decoder(_err, _readErr, _enc, _r, _buf, _nbuf, _out, _outbuf);
    }
}
@:structInit @:private @:using(stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader_static_extension) class T_newlineFilteringReader {
    public var _wrapped : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public function new(?_wrapped:stdgo._internal.io.Io.Reader) {
        if (_wrapped != null) this._wrapped = _wrapped;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_newlineFilteringReader(_wrapped);
    }
}
@:structInit @:private class T_testpair {
    public var _decoded : stdgo.GoString = "";
    public var _encoded : stdgo.GoString = "";
    public function new(?_decoded:stdgo.GoString, ?_encoded:stdgo.GoString) {
        if (_decoded != null) this._decoded = _decoded;
        if (_encoded != null) this._encoded = _encoded;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testpair(_decoded, _encoded);
    }
}
@:structInit @:private class T_encodingTest {
    public var _enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding> = (null : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding>);
    public var _conv : stdgo.GoString -> stdgo.GoString = null;
    public function new(?_enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding>, ?_conv:stdgo.GoString -> stdgo.GoString) {
        if (_enc != null) this._enc = _enc;
        if (_conv != null) this._conv = _conv;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encodingTest(_enc, _conv);
    }
}
@:structInit @:private class T_nextRead {
    public var _n : stdgo.GoInt = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_n:stdgo.GoInt, ?_err:stdgo.Error) {
        if (_n != null) this._n = _n;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_nextRead(_n, _err);
    }
}
@:structInit @:private @:using(stdgo._internal.encoding.base64.Base64.T_faultInjectReader_static_extension) class T_faultInjectReader {
    public var _source : stdgo.GoString = "";
    public var _nextc : stdgo.Chan<stdgo._internal.encoding.base64.Base64.T_nextRead> = (null : stdgo.Chan<stdgo._internal.encoding.base64.Base64.T_nextRead>);
    public function new(?_source:stdgo.GoString, ?_nextc:stdgo.Chan<stdgo._internal.encoding.base64.Base64.T_nextRead>) {
        if (_source != null) this._source = _source;
        if (_nextc != null) this._nextc = _nextc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_faultInjectReader(_source, _nextc);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.base64.Base64.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.encoding.base64.Base64.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _input : stdgo.GoString;
    public var _offset : stdgo.GoInt;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.base64.Base64.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.encoding.base64.Base64.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding>;
    public var _n : stdgo.GoInt;
    public var _want : stdgo.GoInt;
};
@:named @:using(stdgo._internal.encoding.base64.Base64.CorruptInputError_static_extension) typedef CorruptInputError = stdgo.GoInt64;
function newEncoding(_encoder:stdgo.GoString):stdgo.Ref<Encoding> {
        if ((_encoder.length) != ((64 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("encoding alphabet is not 64-bytes long" : stdgo.GoString));
        };
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_encoder.length) : Bool), _i++, {
                if (((_encoder[(_i : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) || (_encoder[(_i : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) {
                    throw stdgo.Go.toInterface(("encoding alphabet contains newline character" : stdgo.GoString));
                };
            });
        };
        var _e = (stdgo.Go.setRef(({} : stdgo._internal.encoding.base64.Base64.Encoding)) : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding>);
        _e._padChar = (61 : stdgo.GoInt32);
        stdgo.Go.copySlice((_e._encode.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _encoder);
        stdgo.Go.copySlice((_e._decodeMap.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.str(255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255));
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_encoder.length) : Bool), _i++, {
                _e._decodeMap[(_encoder[(_i : stdgo.GoInt)] : stdgo.GoInt)] = (_i : stdgo.GoByte);
            });
        };
        return _e;
    }
function newEncoder(_enc:stdgo.Ref<Encoding>, _w:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.WriteCloser {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _enc : _enc, _w : _w } : stdgo._internal.encoding.base64.Base64.T_encoder)) : stdgo.Ref<stdgo._internal.encoding.base64.Base64.T_encoder>));
    }
function _assemble32(_n1:stdgo.GoByte, _n2:stdgo.GoByte, _n3:stdgo.GoByte, _n4:stdgo.GoByte):{ var _0 : stdgo.GoUInt32; var _1 : Bool; } {
        var _dn:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), _ok:Bool = false;
        if ((((_n1 | _n2 : stdgo.GoUInt8) | _n3 : stdgo.GoUInt8) | _n4 : stdgo.GoUInt8) == ((255 : stdgo.GoUInt8))) {
            return { _0 : (0u32 : stdgo.GoUInt32), _1 : false };
        };
        return { _0 : (((((_n1 : stdgo.GoUInt32) << (26i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((_n2 : stdgo.GoUInt32) << (20i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_n3 : stdgo.GoUInt32) << (14i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_n4 : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32), _1 : true };
    }
function _assemble64(_n1:stdgo.GoByte, _n2:stdgo.GoByte, _n3:stdgo.GoByte, _n4:stdgo.GoByte, _n5:stdgo.GoByte, _n6:stdgo.GoByte, _n7:stdgo.GoByte, _n8:stdgo.GoByte):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } {
        var _dn:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _ok:Bool = false;
        if ((((((((_n1 | _n2 : stdgo.GoUInt8) | _n3 : stdgo.GoUInt8) | _n4 : stdgo.GoUInt8) | _n5 : stdgo.GoUInt8) | _n6 : stdgo.GoUInt8) | _n7 : stdgo.GoUInt8) | _n8 : stdgo.GoUInt8) == ((255 : stdgo.GoUInt8))) {
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : false };
        };
        return { _0 : (((((((((_n1 : stdgo.GoUInt64) << (58i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_n2 : stdgo.GoUInt64) << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_n3 : stdgo.GoUInt64) << (46i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_n4 : stdgo.GoUInt64) << (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_n5 : stdgo.GoUInt64) << (34i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_n6 : stdgo.GoUInt64) << (28i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_n7 : stdgo.GoUInt64) << (22i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_n8 : stdgo.GoUInt64) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64), _1 : true };
    }
function newDecoder(_enc:stdgo.Ref<Encoding>, _r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _enc : _enc, _r : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader(_r) : stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader)) : stdgo.Ref<stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader>)) } : stdgo._internal.encoding.base64.Base64.T_decoder)) : stdgo.Ref<stdgo._internal.encoding.base64.Base64.T_decoder>));
    }
function _stdRef(_ref:stdgo.GoString):stdgo.GoString {
        return _ref?.__copy__();
    }
function _urlRef(_ref:stdgo.GoString):stdgo.GoString {
        _ref = stdgo._internal.strings.Strings.replaceAll(_ref?.__copy__(), ("+" : stdgo.GoString), ("-" : stdgo.GoString))?.__copy__();
        _ref = stdgo._internal.strings.Strings.replaceAll(_ref?.__copy__(), ("/" : stdgo.GoString), ("_" : stdgo.GoString))?.__copy__();
        return _ref?.__copy__();
    }
function _rawRef(_ref:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.strings.Strings.trimRight(_ref?.__copy__(), ("=" : stdgo.GoString))?.__copy__();
    }
function _rawURLRef(_ref:stdgo.GoString):stdgo.GoString {
        return _rawRef(_urlRef(_ref?.__copy__())?.__copy__())?.__copy__();
    }
function _funnyRef(_ref:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.strings.Strings.replaceAll(_ref?.__copy__(), ("=" : stdgo.GoString), ("@" : stdgo.GoString))?.__copy__();
    }
function _testEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Bool {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        _t.helper();
        if (_args[((_args.length) - (2 : stdgo.GoInt) : stdgo.GoInt)] != (_args[(((_args.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)])) {
            _t.errorf(_msg?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
            return false;
        };
        return true;
    }
function testEncode(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _p in _pairs) {
            for (__1 => _tt in _encodingTests) {
                var _got:stdgo.GoString = _tt._enc.encodeToString((_p._decoded : stdgo.Slice<stdgo.GoByte>))?.__copy__();
                _testEqual(_t, ("Encode(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_p._decoded), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._conv(_p._encoded?.__copy__())));
            };
        };
    }
function testEncoder(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _p in _pairs) {
            var _bb = (stdgo.Go.setRef((new stdgo._internal.strings.Strings.Builder() : stdgo._internal.strings.Strings.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>);
            var _encoder:stdgo._internal.io.Io.WriteCloser = newEncoder(stdEncoding, stdgo.Go.asInterface(_bb));
            _encoder.write((_p._decoded : stdgo.Slice<stdgo.GoByte>));
            _encoder.close();
            _testEqual(_t, ("Encode(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_p._decoded), stdgo.Go.toInterface((_bb.string() : stdgo.GoString)), stdgo.Go.toInterface(_p._encoded));
        };
    }
function testEncoderBuffering(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _input = (_bigtest._decoded : stdgo.Slice<stdgo.GoByte>);
        {
            var _bs:stdgo.GoInt = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_bs <= (12 : stdgo.GoInt) : Bool), _bs++, {
                var _bb = (stdgo.Go.setRef((new stdgo._internal.strings.Strings.Builder() : stdgo._internal.strings.Strings.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>);
                var _encoder:stdgo._internal.io.Io.WriteCloser = newEncoder(stdEncoding, stdgo.Go.asInterface(_bb));
                {
                    var _pos:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_pos < (_input.length) : Bool), _pos = (_pos + (_bs) : stdgo.GoInt), {
                        var _end:stdgo.GoInt = (_pos + _bs : stdgo.GoInt);
                        if ((_end > (_input.length) : Bool)) {
                            _end = (_input.length);
                        };
                        var __tmp__ = _encoder.write((_input.__slice__(_pos, _end) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        _testEqual(_t, ("Write(%q) gave error %v, want %v" : stdgo.GoString), stdgo.Go.toInterface((_input.__slice__(_pos, _end) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((null : stdgo.Error)));
                        _testEqual(_t, ("Write(%q) gave length %v, want %v" : stdgo.GoString), stdgo.Go.toInterface((_input.__slice__(_pos, _end) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_end - _pos : stdgo.GoInt)));
                    });
                };
                var _err:stdgo.Error = _encoder.close();
                _testEqual(_t, ("Close gave error %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((null : stdgo.Error)));
                _testEqual(_t, ("Encoding/%d of %q = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_bs), stdgo.Go.toInterface(_bigtest._decoded), stdgo.Go.toInterface((_bb.string() : stdgo.GoString)), stdgo.Go.toInterface(_bigtest._encoded));
            });
        };
    }
function testDecode(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _p in _pairs) {
            for (__1 => _tt in _encodingTests) {
                var _encoded:stdgo.GoString = _tt._conv(_p._encoded?.__copy__())?.__copy__();
                var _dbuf = (new stdgo.Slice<stdgo.GoUInt8>((_tt._enc.decodedLen((_encoded.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                var __tmp__ = _tt._enc.decode(_dbuf, (_encoded : stdgo.Slice<stdgo.GoByte>)), _count:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _testEqual(_t, ("Decode(%q) = error %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_encoded), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((null : stdgo.Error)));
                _testEqual(_t, ("Decode(%q) = length %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_encoded), stdgo.Go.toInterface(_count), stdgo.Go.toInterface((_p._decoded.length)));
                _testEqual(_t, ("Decode(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_encoded), stdgo.Go.toInterface(((_dbuf.__slice__((0 : stdgo.GoInt), _count) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)), stdgo.Go.toInterface(_p._decoded));
                {
                    var __tmp__ = _tt._enc.decodeString(_encoded?.__copy__());
                    _dbuf = __tmp__._0;
                    _err = __tmp__._1;
                };
                _testEqual(_t, ("DecodeString(%q) = error %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_encoded), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((null : stdgo.Error)));
                _testEqual(_t, ("DecodeString(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_encoded), stdgo.Go.toInterface((_dbuf : stdgo.GoString)), stdgo.Go.toInterface(_p._decoded));
            };
        };
    }
function testDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _p in _pairs) {
            var _decoder:stdgo._internal.io.Io.Reader = newDecoder(stdEncoding, stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(_p._encoded?.__copy__())));
            var _dbuf = (new stdgo.Slice<stdgo.GoUInt8>((stdEncoding.decodedLen((_p._encoded.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = _decoder.read(_dbuf), _count:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io.eof)) : Bool)) {
                _t.fatal(stdgo.Go.toInterface(("Read failed" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            _testEqual(_t, ("Read from %q = length %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_p._encoded), stdgo.Go.toInterface(_count), stdgo.Go.toInterface((_p._decoded.length)));
            _testEqual(_t, ("Decoding of %q = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_p._encoded), stdgo.Go.toInterface(((_dbuf.__slice__((0 : stdgo.GoInt), _count) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)), stdgo.Go.toInterface(_p._decoded));
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                {
                    var __tmp__ = _decoder.read(_dbuf);
                    _err = __tmp__._1;
                };
            };
            _testEqual(_t, ("Read from %q = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_p._encoded), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo._internal.io.Io.eof));
        };
    }
function testDecoderBuffering(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _bs:stdgo.GoInt = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_bs <= (12 : stdgo.GoInt) : Bool), _bs++, {
                var _decoder:stdgo._internal.io.Io.Reader = newDecoder(stdEncoding, stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(_bigtest._encoded?.__copy__())));
                var _buf = (new stdgo.Slice<stdgo.GoUInt8>(((_bigtest._decoded.length) + (12 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                var _total:stdgo.GoInt = (0 : stdgo.GoInt);
                var _n:stdgo.GoInt = (0 : stdgo.GoInt);
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    _total = (0 : stdgo.GoInt);
                    while (((_total < (_bigtest._decoded.length) : Bool) && (_err == null) : Bool)) {
                        {
                            var __tmp__ = _decoder.read((_buf.__slice__(_total, (_total + _bs : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                            _n = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        _total = (_total + (_n) : stdgo.GoInt);
                    };
                };
                if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io.eof)) : Bool)) {
                    _t.errorf(("Read from %q at pos %d = %d, unexpected error %v" : stdgo.GoString), stdgo.Go.toInterface(_bigtest._encoded), stdgo.Go.toInterface(_total), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
                };
                _testEqual(_t, ("Decoding/%d of %q = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_bs), stdgo.Go.toInterface(_bigtest._encoded), stdgo.Go.toInterface(((_buf.__slice__((0 : stdgo.GoInt), _total) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)), stdgo.Go.toInterface(_bigtest._decoded));
            });
        };
    }
function testDecodeCorrupt(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _testCases = (new stdgo.Slice<T__struct_0>(24, 24, ...[
({ _input : stdgo.Go.str()?.__copy__(), _offset : (-1 : stdgo.GoInt) } : T__struct_0),
({ _input : ("\n" : stdgo.GoString), _offset : (-1 : stdgo.GoInt) } : T__struct_0),
({ _input : ("AAA=\n" : stdgo.GoString), _offset : (-1 : stdgo.GoInt) } : T__struct_0),
({ _input : ("AAAA\n" : stdgo.GoString), _offset : (-1 : stdgo.GoInt) } : T__struct_0),
({ _input : ("!!!!" : stdgo.GoString), _offset : (0 : stdgo.GoInt) } : T__struct_0),
({ _input : ("====" : stdgo.GoString), _offset : (0 : stdgo.GoInt) } : T__struct_0),
({ _input : ("x===" : stdgo.GoString), _offset : (1 : stdgo.GoInt) } : T__struct_0),
({ _input : ("=AAA" : stdgo.GoString), _offset : (0 : stdgo.GoInt) } : T__struct_0),
({ _input : ("A=AA" : stdgo.GoString), _offset : (1 : stdgo.GoInt) } : T__struct_0),
({ _input : ("AA=A" : stdgo.GoString), _offset : (2 : stdgo.GoInt) } : T__struct_0),
({ _input : ("AA==A" : stdgo.GoString), _offset : (4 : stdgo.GoInt) } : T__struct_0),
({ _input : ("AAA=AAAA" : stdgo.GoString), _offset : (4 : stdgo.GoInt) } : T__struct_0),
({ _input : ("AAAAA" : stdgo.GoString), _offset : (4 : stdgo.GoInt) } : T__struct_0),
({ _input : ("AAAAAA" : stdgo.GoString), _offset : (4 : stdgo.GoInt) } : T__struct_0),
({ _input : ("A=" : stdgo.GoString), _offset : (1 : stdgo.GoInt) } : T__struct_0),
({ _input : ("A==" : stdgo.GoString), _offset : (1 : stdgo.GoInt) } : T__struct_0),
({ _input : ("AA=" : stdgo.GoString), _offset : (3 : stdgo.GoInt) } : T__struct_0),
({ _input : ("AA==" : stdgo.GoString), _offset : (-1 : stdgo.GoInt) } : T__struct_0),
({ _input : ("AAA=" : stdgo.GoString), _offset : (-1 : stdgo.GoInt) } : T__struct_0),
({ _input : ("AAAA" : stdgo.GoString), _offset : (-1 : stdgo.GoInt) } : T__struct_0),
({ _input : ("AAAAAA=" : stdgo.GoString), _offset : (7 : stdgo.GoInt) } : T__struct_0),
({ _input : ("YWJjZA=====" : stdgo.GoString), _offset : (8 : stdgo.GoInt) } : T__struct_0),
({ _input : ("A!\n" : stdgo.GoString), _offset : (1 : stdgo.GoInt) } : T__struct_0),
({ _input : ("A=\n" : stdgo.GoString), _offset : (1 : stdgo.GoInt) } : T__struct_0)].concat([for (i in 24 ... (24 > 24 ? 24 : 24 : stdgo.GoInt).toBasic()) ({ _input : ("" : stdgo.GoString), _offset : (0 : stdgo.GoInt) } : T__struct_0)])) : stdgo.Slice<T__struct_0>);
        for (__0 => _tc in _testCases) {
            var _dbuf = (new stdgo.Slice<stdgo.GoUInt8>((stdEncoding.decodedLen((_tc._input.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = stdEncoding.decode(_dbuf, (_tc._input : stdgo.Slice<stdgo.GoByte>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_tc._offset == ((-1 : stdgo.GoInt))) {
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(("Decoder wrongly detected corruption in" : stdgo.GoString)), stdgo.Go.toInterface(_tc._input));
                };
                continue;
            };
            {
                final __type__ = _err;
                if (stdgo.Go.typeEquals((__type__ : CorruptInputError))) {
                    var _err:stdgo._internal.encoding.base64.Base64.CorruptInputError = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.encoding.base64.Base64.CorruptInputError) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.encoding.base64.Base64.CorruptInputError) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.encoding.base64.Base64.CorruptInputError) : __type__.__underlying__().value;
                    _testEqual(_t, ("Corruption in %q at offset %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tc._input), stdgo.Go.toInterface((_err : stdgo.GoInt)), stdgo.Go.toInterface(_tc._offset));
                } else {
                    var _err:stdgo.Error = __type__ == null ? (null : stdgo.Error) : cast __type__;
                    _t.error(stdgo.Go.toInterface(("Decoder failed to detect corruption in" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tc)));
                };
            };
        };
    }
function testDecodeBounds(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _buf:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUInt8)]);
            var _s:stdgo.GoString = stdEncoding.encodeToString((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err:stdgo.AnyInterface = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_err != null) {
                            _t.fatalf(("Decode panicked unexpectedly: %v\n%s" : stdgo.GoString), _err, stdgo.Go.toInterface(stdgo._internal.runtime.debug.Debug.stack()));
                        };
                    };
                };
                a();
            });
            var __tmp__ = stdEncoding.decode((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_s : stdgo.Slice<stdgo.GoByte>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (_buf.length)) || (_err != null) : Bool)) {
                _t.fatalf(("StdEncoding.Decode = %d, %v, want %d, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_buf.length)));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testEncodedLen(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in (new stdgo.Slice<T__struct_1>(11, 11, ...[
({ _enc : rawStdEncoding, _n : (0 : stdgo.GoInt), _want : (0 : stdgo.GoInt) } : T__struct_1),
({ _enc : rawStdEncoding, _n : (1 : stdgo.GoInt), _want : (2 : stdgo.GoInt) } : T__struct_1),
({ _enc : rawStdEncoding, _n : (2 : stdgo.GoInt), _want : (3 : stdgo.GoInt) } : T__struct_1),
({ _enc : rawStdEncoding, _n : (3 : stdgo.GoInt), _want : (4 : stdgo.GoInt) } : T__struct_1),
({ _enc : rawStdEncoding, _n : (7 : stdgo.GoInt), _want : (10 : stdgo.GoInt) } : T__struct_1),
({ _enc : stdEncoding, _n : (0 : stdgo.GoInt), _want : (0 : stdgo.GoInt) } : T__struct_1),
({ _enc : stdEncoding, _n : (1 : stdgo.GoInt), _want : (4 : stdgo.GoInt) } : T__struct_1),
({ _enc : stdEncoding, _n : (2 : stdgo.GoInt), _want : (4 : stdgo.GoInt) } : T__struct_1),
({ _enc : stdEncoding, _n : (3 : stdgo.GoInt), _want : (4 : stdgo.GoInt) } : T__struct_1),
({ _enc : stdEncoding, _n : (4 : stdgo.GoInt), _want : (8 : stdgo.GoInt) } : T__struct_1),
({ _enc : stdEncoding, _n : (7 : stdgo.GoInt), _want : (12 : stdgo.GoInt) } : T__struct_1)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({ _enc : (null : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding>), _n : (0 : stdgo.GoInt), _want : (0 : stdgo.GoInt) } : T__struct_1)])) : stdgo.Slice<T__struct_1>)) {
            {
                var _got:stdgo.GoInt = _tt._enc.encodedLen(_tt._n);
                if (_got != (_tt._want)) {
                    _t.errorf(("EncodedLen(%d): got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
function testDecodedLen(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in (new stdgo.Slice<T__struct_1>(8, 8, ...[({ _enc : rawStdEncoding, _n : (0 : stdgo.GoInt), _want : (0 : stdgo.GoInt) } : T__struct_1), ({ _enc : rawStdEncoding, _n : (2 : stdgo.GoInt), _want : (1 : stdgo.GoInt) } : T__struct_1), ({ _enc : rawStdEncoding, _n : (3 : stdgo.GoInt), _want : (2 : stdgo.GoInt) } : T__struct_1), ({ _enc : rawStdEncoding, _n : (4 : stdgo.GoInt), _want : (3 : stdgo.GoInt) } : T__struct_1), ({ _enc : rawStdEncoding, _n : (10 : stdgo.GoInt), _want : (7 : stdgo.GoInt) } : T__struct_1), ({ _enc : stdEncoding, _n : (0 : stdgo.GoInt), _want : (0 : stdgo.GoInt) } : T__struct_1), ({ _enc : stdEncoding, _n : (4 : stdgo.GoInt), _want : (3 : stdgo.GoInt) } : T__struct_1), ({ _enc : stdEncoding, _n : (8 : stdgo.GoInt), _want : (6 : stdgo.GoInt) } : T__struct_1)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({ _enc : (null : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding>), _n : (0 : stdgo.GoInt), _want : (0 : stdgo.GoInt) } : T__struct_1)])) : stdgo.Slice<T__struct_1>)) {
            {
                var _got:stdgo.GoInt = _tt._enc.decodedLen(_tt._n);
                if (_got != (_tt._want)) {
                    _t.errorf(("DecodedLen(%d): got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
function testBig(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _n:stdgo.GoInt = (3001 : stdgo.GoInt);
        var _raw = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {};
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                _raw[(_i : stdgo.GoInt)] = ("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : stdgo.GoString)[(_i % (("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : stdgo.GoString).length) : stdgo.GoInt)];
            });
        };
        var _encoded = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _w:stdgo._internal.io.Io.WriteCloser = newEncoder(stdEncoding, stdgo.Go.asInterface(_encoded));
        var __tmp__ = _w.write(_raw), _nn:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_nn != _n) || (_err != null) : Bool)) {
            _t.fatalf(("Encoder.Write(raw) = %d, %v want %d, nil" : stdgo.GoString), stdgo.Go.toInterface(_nn), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_n));
        };
        _err = _w.close();
        if (_err != null) {
            _t.fatalf(("Encoder.Close() = %v want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.io.Io.readAll(newDecoder(stdEncoding, stdgo.Go.asInterface(_encoded))), _decoded:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("io.ReadAll(NewDecoder(...)): %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.bytes.Bytes.equal(_raw, _decoded)) {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor(((_i < (_decoded.length) : Bool) && (_i < (_raw.length) : Bool) : Bool), _i++, {
                    if (_decoded[(_i : stdgo.GoInt)] != (_raw[(_i : stdgo.GoInt)])) {
                        break;
                    };
                });
            };
            _t.errorf(("Decode(Encode(%d-byte string)) failed at offset %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_i));
        };
    }
function testNewLineCharacters(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _examples = (new stdgo.Slice<stdgo.GoString>(11, 11, ...[
("c3VyZQ==" : stdgo.GoString),
("c3VyZQ==\r" : stdgo.GoString),
("c3VyZQ==\n" : stdgo.GoString),
("c3VyZQ==\r\n" : stdgo.GoString),
("c3VyZ\r\nQ==" : stdgo.GoString),
("c3V\ryZ\nQ==" : stdgo.GoString),
("c3V\nyZ\rQ==" : stdgo.GoString),
("c3VyZ\nQ==" : stdgo.GoString),
("c3VyZQ\n==" : stdgo.GoString),
("c3VyZQ=\n=" : stdgo.GoString),
("c3VyZQ=\r\n\r\n=" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__0 => _e in _examples) {
            var __tmp__ = stdEncoding.decodeString(_e?.__copy__()), _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Decode(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_err));
                continue;
            };
            {
                var _s:stdgo.GoString = (_buf : stdgo.GoString)?.__copy__();
                if (_s != (("sure" : stdgo.GoString))) {
                    _t.errorf(("Decode(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("sure" : stdgo.GoString)));
                };
            };
        };
    }
function testDecoderIssue3577(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _next = (new stdgo.Chan<stdgo._internal.encoding.base64.Base64.T_nextRead>((10 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.encoding.base64.Base64.T_nextRead)) : stdgo.Chan<stdgo._internal.encoding.base64.Base64.T_nextRead>);
        var _wantErr:stdgo.Error = stdgo._internal.errors.Errors.new_(("my error" : stdgo.GoString));
        _next.__send__((new stdgo._internal.encoding.base64.Base64.T_nextRead((5 : stdgo.GoInt), (null : stdgo.Error)) : stdgo._internal.encoding.base64.Base64.T_nextRead));
        _next.__send__((new stdgo._internal.encoding.base64.Base64.T_nextRead((10 : stdgo.GoInt), _wantErr) : stdgo._internal.encoding.base64.Base64.T_nextRead));
        _next.__send__((new stdgo._internal.encoding.base64.Base64.T_nextRead((0 : stdgo.GoInt), _wantErr) : stdgo._internal.encoding.base64.Base64.T_nextRead));
        var _d:stdgo._internal.io.Io.Reader = newDecoder(stdEncoding, stdgo.Go.asInterface((stdgo.Go.setRef(({ _source : ("VHdhcyBicmlsbGlnLCBhbmQgdGhlIHNsaXRoeSB0b3Zlcw==" : stdgo.GoString), _nextc : _next } : stdgo._internal.encoding.base64.Base64.T_faultInjectReader)) : stdgo.Ref<stdgo._internal.encoding.base64.Base64.T_faultInjectReader>)));
        var _errc = (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                var __tmp__ = stdgo._internal.io.Io.readAll(_d), __0:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _errc.__send__(_err);
            };
            a();
        });
        {
            var __select__ = true;
            while (__select__) {
                if (_errc != null && _errc.__isGet__()) {
                    __select__ = false;
                    {
                        var _err = _errc.__get__();
                        {
                            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_wantErr))) {
                                _t.errorf(("got error %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_wantErr));
                            };
                        };
                    };
                } else if (stdgo._internal.time.Time.after((5000000000i64 : stdgo._internal.time.Time.Duration)) != null && stdgo._internal.time.Time.after((5000000000i64 : stdgo._internal.time.Time.Duration)).__isGet__()) {
                    __select__ = false;
                    {
                        stdgo._internal.time.Time.after((5000000000i64 : stdgo._internal.time.Time.Duration)).__get__();
                        {
                            _t.errorf(("timeout; Decoder blocked without returning an error" : stdgo.GoString));
                        };
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
    }
function testDecoderIssue4779(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _encoded:stdgo.GoString = ("CP/EAT8AAAEF\nAQEBAQEBAAAAAAAAAAMAAQIEBQYHCAkKCwEAAQUBAQEBAQEAAAAAAAAAAQACAwQFBgcICQoLEAAB\nBAEDAgQCBQcGCAUDDDMBAAIRAwQhEjEFQVFhEyJxgTIGFJGhsUIjJBVSwWIzNHKC0UMHJZJT8OHx\nY3M1FqKygyZEk1RkRcKjdDYX0lXiZfKzhMPTdePzRieUpIW0lcTU5PSltcXV5fVWZnaGlqa2xtbm\n9jdHV2d3h5ent8fX5/cRAAICAQIEBAMEBQYHBwYFNQEAAhEDITESBEFRYXEiEwUygZEUobFCI8FS\n0fAzJGLhcoKSQ1MVY3M08SUGFqKygwcmNcLSRJNUoxdkRVU2dGXi8rOEw9N14/NGlKSFtJXE1OT0\npbXF1eX1VmZ2hpamtsbW5vYnN0dXZ3eHl6e3x//aAAwDAQACEQMRAD8A9VSSSSUpJJJJSkkkJ+Tj\n1kiy1jCJJDnAcCTykpKkuQ6p/jN6FgmxlNduXawwAzaGH+V6jn/R/wCt71zdn+N/qL3kVYFNYB4N\nji6PDVjWpKp9TSXnvTf8bFNjg3qOEa2n6VlLpj/rT/pf567DpX1i6L1hs9Py67X8mqdtg/rUWbbf\n+gkp0kkkklKSSSSUpJJJJT//0PVUkkklKVLq3WMDpGI7KzrNjADtYNXvI/Mqr/Pd/q9W3vaxjnvM\nNaCXE9gNSvGPrf8AWS3qmba5jjsJhoB0DAf0NDf6sevf+/lf8Hj0JJATfWT6/dV6oXU1uOLQeKKn\nEQP+Hubtfe/+R7Mf/g7f5xcocp++Z11JMCJPgFBxOg7/AOuqDx8I/ikpkXkmSdU8mJIJA/O8EMAy\nj+mSARB/17pKVXYWHXjsj7yIex0PadzXMO1zT5KHoNA3HT8ietoGhgjsfA+CSnvvqh/jJtqsrwOv\n2b6NGNzXfTYexzJ+nU7/ALkf4P8Awv6P9KvTQQ4AgyDqCF85Pho3CTB7eHwXoH+LT65uZbX9X+o2\nbqbPb06551Y4\n" : stdgo.GoString);
        var _encodedShort:stdgo.GoString = stdgo._internal.strings.Strings.replaceAll(_encoded?.__copy__(), ("\n" : stdgo.GoString), stdgo.Go.str()?.__copy__())?.__copy__();
        var _dec:stdgo._internal.io.Io.Reader = newDecoder(stdEncoding, stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(_encoded?.__copy__())));
        var __tmp__ = stdgo._internal.io.Io.readAll(_dec), _res1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("ReadAll failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _dec = newDecoder(stdEncoding, stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(_encodedShort?.__copy__())));
        var _res2:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.io.Io.readAll(_dec);
            _res2 = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.errorf(("ReadAll failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.bytes.Bytes.equal(_res1, _res2)) {
            _t.error(stdgo.Go.toInterface(("Decoded results not equal" : stdgo.GoString)));
        };
    }
function testDecoderIssue7733(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = stdEncoding.decodeString(("YWJjZA=====" : stdgo.GoString)), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var _want:stdgo._internal.encoding.base64.Base64.CorruptInputError = ((8i64 : stdgo._internal.encoding.base64.Base64.CorruptInputError) : CorruptInputError);
        if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_want)), stdgo.Go.toInterface(_err))) {
            _t.errorf(("Error = %v; want CorruptInputError(8)" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_s : stdgo.GoString) != (("abcd" : stdgo.GoString))) {
            _t.errorf(("DecodeString = %q; want abcd" : stdgo.GoString), stdgo.Go.toInterface(_s));
        };
    }
function testDecoderIssue15656(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = stdEncoding.strict().decodeString(("WvLTlMrX9NpYDQlEIFlnDB==" : stdgo.GoString)), __0:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var _want:stdgo._internal.encoding.base64.Base64.CorruptInputError = ((22i64 : stdgo._internal.encoding.base64.Base64.CorruptInputError) : CorruptInputError);
        if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_want)), stdgo.Go.toInterface(_err))) {
            _t.errorf(("Error = %v; want CorruptInputError(22)" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = stdEncoding.strict().decodeString(("WvLTlMrX9NpYDQlEIFlnDA==" : stdgo.GoString));
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.errorf(("Error = %v; want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = stdEncoding.decodeString(("WvLTlMrX9NpYDQlEIFlnDB==" : stdgo.GoString));
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.errorf(("Error = %v; want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
function benchmarkEncodeToString(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _data = (new stdgo.Slice<stdgo.GoUInt8>((8192 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b.setBytes((_data.length : stdgo.GoInt64));
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdEncoding.encodeToString(_data);
            });
        };
    }
function benchmarkDecodeString(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _sizes = (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(2 : stdgo.GoInt), (4 : stdgo.GoInt), (8 : stdgo.GoInt), (64 : stdgo.GoInt), (8192 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _benchFunc = function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _benchSize:stdgo.GoInt):Void {
            var _data:stdgo.GoString = stdEncoding.encodeToString((new stdgo.Slice<stdgo.GoUInt8>((_benchSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
            _b.setBytes((_data.length : stdgo.GoInt64));
            _b.resetTimer();
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    stdEncoding.decodeString(_data?.__copy__());
                });
            };
        };
        for (__0 => _size in _sizes) {
            _b.run(stdgo._internal.fmt.Fmt.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_size))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                _benchFunc(_b, _size);
            });
        };
    }
function benchmarkNewEncoding(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.setBytes(((new stdgo._internal.encoding.base64.Base64.Encoding() : stdgo._internal.encoding.base64.Base64.Encoding)._decodeMap.length : stdgo.GoInt64));
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _e = newEncoding(("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" : stdgo.GoString));
                for (__16 => _v in _e._decodeMap) {
                    var __blank__ = _v;
                };
            });
        };
    }
function testDecoderRaw(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _source:stdgo.GoString = ("AAAAAA" : stdgo.GoString);
        var _want = (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = rawURLEncoding.decodeString(_source?.__copy__()), _dec1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || !stdgo._internal.bytes.Bytes.equal(_dec1, _want) : Bool)) {
            _t.errorf(("RawURLEncoding.DecodeString(%q) = %x, %v, want %x, nil" : stdgo.GoString), stdgo.Go.toInterface(_source), stdgo.Go.toInterface(_dec1), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
        };
        var _r:stdgo._internal.io.Io.Reader = newDecoder(rawURLEncoding, stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader((_source : stdgo.Slice<stdgo.GoByte>))));
        var __tmp__ = stdgo._internal.io.Io.readAll(stdgo._internal.io.Io.limitReader(_r, (100i64 : stdgo.GoInt64))), _dec2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || !stdgo._internal.bytes.Bytes.equal(_dec2, _want) : Bool)) {
            _t.errorf(("reading NewDecoder(RawURLEncoding, %q) = %x, %v, want %x, nil" : stdgo.GoString), stdgo.Go.toInterface(_source), stdgo.Go.toInterface(_dec2), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
        };
        _r = newDecoder(urlencoding, stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader(((_source + ("==" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        var __tmp__ = stdgo._internal.io.Io.readAll(_r), _dec3:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || !stdgo._internal.bytes.Bytes.equal(_dec3, _want) : Bool)) {
            _t.errorf(("reading NewDecoder(URLEncoding, %q) = %x, %v, want %x, nil" : stdgo.GoString), stdgo.Go.toInterface((_source + ("==" : stdgo.GoString)?.__copy__() : stdgo.GoString)), stdgo.Go.toInterface(_dec3), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
        };
    }
class Encoding_asInterface {
    @:keep
    public dynamic function decodedLen(_n:stdgo.GoInt):stdgo.GoInt return __self__.value.decodedLen(_n);
    @:keep
    public dynamic function decode(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.decode(_dst, _src);
    @:keep
    public dynamic function decodeString(_s:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return __self__.value.decodeString(_s);
    @:keep
    public dynamic function _decodeQuantum(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>, _si:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value._decodeQuantum(_dst, _src, _si);
    @:keep
    public dynamic function encodedLen(_n:stdgo.GoInt):stdgo.GoInt return __self__.value.encodedLen(_n);
    @:keep
    public dynamic function encodeToString(_src:stdgo.Slice<stdgo.GoByte>):stdgo.GoString return __self__.value.encodeToString(_src);
    @:keep
    public dynamic function encode(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):Void __self__.value.encode(_dst, _src);
    @:keep
    public dynamic function strict():stdgo.Ref<Encoding> return __self__.value.strict();
    @:keep
    public dynamic function withPadding(_padding:stdgo.GoRune):stdgo.Ref<Encoding> return __self__.value.withPadding(_padding);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Encoding>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.base64.Base64.Encoding_asInterface) class Encoding_static_extension {
    @:keep
    static public function decodedLen( _enc:stdgo.Ref<Encoding>, _n:stdgo.GoInt):stdgo.GoInt {
        @:recv var _enc:stdgo.Ref<Encoding> = _enc;
        if (_enc._padChar == ((-1 : stdgo.GoInt32))) {
            return ((_n * (6 : stdgo.GoInt) : stdgo.GoInt) / (8 : stdgo.GoInt) : stdgo.GoInt);
        };
        return ((_n / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function decode( _enc:stdgo.Ref<Encoding>, _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _enc:stdgo.Ref<Encoding> = _enc;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if ((_src.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        };
        var __blank__ = _enc._decodeMap;
        var _si:stdgo.GoInt = (0 : stdgo.GoInt);
        while (((false && (((_src.length) - _si : stdgo.GoInt) >= (8 : stdgo.GoInt) : Bool) : Bool) && (((_dst.length) - _n : stdgo.GoInt) >= (8 : stdgo.GoInt) : Bool) : Bool)) {
            var _src2 = (_src.__slice__(_si, (_si + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = _assemble64(_enc._decodeMap[(_src2[(0 : stdgo.GoInt)] : stdgo.GoInt)], _enc._decodeMap[(_src2[(1 : stdgo.GoInt)] : stdgo.GoInt)], _enc._decodeMap[(_src2[(2 : stdgo.GoInt)] : stdgo.GoInt)], _enc._decodeMap[(_src2[(3 : stdgo.GoInt)] : stdgo.GoInt)], _enc._decodeMap[(_src2[(4 : stdgo.GoInt)] : stdgo.GoInt)], _enc._decodeMap[(_src2[(5 : stdgo.GoInt)] : stdgo.GoInt)], _enc._decodeMap[(_src2[(6 : stdgo.GoInt)] : stdgo.GoInt)], _enc._decodeMap[(_src2[(7 : stdgo.GoInt)] : stdgo.GoInt)]), _dn:stdgo.GoUInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    stdgo._internal.encoding.binary.Binary.bigEndian.putUint64((_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _dn);
                    _n = (_n + ((6 : stdgo.GoInt)) : stdgo.GoInt);
                    _si = (_si + ((8 : stdgo.GoInt)) : stdgo.GoInt);
                } else {
                    var _ninc:stdgo.GoInt = (0 : stdgo.GoInt);
                    {
                        var __tmp__ = _enc._decodeQuantum((_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _src, _si);
                        _si = __tmp__._0;
                        _ninc = __tmp__._1;
                        _err = __tmp__._2;
                    };
                    _n = (_n + (_ninc) : stdgo.GoInt);
                    if (_err != null) {
                        return { _0 : _n, _1 : _err };
                    };
                };
            };
        };
        while (((((_src.length) - _si : stdgo.GoInt) >= (4 : stdgo.GoInt) : Bool) && (((_dst.length) - _n : stdgo.GoInt) >= (4 : stdgo.GoInt) : Bool) : Bool)) {
            var _src2 = (_src.__slice__(_si, (_si + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = _assemble32(_enc._decodeMap[(_src2[(0 : stdgo.GoInt)] : stdgo.GoInt)], _enc._decodeMap[(_src2[(1 : stdgo.GoInt)] : stdgo.GoInt)], _enc._decodeMap[(_src2[(2 : stdgo.GoInt)] : stdgo.GoInt)], _enc._decodeMap[(_src2[(3 : stdgo.GoInt)] : stdgo.GoInt)]), _dn:stdgo.GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    stdgo._internal.encoding.binary.Binary.bigEndian.putUint32((_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _dn);
                    _n = (_n + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                    _si = (_si + ((4 : stdgo.GoInt)) : stdgo.GoInt);
                } else {
                    var _ninc:stdgo.GoInt = (0 : stdgo.GoInt);
                    {
                        var __tmp__ = _enc._decodeQuantum((_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _src, _si);
                        _si = __tmp__._0;
                        _ninc = __tmp__._1;
                        _err = __tmp__._2;
                    };
                    _n = (_n + (_ninc) : stdgo.GoInt);
                    if (_err != null) {
                        return { _0 : _n, _1 : _err };
                    };
                };
            };
        };
        while ((_si < (_src.length) : Bool)) {
            var _ninc:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = _enc._decodeQuantum((_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _src, _si);
                _si = __tmp__._0;
                _ninc = __tmp__._1;
                _err = __tmp__._2;
            };
            _n = (_n + (_ninc) : stdgo.GoInt);
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function decodeString( _enc:stdgo.Ref<Encoding>, _s:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _enc:stdgo.Ref<Encoding> = _enc;
        var _dbuf = (new stdgo.Slice<stdgo.GoUInt8>((_enc.decodedLen((_s.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = _enc.decode(_dbuf, (_s : stdgo.Slice<stdgo.GoByte>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : (_dbuf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
    }
    @:keep
    static public function _decodeQuantum( _enc:stdgo.Ref<Encoding>, _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>, _si:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _enc:stdgo.Ref<Encoding> = _enc;
        var _nsi:stdgo.GoInt = (0 : stdgo.GoInt), _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        var _dbuf:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
        var _dlen:stdgo.GoInt = (4 : stdgo.GoInt);
        var __blank__ = _enc._decodeMap;
        {
            var _j:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_j < (_dbuf.length) : Bool), _j++, {
                if ((_src.length) == (_si)) {
                    if (_j == ((0 : stdgo.GoInt))) {
                        return { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : (null : stdgo.Error) };
                    } else if (_j == ((1 : stdgo.GoInt)) || _enc._padChar != ((-1 : stdgo.GoInt32))) {
                        return { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface(((_si - _j : stdgo.GoInt) : CorruptInputError)) };
                    };
                    _dlen = _j;
                    break;
                };
                var _in:stdgo.GoUInt8 = _src[(_si : stdgo.GoInt)];
                _si++;
                var _out:stdgo.GoUInt8 = _enc._decodeMap[(_in : stdgo.GoInt)];
                if (_out != ((255 : stdgo.GoUInt8))) {
                    _dbuf[(_j : stdgo.GoInt)] = _out;
                    continue;
                };
                if (((_in == (10 : stdgo.GoUInt8)) || (_in == (13 : stdgo.GoUInt8)) : Bool)) {
                    _j--;
                    continue;
                };
                if ((_in : stdgo.GoRune) != (_enc._padChar)) {
                    return { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface(((_si - (1 : stdgo.GoInt) : stdgo.GoInt) : CorruptInputError)) };
                };
                {
                    final __value__ = _j;
                    if (__value__ == ((0 : stdgo.GoInt)) || __value__ == ((1 : stdgo.GoInt))) {
                        return { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface(((_si - (1 : stdgo.GoInt) : stdgo.GoInt) : CorruptInputError)) };
                    } else if (__value__ == ((2 : stdgo.GoInt))) {
                        while (((_si < (_src.length) : Bool) && (((_src[(_si : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) || (_src[(_si : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _si++;
                        };
                        if (_si == ((_src.length))) {
                            return { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface((_src.length : CorruptInputError)) };
                        };
                        if ((_src[(_si : stdgo.GoInt)] : stdgo.GoRune) != (_enc._padChar)) {
                            return { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface(((_si - (1 : stdgo.GoInt) : stdgo.GoInt) : CorruptInputError)) };
                        };
                        _si++;
                    };
                };
                while (((_si < (_src.length) : Bool) && (((_src[(_si : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) || (_src[(_si : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                    _si++;
                };
                if ((_si < (_src.length) : Bool)) {
                    _err = stdgo.Go.asInterface((_si : CorruptInputError));
                };
                _dlen = _j;
                break;
            });
        };
        var _val:stdgo.GoUInt = (((((_dbuf[(0 : stdgo.GoInt)] : stdgo.GoUInt) << (18i64 : stdgo.GoUInt64) : stdgo.GoUInt) | ((_dbuf[(1 : stdgo.GoInt)] : stdgo.GoUInt) << (12i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt) | ((_dbuf[(2 : stdgo.GoInt)] : stdgo.GoUInt) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt) | (_dbuf[(3 : stdgo.GoInt)] : stdgo.GoUInt) : stdgo.GoUInt);
        {
            final __tmp__0 = ((_val >> (0i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoByte);
            final __tmp__1 = ((_val >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoByte);
            final __tmp__2 = ((_val >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoByte);
            final __tmp__3 = _dbuf;
            final __tmp__4 = (2 : stdgo.GoInt);
            final __tmp__5 = _dbuf;
            final __tmp__6 = (1 : stdgo.GoInt);
            final __tmp__7 = _dbuf;
            final __tmp__8 = (0 : stdgo.GoInt);
            __tmp__3[__tmp__4] = __tmp__0;
            __tmp__5[__tmp__6] = __tmp__1;
            __tmp__7[__tmp__8] = __tmp__2;
        };
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _dlen;
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (4 : stdgo.GoInt)))) {
                        _dst[(2 : stdgo.GoInt)] = _dbuf[(2 : stdgo.GoInt)];
                        _dbuf[(2 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                        @:fallthrough {
                            __switchIndex__ = 1;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (3 : stdgo.GoInt)))) {
                        _dst[(1 : stdgo.GoInt)] = _dbuf[(1 : stdgo.GoInt)];
                        if ((_enc._strict && (_dbuf[(2 : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) : Bool)) {
                            return { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface(((_si - (1 : stdgo.GoInt) : stdgo.GoInt) : CorruptInputError)) };
                        };
                        _dbuf[(1 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                        @:fallthrough {
                            __switchIndex__ = 2;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo.GoInt)))) {
                        _dst[(0 : stdgo.GoInt)] = _dbuf[(0 : stdgo.GoInt)];
                        if ((_enc._strict && (((_dbuf[(1 : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) || (_dbuf[(2 : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            return { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface(((_si - (2 : stdgo.GoInt) : stdgo.GoInt) : CorruptInputError)) };
                        };
                        break;
                        break;
                    };
                };
                break;
            };
        };
        return { _0 : _si, _1 : (_dlen - (1 : stdgo.GoInt) : stdgo.GoInt), _2 : _err };
    }
    @:keep
    static public function encodedLen( _enc:stdgo.Ref<Encoding>, _n:stdgo.GoInt):stdgo.GoInt {
        @:recv var _enc:stdgo.Ref<Encoding> = _enc;
        if (_enc._padChar == ((-1 : stdgo.GoInt32))) {
            return ((((_n * (8 : stdgo.GoInt) : stdgo.GoInt) + (5 : stdgo.GoInt) : stdgo.GoInt)) / (6 : stdgo.GoInt) : stdgo.GoInt);
        };
        return ((((_n + (2 : stdgo.GoInt) : stdgo.GoInt)) / (3 : stdgo.GoInt) : stdgo.GoInt) * (4 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function encodeToString( _enc:stdgo.Ref<Encoding>, _src:stdgo.Slice<stdgo.GoByte>):stdgo.GoString {
        @:recv var _enc:stdgo.Ref<Encoding> = _enc;
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_enc.encodedLen((_src.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _enc.encode(_buf, _src);
        return (_buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function encode( _enc:stdgo.Ref<Encoding>, _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):Void {
        @:recv var _enc:stdgo.Ref<Encoding> = _enc;
        if ((_src.length) == ((0 : stdgo.GoInt))) {
            return;
        };
        var __blank__ = _enc._encode;
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), _si:stdgo.GoInt = __1, _di:stdgo.GoInt = __0;
        var _n:stdgo.GoInt = ((((_src.length) / (3 : stdgo.GoInt) : stdgo.GoInt)) * (3 : stdgo.GoInt) : stdgo.GoInt);
        while ((_si < _n : Bool)) {
            var _val:stdgo.GoUInt = ((((_src[(_si + (0 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt) | ((_src[(_si + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt) | (_src[(_si + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt) : stdgo.GoUInt);
            _dst[(_di + (0 : stdgo.GoInt) : stdgo.GoInt)] = _enc._encode[(((_val >> (18i64 : stdgo.GoUInt64) : stdgo.GoUInt) & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
            _dst[(_di + (1 : stdgo.GoInt) : stdgo.GoInt)] = _enc._encode[(((_val >> (12i64 : stdgo.GoUInt64) : stdgo.GoUInt) & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
            _dst[(_di + (2 : stdgo.GoInt) : stdgo.GoInt)] = _enc._encode[(((_val >> (6i64 : stdgo.GoUInt64) : stdgo.GoUInt) & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
            _dst[(_di + (3 : stdgo.GoInt) : stdgo.GoInt)] = _enc._encode[((_val & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
            _si = (_si + ((3 : stdgo.GoInt)) : stdgo.GoInt);
            _di = (_di + ((4 : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _remain:stdgo.GoInt = ((_src.length) - _si : stdgo.GoInt);
        if (_remain == ((0 : stdgo.GoInt))) {
            return;
        };
        var _val:stdgo.GoUInt = ((_src[(_si + (0 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt);
        if (_remain == ((2 : stdgo.GoInt))) {
            _val = (_val | (((_src[(_si + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt)) : stdgo.GoUInt);
        };
        _dst[(_di + (0 : stdgo.GoInt) : stdgo.GoInt)] = _enc._encode[(((_val >> (18i64 : stdgo.GoUInt64) : stdgo.GoUInt) & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
        _dst[(_di + (1 : stdgo.GoInt) : stdgo.GoInt)] = _enc._encode[(((_val >> (12i64 : stdgo.GoUInt64) : stdgo.GoUInt) & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
        {
            final __value__ = _remain;
            if (__value__ == ((2 : stdgo.GoInt))) {
                _dst[(_di + (2 : stdgo.GoInt) : stdgo.GoInt)] = _enc._encode[(((_val >> (6i64 : stdgo.GoUInt64) : stdgo.GoUInt) & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
                if (_enc._padChar != ((-1 : stdgo.GoInt32))) {
                    _dst[(_di + (3 : stdgo.GoInt) : stdgo.GoInt)] = (_enc._padChar : stdgo.GoByte);
                };
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                if (_enc._padChar != ((-1 : stdgo.GoInt32))) {
                    _dst[(_di + (2 : stdgo.GoInt) : stdgo.GoInt)] = (_enc._padChar : stdgo.GoByte);
                    _dst[(_di + (3 : stdgo.GoInt) : stdgo.GoInt)] = (_enc._padChar : stdgo.GoByte);
                };
            };
        };
    }
    @:keep
    static public function strict( _enc:Encoding):stdgo.Ref<Encoding> {
        @:recv var _enc:Encoding = _enc?.__copy__();
        _enc._strict = true;
        return (stdgo.Go.setRef(_enc) : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding>);
    }
    @:keep
    static public function withPadding( _enc:Encoding, _padding:stdgo.GoRune):stdgo.Ref<Encoding> {
        @:recv var _enc:Encoding = _enc?.__copy__();
        if (((_padding == ((13 : stdgo.GoInt32)) || _padding == ((10 : stdgo.GoInt32)) : Bool) || (_padding > (255 : stdgo.GoInt32) : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("invalid padding" : stdgo.GoString));
        };
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_enc._encode.length) : Bool), _i++, {
                if ((_enc._encode[(_i : stdgo.GoInt)] : stdgo.GoRune) == (_padding)) {
                    throw stdgo.Go.toInterface(("padding contained in alphabet" : stdgo.GoString));
                };
            });
        };
        _enc._padChar = _padding;
        return (stdgo.Go.setRef(_enc) : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding>);
    }
}
class T_encoder_asInterface {
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_encoder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.base64.Base64.T_encoder_asInterface) class T_encoder_static_extension {
    @:keep
    static public function close( _e:stdgo.Ref<T_encoder>):stdgo.Error {
        @:recv var _e:stdgo.Ref<T_encoder> = _e;
        if (((_e._err == null) && (_e._nbuf > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _e._enc.encode((_e._out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_e._buf.__slice__(0, _e._nbuf) : stdgo.Slice<stdgo.GoUInt8>));
            {
                var __tmp__ = _e._w.write((_e._out.__slice__(0, _e._enc.encodedLen(_e._nbuf)) : stdgo.Slice<stdgo.GoUInt8>));
                _e._err = __tmp__._1;
            };
            _e._nbuf = (0 : stdgo.GoInt);
        };
        return _e._err;
    }
    @:keep
    static public function write( _e:stdgo.Ref<T_encoder>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo.Ref<T_encoder> = _e;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if (_e._err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : _e._err };
        };
        if ((_e._nbuf > (0 : stdgo.GoInt) : Bool)) {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor(((_i < (_p.length) : Bool) && (_e._nbuf < (3 : stdgo.GoInt) : Bool) : Bool), _i++, {
                    _e._buf[(_e._nbuf : stdgo.GoInt)] = _p[(_i : stdgo.GoInt)];
                    _e._nbuf++;
                });
            };
            _n = (_n + (_i) : stdgo.GoInt);
            _p = (_p.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
            if ((_e._nbuf < (3 : stdgo.GoInt) : Bool)) {
                return { _0 : _n, _1 : _err };
            };
            _e._enc.encode((_e._out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_e._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
            {
                {
                    var __tmp__ = _e._w.write((_e._out.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _e._err = __tmp__._1;
                };
                if (_e._err != null) {
                    return { _0 : _n, _1 : _e._err };
                };
            };
            _e._nbuf = (0 : stdgo.GoInt);
        };
        while (((_p.length) >= (3 : stdgo.GoInt) : Bool)) {
            var _nn:stdgo.GoInt = (768 : stdgo.GoInt);
            if ((_nn > (_p.length) : Bool)) {
                _nn = (_p.length);
                _nn = (_nn - ((_nn % (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            };
            _e._enc.encode((_e._out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_p.__slice__(0, _nn) : stdgo.Slice<stdgo.GoUInt8>));
            {
                {
                    var __tmp__ = _e._w.write((_e._out.__slice__((0 : stdgo.GoInt), ((_nn / (3 : stdgo.GoInt) : stdgo.GoInt) * (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _e._err = __tmp__._1;
                };
                if (_e._err != null) {
                    return { _0 : _n, _1 : _e._err };
                };
            };
            _n = (_n + (_nn) : stdgo.GoInt);
            _p = (_p.__slice__(_nn) : stdgo.Slice<stdgo.GoUInt8>);
        };
        stdgo.Go.copySlice((_e._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _p);
        _e._nbuf = (_p.length);
        _n = (_n + ((_p.length)) : stdgo.GoInt);
        return { _0 : _n, _1 : _err };
    }
}
class T_decoder_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_decoder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.base64.Base64.T_decoder_asInterface) class T_decoder_static_extension {
    @:keep
    static public function read( _d:stdgo.Ref<T_decoder>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<T_decoder> = _d;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if (((_d._out.length) > (0 : stdgo.GoInt) : Bool)) {
            _n = stdgo.Go.copySlice(_p, _d._out);
            _d._out = (_d._out.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            return { _0 : _n, _1 : (null : stdgo.Error) };
        };
        if (_d._err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : _d._err };
        };
        while (((_d._nbuf < (4 : stdgo.GoInt) : Bool) && (_d._readErr == null) : Bool)) {
            var _nn:stdgo.GoInt = (((_p.length) / (3 : stdgo.GoInt) : stdgo.GoInt) * (4 : stdgo.GoInt) : stdgo.GoInt);
            if ((_nn < (4 : stdgo.GoInt) : Bool)) {
                _nn = (4 : stdgo.GoInt);
            };
            if ((_nn > (_d._buf.length) : Bool)) {
                _nn = (_d._buf.length);
            };
            {
                var __tmp__ = _d._r.read((_d._buf.__slice__(_d._nbuf, _nn) : stdgo.Slice<stdgo.GoUInt8>));
                _nn = __tmp__._0;
                _d._readErr = __tmp__._1;
            };
            _d._nbuf = (_d._nbuf + (_nn) : stdgo.GoInt);
        };
        if ((_d._nbuf < (4 : stdgo.GoInt) : Bool)) {
            if (((_d._enc._padChar == (-1 : stdgo.GoInt32)) && (_d._nbuf > (0 : stdgo.GoInt) : Bool) : Bool)) {
                var _nw:stdgo.GoInt = (0 : stdgo.GoInt);
                {
                    var __tmp__ = _d._enc.decode((_d._outbuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_d._buf.__slice__(0, _d._nbuf) : stdgo.Slice<stdgo.GoUInt8>));
                    _nw = __tmp__._0;
                    _d._err = __tmp__._1;
                };
                _d._nbuf = (0 : stdgo.GoInt);
                _d._out = (_d._outbuf.__slice__(0, _nw) : stdgo.Slice<stdgo.GoUInt8>);
                _n = stdgo.Go.copySlice(_p, _d._out);
                _d._out = (_d._out.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
                if (((_n > (0 : stdgo.GoInt) : Bool) || ((_p.length) == ((0 : stdgo.GoInt)) && ((_d._out.length) > (0 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                };
                if (_d._err != null) {
                    return { _0 : (0 : stdgo.GoInt), _1 : _d._err };
                };
            };
            _d._err = _d._readErr;
            if (((stdgo.Go.toInterface(_d._err) == stdgo.Go.toInterface(stdgo._internal.io.Io.eof)) && (_d._nbuf > (0 : stdgo.GoInt) : Bool) : Bool)) {
                _d._err = stdgo._internal.io.Io.errUnexpectedEOF;
            };
            return { _0 : (0 : stdgo.GoInt), _1 : _d._err };
        };
        var _nr:stdgo.GoInt = ((_d._nbuf / (4 : stdgo.GoInt) : stdgo.GoInt) * (4 : stdgo.GoInt) : stdgo.GoInt);
        var _nw:stdgo.GoInt = ((_d._nbuf / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt);
        if ((_nw > (_p.length) : Bool)) {
            {
                var __tmp__ = _d._enc.decode((_d._outbuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_d._buf.__slice__(0, _nr) : stdgo.Slice<stdgo.GoUInt8>));
                _nw = __tmp__._0;
                _d._err = __tmp__._1;
            };
            _d._out = (_d._outbuf.__slice__(0, _nw) : stdgo.Slice<stdgo.GoUInt8>);
            _n = stdgo.Go.copySlice(_p, _d._out);
            _d._out = (_d._out.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            {
                var __tmp__ = _d._enc.decode(_p, (_d._buf.__slice__(0, _nr) : stdgo.Slice<stdgo.GoUInt8>));
                _n = __tmp__._0;
                _d._err = __tmp__._1;
            };
        };
        _d._nbuf = (_d._nbuf - (_nr) : stdgo.GoInt);
        stdgo.Go.copySlice((_d._buf.__slice__(0, _d._nbuf) : stdgo.Slice<stdgo.GoUInt8>), (_d._buf.__slice__(_nr) : stdgo.Slice<stdgo.GoUInt8>));
        return { _0 : _n, _1 : _d._err };
    }
}
class T_newlineFilteringReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_newlineFilteringReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader_asInterface) class T_newlineFilteringReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<T_newlineFilteringReader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<T_newlineFilteringReader> = _r;
        var __tmp__ = _r._wrapped.read(_p), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        while ((_n > (0 : stdgo.GoInt) : Bool)) {
            var _offset:stdgo.GoInt = (0 : stdgo.GoInt);
            for (_i => _b in (_p.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)) {
                if (((_b != (13 : stdgo.GoUInt8)) && (_b != (10 : stdgo.GoUInt8)) : Bool)) {
                    if (_i != (_offset)) {
                        _p[(_offset : stdgo.GoInt)] = _b;
                    };
                    _offset++;
                };
            };
            if ((_offset > (0 : stdgo.GoInt) : Bool)) {
                return { _0 : _offset, _1 : _err };
            };
            {
                var __tmp__ = _r._wrapped.read(_p);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        return { _0 : _n, _1 : _err };
    }
}
class T_faultInjectReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_faultInjectReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.base64.Base64.T_faultInjectReader_asInterface) class T_faultInjectReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<T_faultInjectReader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<T_faultInjectReader> = _r;
        var _nr:stdgo._internal.encoding.base64.Base64.T_nextRead = _r._nextc.__get__()?.__copy__();
        if (((_p.length) > _nr._n : Bool)) {
            _p = (_p.__slice__(0, _nr._n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _n:stdgo.GoInt = stdgo.Go.copySlice(_p, _r._source);
        _r._source = (_r._source.__slice__(_n) : stdgo.GoString)?.__copy__();
        return { _0 : _n, _1 : _nr._err };
    }
}
class CorruptInputError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<CorruptInputError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.base64.Base64.CorruptInputError_asInterface) class CorruptInputError_static_extension {
    @:keep
    static public function error( _e:CorruptInputError):stdgo.GoString {
        @:recv var _e:CorruptInputError = _e;
        return (("illegal base64 data at input byte " : stdgo.GoString) + stdgo._internal.strconv.Strconv.formatInt((_e : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__();
    }
}

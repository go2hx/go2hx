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
var stdEncoding : Ref<Encoding> = newEncoding(((("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" : GoString))));
var urlencoding : Ref<Encoding> = newEncoding(((("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_" : GoString))));
var rawStdEncoding : Ref<Encoding> = stdEncoding.withPadding(((-1 : GoInt32)));
var rawURLEncoding : Ref<Encoding> = urlencoding.withPadding(((-1 : GoInt32)));
var _pairs : Slice<T_testpair> = ((new Slice<T_testpair>(
((new T_testpair((((haxe.io.Bytes.ofHex("14") : GoString)) + ((haxe.io.Bytes.ofHex("fb") : GoString)) + ((haxe.io.Bytes.ofHex("9c") : GoString)) + ((haxe.io.Bytes.ofHex("03") : GoString)) + ((haxe.io.Bytes.ofHex("d9") : GoString)) + ((haxe.io.Bytes.ofHex("7e") : GoString))), ((("FPucA9l+" : GoString)))) : T_testpair)),
((new T_testpair((((haxe.io.Bytes.ofHex("14") : GoString)) + ((haxe.io.Bytes.ofHex("fb") : GoString)) + ((haxe.io.Bytes.ofHex("9c") : GoString)) + ((haxe.io.Bytes.ofHex("03") : GoString)) + ((haxe.io.Bytes.ofHex("d9") : GoString))), ((("FPucA9k=" : GoString)))) : T_testpair)),
((new T_testpair((((haxe.io.Bytes.ofHex("14") : GoString)) + ((haxe.io.Bytes.ofHex("fb") : GoString)) + ((haxe.io.Bytes.ofHex("9c") : GoString)) + ((haxe.io.Bytes.ofHex("03") : GoString))), ((("FPucAw==" : GoString)))) : T_testpair)),
((new T_testpair(((("" : GoString))), ((("" : GoString)))) : T_testpair)),
((new T_testpair(((("f" : GoString))), ((("Zg==" : GoString)))) : T_testpair)),
((new T_testpair(((("fo" : GoString))), ((("Zm8=" : GoString)))) : T_testpair)),
((new T_testpair(((("foo" : GoString))), ((("Zm9v" : GoString)))) : T_testpair)),
((new T_testpair(((("foob" : GoString))), ((("Zm9vYg==" : GoString)))) : T_testpair)),
((new T_testpair(((("fooba" : GoString))), ((("Zm9vYmE=" : GoString)))) : T_testpair)),
((new T_testpair(((("foobar" : GoString))), ((("Zm9vYmFy" : GoString)))) : T_testpair)),
((new T_testpair(((("sure." : GoString))), ((("c3VyZS4=" : GoString)))) : T_testpair)),
((new T_testpair(((("sure" : GoString))), ((("c3VyZQ==" : GoString)))) : T_testpair)),
((new T_testpair(((("sur" : GoString))), ((("c3Vy" : GoString)))) : T_testpair)),
((new T_testpair(((("su" : GoString))), ((("c3U=" : GoString)))) : T_testpair)),
((new T_testpair(((("leasure." : GoString))), ((("bGVhc3VyZS4=" : GoString)))) : T_testpair)),
((new T_testpair(((("easure." : GoString))), ((("ZWFzdXJlLg==" : GoString)))) : T_testpair)),
((new T_testpair(((("asure." : GoString))), ((("YXN1cmUu" : GoString)))) : T_testpair)),
((new T_testpair(((("sure." : GoString))), ((("c3VyZS4=" : GoString)))) : T_testpair))) : Slice<T_testpair>));
var _funnyEncoding : Ref<Encoding> = newEncoding(((("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" : GoString)))).withPadding(((((((("@" : GoString))).code : GoRune)) : GoRune)));
var _encodingTests : Slice<T_encodingTest> = ((new Slice<T_encodingTest>(((new T_encodingTest(stdEncoding, _stdRef) : T_encodingTest)), ((new T_encodingTest(urlencoding, _urlRef) : T_encodingTest)), ((new T_encodingTest(rawStdEncoding, _rawRef) : T_encodingTest)), ((new T_encodingTest(rawURLEncoding, _rawURLRef) : T_encodingTest)), ((new T_encodingTest(_funnyEncoding, _funnyRef) : T_encodingTest)), ((new T_encodingTest(stdEncoding.strict(), _stdRef) : T_encodingTest)), ((new T_encodingTest(urlencoding.strict(), _urlRef) : T_encodingTest)), ((new T_encodingTest(rawStdEncoding.strict(), _rawRef) : T_encodingTest)), ((new T_encodingTest(rawURLEncoding.strict(), _rawURLRef) : T_encodingTest)), ((new T_encodingTest(_funnyEncoding.strict(), _funnyRef) : T_encodingTest))) : Slice<T_encodingTest>));
var _bigtest : T_testpair = ((new T_testpair(((("Twas brillig, and the slithy toves" : GoString))), ((("VHdhcyBicmlsbGlnLCBhbmQgdGhlIHNsaXRoeSB0b3Zlcw==" : GoString)))) : T_testpair));
@:structInit @:using(stdgo.encoding.base64.Base64.Encoding_static_extension) class Encoding {
    @:keep
    public function decodedLen(_n:GoInt):GoInt {
        var _enc = this;
        _enc;
        if (_enc._padChar == ((-1 : GoInt32))) {
            return (_n * ((6 : GoInt))) / ((8 : GoInt));
        };
        return (_n / ((4 : GoInt))) * ((3 : GoInt));
    }
    @:keep
    public function decode(_dst:Slice<GoByte>, _src:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _enc = this;
        _enc;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if ((_src != null ? _src.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        _enc._decodeMap;
        var _si:GoInt = ((0 : GoInt));
        while ((false && (((_src != null ? _src.length : ((0 : GoInt))) - _si) >= ((8 : GoInt)))) && (((_dst != null ? _dst.length : ((0 : GoInt))) - _n) >= ((8 : GoInt)))) {
            var _src2:Slice<GoUInt8> = ((_src.__slice__(_si, _si + ((8 : GoInt))) : Slice<GoUInt8>));
            {
                var __tmp__ = _assemble64((_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((0 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((1 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((2 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((3 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((4 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((5 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((6 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((7 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8)))), _dn:GoUInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    stdgo.encoding.binary.Binary.bigEndian.putUint64(((_dst.__slice__(_n) : Slice<GoUInt8>)), _dn);
                    _n = _n + (((6 : GoInt)));
                    _si = _si + (((8 : GoInt)));
                } else {
                    var _ninc:GoInt = ((0 : GoInt));
                    {
                        var __tmp__ = _enc._decodeQuantum(((_dst.__slice__(_n) : Slice<GoUInt8>)), _src, _si);
                        _si = __tmp__._0;
                        _ninc = __tmp__._1;
                        _err = __tmp__._2;
                    };
                    _n = _n + (_ninc);
                    if (_err != null) {
                        return { _0 : _n, _1 : _err };
                    };
                };
            };
        };
        while ((((_src != null ? _src.length : ((0 : GoInt))) - _si) >= ((4 : GoInt))) && (((_dst != null ? _dst.length : ((0 : GoInt))) - _n) >= ((4 : GoInt)))) {
            var _src2:Slice<GoUInt8> = ((_src.__slice__(_si, _si + ((4 : GoInt))) : Slice<GoUInt8>));
            {
                var __tmp__ = _assemble32((_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((0 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((1 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((2 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((3 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8)))), _dn:GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    stdgo.encoding.binary.Binary.bigEndian.putUint32(((_dst.__slice__(_n) : Slice<GoUInt8>)), _dn);
                    _n = _n + (((3 : GoInt)));
                    _si = _si + (((4 : GoInt)));
                } else {
                    var _ninc:GoInt = ((0 : GoInt));
                    {
                        var __tmp__ = _enc._decodeQuantum(((_dst.__slice__(_n) : Slice<GoUInt8>)), _src, _si);
                        _si = __tmp__._0;
                        _ninc = __tmp__._1;
                        _err = __tmp__._2;
                    };
                    _n = _n + (_ninc);
                    if (_err != null) {
                        return { _0 : _n, _1 : _err };
                    };
                };
            };
        };
        while (_si < (_src != null ? _src.length : ((0 : GoInt)))) {
            var _ninc:GoInt = ((0 : GoInt));
            {
                var __tmp__ = _enc._decodeQuantum(((_dst.__slice__(_n) : Slice<GoUInt8>)), _src, _si);
                _si = __tmp__._0;
                _ninc = __tmp__._1;
                _err = __tmp__._2;
            };
            _n = _n + (_ninc);
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public function decodeString(_s:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _enc = this;
        _enc;
        var _dbuf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_enc.decodedLen((_s != null ? _s.length : ((0 : GoInt)))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = _enc.decode(_dbuf, ((_s : Slice<GoByte>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : ((_dbuf.__slice__(0, _n) : Slice<GoUInt8>)), _1 : _err };
    }
    @:keep
    public function _decodeQuantum(_dst:Slice<GoByte>, _src:Slice<GoByte>, _si:GoInt):{ var _0 : GoInt; var _1 : GoInt; var _2 : Error; } {
        var _enc = this;
        _enc;
        var _nsi:GoInt = ((0 : GoInt)), _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _dbuf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]);
        var _dlen:GoInt = ((4 : GoInt));
        _enc._decodeMap;
        {
            var _j:GoInt = ((0 : GoInt));
            Go.cfor(_j < (_dbuf != null ? _dbuf.length : ((0 : GoInt))), _j++, {
                if ((_src != null ? _src.length : ((0 : GoInt))) == _si) {
                    if (_j == ((0 : GoInt))) {
                        return { _0 : _si, _1 : ((0 : GoInt)), _2 : ((null : stdgo.Error)) };
                    } else if (_j == ((1 : GoInt)) || _enc._padChar != ((-1 : GoInt32))) {
                        return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError_wrapper(Go.pointer((((_si - _j) : CorruptInputError)))) };
                    };
                    _dlen = _j;
                    break;
                };
                var _in:GoUInt8 = (_src != null ? _src[_si] : ((0 : GoUInt8)));
                _si++;
                var _out:GoUInt8 = (_enc._decodeMap != null ? _enc._decodeMap[_in] : ((0 : GoUInt8)));
                if (_out != ((255 : GoUInt8))) {
                    if (_dbuf != null) _dbuf[_j] = _out;
                    continue;
                };
                if ((_in == ((((("\n" : GoString))).code : GoRune))) || (_in == ((((("\r" : GoString))).code : GoRune)))) {
                    _j--;
                    continue;
                };
                if (((_in : GoRune)) != _enc._padChar) {
                    return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError_wrapper(Go.pointer((((_si - ((1 : GoInt))) : CorruptInputError)))) };
                };
                if (_j == ((0 : GoInt)) || _j == ((1 : GoInt))) {
                    return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError_wrapper(Go.pointer((((_si - ((1 : GoInt))) : CorruptInputError)))) };
                } else if (_j == ((2 : GoInt))) {
                    while ((_si < (_src != null ? _src.length : ((0 : GoInt)))) && (((_src != null ? _src[_si] : ((0 : GoUInt8))) == ((((("\n" : GoString))).code : GoRune))) || ((_src != null ? _src[_si] : ((0 : GoUInt8))) == ((((("\r" : GoString))).code : GoRune))))) {
                        _si++;
                    };
                    if (_si == (_src != null ? _src.length : ((0 : GoInt)))) {
                        return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError_wrapper(Go.pointer((((_src != null ? _src.length : ((0 : GoInt))) : CorruptInputError)))) };
                    };
                    if ((((_src != null ? _src[_si] : ((0 : GoUInt8))) : GoRune)) != _enc._padChar) {
                        return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError_wrapper(Go.pointer((((_si - ((1 : GoInt))) : CorruptInputError)))) };
                    };
                    _si++;
                };
                while ((_si < (_src != null ? _src.length : ((0 : GoInt)))) && (((_src != null ? _src[_si] : ((0 : GoUInt8))) == ((((("\n" : GoString))).code : GoRune))) || ((_src != null ? _src[_si] : ((0 : GoUInt8))) == ((((("\r" : GoString))).code : GoRune))))) {
                    _si++;
                };
                if (_si < (_src != null ? _src.length : ((0 : GoInt)))) {
                    _err = new CorruptInputError_wrapper(Go.pointer(((_si : CorruptInputError))));
                };
                _dlen = _j;
                break;
            });
        };
        var _val:GoUInt = ((((((_dbuf != null ? _dbuf[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt)) << ((18 : GoUnTypedInt))) | ((((_dbuf != null ? _dbuf[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt)) << ((12 : GoUnTypedInt)))) | ((((_dbuf != null ? _dbuf[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt)) << ((6 : GoUnTypedInt)))) | (((_dbuf != null ? _dbuf[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt));
        {
            final __tmp__0 = (((_val >> ((0 : GoUnTypedInt))) : GoByte));
            final __tmp__1 = (((_val >> ((8 : GoUnTypedInt))) : GoByte));
            final __tmp__2 = (((_val >> ((16 : GoUnTypedInt))) : GoByte));
            if (_dbuf != null) _dbuf[((2 : GoInt))] = __tmp__0;
            if (_dbuf != null) _dbuf[((1 : GoInt))] = __tmp__1;
            if (_dbuf != null) _dbuf[((0 : GoInt))] = __tmp__2;
        };
        {
            var __switchIndex__ = -1;
            while (true) {
                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _dlen == ((4 : GoInt)))) {
                    if (_dst != null) _dst[((2 : GoInt))] = (_dbuf != null ? _dbuf[((2 : GoInt))] : ((0 : GoUInt8)));
                    if (_dbuf != null) _dbuf[((2 : GoInt))] = ((0 : GoUInt8));
                    @:fallthrough {
                        __switchIndex__ = 1;
                        continue;
                    };
                    break;
                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _dlen == ((3 : GoInt)))) {
                    if (_dst != null) _dst[((1 : GoInt))] = (_dbuf != null ? _dbuf[((1 : GoInt))] : ((0 : GoUInt8)));
                    if (_enc._strict && ((_dbuf != null ? _dbuf[((2 : GoInt))] : ((0 : GoUInt8))) != ((0 : GoUInt8)))) {
                        return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError_wrapper(Go.pointer((((_si - ((1 : GoInt))) : CorruptInputError)))) };
                    };
                    if (_dbuf != null) _dbuf[((1 : GoInt))] = ((0 : GoUInt8));
                    @:fallthrough {
                        __switchIndex__ = 2;
                        continue;
                    };
                    break;
                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _dlen == ((2 : GoInt)))) {
                    if (_dst != null) _dst[((0 : GoInt))] = (_dbuf != null ? _dbuf[((0 : GoInt))] : ((0 : GoUInt8)));
                    if (_enc._strict && (((_dbuf != null ? _dbuf[((1 : GoInt))] : ((0 : GoUInt8))) != ((0 : GoUInt8))) || ((_dbuf != null ? _dbuf[((2 : GoInt))] : ((0 : GoUInt8))) != ((0 : GoUInt8))))) {
                        return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError_wrapper(Go.pointer((((_si - ((2 : GoInt))) : CorruptInputError)))) };
                    };
                    break;
                    break;
                };
                break;
            };
        };
        return { _0 : _si, _1 : _dlen - ((1 : GoInt)), _2 : _err };
    }
    @:keep
    public function encodedLen(_n:GoInt):GoInt {
        var _enc = this;
        _enc;
        if (_enc._padChar == ((-1 : GoInt32))) {
            return ((_n * ((8 : GoInt))) + ((5 : GoInt))) / ((6 : GoInt));
        };
        return ((_n + ((2 : GoInt))) / ((3 : GoInt))) * ((4 : GoInt));
    }
    @:keep
    public function encodeToString(_src:Slice<GoByte>):GoString {
        var _enc = this;
        _enc;
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_enc.encodedLen((_src != null ? _src.length : ((0 : GoInt)))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _enc.encode(_buf, _src);
        return ((_buf : GoString));
    }
    @:keep
    public function encode(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        var _enc = this;
        _enc;
        if ((_src != null ? _src.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return;
        };
        _enc._encode;
        var _di:GoInt = ((0 : GoInt)), _si:GoInt = ((0 : GoInt));
        var _n:GoInt = ((_src != null ? _src.length : ((0 : GoInt))) / ((3 : GoInt))) * ((3 : GoInt));
        while (_si < _n) {
            var _val:GoUInt = (((((_src != null ? _src[_si + ((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt)) << ((16 : GoUnTypedInt))) | ((((_src != null ? _src[_si + ((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt)) << ((8 : GoUnTypedInt)))) | (((_src != null ? _src[_si + ((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt));
            if (_dst != null) _dst[_di + ((0 : GoInt))] = (_enc._encode != null ? _enc._encode[(_val >> ((18 : GoUnTypedInt))) & ((63 : GoUInt))] : ((0 : GoUInt8)));
            if (_dst != null) _dst[_di + ((1 : GoInt))] = (_enc._encode != null ? _enc._encode[(_val >> ((12 : GoUnTypedInt))) & ((63 : GoUInt))] : ((0 : GoUInt8)));
            if (_dst != null) _dst[_di + ((2 : GoInt))] = (_enc._encode != null ? _enc._encode[(_val >> ((6 : GoUnTypedInt))) & ((63 : GoUInt))] : ((0 : GoUInt8)));
            if (_dst != null) _dst[_di + ((3 : GoInt))] = (_enc._encode != null ? _enc._encode[_val & ((63 : GoUInt))] : ((0 : GoUInt8)));
            _si = _si + (((3 : GoInt)));
            _di = _di + (((4 : GoInt)));
        };
        var _remain:GoInt = (_src != null ? _src.length : ((0 : GoInt))) - _si;
        if (_remain == ((0 : GoInt))) {
            return;
        };
        var _val:GoUInt = (((_src != null ? _src[_si + ((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt)) << ((16 : GoUnTypedInt));
        if (_remain == ((2 : GoInt))) {
            _val = _val | ((((_src != null ? _src[_si + ((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt)) << ((8 : GoUnTypedInt)));
        };
        if (_dst != null) _dst[_di + ((0 : GoInt))] = (_enc._encode != null ? _enc._encode[(_val >> ((18 : GoUnTypedInt))) & ((63 : GoUInt))] : ((0 : GoUInt8)));
        if (_dst != null) _dst[_di + ((1 : GoInt))] = (_enc._encode != null ? _enc._encode[(_val >> ((12 : GoUnTypedInt))) & ((63 : GoUInt))] : ((0 : GoUInt8)));
        if (_remain == ((2 : GoInt))) {
            if (_dst != null) _dst[_di + ((2 : GoInt))] = (_enc._encode != null ? _enc._encode[(_val >> ((6 : GoUnTypedInt))) & ((63 : GoUInt))] : ((0 : GoUInt8)));
            if (_enc._padChar != ((-1 : GoInt32))) {
                if (_dst != null) _dst[_di + ((3 : GoInt))] = ((_enc._padChar : GoByte));
            };
        } else if (_remain == ((1 : GoInt))) {
            if (_enc._padChar != ((-1 : GoInt32))) {
                if (_dst != null) _dst[_di + ((2 : GoInt))] = ((_enc._padChar : GoByte));
                if (_dst != null) _dst[_di + ((3 : GoInt))] = ((_enc._padChar : GoByte));
            };
        };
    }
    @:keep
    public function strict():Encoding {
        var _enc = this;
        (_enc == null ? null : _enc.__copy__());
        _enc._strict = true;
        return _enc;
    }
    @:keep
    public function withPadding(_padding:GoRune):Encoding {
        var _enc = this;
        (_enc == null ? null : _enc.__copy__());
        if (((_padding == ((((("\r" : GoString))).code : GoRune))) || (_padding == ((((("\n" : GoString))).code : GoRune)))) || (_padding > ((255 : GoInt32)))) {
            throw Go.toInterface(((("invalid padding" : GoString))));
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_enc._encode != null ? _enc._encode.length : ((0 : GoInt))), _i++, {
                if ((((_enc._encode != null ? _enc._encode[_i] : ((0 : GoUInt8))) : GoRune)) == _padding) {
                    throw Go.toInterface(((("padding contained in alphabet" : GoString))));
                };
            });
        };
        _enc._padChar = _padding;
        return _enc;
    }
    public var _encode : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 64) ((0 : GoUInt8))]);
    public var _decodeMap : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 256) ((0 : GoUInt8))]);
    public var _padChar : GoInt32 = ((0 : GoInt32));
    public var _strict : Bool = false;
    public function new(?_encode:GoArray<GoUInt8>, ?_decodeMap:GoArray<GoUInt8>, ?_padChar:GoInt32, ?_strict:Bool) {
        if (_encode != null) this._encode = _encode;
        if (_decodeMap != null) this._decodeMap = _decodeMap;
        if (_padChar != null) this._padChar = _padChar;
        if (_strict != null) this._strict = _strict;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Encoding(_encode, _decodeMap, _padChar, _strict);
    }
}
@:structInit @:using(stdgo.encoding.base64.Base64.T_encoder_static_extension) class T_encoder {
    @:keep
    public function close():Error {
        var _e = this;
        _e;
        if ((_e._err == null) && (_e._nbuf > ((0 : GoInt)))) {
            _e._enc.encode(((_e._out.__slice__(0) : Slice<GoUInt8>)), ((_e._buf.__slice__(0, _e._nbuf) : Slice<GoUInt8>)));
            {
                var __tmp__ = _e._w.write(((_e._out.__slice__(0, _e._enc.encodedLen(_e._nbuf)) : Slice<GoUInt8>)));
                _e._err = __tmp__._1;
            };
            _e._nbuf = ((0 : GoInt));
        };
        return _e._err;
    }
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _e = this;
        _e;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_e._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _e._err };
        };
        if (_e._nbuf > ((0 : GoInt))) {
            var _i:GoInt = ((0 : GoInt));
            {
                _i = ((0 : GoInt));
                Go.cfor((_i < (_p != null ? _p.length : ((0 : GoInt)))) && (_e._nbuf < ((3 : GoInt))), _i++, {
                    if (_e._buf != null) _e._buf[_e._nbuf] = (_p != null ? _p[_i] : ((0 : GoUInt8)));
                    _e._nbuf++;
                });
            };
            _n = _n + (_i);
            _p = ((_p.__slice__(_i) : Slice<GoUInt8>));
            if (_e._nbuf < ((3 : GoInt))) {
                return { _0 : _n, _1 : _err };
            };
            _e._enc.encode(((_e._out.__slice__(0) : Slice<GoUInt8>)), ((_e._buf.__slice__(0) : Slice<GoUInt8>)));
            {
                {
                    var __tmp__ = _e._w.write(((_e._out.__slice__(0, ((4 : GoInt))) : Slice<GoUInt8>)));
                    _e._err = __tmp__._1;
                };
                if (_e._err != null) {
                    return { _0 : _n, _1 : _e._err };
                };
            };
            _e._nbuf = ((0 : GoInt));
        };
        while ((_p != null ? _p.length : ((0 : GoInt))) >= ((3 : GoInt))) {
            var _nn:GoInt = ((768 : GoInt));
            if (_nn > (_p != null ? _p.length : ((0 : GoInt)))) {
                _nn = (_p != null ? _p.length : ((0 : GoInt)));
                _nn = _nn - (_nn % ((3 : GoInt)));
            };
            _e._enc.encode(((_e._out.__slice__(0) : Slice<GoUInt8>)), ((_p.__slice__(0, _nn) : Slice<GoUInt8>)));
            {
                {
                    var __tmp__ = _e._w.write(((_e._out.__slice__(((0 : GoInt)), (_nn / ((3 : GoInt))) * ((4 : GoInt))) : Slice<GoUInt8>)));
                    _e._err = __tmp__._1;
                };
                if (_e._err != null) {
                    return { _0 : _n, _1 : _e._err };
                };
            };
            _n = _n + (_nn);
            _p = ((_p.__slice__(_nn) : Slice<GoUInt8>));
        };
        Go.copySlice(((_e._buf.__slice__(0) : Slice<GoUInt8>)), _p);
        _e._nbuf = (_p != null ? _p.length : ((0 : GoInt)));
        _n = _n + ((_p != null ? _p.length : ((0 : GoInt))));
        return { _0 : _n, _1 : _err };
    }
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _enc : Ref<Encoding> = ((null : Ref<Encoding>));
    public var _w : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var _buf : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 3) ((0 : GoUInt8))]);
    public var _nbuf : GoInt = ((0 : GoInt));
    public var _out : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 1024) ((0 : GoUInt8))]);
    public function new(?_err:stdgo.Error, ?_enc:Ref<Encoding>, ?_w:stdgo.io.Io.Writer, ?_buf:GoArray<GoUInt8>, ?_nbuf:GoInt, ?_out:GoArray<GoUInt8>) {
        if (_err != null) this._err = _err;
        if (_enc != null) this._enc = _enc;
        if (_w != null) this._w = _w;
        if (_buf != null) this._buf = _buf;
        if (_nbuf != null) this._nbuf = _nbuf;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_encoder(_err, _enc, _w, _buf, _nbuf, _out);
    }
}
@:structInit @:using(stdgo.encoding.base64.Base64.T_decoder_static_extension) class T_decoder {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _d = this;
        _d;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if ((_d._out != null ? _d._out.length : ((0 : GoInt))) > ((0 : GoInt))) {
            _n = Go.copySlice(_p, _d._out);
            _d._out = ((_d._out.__slice__(_n) : Slice<GoUInt8>));
            return { _0 : _n, _1 : ((null : stdgo.Error)) };
        };
        if (_d._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _d._err };
        };
        while ((_d._nbuf < ((4 : GoInt))) && (_d._readErr == null)) {
            var _nn:GoInt = ((_p != null ? _p.length : ((0 : GoInt))) / ((3 : GoInt))) * ((4 : GoInt));
            if (_nn < ((4 : GoInt))) {
                _nn = ((4 : GoInt));
            };
            if (_nn > (_d._buf != null ? _d._buf.length : ((0 : GoInt)))) {
                _nn = (_d._buf != null ? _d._buf.length : ((0 : GoInt)));
            };
            {
                var __tmp__ = _d._r.read(((_d._buf.__slice__(_d._nbuf, _nn) : Slice<GoUInt8>)));
                _nn = __tmp__._0;
                _d._readErr = __tmp__._1;
            };
            _d._nbuf = _d._nbuf + (_nn);
        };
        if (_d._nbuf < ((4 : GoInt))) {
            if ((_d._enc._padChar == ((-1 : GoInt32))) && (_d._nbuf > ((0 : GoInt)))) {
                var _nw:GoInt = ((0 : GoInt));
                {
                    var __tmp__ = _d._enc.decode(((_d._outbuf.__slice__(0) : Slice<GoUInt8>)), ((_d._buf.__slice__(0, _d._nbuf) : Slice<GoUInt8>)));
                    _nw = __tmp__._0;
                    _d._err = __tmp__._1;
                };
                _d._nbuf = ((0 : GoInt));
                _d._out = ((_d._outbuf.__slice__(0, _nw) : Slice<GoUInt8>));
                _n = Go.copySlice(_p, _d._out);
                _d._out = ((_d._out.__slice__(_n) : Slice<GoUInt8>));
                if ((_n > ((0 : GoInt))) || (((_p != null ? _p.length : ((0 : GoInt))) == ((0 : GoInt))) && ((_d._out != null ? _d._out.length : ((0 : GoInt))) > ((0 : GoInt))))) {
                    return { _0 : _n, _1 : ((null : stdgo.Error)) };
                };
                if (_d._err != null) {
                    return { _0 : ((0 : GoInt)), _1 : _d._err };
                };
            };
            _d._err = _d._readErr;
            if ((_d._err == stdgo.io.Io.eof) && (_d._nbuf > ((0 : GoInt)))) {
                _d._err = stdgo.io.Io.errUnexpectedEOF;
            };
            return { _0 : ((0 : GoInt)), _1 : _d._err };
        };
        var _nr:GoInt = (_d._nbuf / ((4 : GoInt))) * ((4 : GoInt));
        var _nw:GoInt = (_d._nbuf / ((4 : GoInt))) * ((3 : GoInt));
        if (_nw > (_p != null ? _p.length : ((0 : GoInt)))) {
            {
                var __tmp__ = _d._enc.decode(((_d._outbuf.__slice__(0) : Slice<GoUInt8>)), ((_d._buf.__slice__(0, _nr) : Slice<GoUInt8>)));
                _nw = __tmp__._0;
                _d._err = __tmp__._1;
            };
            _d._out = ((_d._outbuf.__slice__(0, _nw) : Slice<GoUInt8>));
            _n = Go.copySlice(_p, _d._out);
            _d._out = ((_d._out.__slice__(_n) : Slice<GoUInt8>));
        } else {
            {
                var __tmp__ = _d._enc.decode(_p, ((_d._buf.__slice__(0, _nr) : Slice<GoUInt8>)));
                _n = __tmp__._0;
                _d._err = __tmp__._1;
            };
        };
        _d._nbuf = _d._nbuf - (_nr);
        Go.copySlice(((_d._buf.__slice__(0, _d._nbuf) : Slice<GoUInt8>)), ((_d._buf.__slice__(_nr) : Slice<GoUInt8>)));
        return { _0 : _n, _1 : _d._err };
    }
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _readErr : stdgo.Error = ((null : stdgo.Error));
    public var _enc : Ref<Encoding> = ((null : Ref<Encoding>));
    public var _r : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public var _buf : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 1024) ((0 : GoUInt8))]);
    public var _nbuf : GoInt = ((0 : GoInt));
    public var _out : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _outbuf : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 768) ((0 : GoUInt8))]);
    public function new(?_err:stdgo.Error, ?_readErr:stdgo.Error, ?_enc:Ref<Encoding>, ?_r:stdgo.io.Io.Reader, ?_buf:GoArray<GoUInt8>, ?_nbuf:GoInt, ?_out:Slice<GoUInt8>, ?_outbuf:GoArray<GoUInt8>) {
        if (_err != null) this._err = _err;
        if (_readErr != null) this._readErr = _readErr;
        if (_enc != null) this._enc = _enc;
        if (_r != null) this._r = _r;
        if (_buf != null) this._buf = _buf;
        if (_nbuf != null) this._nbuf = _nbuf;
        if (_out != null) this._out = _out;
        if (_outbuf != null) this._outbuf = _outbuf;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_decoder(_err, _readErr, _enc, _r, _buf, _nbuf, _out, _outbuf);
    }
}
@:structInit @:using(stdgo.encoding.base64.Base64.T_newlineFilteringReader_static_extension) class T_newlineFilteringReader {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = this;
        _r;
        var __tmp__ = _r._wrapped.read(_p), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        while (_n > ((0 : GoInt))) {
            var _offset:GoInt = ((0 : GoInt));
            for (_i => _b in ((_p.__slice__(0, _n) : Slice<GoUInt8>))) {
                if ((_b != ((((("\r" : GoString))).code : GoRune))) && (_b != ((((("\n" : GoString))).code : GoRune)))) {
                    if (_i != _offset) {
                        if (_p != null) _p[_offset] = _b;
                    };
                    _offset++;
                };
            };
            if (_offset > ((0 : GoInt))) {
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
    public var _wrapped : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public function new(?_wrapped:stdgo.io.Io.Reader) {
        if (_wrapped != null) this._wrapped = _wrapped;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_newlineFilteringReader(_wrapped);
    }
}
@:structInit class T_testpair {
    public var _decoded : GoString = (("" : GoString));
    public var _encoded : GoString = (("" : GoString));
    public function new(?_decoded:GoString, ?_encoded:GoString) {
        if (_decoded != null) this._decoded = _decoded;
        if (_encoded != null) this._encoded = _encoded;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_testpair(_decoded, _encoded);
    }
}
@:structInit class T_encodingTest {
    public var _enc : Ref<Encoding> = ((null : Ref<Encoding>));
    public var _conv : GoString -> GoString = null;
    public function new(?_enc:Ref<Encoding>, ?_conv:GoString -> GoString) {
        if (_enc != null) this._enc = _enc;
        if (_conv != null) this._conv = _conv;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_encodingTest(_enc, _conv);
    }
}
@:structInit class T_nextRead {
    public var _n : GoInt = ((0 : GoInt));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_n:GoInt, ?_err:stdgo.Error) {
        if (_n != null) this._n = _n;
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_nextRead(_n, _err);
    }
}
@:structInit @:using(stdgo.encoding.base64.Base64.T_faultInjectReader_static_extension) class T_faultInjectReader {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = this;
        _r;
        var _nr:T_nextRead = (_r._nextc.__get__() == null ? null : _r._nextc.__get__().__copy__());
        if ((_p != null ? _p.length : ((0 : GoInt))) > _nr._n) {
            _p = ((_p.__slice__(0, _nr._n) : Slice<GoUInt8>));
        };
        var _n:GoInt = Go.copySlice(_p, _r._source);
        _r._source = ((_r._source.__slice__(_n) : GoString));
        return { _0 : _n, _1 : _nr._err };
    }
    public var _source : GoString = (("" : GoString));
    public var _nextc : Chan<T_nextRead> = ((null : Chan<T_nextRead>));
    public function new(?_source:GoString, ?_nextc:Chan<T_nextRead>) {
        if (_source != null) this._source = _source;
        if (_nextc != null) this._nextc = _nextc;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_faultInjectReader(_source, _nextc);
    }
}
@:structInit @:local class T__struct_0 {
    public var _input : GoString = (("" : GoString));
    public var _offset : GoInt = ((0 : GoInt));
    public function toString():String return "{" + Go.string(_input) + " " + Go.string(_offset) + "}";
    public function new(?_input:GoString, ?_offset:GoInt, ?toString) {
        if (_input != null) this._input = _input;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0(_input, _offset);
    }
}
@:structInit @:local class T__struct_1 {
    public var _enc : Ref<Encoding> = ((null : Ref<Encoding>));
    public var _n : GoInt = ((0 : GoInt));
    public var _want : GoInt = ((0 : GoInt));
    public function toString():String return "{" + Go.string(_enc) + " " + Go.string(_n) + " " + Go.string(_want) + "}";
    public function new(?_enc:Ref<Encoding>, ?_n:GoInt, ?_want:GoInt, ?toString) {
        if (_enc != null) this._enc = _enc;
        if (_n != null) this._n = _n;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_1(_enc, _n, _want);
    }
}
@:named @:using(stdgo.encoding.base64.Base64.CorruptInputError_static_extension) typedef CorruptInputError = GoInt64;
function newEncoding(_encoder:GoString):Encoding {
        if ((_encoder != null ? _encoder.length : ((0 : GoInt))) != ((64 : GoInt))) {
            throw Go.toInterface(((("encoding alphabet is not 64-bytes long" : GoString))));
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_encoder != null ? _encoder.length : ((0 : GoInt))), _i++, {
                if (((_encoder != null ? _encoder[_i] : ((0 : GoUInt8))) == ((((("\n" : GoString))).code : GoRune))) || ((_encoder != null ? _encoder[_i] : ((0 : GoUInt8))) == ((((("\r" : GoString))).code : GoRune)))) {
                    throw Go.toInterface(((("encoding alphabet contains newline character" : GoString))));
                };
            });
        };
        var _e:Ref<Encoding> = new Encoding();
        _e._padChar = ((61 : GoInt32));
        Go.copySlice(((_e._encode.__slice__(0) : Slice<GoUInt8>)), _encoder);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_e._decodeMap != null ? _e._decodeMap.length : ((0 : GoInt))), _i++, {
                if (_e._decodeMap != null) _e._decodeMap[_i] = ((255 : GoUInt8));
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_encoder != null ? _encoder.length : ((0 : GoInt))), _i++, {
                if (_e._decodeMap != null) _e._decodeMap[(_encoder != null ? _encoder[_i] : ((0 : GoUInt8)))] = ((_i : GoByte));
            });
        };
        return _e;
    }
function newEncoder(_enc:Encoding, _w:stdgo.io.Io.Writer):stdgo.io.Io.WriteCloser {
        return (({ _enc : _enc, _w : _w, _err : ((null : stdgo.Error)), _buf : new GoArray<GoUInt8>(...[for (i in 0 ... 3) ((0 : GoUInt8))]), _nbuf : 0, _out : new GoArray<GoUInt8>(...[for (i in 0 ... 1024) ((0 : GoUInt8))]) } : T_encoder));
    }
function _assemble32(_n1:GoByte, _n2:GoByte, _n3:GoByte, _n4:GoByte):{ var _0 : GoUInt32; var _1 : Bool; } {
        var _dn:GoUInt32 = ((0 : GoUInt32)), _ok:Bool = false;
        if ((((_n1 | _n2) | _n3) | _n4) == ((255 : GoUInt8))) {
            return { _0 : ((0 : GoUInt32)), _1 : false };
        };
        return { _0 : (((((_n1 : GoUInt32)) << ((26 : GoUnTypedInt))) | (((_n2 : GoUInt32)) << ((20 : GoUnTypedInt)))) | (((_n3 : GoUInt32)) << ((14 : GoUnTypedInt)))) | (((_n4 : GoUInt32)) << ((8 : GoUnTypedInt))), _1 : true };
    }
function _assemble64(_n1:GoByte, _n2:GoByte, _n3:GoByte, _n4:GoByte, _n5:GoByte, _n6:GoByte, _n7:GoByte, _n8:GoByte):{ var _0 : GoUInt64; var _1 : Bool; } {
        var _dn:GoUInt64 = ((0 : GoUInt64)), _ok:Bool = false;
        if ((((((((_n1 | _n2) | _n3) | _n4) | _n5) | _n6) | _n7) | _n8) == ((255 : GoUInt8))) {
            return { _0 : ((0 : GoUInt64)), _1 : false };
        };
        return { _0 : (((((((((_n1 : GoUInt64)) << ((58 : GoUnTypedInt))) | (((_n2 : GoUInt64)) << ((52 : GoUnTypedInt)))) | (((_n3 : GoUInt64)) << ((46 : GoUnTypedInt)))) | (((_n4 : GoUInt64)) << ((40 : GoUnTypedInt)))) | (((_n5 : GoUInt64)) << ((34 : GoUnTypedInt)))) | (((_n6 : GoUInt64)) << ((28 : GoUnTypedInt)))) | (((_n7 : GoUInt64)) << ((22 : GoUnTypedInt)))) | (((_n8 : GoUInt64)) << ((16 : GoUnTypedInt))), _1 : true };
    }
function newDecoder(_enc:Encoding, _r:stdgo.io.Io.Reader):stdgo.io.Io.Reader {
        return (({ _enc : _enc, _r : ((new T_newlineFilteringReader(_r) : T_newlineFilteringReader)), _err : ((null : stdgo.Error)), _readErr : ((null : stdgo.Error)), _buf : new GoArray<GoUInt8>(...[for (i in 0 ... 1024) ((0 : GoUInt8))]), _nbuf : 0, _out : ((null : Slice<GoUInt8>)), _outbuf : new GoArray<GoUInt8>(...[for (i in 0 ... 768) ((0 : GoUInt8))]) } : T_decoder));
    }
function _stdRef(_ref:GoString):GoString {
        return _ref;
    }
function _urlRef(_ref:GoString):GoString {
        _ref = stdgo.strings.Strings.replaceAll(_ref, ((("+" : GoString))), ((("-" : GoString))));
        _ref = stdgo.strings.Strings.replaceAll(_ref, ((("/" : GoString))), ((("_" : GoString))));
        return _ref;
    }
function _rawRef(_ref:GoString):GoString {
        return stdgo.strings.Strings.trimRight(_ref, ((("=" : GoString))));
    }
function _rawURLRef(_ref:GoString):GoString {
        return _rawRef(_urlRef(_ref));
    }
function _funnyRef(_ref:GoString):GoString {
        return stdgo.strings.Strings.replaceAll(_ref, ((("=" : GoString))), ((("@" : GoString))));
    }
function _testEqual(_t:stdgo.testing.Testing.T_, _msg:GoString, _args:haxe.Rest<AnyInterface>):Bool {
        var _args = new Slice<AnyInterface>(..._args);
        _t.helper();
        if ((_args != null ? _args[(_args != null ? _args.length : ((0 : GoInt))) - ((2 : GoInt))] : ((null : AnyInterface))) != (_args != null ? _args[(_args != null ? _args.length : ((0 : GoInt))) - ((1 : GoInt))] : ((null : AnyInterface)))) {
            _t.errorf(_msg, ..._args.__toArray__());
            return false;
        };
        return true;
    }
function testEncode(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _p in _pairs) {
            for (_ => _tt in _encodingTests) {
                var _got:GoString = _tt._enc.encodeToString(((_p._decoded : Slice<GoByte>)));
                _testEqual(_t, ((("Encode(%q) = %q, want %q" : GoString))), Go.toInterface(_p._decoded), Go.toInterface(_got), Go.toInterface(_tt._conv(_p._encoded)));
            };
        };
    }
function testEncoder(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _p in _pairs) {
            var _bb:Ref<stdgo.bytes.Bytes.Buffer> = ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer));
            var _encoder:stdgo.io.Io.WriteCloser = newEncoder(stdEncoding, _bb);
            _encoder.write(((_p._decoded : Slice<GoByte>)));
            _encoder.close();
            _testEqual(_t, ((("Encode(%q) = %q, want %q" : GoString))), Go.toInterface(_p._decoded), Go.toInterface(((_bb.toString() : GoString))), Go.toInterface(_p._encoded));
        };
    }
function testEncoderBuffering(_t:stdgo.testing.Testing.T_):Void {
        var _input:Slice<GoUInt8> = ((_bigtest._decoded : Slice<GoByte>));
        {
            var _bs:GoInt = ((1 : GoInt));
            Go.cfor(_bs <= ((12 : GoInt)), _bs++, {
                var _bb:Ref<stdgo.bytes.Bytes.Buffer> = ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer));
                var _encoder:stdgo.io.Io.WriteCloser = newEncoder(stdEncoding, _bb);
                {
                    var _pos:GoInt = ((0 : GoInt));
                    Go.cfor(_pos < (_input != null ? _input.length : ((0 : GoInt))), _pos = _pos + (_bs), {
                        var _end:GoInt = _pos + _bs;
                        if (_end > (_input != null ? _input.length : ((0 : GoInt)))) {
                            _end = (_input != null ? _input.length : ((0 : GoInt)));
                        };
                        var __tmp__ = _encoder.write(((_input.__slice__(_pos, _end) : Slice<GoUInt8>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        _testEqual(_t, ((("Write(%q) gave error %v, want %v" : GoString))), Go.toInterface(((_input.__slice__(_pos, _end) : Slice<GoUInt8>))), Go.toInterface(_err), Go.toInterface(((((null : stdgo.Error)) : Error))));
                        _testEqual(_t, ((("Write(%q) gave length %v, want %v" : GoString))), Go.toInterface(((_input.__slice__(_pos, _end) : Slice<GoUInt8>))), Go.toInterface(_n), Go.toInterface(_end - _pos));
                    });
                };
                var _err:stdgo.Error = _encoder.close();
                _testEqual(_t, ((("Close gave error %v, want %v" : GoString))), Go.toInterface(_err), Go.toInterface(((((null : stdgo.Error)) : Error))));
                _testEqual(_t, ((("Encoding/%d of %q = %q, want %q" : GoString))), Go.toInterface(_bs), Go.toInterface(_bigtest._decoded), Go.toInterface(((_bb.toString() : GoString))), Go.toInterface(_bigtest._encoded));
            });
        };
    }
function testDecode(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _p in _pairs) {
            for (_ => _tt in _encodingTests) {
                var _encoded:GoString = _tt._conv(_p._encoded);
                var _dbuf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_tt._enc.decodedLen((_encoded != null ? _encoded.length : ((0 : GoInt)))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                var __tmp__ = _tt._enc.decode(_dbuf, ((_encoded : Slice<GoByte>))), _count:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _testEqual(_t, ((("Decode(%q) = error %v, want %v" : GoString))), Go.toInterface(_encoded), Go.toInterface(_err), Go.toInterface(((((null : stdgo.Error)) : Error))));
                _testEqual(_t, ((("Decode(%q) = length %v, want %v" : GoString))), Go.toInterface(_encoded), Go.toInterface(_count), Go.toInterface((_p._decoded != null ? _p._decoded.length : ((0 : GoInt)))));
                _testEqual(_t, ((("Decode(%q) = %q, want %q" : GoString))), Go.toInterface(_encoded), Go.toInterface(((((_dbuf.__slice__(((0 : GoInt)), _count) : Slice<GoUInt8>)) : GoString))), Go.toInterface(_p._decoded));
                {
                    var __tmp__ = _tt._enc.decodeString(_encoded);
                    _dbuf = __tmp__._0;
                    _err = __tmp__._1;
                };
                _testEqual(_t, ((("DecodeString(%q) = error %v, want %v" : GoString))), Go.toInterface(_encoded), Go.toInterface(_err), Go.toInterface(((((null : stdgo.Error)) : Error))));
                _testEqual(_t, ((("DecodeString(%q) = %q, want %q" : GoString))), Go.toInterface(_encoded), Go.toInterface(((_dbuf : GoString))), Go.toInterface(_p._decoded));
            };
        };
    }
function testDecoder(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _p in _pairs) {
            var _decoder:stdgo.io.Io.Reader = newDecoder(stdEncoding, stdgo.strings.Strings.newReader(_p._encoded));
            var _dbuf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((stdEncoding.decodedLen((_p._encoded != null ? _p._encoded.length : ((0 : GoInt)))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            var __tmp__ = _decoder.read(_dbuf), _count:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err != null) && (_err != stdgo.io.Io.eof)) {
                _t.fatal(Go.toInterface(((("Read failed" : GoString)))), Go.toInterface(_err));
            };
            _testEqual(_t, ((("Read from %q = length %v, want %v" : GoString))), Go.toInterface(_p._encoded), Go.toInterface(_count), Go.toInterface((_p._decoded != null ? _p._decoded.length : ((0 : GoInt)))));
            _testEqual(_t, ((("Decoding of %q = %q, want %q" : GoString))), Go.toInterface(_p._encoded), Go.toInterface(((((_dbuf.__slice__(((0 : GoInt)), _count) : Slice<GoUInt8>)) : GoString))), Go.toInterface(_p._decoded));
            if (_err != stdgo.io.Io.eof) {
                {
                    var __tmp__ = _decoder.read(_dbuf);
                    _err = __tmp__._1;
                };
            };
            _testEqual(_t, ((("Read from %q = %v, want %v" : GoString))), Go.toInterface(_p._encoded), Go.toInterface(_err), Go.toInterface(stdgo.io.Io.eof));
        };
    }
function testDecoderBuffering(_t:stdgo.testing.Testing.T_):Void {
        {
            var _bs:GoInt = ((1 : GoInt));
            Go.cfor(_bs <= ((12 : GoInt)), _bs++, {
                var _decoder:stdgo.io.Io.Reader = newDecoder(stdEncoding, stdgo.strings.Strings.newReader(_bigtest._encoded));
                var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_bigtest._decoded != null ? _bigtest._decoded.length : ((0 : GoInt))) + ((12 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                var _total:GoInt = ((0 : GoInt));
                var _n:GoInt = ((0 : GoInt));
                var _err:Error = ((null : stdgo.Error));
                {
                    _total = ((0 : GoInt));
                    while ((_total < (_bigtest._decoded != null ? _bigtest._decoded.length : ((0 : GoInt)))) && (_err == null)) {
                        {
                            var __tmp__ = _decoder.read(((_buf.__slice__(_total, _total + _bs) : Slice<GoUInt8>)));
                            _n = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        _total = _total + (_n);
                    };
                };
                if ((_err != null) && (_err != stdgo.io.Io.eof)) {
                    _t.errorf(((("Read from %q at pos %d = %d, unexpected error %v" : GoString))), Go.toInterface(_bigtest._encoded), Go.toInterface(_total), Go.toInterface(_n), Go.toInterface(_err));
                };
                _testEqual(_t, ((("Decoding/%d of %q = %q, want %q" : GoString))), Go.toInterface(_bs), Go.toInterface(_bigtest._encoded), Go.toInterface(((((_buf.__slice__(((0 : GoInt)), _total) : Slice<GoUInt8>)) : GoString))), Go.toInterface(_bigtest._decoded));
            });
        };
    }
function testDecodeCorrupt(_t:stdgo.testing.Testing.T_):Void {
        var _testCases:Slice<T__struct_0> = ((new Slice<T__struct_0>(
((new T__struct_0(((("" : GoString))), ((-1 : GoInt))) : T__struct_0)),
((new T__struct_0(((("\n" : GoString))), ((-1 : GoInt))) : T__struct_0)),
((new T__struct_0(((("AAA=\n" : GoString))), ((-1 : GoInt))) : T__struct_0)),
((new T__struct_0(((("AAAA\n" : GoString))), ((-1 : GoInt))) : T__struct_0)),
((new T__struct_0(((("!!!!" : GoString))), ((0 : GoInt))) : T__struct_0)),
((new T__struct_0(((("====" : GoString))), ((0 : GoInt))) : T__struct_0)),
((new T__struct_0(((("x===" : GoString))), ((1 : GoInt))) : T__struct_0)),
((new T__struct_0(((("=AAA" : GoString))), ((0 : GoInt))) : T__struct_0)),
((new T__struct_0(((("A=AA" : GoString))), ((1 : GoInt))) : T__struct_0)),
((new T__struct_0(((("AA=A" : GoString))), ((2 : GoInt))) : T__struct_0)),
((new T__struct_0(((("AA==A" : GoString))), ((4 : GoInt))) : T__struct_0)),
((new T__struct_0(((("AAA=AAAA" : GoString))), ((4 : GoInt))) : T__struct_0)),
((new T__struct_0(((("AAAAA" : GoString))), ((4 : GoInt))) : T__struct_0)),
((new T__struct_0(((("AAAAAA" : GoString))), ((4 : GoInt))) : T__struct_0)),
((new T__struct_0(((("A=" : GoString))), ((1 : GoInt))) : T__struct_0)),
((new T__struct_0(((("A==" : GoString))), ((1 : GoInt))) : T__struct_0)),
((new T__struct_0(((("AA=" : GoString))), ((3 : GoInt))) : T__struct_0)),
((new T__struct_0(((("AA==" : GoString))), ((-1 : GoInt))) : T__struct_0)),
((new T__struct_0(((("AAA=" : GoString))), ((-1 : GoInt))) : T__struct_0)),
((new T__struct_0(((("AAAA" : GoString))), ((-1 : GoInt))) : T__struct_0)),
((new T__struct_0(((("AAAAAA=" : GoString))), ((7 : GoInt))) : T__struct_0)),
((new T__struct_0(((("YWJjZA=====" : GoString))), ((8 : GoInt))) : T__struct_0)),
((new T__struct_0(((("A!\n" : GoString))), ((1 : GoInt))) : T__struct_0)),
((new T__struct_0(((("A=\n" : GoString))), ((1 : GoInt))) : T__struct_0))) : Slice<T__struct_0>));
        for (_ => _tc in _testCases) {
            var _dbuf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((stdEncoding.decodedLen((_tc._input != null ? _tc._input.length : ((0 : GoInt)))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            var __tmp__ = stdEncoding.decode(_dbuf, ((_tc._input : Slice<GoByte>))), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_tc._offset == ((-1 : GoInt))) {
                if (_err != null) {
                    _t.error(Go.toInterface(((("Decoder wrongly detected corruption in" : GoString)))), Go.toInterface(_tc._input));
                };
                continue;
            };
            if (Go.assertable(((_err : CorruptInputError)))) {
                var _err:CorruptInputError = _err == null ? null : _err.__underlying__() == null ? null : _err == null ? null : _err.__underlying__().value;
                _testEqual(_t, ((("Corruption in %q at offset %v, want %v" : GoString))), Go.toInterface(_tc._input), Go.toInterface(((_err : GoInt))), Go.toInterface(_tc._offset));
            } else {
                var _err:stdgo.Error = _err == null ? null : _err.__underlying__() == null ? null : _err == null ? null : _err.__underlying__().value;
                _t.error(Go.toInterface(((("Decoder failed to detect corruption in" : GoString)))), Go.toInterface(_tc));
            };
        };
    }
function testDecodeBounds(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 32) ((0 : GoUInt8))]);
            var _s:GoString = stdEncoding.encodeToString(((_buf.__slice__(0) : Slice<GoUInt8>)));
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err:AnyInterface = Go.toInterface(({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }));
                        if (_err != null) {
                            _t.fatalf(((("Decode panicked unexpectedly: %v\n%s" : GoString))), Go.toInterface(_err), Go.toInterface(stdgo.runtime.debug.Debug.stack()));
                        };
                    };
                };
                a();
            });
            var __tmp__ = stdEncoding.decode(((_buf.__slice__(0) : Slice<GoUInt8>)), ((_s : Slice<GoByte>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != (_buf != null ? _buf.length : ((0 : GoInt)))) || (_err != null)) {
                _t.fatalf(((("StdEncoding.Decode = %d, %v, want %d, nil" : GoString))), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface((_buf != null ? _buf.length : ((0 : GoInt)))));
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testEncodedLen(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _tt in ((new Slice<T__struct_1>(
((new T__struct_1(rawStdEncoding, ((0 : GoInt)), ((0 : GoInt))) : T__struct_1)),
((new T__struct_1(rawStdEncoding, ((1 : GoInt)), ((2 : GoInt))) : T__struct_1)),
((new T__struct_1(rawStdEncoding, ((2 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(rawStdEncoding, ((3 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(rawStdEncoding, ((7 : GoInt)), ((10 : GoInt))) : T__struct_1)),
((new T__struct_1(stdEncoding, ((0 : GoInt)), ((0 : GoInt))) : T__struct_1)),
((new T__struct_1(stdEncoding, ((1 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(stdEncoding, ((2 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(stdEncoding, ((3 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(stdEncoding, ((4 : GoInt)), ((8 : GoInt))) : T__struct_1)),
((new T__struct_1(stdEncoding, ((7 : GoInt)), ((12 : GoInt))) : T__struct_1))) : Slice<T__struct_1>))) {
            {
                var _got:GoInt = _tt._enc.encodedLen(_tt._n);
                if (_got != _tt._want) {
                    _t.errorf(((("EncodedLen(%d): got %d, want %d" : GoString))), Go.toInterface(_tt._n), Go.toInterface(_got), Go.toInterface(_tt._want));
                };
            };
        };
    }
function testDecodedLen(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _tt in ((new Slice<T__struct_1>(((new T__struct_1(rawStdEncoding, ((0 : GoInt)), ((0 : GoInt))) : T__struct_1)), ((new T__struct_1(rawStdEncoding, ((2 : GoInt)), ((1 : GoInt))) : T__struct_1)), ((new T__struct_1(rawStdEncoding, ((3 : GoInt)), ((2 : GoInt))) : T__struct_1)), ((new T__struct_1(rawStdEncoding, ((4 : GoInt)), ((3 : GoInt))) : T__struct_1)), ((new T__struct_1(rawStdEncoding, ((10 : GoInt)), ((7 : GoInt))) : T__struct_1)), ((new T__struct_1(stdEncoding, ((0 : GoInt)), ((0 : GoInt))) : T__struct_1)), ((new T__struct_1(stdEncoding, ((4 : GoInt)), ((3 : GoInt))) : T__struct_1)), ((new T__struct_1(stdEncoding, ((8 : GoInt)), ((6 : GoInt))) : T__struct_1))) : Slice<T__struct_1>))) {
            {
                var _got:GoInt = _tt._enc.decodedLen(_tt._n);
                if (_got != _tt._want) {
                    _t.errorf(((("DecodedLen(%d): got %d, want %d" : GoString))), Go.toInterface(_tt._n), Go.toInterface(_got), Go.toInterface(_tt._want));
                };
            };
        };
    }
function testBig(_t:stdgo.testing.Testing.T_):Void {
        var _n:GoInt = ((3001 : GoInt));
        var _raw:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {};
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                if (_raw != null) _raw[_i] = (((("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : GoString))) != null ? ((("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : GoString)))[_i % (((("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : GoString))) != null ? ((("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : GoString))).length : ((0 : GoInt)))] : ((0 : GoUInt8)));
            });
        };
        var _encoded:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        var _w:stdgo.io.Io.WriteCloser = newEncoder(stdEncoding, _encoded);
        var __tmp__ = _w.write(_raw), _nn:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_nn != _n) || (_err != null)) {
            _t.fatalf(((("Encoder.Write(raw) = %d, %v want %d, nil" : GoString))), Go.toInterface(_nn), Go.toInterface(_err), Go.toInterface(_n));
        };
        _err = _w.close();
        if (_err != null) {
            _t.fatalf(((("Encoder.Close() = %v want nil" : GoString))), Go.toInterface(_err));
        };
        var __tmp__ = stdgo.io.Io.readAll(newDecoder(stdEncoding, _encoded)), _decoded:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("io.ReadAll(NewDecoder(...)): %v" : GoString))), Go.toInterface(_err));
        };
        if (!stdgo.bytes.Bytes.equal(_raw, _decoded)) {
            var _i:GoInt = ((0 : GoInt));
            {
                _i = ((0 : GoInt));
                Go.cfor((_i < (_decoded != null ? _decoded.length : ((0 : GoInt)))) && (_i < (_raw != null ? _raw.length : ((0 : GoInt)))), _i++, {
                    if ((_decoded != null ? _decoded[_i] : ((0 : GoUInt8))) != (_raw != null ? _raw[_i] : ((0 : GoUInt8)))) {
                        break;
                    };
                });
            };
            _t.errorf(((("Decode(Encode(%d-byte string)) failed at offset %d" : GoString))), Go.toInterface(_n), Go.toInterface(_i));
        };
    }
function testNewLineCharacters(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _examples:Slice<GoString> = ((new Slice<GoString>(
((("c3VyZQ==" : GoString))),
((("c3VyZQ==\r" : GoString))),
((("c3VyZQ==\n" : GoString))),
((("c3VyZQ==\r\n" : GoString))),
((("c3VyZ\r\nQ==" : GoString))),
((("c3V\ryZ\nQ==" : GoString))),
((("c3V\nyZ\rQ==" : GoString))),
((("c3VyZ\nQ==" : GoString))),
((("c3VyZQ\n==" : GoString))),
((("c3VyZQ=\n=" : GoString))),
((("c3VyZQ=\r\n\r\n=" : GoString)))) : Slice<GoString>));
        for (_ => _e in _examples) {
            var __tmp__ = stdEncoding.decodeString(_e), _buf:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("Decode(%q) failed: %v" : GoString))), Go.toInterface(_e), Go.toInterface(_err));
                continue;
            };
            {
                var _s:GoString = ((_buf : GoString));
                if (_s != ((("sure" : GoString)))) {
                    _t.errorf(((("Decode(%q) = %q, want %q" : GoString))), Go.toInterface(_e), Go.toInterface(_s), Go.toInterface(((("sure" : GoString)))));
                };
            };
        };
    }
function testDecoderIssue3577(_t:stdgo.testing.Testing.T_):Void {
        var _next:Chan<T_nextRead> = new Chan<T_nextRead>(((((10 : GoInt)) : GoInt)).toBasic(), () -> new T_nextRead());
        var _wantErr:stdgo.Error = stdgo.errors.Errors.new_(((("my error" : GoString))));
        _next.__send__(((new T_nextRead(((5 : GoInt)), ((null : stdgo.Error))) : T_nextRead)));
        _next.__send__(((new T_nextRead(((10 : GoInt)), _wantErr) : T_nextRead)));
        _next.__send__(((new T_nextRead(((0 : GoInt)), _wantErr) : T_nextRead)));
        var _d:stdgo.io.Io.Reader = newDecoder(stdEncoding, (({ _source : ((("VHdhcyBicmlsbGlnLCBhbmQgdGhlIHNsaXRoeSB0b3Zlcw==" : GoString))), _nextc : _next } : T_faultInjectReader)));
        var _errc:Chan<stdgo.Error> = new Chan<stdgo.Error>(((((1 : GoInt)) : GoInt)).toBasic(), () -> ((null : stdgo.Error)));
        Go.routine(() -> {
            var a = function():Void {
                var __tmp__ = stdgo.io.Io.readAll(_d), _:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _errc.__send__(_err);
            };
            a();
        });
        Go.select([stdgo.time.Time.after((("5000000000" : GoInt64))).__get__() => {
            _t.errorf(((("timeout; Decoder blocked without returning an error" : GoString))));
        }, var _err = _errc.__get__() => {
            if (_err != _wantErr) {
                _t.errorf(((("got error %v; want %v" : GoString))), Go.toInterface(_err), Go.toInterface(_wantErr));
            };
        }]);
    }
function testDecoderIssue4779(_t:stdgo.testing.Testing.T_):Void {
        var _encoded:GoString = "CP/EAT8AAAEF\nAQEBAQEBAAAAAAAAAAMAAQIEBQYHCAkKCwEAAQUBAQEBAQEAAAAAAAAAAQACAwQFBgcICQoLEAAB\nBAEDAgQCBQcGCAUDDDMBAAIRAwQhEjEFQVFhEyJxgTIGFJGhsUIjJBVSwWIzNHKC0UMHJZJT8OHx\nY3M1FqKygyZEk1RkRcKjdDYX0lXiZfKzhMPTdePzRieUpIW0lcTU5PSltcXV5fVWZnaGlqa2xtbm\n9jdHV2d3h5ent8fX5/cRAAICAQIEBAMEBQYHBwYFNQEAAhEDITESBEFRYXEiEwUygZEUobFCI8FS\n0fAzJGLhcoKSQ1MVY3M08SUGFqKygwcmNcLSRJNUoxdkRVU2dGXi8rOEw9N14/NGlKSFtJXE1OT0\npbXF1eX1VmZ2hpamtsbW5vYnN0dXZ3eHl6e3x//aAAwDAQACEQMRAD8A9VSSSSUpJJJJSkkkJ+Tj\n1kiy1jCJJDnAcCTykpKkuQ6p/jN6FgmxlNduXawwAzaGH+V6jn/R/wCt71zdn+N/qL3kVYFNYB4N\nji6PDVjWpKp9TSXnvTf8bFNjg3qOEa2n6VlLpj/rT/pf567DpX1i6L1hs9Py67X8mqdtg/rUWbbf\n+gkp0kkkklKSSSSUpJJJJT//0PVUkkklKVLq3WMDpGI7KzrNjADtYNXvI/Mqr/Pd/q9W3vaxjnvM\nNaCXE9gNSvGPrf8AWS3qmba5jjsJhoB0DAf0NDf6sevf+/lf8Hj0JJATfWT6/dV6oXU1uOLQeKKn\nEQP+Hubtfe/+R7Mf/g7f5xcocp++Z11JMCJPgFBxOg7/AOuqDx8I/ikpkXkmSdU8mJIJA/O8EMAy\nj+mSARB/17pKVXYWHXjsj7yIex0PadzXMO1zT5KHoNA3HT8ietoGhgjsfA+CSnvvqh/jJtqsrwOv\n2b6NGNzXfTYexzJ+nU7/ALkf4P8Awv6P9KvTQQ4AgyDqCF85Pho3CTB7eHwXoH+LT65uZbX9X+o2\nbqbPb06551Y4\n";
        var _encodedShort:GoString = stdgo.strings.Strings.replaceAll(_encoded, ((("\n" : GoString))), ((("" : GoString))));
        var _dec:stdgo.io.Io.Reader = newDecoder(stdEncoding, stdgo.strings.Strings.newReader(_encoded));
        var __tmp__ = stdgo.io.Io.readAll(_dec), _res1:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((("ReadAll failed: %v" : GoString))), Go.toInterface(_err));
        };
        _dec = newDecoder(stdEncoding, stdgo.strings.Strings.newReader(_encodedShort));
        var _res2:Slice<GoByte> = ((null : Slice<GoUInt8>));
        {
            var __tmp__ = stdgo.io.Io.readAll(_dec);
            _res2 = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.errorf(((("ReadAll failed: %v" : GoString))), Go.toInterface(_err));
        };
        if (!stdgo.bytes.Bytes.equal(_res1, _res2)) {
            _t.error(Go.toInterface(((("Decoded results not equal" : GoString)))));
        };
    }
function testDecoderIssue7733(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = stdEncoding.decodeString(((("YWJjZA=====" : GoString)))), _s:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var _want:CorruptInputError = ((((8 : GoInt64)) : CorruptInputError));
        if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_want), Go.toInterface(_err))) {
            _t.errorf(((("Error = %v; want CorruptInputError(8)" : GoString))), Go.toInterface(_err));
        };
        if (((_s : GoString)) != ((("abcd" : GoString)))) {
            _t.errorf(((("DecodeString = %q; want abcd" : GoString))), Go.toInterface(_s));
        };
    }
function testDecoderIssue15656(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = stdEncoding.strict().decodeString(((("WvLTlMrX9NpYDQlEIFlnDB==" : GoString)))), _:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var _want:CorruptInputError = ((((22 : GoInt64)) : CorruptInputError));
        if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_want), Go.toInterface(_err))) {
            _t.errorf(((("Error = %v; want CorruptInputError(22)" : GoString))), Go.toInterface(_err));
        };
        {
            var __tmp__ = stdEncoding.strict().decodeString(((("WvLTlMrX9NpYDQlEIFlnDA==" : GoString))));
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.errorf(((("Error = %v; want nil" : GoString))), Go.toInterface(_err));
        };
        {
            var __tmp__ = stdEncoding.decodeString(((("WvLTlMrX9NpYDQlEIFlnDB==" : GoString))));
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.errorf(((("Error = %v; want nil" : GoString))), Go.toInterface(_err));
        };
    }
function benchmarkEncodeToString(_b:stdgo.testing.Testing.B):Void {
        var _data:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((8192 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _b.setBytes((((_data != null ? _data.length : ((0 : GoInt))) : GoInt64)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                stdEncoding.encodeToString(_data);
            });
        };
    }
function benchmarkDecodeString(_b:stdgo.testing.Testing.B):Void {
        var _sizes:Slice<GoInt> = ((new Slice<GoInt>(((2 : GoInt)), ((4 : GoInt)), ((8 : GoInt)), ((64 : GoInt)), ((8192 : GoInt))) : Slice<GoInt>));
        var _benchFunc:(Ref<stdgo.testing.Testing.B>, GoInt) -> Void = function(_b:stdgo.testing.Testing.B, _benchSize:GoInt):Void {
            var _data:GoString = stdEncoding.encodeToString(new Slice<GoUInt8>(...[for (i in 0 ... ((_benchSize : GoInt)).toBasic()) ((0 : GoUInt8))]));
            _b.setBytes((((_data != null ? _data.length : ((0 : GoInt))) : GoInt64)));
            _b.resetTimer();
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    stdEncoding.decodeString(_data);
                });
            };
        };
        for (_ => _size in _sizes) {
            _b.run(stdgo.fmt.Fmt.sprintf(((("%d" : GoString))), Go.toInterface(_size)), function(_b:stdgo.testing.Testing.B):Void {
                _benchFunc(_b, _size);
            });
        };
    }
function testDecoderRaw(_t:stdgo.testing.Testing.T_):Void {
        var _source:GoString = ((("AAAAAA" : GoString)));
        var _want:Slice<GoUInt8> = ((new Slice<GoUInt8>(((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8))) : Slice<GoUInt8>));
        var __tmp__ = rawURLEncoding.decodeString(_source), _dec1:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) || !stdgo.bytes.Bytes.equal(_dec1, _want)) {
            _t.errorf(((("RawURLEncoding.DecodeString(%q) = %x, %v, want %x, nil" : GoString))), Go.toInterface(_source), Go.toInterface(_dec1), Go.toInterface(_err), Go.toInterface(_want));
        };
        var _r:stdgo.io.Io.Reader = newDecoder(rawURLEncoding, stdgo.bytes.Bytes.newReader(((_source : Slice<GoByte>))));
        var __tmp__ = stdgo.io.Io.readAll(stdgo.io.Io.limitReader(_r, ((100 : GoInt64)))), _dec2:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) || !stdgo.bytes.Bytes.equal(_dec2, _want)) {
            _t.errorf(((("reading NewDecoder(RawURLEncoding, %q) = %x, %v, want %x, nil" : GoString))), Go.toInterface(_source), Go.toInterface(_dec2), Go.toInterface(_err), Go.toInterface(_want));
        };
        _r = newDecoder(urlencoding, stdgo.bytes.Bytes.newReader((((_source + ((("==" : GoString)))) : Slice<GoByte>))));
        var __tmp__ = stdgo.io.Io.readAll(_r), _dec3:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) || !stdgo.bytes.Bytes.equal(_dec3, _want)) {
            _t.errorf(((("reading NewDecoder(URLEncoding, %q) = %x, %v, want %x, nil" : GoString))), Go.toInterface(_source + ((("==" : GoString)))), Go.toInterface(_dec3), Go.toInterface(_err), Go.toInterface(_want));
        };
    }
class Encoding_wrapper {
    @:keep
    public function decodedLen(_n:GoInt):GoInt {
        var _enc = __t__;
        _enc;
        if (_enc._padChar == ((-1 : GoInt32))) {
            return (_n * ((6 : GoInt))) / ((8 : GoInt));
        };
        return (_n / ((4 : GoInt))) * ((3 : GoInt));
    }
    @:keep
    public function decode(_dst:Slice<GoByte>, _src:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _enc = __t__;
        _enc;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if ((_src != null ? _src.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        _enc._decodeMap;
        var _si:GoInt = ((0 : GoInt));
        while ((false && (((_src != null ? _src.length : ((0 : GoInt))) - _si) >= ((8 : GoInt)))) && (((_dst != null ? _dst.length : ((0 : GoInt))) - _n) >= ((8 : GoInt)))) {
            var _src2:Slice<GoUInt8> = ((_src.__slice__(_si, _si + ((8 : GoInt))) : Slice<GoUInt8>));
            {
                var __tmp__ = _assemble64((_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((0 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((1 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((2 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((3 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((4 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((5 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((6 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((7 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8)))), _dn:GoUInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    stdgo.encoding.binary.Binary.bigEndian.putUint64(((_dst.__slice__(_n) : Slice<GoUInt8>)), _dn);
                    _n = _n + (((6 : GoInt)));
                    _si = _si + (((8 : GoInt)));
                } else {
                    var _ninc:GoInt = ((0 : GoInt));
                    {
                        var __tmp__ = _enc._decodeQuantum(((_dst.__slice__(_n) : Slice<GoUInt8>)), _src, _si);
                        _si = __tmp__._0;
                        _ninc = __tmp__._1;
                        _err = __tmp__._2;
                    };
                    _n = _n + (_ninc);
                    if (_err != null) {
                        return { _0 : _n, _1 : _err };
                    };
                };
            };
        };
        while ((((_src != null ? _src.length : ((0 : GoInt))) - _si) >= ((4 : GoInt))) && (((_dst != null ? _dst.length : ((0 : GoInt))) - _n) >= ((4 : GoInt)))) {
            var _src2:Slice<GoUInt8> = ((_src.__slice__(_si, _si + ((4 : GoInt))) : Slice<GoUInt8>));
            {
                var __tmp__ = _assemble32((_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((0 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((1 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((2 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((3 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8)))), _dn:GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    stdgo.encoding.binary.Binary.bigEndian.putUint32(((_dst.__slice__(_n) : Slice<GoUInt8>)), _dn);
                    _n = _n + (((3 : GoInt)));
                    _si = _si + (((4 : GoInt)));
                } else {
                    var _ninc:GoInt = ((0 : GoInt));
                    {
                        var __tmp__ = _enc._decodeQuantum(((_dst.__slice__(_n) : Slice<GoUInt8>)), _src, _si);
                        _si = __tmp__._0;
                        _ninc = __tmp__._1;
                        _err = __tmp__._2;
                    };
                    _n = _n + (_ninc);
                    if (_err != null) {
                        return { _0 : _n, _1 : _err };
                    };
                };
            };
        };
        while (_si < (_src != null ? _src.length : ((0 : GoInt)))) {
            var _ninc:GoInt = ((0 : GoInt));
            {
                var __tmp__ = _enc._decodeQuantum(((_dst.__slice__(_n) : Slice<GoUInt8>)), _src, _si);
                _si = __tmp__._0;
                _ninc = __tmp__._1;
                _err = __tmp__._2;
            };
            _n = _n + (_ninc);
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public function decodeString(_s:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _enc = __t__;
        _enc;
        var _dbuf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_enc.decodedLen((_s != null ? _s.length : ((0 : GoInt)))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = _enc.decode(_dbuf, ((_s : Slice<GoByte>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : ((_dbuf.__slice__(0, _n) : Slice<GoUInt8>)), _1 : _err };
    }
    @:keep
    public function _decodeQuantum(_dst:Slice<GoByte>, _src:Slice<GoByte>, _si:GoInt):{ var _0 : GoInt; var _1 : GoInt; var _2 : Error; } {
        var _enc = __t__;
        _enc;
        var _nsi:GoInt = ((0 : GoInt)), _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _dbuf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]);
        var _dlen:GoInt = ((4 : GoInt));
        _enc._decodeMap;
        {
            var _j:GoInt = ((0 : GoInt));
            Go.cfor(_j < (_dbuf != null ? _dbuf.length : ((0 : GoInt))), _j++, {
                if ((_src != null ? _src.length : ((0 : GoInt))) == _si) {
                    if (_j == ((0 : GoInt))) {
                        return { _0 : _si, _1 : ((0 : GoInt)), _2 : ((null : stdgo.Error)) };
                    } else if (_j == ((1 : GoInt)) || _enc._padChar != ((-1 : GoInt32))) {
                        return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError_wrapper(Go.pointer((((_si - _j) : CorruptInputError)))) };
                    };
                    _dlen = _j;
                    break;
                };
                var _in:GoUInt8 = (_src != null ? _src[_si] : ((0 : GoUInt8)));
                _si++;
                var _out:GoUInt8 = (_enc._decodeMap != null ? _enc._decodeMap[_in] : ((0 : GoUInt8)));
                if (_out != ((255 : GoUInt8))) {
                    if (_dbuf != null) _dbuf[_j] = _out;
                    continue;
                };
                if ((_in == ((((("\n" : GoString))).code : GoRune))) || (_in == ((((("\r" : GoString))).code : GoRune)))) {
                    _j--;
                    continue;
                };
                if (((_in : GoRune)) != _enc._padChar) {
                    return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError_wrapper(Go.pointer((((_si - ((1 : GoInt))) : CorruptInputError)))) };
                };
                if (_j == ((0 : GoInt)) || _j == ((1 : GoInt))) {
                    return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError_wrapper(Go.pointer((((_si - ((1 : GoInt))) : CorruptInputError)))) };
                } else if (_j == ((2 : GoInt))) {
                    while ((_si < (_src != null ? _src.length : ((0 : GoInt)))) && (((_src != null ? _src[_si] : ((0 : GoUInt8))) == ((((("\n" : GoString))).code : GoRune))) || ((_src != null ? _src[_si] : ((0 : GoUInt8))) == ((((("\r" : GoString))).code : GoRune))))) {
                        _si++;
                    };
                    if (_si == (_src != null ? _src.length : ((0 : GoInt)))) {
                        return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError_wrapper(Go.pointer((((_src != null ? _src.length : ((0 : GoInt))) : CorruptInputError)))) };
                    };
                    if ((((_src != null ? _src[_si] : ((0 : GoUInt8))) : GoRune)) != _enc._padChar) {
                        return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError_wrapper(Go.pointer((((_si - ((1 : GoInt))) : CorruptInputError)))) };
                    };
                    _si++;
                };
                while ((_si < (_src != null ? _src.length : ((0 : GoInt)))) && (((_src != null ? _src[_si] : ((0 : GoUInt8))) == ((((("\n" : GoString))).code : GoRune))) || ((_src != null ? _src[_si] : ((0 : GoUInt8))) == ((((("\r" : GoString))).code : GoRune))))) {
                    _si++;
                };
                if (_si < (_src != null ? _src.length : ((0 : GoInt)))) {
                    _err = new CorruptInputError_wrapper(Go.pointer(((_si : CorruptInputError))));
                };
                _dlen = _j;
                break;
            });
        };
        var _val:GoUInt = ((((((_dbuf != null ? _dbuf[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt)) << ((18 : GoUnTypedInt))) | ((((_dbuf != null ? _dbuf[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt)) << ((12 : GoUnTypedInt)))) | ((((_dbuf != null ? _dbuf[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt)) << ((6 : GoUnTypedInt)))) | (((_dbuf != null ? _dbuf[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt));
        {
            final __tmp__0 = (((_val >> ((0 : GoUnTypedInt))) : GoByte));
            final __tmp__1 = (((_val >> ((8 : GoUnTypedInt))) : GoByte));
            final __tmp__2 = (((_val >> ((16 : GoUnTypedInt))) : GoByte));
            if (_dbuf != null) _dbuf[((2 : GoInt))] = __tmp__0;
            if (_dbuf != null) _dbuf[((1 : GoInt))] = __tmp__1;
            if (_dbuf != null) _dbuf[((0 : GoInt))] = __tmp__2;
        };
        {
            var __switchIndex__ = -1;
            while (true) {
                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _dlen == ((4 : GoInt)))) {
                    if (_dst != null) _dst[((2 : GoInt))] = (_dbuf != null ? _dbuf[((2 : GoInt))] : ((0 : GoUInt8)));
                    if (_dbuf != null) _dbuf[((2 : GoInt))] = ((0 : GoUInt8));
                    @:fallthrough {
                        __switchIndex__ = 1;
                        continue;
                    };
                    break;
                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _dlen == ((3 : GoInt)))) {
                    if (_dst != null) _dst[((1 : GoInt))] = (_dbuf != null ? _dbuf[((1 : GoInt))] : ((0 : GoUInt8)));
                    if (_enc._strict && ((_dbuf != null ? _dbuf[((2 : GoInt))] : ((0 : GoUInt8))) != ((0 : GoUInt8)))) {
                        return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError_wrapper(Go.pointer((((_si - ((1 : GoInt))) : CorruptInputError)))) };
                    };
                    if (_dbuf != null) _dbuf[((1 : GoInt))] = ((0 : GoUInt8));
                    @:fallthrough {
                        __switchIndex__ = 2;
                        continue;
                    };
                    break;
                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _dlen == ((2 : GoInt)))) {
                    if (_dst != null) _dst[((0 : GoInt))] = (_dbuf != null ? _dbuf[((0 : GoInt))] : ((0 : GoUInt8)));
                    if (_enc._strict && (((_dbuf != null ? _dbuf[((1 : GoInt))] : ((0 : GoUInt8))) != ((0 : GoUInt8))) || ((_dbuf != null ? _dbuf[((2 : GoInt))] : ((0 : GoUInt8))) != ((0 : GoUInt8))))) {
                        return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError_wrapper(Go.pointer((((_si - ((2 : GoInt))) : CorruptInputError)))) };
                    };
                    break;
                    break;
                };
                break;
            };
        };
        return { _0 : _si, _1 : _dlen - ((1 : GoInt)), _2 : _err };
    }
    @:keep
    public function encodedLen(_n:GoInt):GoInt {
        var _enc = __t__;
        _enc;
        if (_enc._padChar == ((-1 : GoInt32))) {
            return ((_n * ((8 : GoInt))) + ((5 : GoInt))) / ((6 : GoInt));
        };
        return ((_n + ((2 : GoInt))) / ((3 : GoInt))) * ((4 : GoInt));
    }
    @:keep
    public function encodeToString(_src:Slice<GoByte>):GoString {
        var _enc = __t__;
        _enc;
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_enc.encodedLen((_src != null ? _src.length : ((0 : GoInt)))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _enc.encode(_buf, _src);
        return ((_buf : GoString));
    }
    @:keep
    public function encode(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        var _enc = __t__;
        _enc;
        if ((_src != null ? _src.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return;
        };
        _enc._encode;
        var _di:GoInt = ((0 : GoInt)), _si:GoInt = ((0 : GoInt));
        var _n:GoInt = ((_src != null ? _src.length : ((0 : GoInt))) / ((3 : GoInt))) * ((3 : GoInt));
        while (_si < _n) {
            var _val:GoUInt = (((((_src != null ? _src[_si + ((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt)) << ((16 : GoUnTypedInt))) | ((((_src != null ? _src[_si + ((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt)) << ((8 : GoUnTypedInt)))) | (((_src != null ? _src[_si + ((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt));
            if (_dst != null) _dst[_di + ((0 : GoInt))] = (_enc._encode != null ? _enc._encode[(_val >> ((18 : GoUnTypedInt))) & ((63 : GoUInt))] : ((0 : GoUInt8)));
            if (_dst != null) _dst[_di + ((1 : GoInt))] = (_enc._encode != null ? _enc._encode[(_val >> ((12 : GoUnTypedInt))) & ((63 : GoUInt))] : ((0 : GoUInt8)));
            if (_dst != null) _dst[_di + ((2 : GoInt))] = (_enc._encode != null ? _enc._encode[(_val >> ((6 : GoUnTypedInt))) & ((63 : GoUInt))] : ((0 : GoUInt8)));
            if (_dst != null) _dst[_di + ((3 : GoInt))] = (_enc._encode != null ? _enc._encode[_val & ((63 : GoUInt))] : ((0 : GoUInt8)));
            _si = _si + (((3 : GoInt)));
            _di = _di + (((4 : GoInt)));
        };
        var _remain:GoInt = (_src != null ? _src.length : ((0 : GoInt))) - _si;
        if (_remain == ((0 : GoInt))) {
            return;
        };
        var _val:GoUInt = (((_src != null ? _src[_si + ((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt)) << ((16 : GoUnTypedInt));
        if (_remain == ((2 : GoInt))) {
            _val = _val | ((((_src != null ? _src[_si + ((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt)) << ((8 : GoUnTypedInt)));
        };
        if (_dst != null) _dst[_di + ((0 : GoInt))] = (_enc._encode != null ? _enc._encode[(_val >> ((18 : GoUnTypedInt))) & ((63 : GoUInt))] : ((0 : GoUInt8)));
        if (_dst != null) _dst[_di + ((1 : GoInt))] = (_enc._encode != null ? _enc._encode[(_val >> ((12 : GoUnTypedInt))) & ((63 : GoUInt))] : ((0 : GoUInt8)));
        if (_remain == ((2 : GoInt))) {
            if (_dst != null) _dst[_di + ((2 : GoInt))] = (_enc._encode != null ? _enc._encode[(_val >> ((6 : GoUnTypedInt))) & ((63 : GoUInt))] : ((0 : GoUInt8)));
            if (_enc._padChar != ((-1 : GoInt32))) {
                if (_dst != null) _dst[_di + ((3 : GoInt))] = ((_enc._padChar : GoByte));
            };
        } else if (_remain == ((1 : GoInt))) {
            if (_enc._padChar != ((-1 : GoInt32))) {
                if (_dst != null) _dst[_di + ((2 : GoInt))] = ((_enc._padChar : GoByte));
                if (_dst != null) _dst[_di + ((3 : GoInt))] = ((_enc._padChar : GoByte));
            };
        };
    }
    @:keep
    public function strict():Encoding {
        var _enc = __t__;
        (_enc == null ? null : _enc.__copy__());
        _enc._strict = true;
        return _enc;
    }
    @:keep
    public function withPadding(_padding:GoRune):Encoding {
        var _enc = __t__;
        (_enc == null ? null : _enc.__copy__());
        if (((_padding == ((((("\r" : GoString))).code : GoRune))) || (_padding == ((((("\n" : GoString))).code : GoRune)))) || (_padding > ((255 : GoInt32)))) {
            throw Go.toInterface(((("invalid padding" : GoString))));
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_enc._encode != null ? _enc._encode.length : ((0 : GoInt))), _i++, {
                if ((((_enc._encode != null ? _enc._encode[_i] : ((0 : GoUInt8))) : GoRune)) == _padding) {
                    throw Go.toInterface(((("padding contained in alphabet" : GoString))));
                };
            });
        };
        _enc._padChar = _padding;
        return _enc;
    }
    public var __t__ : Encoding;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class Encoding_static_extension {
    @:keep
    public static function decodedLen( _enc:Ref<Encoding>, _n:GoInt):GoInt {
        _enc;
        if (_enc._padChar == ((-1 : GoInt32))) {
            return (_n * ((6 : GoInt))) / ((8 : GoInt));
        };
        return (_n / ((4 : GoInt))) * ((3 : GoInt));
    }
    @:keep
    public static function decode( _enc:Ref<Encoding>, _dst:Slice<GoByte>, _src:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _enc;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if ((_src != null ? _src.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        _enc._decodeMap;
        var _si:GoInt = ((0 : GoInt));
        while ((false && (((_src != null ? _src.length : ((0 : GoInt))) - _si) >= ((8 : GoInt)))) && (((_dst != null ? _dst.length : ((0 : GoInt))) - _n) >= ((8 : GoInt)))) {
            var _src2:Slice<GoUInt8> = ((_src.__slice__(_si, _si + ((8 : GoInt))) : Slice<GoUInt8>));
            {
                var __tmp__ = _assemble64((_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((0 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((1 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((2 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((3 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((4 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((5 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((6 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((7 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8)))), _dn:GoUInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    stdgo.encoding.binary.Binary.bigEndian.putUint64(((_dst.__slice__(_n) : Slice<GoUInt8>)), _dn);
                    _n = _n + (((6 : GoInt)));
                    _si = _si + (((8 : GoInt)));
                } else {
                    var _ninc:GoInt = ((0 : GoInt));
                    {
                        var __tmp__ = _enc._decodeQuantum(((_dst.__slice__(_n) : Slice<GoUInt8>)), _src, _si);
                        _si = __tmp__._0;
                        _ninc = __tmp__._1;
                        _err = __tmp__._2;
                    };
                    _n = _n + (_ninc);
                    if (_err != null) {
                        return { _0 : _n, _1 : _err };
                    };
                };
            };
        };
        while ((((_src != null ? _src.length : ((0 : GoInt))) - _si) >= ((4 : GoInt))) && (((_dst != null ? _dst.length : ((0 : GoInt))) - _n) >= ((4 : GoInt)))) {
            var _src2:Slice<GoUInt8> = ((_src.__slice__(_si, _si + ((4 : GoInt))) : Slice<GoUInt8>));
            {
                var __tmp__ = _assemble32((_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((0 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((1 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((2 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8))), (_enc._decodeMap != null ? _enc._decodeMap[(_src2 != null ? _src2[((3 : GoInt))] : ((0 : GoUInt8)))] : ((0 : GoUInt8)))), _dn:GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    stdgo.encoding.binary.Binary.bigEndian.putUint32(((_dst.__slice__(_n) : Slice<GoUInt8>)), _dn);
                    _n = _n + (((3 : GoInt)));
                    _si = _si + (((4 : GoInt)));
                } else {
                    var _ninc:GoInt = ((0 : GoInt));
                    {
                        var __tmp__ = _enc._decodeQuantum(((_dst.__slice__(_n) : Slice<GoUInt8>)), _src, _si);
                        _si = __tmp__._0;
                        _ninc = __tmp__._1;
                        _err = __tmp__._2;
                    };
                    _n = _n + (_ninc);
                    if (_err != null) {
                        return { _0 : _n, _1 : _err };
                    };
                };
            };
        };
        while (_si < (_src != null ? _src.length : ((0 : GoInt)))) {
            var _ninc:GoInt = ((0 : GoInt));
            {
                var __tmp__ = _enc._decodeQuantum(((_dst.__slice__(_n) : Slice<GoUInt8>)), _src, _si);
                _si = __tmp__._0;
                _ninc = __tmp__._1;
                _err = __tmp__._2;
            };
            _n = _n + (_ninc);
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public static function decodeString( _enc:Ref<Encoding>, _s:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        _enc;
        var _dbuf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_enc.decodedLen((_s != null ? _s.length : ((0 : GoInt)))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = _enc.decode(_dbuf, ((_s : Slice<GoByte>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : ((_dbuf.__slice__(0, _n) : Slice<GoUInt8>)), _1 : _err };
    }
    @:keep
    public static function _decodeQuantum( _enc:Ref<Encoding>, _dst:Slice<GoByte>, _src:Slice<GoByte>, _si:GoInt):{ var _0 : GoInt; var _1 : GoInt; var _2 : Error; } {
        _enc;
        var _nsi:GoInt = ((0 : GoInt)), _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _dbuf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]);
        var _dlen:GoInt = ((4 : GoInt));
        _enc._decodeMap;
        {
            var _j:GoInt = ((0 : GoInt));
            Go.cfor(_j < (_dbuf != null ? _dbuf.length : ((0 : GoInt))), _j++, {
                if ((_src != null ? _src.length : ((0 : GoInt))) == _si) {
                    if (_j == ((0 : GoInt))) {
                        return { _0 : _si, _1 : ((0 : GoInt)), _2 : ((null : stdgo.Error)) };
                    } else if (_j == ((1 : GoInt)) || _enc._padChar != ((-1 : GoInt32))) {
                        return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError_wrapper(Go.pointer((((_si - _j) : CorruptInputError)))) };
                    };
                    _dlen = _j;
                    break;
                };
                var _in:GoUInt8 = (_src != null ? _src[_si] : ((0 : GoUInt8)));
                _si++;
                var _out:GoUInt8 = (_enc._decodeMap != null ? _enc._decodeMap[_in] : ((0 : GoUInt8)));
                if (_out != ((255 : GoUInt8))) {
                    if (_dbuf != null) _dbuf[_j] = _out;
                    continue;
                };
                if ((_in == ((((("\n" : GoString))).code : GoRune))) || (_in == ((((("\r" : GoString))).code : GoRune)))) {
                    _j--;
                    continue;
                };
                if (((_in : GoRune)) != _enc._padChar) {
                    return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError_wrapper(Go.pointer((((_si - ((1 : GoInt))) : CorruptInputError)))) };
                };
                if (_j == ((0 : GoInt)) || _j == ((1 : GoInt))) {
                    return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError_wrapper(Go.pointer((((_si - ((1 : GoInt))) : CorruptInputError)))) };
                } else if (_j == ((2 : GoInt))) {
                    while ((_si < (_src != null ? _src.length : ((0 : GoInt)))) && (((_src != null ? _src[_si] : ((0 : GoUInt8))) == ((((("\n" : GoString))).code : GoRune))) || ((_src != null ? _src[_si] : ((0 : GoUInt8))) == ((((("\r" : GoString))).code : GoRune))))) {
                        _si++;
                    };
                    if (_si == (_src != null ? _src.length : ((0 : GoInt)))) {
                        return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError_wrapper(Go.pointer((((_src != null ? _src.length : ((0 : GoInt))) : CorruptInputError)))) };
                    };
                    if ((((_src != null ? _src[_si] : ((0 : GoUInt8))) : GoRune)) != _enc._padChar) {
                        return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError_wrapper(Go.pointer((((_si - ((1 : GoInt))) : CorruptInputError)))) };
                    };
                    _si++;
                };
                while ((_si < (_src != null ? _src.length : ((0 : GoInt)))) && (((_src != null ? _src[_si] : ((0 : GoUInt8))) == ((((("\n" : GoString))).code : GoRune))) || ((_src != null ? _src[_si] : ((0 : GoUInt8))) == ((((("\r" : GoString))).code : GoRune))))) {
                    _si++;
                };
                if (_si < (_src != null ? _src.length : ((0 : GoInt)))) {
                    _err = new CorruptInputError_wrapper(Go.pointer(((_si : CorruptInputError))));
                };
                _dlen = _j;
                break;
            });
        };
        var _val:GoUInt = ((((((_dbuf != null ? _dbuf[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt)) << ((18 : GoUnTypedInt))) | ((((_dbuf != null ? _dbuf[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt)) << ((12 : GoUnTypedInt)))) | ((((_dbuf != null ? _dbuf[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt)) << ((6 : GoUnTypedInt)))) | (((_dbuf != null ? _dbuf[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt));
        {
            final __tmp__0 = (((_val >> ((0 : GoUnTypedInt))) : GoByte));
            final __tmp__1 = (((_val >> ((8 : GoUnTypedInt))) : GoByte));
            final __tmp__2 = (((_val >> ((16 : GoUnTypedInt))) : GoByte));
            if (_dbuf != null) _dbuf[((2 : GoInt))] = __tmp__0;
            if (_dbuf != null) _dbuf[((1 : GoInt))] = __tmp__1;
            if (_dbuf != null) _dbuf[((0 : GoInt))] = __tmp__2;
        };
        {
            var __switchIndex__ = -1;
            while (true) {
                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _dlen == ((4 : GoInt)))) {
                    if (_dst != null) _dst[((2 : GoInt))] = (_dbuf != null ? _dbuf[((2 : GoInt))] : ((0 : GoUInt8)));
                    if (_dbuf != null) _dbuf[((2 : GoInt))] = ((0 : GoUInt8));
                    @:fallthrough {
                        __switchIndex__ = 1;
                        continue;
                    };
                    break;
                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _dlen == ((3 : GoInt)))) {
                    if (_dst != null) _dst[((1 : GoInt))] = (_dbuf != null ? _dbuf[((1 : GoInt))] : ((0 : GoUInt8)));
                    if (_enc._strict && ((_dbuf != null ? _dbuf[((2 : GoInt))] : ((0 : GoUInt8))) != ((0 : GoUInt8)))) {
                        return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError_wrapper(Go.pointer((((_si - ((1 : GoInt))) : CorruptInputError)))) };
                    };
                    if (_dbuf != null) _dbuf[((1 : GoInt))] = ((0 : GoUInt8));
                    @:fallthrough {
                        __switchIndex__ = 2;
                        continue;
                    };
                    break;
                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _dlen == ((2 : GoInt)))) {
                    if (_dst != null) _dst[((0 : GoInt))] = (_dbuf != null ? _dbuf[((0 : GoInt))] : ((0 : GoUInt8)));
                    if (_enc._strict && (((_dbuf != null ? _dbuf[((1 : GoInt))] : ((0 : GoUInt8))) != ((0 : GoUInt8))) || ((_dbuf != null ? _dbuf[((2 : GoInt))] : ((0 : GoUInt8))) != ((0 : GoUInt8))))) {
                        return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError_wrapper(Go.pointer((((_si - ((2 : GoInt))) : CorruptInputError)))) };
                    };
                    break;
                    break;
                };
                break;
            };
        };
        return { _0 : _si, _1 : _dlen - ((1 : GoInt)), _2 : _err };
    }
    @:keep
    public static function encodedLen( _enc:Ref<Encoding>, _n:GoInt):GoInt {
        _enc;
        if (_enc._padChar == ((-1 : GoInt32))) {
            return ((_n * ((8 : GoInt))) + ((5 : GoInt))) / ((6 : GoInt));
        };
        return ((_n + ((2 : GoInt))) / ((3 : GoInt))) * ((4 : GoInt));
    }
    @:keep
    public static function encodeToString( _enc:Ref<Encoding>, _src:Slice<GoByte>):GoString {
        _enc;
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_enc.encodedLen((_src != null ? _src.length : ((0 : GoInt)))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _enc.encode(_buf, _src);
        return ((_buf : GoString));
    }
    @:keep
    public static function encode( _enc:Ref<Encoding>, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        _enc;
        if ((_src != null ? _src.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return;
        };
        _enc._encode;
        var _di:GoInt = ((0 : GoInt)), _si:GoInt = ((0 : GoInt));
        var _n:GoInt = ((_src != null ? _src.length : ((0 : GoInt))) / ((3 : GoInt))) * ((3 : GoInt));
        while (_si < _n) {
            var _val:GoUInt = (((((_src != null ? _src[_si + ((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt)) << ((16 : GoUnTypedInt))) | ((((_src != null ? _src[_si + ((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt)) << ((8 : GoUnTypedInt)))) | (((_src != null ? _src[_si + ((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt));
            if (_dst != null) _dst[_di + ((0 : GoInt))] = (_enc._encode != null ? _enc._encode[(_val >> ((18 : GoUnTypedInt))) & ((63 : GoUInt))] : ((0 : GoUInt8)));
            if (_dst != null) _dst[_di + ((1 : GoInt))] = (_enc._encode != null ? _enc._encode[(_val >> ((12 : GoUnTypedInt))) & ((63 : GoUInt))] : ((0 : GoUInt8)));
            if (_dst != null) _dst[_di + ((2 : GoInt))] = (_enc._encode != null ? _enc._encode[(_val >> ((6 : GoUnTypedInt))) & ((63 : GoUInt))] : ((0 : GoUInt8)));
            if (_dst != null) _dst[_di + ((3 : GoInt))] = (_enc._encode != null ? _enc._encode[_val & ((63 : GoUInt))] : ((0 : GoUInt8)));
            _si = _si + (((3 : GoInt)));
            _di = _di + (((4 : GoInt)));
        };
        var _remain:GoInt = (_src != null ? _src.length : ((0 : GoInt))) - _si;
        if (_remain == ((0 : GoInt))) {
            return;
        };
        var _val:GoUInt = (((_src != null ? _src[_si + ((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt)) << ((16 : GoUnTypedInt));
        if (_remain == ((2 : GoInt))) {
            _val = _val | ((((_src != null ? _src[_si + ((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt)) << ((8 : GoUnTypedInt)));
        };
        if (_dst != null) _dst[_di + ((0 : GoInt))] = (_enc._encode != null ? _enc._encode[(_val >> ((18 : GoUnTypedInt))) & ((63 : GoUInt))] : ((0 : GoUInt8)));
        if (_dst != null) _dst[_di + ((1 : GoInt))] = (_enc._encode != null ? _enc._encode[(_val >> ((12 : GoUnTypedInt))) & ((63 : GoUInt))] : ((0 : GoUInt8)));
        if (_remain == ((2 : GoInt))) {
            if (_dst != null) _dst[_di + ((2 : GoInt))] = (_enc._encode != null ? _enc._encode[(_val >> ((6 : GoUnTypedInt))) & ((63 : GoUInt))] : ((0 : GoUInt8)));
            if (_enc._padChar != ((-1 : GoInt32))) {
                if (_dst != null) _dst[_di + ((3 : GoInt))] = ((_enc._padChar : GoByte));
            };
        } else if (_remain == ((1 : GoInt))) {
            if (_enc._padChar != ((-1 : GoInt32))) {
                if (_dst != null) _dst[_di + ((2 : GoInt))] = ((_enc._padChar : GoByte));
                if (_dst != null) _dst[_di + ((3 : GoInt))] = ((_enc._padChar : GoByte));
            };
        };
    }
    @:keep
    public static function strict( _enc:Encoding):Encoding {
        (_enc == null ? null : _enc.__copy__());
        _enc._strict = true;
        return _enc;
    }
    @:keep
    public static function withPadding( _enc:Encoding, _padding:GoRune):Encoding {
        (_enc == null ? null : _enc.__copy__());
        if (((_padding == ((((("\r" : GoString))).code : GoRune))) || (_padding == ((((("\n" : GoString))).code : GoRune)))) || (_padding > ((255 : GoInt32)))) {
            throw Go.toInterface(((("invalid padding" : GoString))));
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_enc._encode != null ? _enc._encode.length : ((0 : GoInt))), _i++, {
                if ((((_enc._encode != null ? _enc._encode[_i] : ((0 : GoUInt8))) : GoRune)) == _padding) {
                    throw Go.toInterface(((("padding contained in alphabet" : GoString))));
                };
            });
        };
        _enc._padChar = _padding;
        return _enc;
    }
}
class T_encoder_wrapper {
    @:keep
    public function close():Error {
        var _e = __t__;
        _e;
        if ((_e._err == null) && (_e._nbuf > ((0 : GoInt)))) {
            _e._enc.encode(((_e._out.__slice__(0) : Slice<GoUInt8>)), ((_e._buf.__slice__(0, _e._nbuf) : Slice<GoUInt8>)));
            {
                var __tmp__ = _e._w.write(((_e._out.__slice__(0, _e._enc.encodedLen(_e._nbuf)) : Slice<GoUInt8>)));
                _e._err = __tmp__._1;
            };
            _e._nbuf = ((0 : GoInt));
        };
        return _e._err;
    }
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _e = __t__;
        _e;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_e._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _e._err };
        };
        if (_e._nbuf > ((0 : GoInt))) {
            var _i:GoInt = ((0 : GoInt));
            {
                _i = ((0 : GoInt));
                Go.cfor((_i < (_p != null ? _p.length : ((0 : GoInt)))) && (_e._nbuf < ((3 : GoInt))), _i++, {
                    if (_e._buf != null) _e._buf[_e._nbuf] = (_p != null ? _p[_i] : ((0 : GoUInt8)));
                    _e._nbuf++;
                });
            };
            _n = _n + (_i);
            _p = ((_p.__slice__(_i) : Slice<GoUInt8>));
            if (_e._nbuf < ((3 : GoInt))) {
                return { _0 : _n, _1 : _err };
            };
            _e._enc.encode(((_e._out.__slice__(0) : Slice<GoUInt8>)), ((_e._buf.__slice__(0) : Slice<GoUInt8>)));
            {
                {
                    var __tmp__ = _e._w.write(((_e._out.__slice__(0, ((4 : GoInt))) : Slice<GoUInt8>)));
                    _e._err = __tmp__._1;
                };
                if (_e._err != null) {
                    return { _0 : _n, _1 : _e._err };
                };
            };
            _e._nbuf = ((0 : GoInt));
        };
        while ((_p != null ? _p.length : ((0 : GoInt))) >= ((3 : GoInt))) {
            var _nn:GoInt = ((768 : GoInt));
            if (_nn > (_p != null ? _p.length : ((0 : GoInt)))) {
                _nn = (_p != null ? _p.length : ((0 : GoInt)));
                _nn = _nn - (_nn % ((3 : GoInt)));
            };
            _e._enc.encode(((_e._out.__slice__(0) : Slice<GoUInt8>)), ((_p.__slice__(0, _nn) : Slice<GoUInt8>)));
            {
                {
                    var __tmp__ = _e._w.write(((_e._out.__slice__(((0 : GoInt)), (_nn / ((3 : GoInt))) * ((4 : GoInt))) : Slice<GoUInt8>)));
                    _e._err = __tmp__._1;
                };
                if (_e._err != null) {
                    return { _0 : _n, _1 : _e._err };
                };
            };
            _n = _n + (_nn);
            _p = ((_p.__slice__(_nn) : Slice<GoUInt8>));
        };
        Go.copySlice(((_e._buf.__slice__(0) : Slice<GoUInt8>)), _p);
        _e._nbuf = (_p != null ? _p.length : ((0 : GoInt)));
        _n = _n + ((_p != null ? _p.length : ((0 : GoInt))));
        return { _0 : _n, _1 : _err };
    }
    public var __t__ : T_encoder;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_encoder_static_extension {
    @:keep
    public static function close( _e:Ref<T_encoder>):Error {
        _e;
        if ((_e._err == null) && (_e._nbuf > ((0 : GoInt)))) {
            _e._enc.encode(((_e._out.__slice__(0) : Slice<GoUInt8>)), ((_e._buf.__slice__(0, _e._nbuf) : Slice<GoUInt8>)));
            {
                var __tmp__ = _e._w.write(((_e._out.__slice__(0, _e._enc.encodedLen(_e._nbuf)) : Slice<GoUInt8>)));
                _e._err = __tmp__._1;
            };
            _e._nbuf = ((0 : GoInt));
        };
        return _e._err;
    }
    @:keep
    public static function write( _e:Ref<T_encoder>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _e;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_e._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _e._err };
        };
        if (_e._nbuf > ((0 : GoInt))) {
            var _i:GoInt = ((0 : GoInt));
            {
                _i = ((0 : GoInt));
                Go.cfor((_i < (_p != null ? _p.length : ((0 : GoInt)))) && (_e._nbuf < ((3 : GoInt))), _i++, {
                    if (_e._buf != null) _e._buf[_e._nbuf] = (_p != null ? _p[_i] : ((0 : GoUInt8)));
                    _e._nbuf++;
                });
            };
            _n = _n + (_i);
            _p = ((_p.__slice__(_i) : Slice<GoUInt8>));
            if (_e._nbuf < ((3 : GoInt))) {
                return { _0 : _n, _1 : _err };
            };
            _e._enc.encode(((_e._out.__slice__(0) : Slice<GoUInt8>)), ((_e._buf.__slice__(0) : Slice<GoUInt8>)));
            {
                {
                    var __tmp__ = _e._w.write(((_e._out.__slice__(0, ((4 : GoInt))) : Slice<GoUInt8>)));
                    _e._err = __tmp__._1;
                };
                if (_e._err != null) {
                    return { _0 : _n, _1 : _e._err };
                };
            };
            _e._nbuf = ((0 : GoInt));
        };
        while ((_p != null ? _p.length : ((0 : GoInt))) >= ((3 : GoInt))) {
            var _nn:GoInt = ((768 : GoInt));
            if (_nn > (_p != null ? _p.length : ((0 : GoInt)))) {
                _nn = (_p != null ? _p.length : ((0 : GoInt)));
                _nn = _nn - (_nn % ((3 : GoInt)));
            };
            _e._enc.encode(((_e._out.__slice__(0) : Slice<GoUInt8>)), ((_p.__slice__(0, _nn) : Slice<GoUInt8>)));
            {
                {
                    var __tmp__ = _e._w.write(((_e._out.__slice__(((0 : GoInt)), (_nn / ((3 : GoInt))) * ((4 : GoInt))) : Slice<GoUInt8>)));
                    _e._err = __tmp__._1;
                };
                if (_e._err != null) {
                    return { _0 : _n, _1 : _e._err };
                };
            };
            _n = _n + (_nn);
            _p = ((_p.__slice__(_nn) : Slice<GoUInt8>));
        };
        Go.copySlice(((_e._buf.__slice__(0) : Slice<GoUInt8>)), _p);
        _e._nbuf = (_p != null ? _p.length : ((0 : GoInt)));
        _n = _n + ((_p != null ? _p.length : ((0 : GoInt))));
        return { _0 : _n, _1 : _err };
    }
}
class T_decoder_wrapper {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _d = __t__;
        _d;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if ((_d._out != null ? _d._out.length : ((0 : GoInt))) > ((0 : GoInt))) {
            _n = Go.copySlice(_p, _d._out);
            _d._out = ((_d._out.__slice__(_n) : Slice<GoUInt8>));
            return { _0 : _n, _1 : ((null : stdgo.Error)) };
        };
        if (_d._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _d._err };
        };
        while ((_d._nbuf < ((4 : GoInt))) && (_d._readErr == null)) {
            var _nn:GoInt = ((_p != null ? _p.length : ((0 : GoInt))) / ((3 : GoInt))) * ((4 : GoInt));
            if (_nn < ((4 : GoInt))) {
                _nn = ((4 : GoInt));
            };
            if (_nn > (_d._buf != null ? _d._buf.length : ((0 : GoInt)))) {
                _nn = (_d._buf != null ? _d._buf.length : ((0 : GoInt)));
            };
            {
                var __tmp__ = _d._r.read(((_d._buf.__slice__(_d._nbuf, _nn) : Slice<GoUInt8>)));
                _nn = __tmp__._0;
                _d._readErr = __tmp__._1;
            };
            _d._nbuf = _d._nbuf + (_nn);
        };
        if (_d._nbuf < ((4 : GoInt))) {
            if ((_d._enc._padChar == ((-1 : GoInt32))) && (_d._nbuf > ((0 : GoInt)))) {
                var _nw:GoInt = ((0 : GoInt));
                {
                    var __tmp__ = _d._enc.decode(((_d._outbuf.__slice__(0) : Slice<GoUInt8>)), ((_d._buf.__slice__(0, _d._nbuf) : Slice<GoUInt8>)));
                    _nw = __tmp__._0;
                    _d._err = __tmp__._1;
                };
                _d._nbuf = ((0 : GoInt));
                _d._out = ((_d._outbuf.__slice__(0, _nw) : Slice<GoUInt8>));
                _n = Go.copySlice(_p, _d._out);
                _d._out = ((_d._out.__slice__(_n) : Slice<GoUInt8>));
                if ((_n > ((0 : GoInt))) || (((_p != null ? _p.length : ((0 : GoInt))) == ((0 : GoInt))) && ((_d._out != null ? _d._out.length : ((0 : GoInt))) > ((0 : GoInt))))) {
                    return { _0 : _n, _1 : ((null : stdgo.Error)) };
                };
                if (_d._err != null) {
                    return { _0 : ((0 : GoInt)), _1 : _d._err };
                };
            };
            _d._err = _d._readErr;
            if ((_d._err == stdgo.io.Io.eof) && (_d._nbuf > ((0 : GoInt)))) {
                _d._err = stdgo.io.Io.errUnexpectedEOF;
            };
            return { _0 : ((0 : GoInt)), _1 : _d._err };
        };
        var _nr:GoInt = (_d._nbuf / ((4 : GoInt))) * ((4 : GoInt));
        var _nw:GoInt = (_d._nbuf / ((4 : GoInt))) * ((3 : GoInt));
        if (_nw > (_p != null ? _p.length : ((0 : GoInt)))) {
            {
                var __tmp__ = _d._enc.decode(((_d._outbuf.__slice__(0) : Slice<GoUInt8>)), ((_d._buf.__slice__(0, _nr) : Slice<GoUInt8>)));
                _nw = __tmp__._0;
                _d._err = __tmp__._1;
            };
            _d._out = ((_d._outbuf.__slice__(0, _nw) : Slice<GoUInt8>));
            _n = Go.copySlice(_p, _d._out);
            _d._out = ((_d._out.__slice__(_n) : Slice<GoUInt8>));
        } else {
            {
                var __tmp__ = _d._enc.decode(_p, ((_d._buf.__slice__(0, _nr) : Slice<GoUInt8>)));
                _n = __tmp__._0;
                _d._err = __tmp__._1;
            };
        };
        _d._nbuf = _d._nbuf - (_nr);
        Go.copySlice(((_d._buf.__slice__(0, _d._nbuf) : Slice<GoUInt8>)), ((_d._buf.__slice__(_nr) : Slice<GoUInt8>)));
        return { _0 : _n, _1 : _d._err };
    }
    public var __t__ : T_decoder;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_decoder_static_extension {
    @:keep
    public static function read( _d:Ref<T_decoder>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _d;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if ((_d._out != null ? _d._out.length : ((0 : GoInt))) > ((0 : GoInt))) {
            _n = Go.copySlice(_p, _d._out);
            _d._out = ((_d._out.__slice__(_n) : Slice<GoUInt8>));
            return { _0 : _n, _1 : ((null : stdgo.Error)) };
        };
        if (_d._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _d._err };
        };
        while ((_d._nbuf < ((4 : GoInt))) && (_d._readErr == null)) {
            var _nn:GoInt = ((_p != null ? _p.length : ((0 : GoInt))) / ((3 : GoInt))) * ((4 : GoInt));
            if (_nn < ((4 : GoInt))) {
                _nn = ((4 : GoInt));
            };
            if (_nn > (_d._buf != null ? _d._buf.length : ((0 : GoInt)))) {
                _nn = (_d._buf != null ? _d._buf.length : ((0 : GoInt)));
            };
            {
                var __tmp__ = _d._r.read(((_d._buf.__slice__(_d._nbuf, _nn) : Slice<GoUInt8>)));
                _nn = __tmp__._0;
                _d._readErr = __tmp__._1;
            };
            _d._nbuf = _d._nbuf + (_nn);
        };
        if (_d._nbuf < ((4 : GoInt))) {
            if ((_d._enc._padChar == ((-1 : GoInt32))) && (_d._nbuf > ((0 : GoInt)))) {
                var _nw:GoInt = ((0 : GoInt));
                {
                    var __tmp__ = _d._enc.decode(((_d._outbuf.__slice__(0) : Slice<GoUInt8>)), ((_d._buf.__slice__(0, _d._nbuf) : Slice<GoUInt8>)));
                    _nw = __tmp__._0;
                    _d._err = __tmp__._1;
                };
                _d._nbuf = ((0 : GoInt));
                _d._out = ((_d._outbuf.__slice__(0, _nw) : Slice<GoUInt8>));
                _n = Go.copySlice(_p, _d._out);
                _d._out = ((_d._out.__slice__(_n) : Slice<GoUInt8>));
                if ((_n > ((0 : GoInt))) || (((_p != null ? _p.length : ((0 : GoInt))) == ((0 : GoInt))) && ((_d._out != null ? _d._out.length : ((0 : GoInt))) > ((0 : GoInt))))) {
                    return { _0 : _n, _1 : ((null : stdgo.Error)) };
                };
                if (_d._err != null) {
                    return { _0 : ((0 : GoInt)), _1 : _d._err };
                };
            };
            _d._err = _d._readErr;
            if ((_d._err == stdgo.io.Io.eof) && (_d._nbuf > ((0 : GoInt)))) {
                _d._err = stdgo.io.Io.errUnexpectedEOF;
            };
            return { _0 : ((0 : GoInt)), _1 : _d._err };
        };
        var _nr:GoInt = (_d._nbuf / ((4 : GoInt))) * ((4 : GoInt));
        var _nw:GoInt = (_d._nbuf / ((4 : GoInt))) * ((3 : GoInt));
        if (_nw > (_p != null ? _p.length : ((0 : GoInt)))) {
            {
                var __tmp__ = _d._enc.decode(((_d._outbuf.__slice__(0) : Slice<GoUInt8>)), ((_d._buf.__slice__(0, _nr) : Slice<GoUInt8>)));
                _nw = __tmp__._0;
                _d._err = __tmp__._1;
            };
            _d._out = ((_d._outbuf.__slice__(0, _nw) : Slice<GoUInt8>));
            _n = Go.copySlice(_p, _d._out);
            _d._out = ((_d._out.__slice__(_n) : Slice<GoUInt8>));
        } else {
            {
                var __tmp__ = _d._enc.decode(_p, ((_d._buf.__slice__(0, _nr) : Slice<GoUInt8>)));
                _n = __tmp__._0;
                _d._err = __tmp__._1;
            };
        };
        _d._nbuf = _d._nbuf - (_nr);
        Go.copySlice(((_d._buf.__slice__(0, _d._nbuf) : Slice<GoUInt8>)), ((_d._buf.__slice__(_nr) : Slice<GoUInt8>)));
        return { _0 : _n, _1 : _d._err };
    }
}
class T_newlineFilteringReader_wrapper {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = __t__;
        _r;
        var __tmp__ = _r._wrapped.read(_p), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        while (_n > ((0 : GoInt))) {
            var _offset:GoInt = ((0 : GoInt));
            for (_i => _b in ((_p.__slice__(0, _n) : Slice<GoUInt8>))) {
                if ((_b != ((((("\r" : GoString))).code : GoRune))) && (_b != ((((("\n" : GoString))).code : GoRune)))) {
                    if (_i != _offset) {
                        if (_p != null) _p[_offset] = _b;
                    };
                    _offset++;
                };
            };
            if (_offset > ((0 : GoInt))) {
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
    public var __t__ : T_newlineFilteringReader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_newlineFilteringReader_static_extension {
    @:keep
    public static function read( _r:Ref<T_newlineFilteringReader>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _r;
        var __tmp__ = _r._wrapped.read(_p), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        while (_n > ((0 : GoInt))) {
            var _offset:GoInt = ((0 : GoInt));
            for (_i => _b in ((_p.__slice__(0, _n) : Slice<GoUInt8>))) {
                if ((_b != ((((("\r" : GoString))).code : GoRune))) && (_b != ((((("\n" : GoString))).code : GoRune)))) {
                    if (_i != _offset) {
                        if (_p != null) _p[_offset] = _b;
                    };
                    _offset++;
                };
            };
            if (_offset > ((0 : GoInt))) {
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
class T_testpair_wrapper {
    public var __t__ : T_testpair;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_encodingTest_wrapper {
    public var __t__ : T_encodingTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_nextRead_wrapper {
    public var __t__ : T_nextRead;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_faultInjectReader_wrapper {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = __t__;
        _r;
        var _nr:T_nextRead = (_r._nextc.__get__() == null ? null : _r._nextc.__get__().__copy__());
        if ((_p != null ? _p.length : ((0 : GoInt))) > _nr._n) {
            _p = ((_p.__slice__(0, _nr._n) : Slice<GoUInt8>));
        };
        var _n:GoInt = Go.copySlice(_p, _r._source);
        _r._source = ((_r._source.__slice__(_n) : GoString));
        return { _0 : _n, _1 : _nr._err };
    }
    public var __t__ : T_faultInjectReader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_faultInjectReader_static_extension {
    @:keep
    public static function read( _r:Ref<T_faultInjectReader>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _r;
        var _nr:T_nextRead = (_r._nextc.__get__() == null ? null : _r._nextc.__get__().__copy__());
        if ((_p != null ? _p.length : ((0 : GoInt))) > _nr._n) {
            _p = ((_p.__slice__(0, _nr._n) : Slice<GoUInt8>));
        };
        var _n:GoInt = Go.copySlice(_p, _r._source);
        _r._source = ((_r._source.__slice__(_n) : GoString));
        return { _0 : _n, _1 : _nr._err };
    }
}
class T__struct_0_wrapper {
    public var __t__ : T__struct_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_1_wrapper {
    public var __t__ : T__struct_1;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class CorruptInputError_wrapper {
    @:keep
    public function error():GoString {
        var _e = __t__;
        _e;
        return ((("illegal base64 data at input byte " : GoString))) + stdgo.strconv.Strconv.formatInt(((_e : GoInt64)), ((10 : GoInt)));
    }
    public var __t__ : CorruptInputError;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class CorruptInputError_static_extension {
    @:keep
    public static function error( _e:CorruptInputError):GoString {
        _e;
        return ((("illegal base64 data at input byte " : GoString))) + stdgo.strconv.Strconv.formatInt(((_e : GoInt64)), ((10 : GoInt)));
    }
}

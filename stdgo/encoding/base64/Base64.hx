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
@:structInit class Encoding {
    public function decodedLen(_n:GoInt):GoInt {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_enc.value._padChar == noPadding) {
            return _n * ((6 : GoInt)) / ((8 : GoInt));
        };
        return _n / ((4 : GoInt)) * ((3 : GoInt));
    }
    public function decode(_dst:Slice<GoByte>, _src:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_src.length == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        _enc.value._decodeMap;
        var _si:GoInt = ((0 : GoInt));
        while (stdgo.strconv.Strconv.intSize >= ((64 : GoUnTypedInt)) && _src.length - _si >= ((8 : GoInt)) && _dst.length - _n >= ((8 : GoInt))) {
            var _src2:Slice<GoUInt8> = _src.__slice__(_si, _si + ((8 : GoInt)));
            {
                var __tmp__ = _assemble64(_enc.value._decodeMap[_src2[((0 : GoInt))]], _enc.value._decodeMap[_src2[((1 : GoInt))]], _enc.value._decodeMap[_src2[((2 : GoInt))]], _enc.value._decodeMap[_src2[((3 : GoInt))]], _enc.value._decodeMap[_src2[((4 : GoInt))]], _enc.value._decodeMap[_src2[((5 : GoInt))]], _enc.value._decodeMap[_src2[((6 : GoInt))]], _enc.value._decodeMap[_src2[((7 : GoInt))]]), _dn:GoUInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    encoding.binary.Binary.bigEndian.putUint64(_dst.__slice__(_n), _dn);
                    _n = _n + (((6 : GoInt)));
                    _si = _si + (((8 : GoInt)));
                } else {
                    var _ninc:GoInt = ((0 : GoInt));
                    {
                        var __tmp__ = _enc.value._decodeQuantum(_dst.__slice__(_n), _src, _si);
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
        while (_src.length - _si >= ((4 : GoInt)) && _dst.length - _n >= ((4 : GoInt))) {
            var _src2:Slice<GoUInt8> = _src.__slice__(_si, _si + ((4 : GoInt)));
            {
                var __tmp__ = _assemble32(_enc.value._decodeMap[_src2[((0 : GoInt))]], _enc.value._decodeMap[_src2[((1 : GoInt))]], _enc.value._decodeMap[_src2[((2 : GoInt))]], _enc.value._decodeMap[_src2[((3 : GoInt))]]), _dn:GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    encoding.binary.Binary.bigEndian.putUint32(_dst.__slice__(_n), _dn);
                    _n = _n + (((3 : GoInt)));
                    _si = _si + (((4 : GoInt)));
                } else {
                    var _ninc:GoInt = ((0 : GoInt));
                    {
                        var __tmp__ = _enc.value._decodeQuantum(_dst.__slice__(_n), _src, _si);
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
        while (_si < _src.length) {
            var _ninc:GoInt = ((0 : GoInt));
            {
                var __tmp__ = _enc.value._decodeQuantum(_dst.__slice__(_n), _src, _si);
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
    public function decodeString(_s:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _dbuf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_enc.value.decodedLen(_s.length) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = _enc.value.decode(_dbuf, ((_s : Slice<GoByte>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _dbuf.__slice__(0, _n), _1 : _err };
    }
    public function _decodeQuantum(_dst:Slice<GoByte>, _src:Slice<GoByte>, _si:GoInt):{ var _0 : GoInt; var _1 : GoInt; var _2 : Error; } {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _nsi:GoInt = ((0 : GoInt)), _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _dbuf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]);
        var _dlen:GoInt = ((4 : GoInt));
        _enc.value._decodeMap;
        {
            var _j:GoInt = ((0 : GoInt));
            Go.cfor(_j < _dbuf.length, _j++, {
                if (_src.length == _si) {
                    if (_j == ((0 : GoInt))) {
                        return { _0 : _si, _1 : ((0 : GoInt)), _2 : ((null : stdgo.Error)) };
                    } else if (_j == ((1 : GoInt)) || _enc.value._padChar != noPadding) {
                        return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError((_si - _j)) };
                    };
                    _dlen = _j;
                    break;
                };
                var _in:GoUInt8 = _src[_si];
                _si++;
                var _out:GoUInt8 = _enc.value._decodeMap[_in];
                if (_out != ((255 : GoUInt8))) {
                    _dbuf[_j] = _out;
                    continue;
                };
                if (_in == (("\n".code : GoRune)) || _in == (("\r".code : GoRune))) {
                    _j--;
                    continue;
                };
                if (((_in : GoRune)) != _enc.value._padChar) {
                    return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError((_si - ((1 : GoInt)))) };
                };
                if (_j == ((0 : GoInt)) || _j == ((1 : GoInt))) {
                    return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError((_si - ((1 : GoInt)))) };
                } else if (_j == ((2 : GoInt))) {
                    while (_si < _src.length && (_src[_si] == (("\n".code : GoRune)) || _src[_si] == (("\r".code : GoRune)))) {
                        _si++;
                    };
                    if (_si == _src.length) {
                        return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError(_src.length) };
                    };
                    if (((_src[_si] : GoRune)) != _enc.value._padChar) {
                        return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError((_si - ((1 : GoInt)))) };
                    };
                    _si++;
                };
                while (_si < _src.length && (_src[_si] == (("\n".code : GoRune)) || _src[_si] == (("\r".code : GoRune)))) {
                    _si++;
                };
                if (_si < _src.length) {
                    _err = new CorruptInputError(_si);
                };
                _dlen = _j;
                break;
            });
        };
        var _val:GoUInt = (((_dbuf[((0 : GoInt))] : GoUInt)) << ((18 : GoUnTypedInt))) | (((_dbuf[((1 : GoInt))] : GoUInt)) << ((12 : GoUnTypedInt))) | (((_dbuf[((2 : GoInt))] : GoUInt)) << ((6 : GoUnTypedInt))) | ((_dbuf[((3 : GoInt))] : GoUInt));
        {
            final __tmp__0 = (((_val >> ((0 : GoUnTypedInt))) : GoByte));
            final __tmp__1 = (((_val >> ((8 : GoUnTypedInt))) : GoByte));
            final __tmp__2 = (((_val >> ((16 : GoUnTypedInt))) : GoByte));
            _dbuf[((2 : GoInt))] = __tmp__0;
            _dbuf[((1 : GoInt))] = __tmp__1;
            _dbuf[((0 : GoInt))] = __tmp__2;
        };
        {
            var __switchIndex__ = -1;
            while (true) {
                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _dlen == ((4 : GoInt)))) {
                    _dst[((2 : GoInt))] = _dbuf[((2 : GoInt))];
                    _dbuf[((2 : GoInt))] = ((0 : GoUInt8));
                    @:fallthrough {
                        __switchIndex__ = 1;
                        continue;
                    };
                    break;
                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _dlen == ((3 : GoInt)))) {
                    _dst[((1 : GoInt))] = _dbuf[((1 : GoInt))];
                    if (_enc.value._strict && _dbuf[((2 : GoInt))] != ((0 : GoUInt8))) {
                        return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError((_si - ((1 : GoInt)))) };
                    };
                    _dbuf[((1 : GoInt))] = ((0 : GoUInt8));
                    @:fallthrough {
                        __switchIndex__ = 2;
                        continue;
                    };
                    break;
                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _dlen == ((2 : GoInt)))) {
                    _dst[((0 : GoInt))] = _dbuf[((0 : GoInt))];
                    if (_enc.value._strict && (_dbuf[((1 : GoInt))] != ((0 : GoUInt8)) || _dbuf[((2 : GoInt))] != ((0 : GoUInt8)))) {
                        return { _0 : _si, _1 : ((0 : GoInt)), _2 : new CorruptInputError((_si - ((2 : GoInt)))) };
                    };
                    break;
                    break;
                };
                break;
            };
        };
        return { _0 : _si, _1 : _dlen - ((1 : GoInt)), _2 : _err };
    }
    public function encodedLen(_n:GoInt):GoInt {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_enc.value._padChar == noPadding) {
            return (_n * ((8 : GoInt)) + ((5 : GoInt))) / ((6 : GoInt));
        };
        return (_n + ((2 : GoInt))) / ((3 : GoInt)) * ((4 : GoInt));
    }
    public function encodeToString(_src:Slice<GoByte>):GoString {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_enc.value.encodedLen(_src.length) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _enc.value.encode(_buf, _src);
        return ((_buf : GoString));
    }
    public function encode(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_src.length == ((0 : GoInt))) {
            return;
        };
        _enc.value._encode;
        var _di:GoInt = ((0 : GoInt)), _si:GoInt = ((0 : GoInt));
        var _n:GoInt = (_src.length / ((3 : GoInt))) * ((3 : GoInt));
        while (_si < _n) {
            var _val:GoUInt = (((_src[_si + ((0 : GoInt))] : GoUInt)) << ((16 : GoUnTypedInt))) | (((_src[_si + ((1 : GoInt))] : GoUInt)) << ((8 : GoUnTypedInt))) | ((_src[_si + ((2 : GoInt))] : GoUInt));
            _dst[_di + ((0 : GoInt))] = _enc.value._encode[(_val >> ((18 : GoUnTypedInt))) & ((63 : GoUInt))];
            _dst[_di + ((1 : GoInt))] = _enc.value._encode[(_val >> ((12 : GoUnTypedInt))) & ((63 : GoUInt))];
            _dst[_di + ((2 : GoInt))] = _enc.value._encode[(_val >> ((6 : GoUnTypedInt))) & ((63 : GoUInt))];
            _dst[_di + ((3 : GoInt))] = _enc.value._encode[_val & ((63 : GoUInt))];
            _si = _si + (((3 : GoInt)));
            _di = _di + (((4 : GoInt)));
        };
        var _remain:GoInt = _src.length - _si;
        if (_remain == ((0 : GoInt))) {
            return;
        };
        var _val:GoUInt = (((_src[_si + ((0 : GoInt))] : GoUInt)) << ((16 : GoUnTypedInt)));
        if (_remain == ((2 : GoInt))) {
            _val = _val | ((((_src[_si + ((1 : GoInt))] : GoUInt)) << ((8 : GoUnTypedInt))));
        };
        _dst[_di + ((0 : GoInt))] = _enc.value._encode[(_val >> ((18 : GoUnTypedInt))) & ((63 : GoUInt))];
        _dst[_di + ((1 : GoInt))] = _enc.value._encode[(_val >> ((12 : GoUnTypedInt))) & ((63 : GoUInt))];
        if (_remain == ((2 : GoInt))) {
            _dst[_di + ((2 : GoInt))] = _enc.value._encode[(_val >> ((6 : GoUnTypedInt))) & ((63 : GoUInt))];
            if (_enc.value._padChar != noPadding) {
                _dst[_di + ((3 : GoInt))] = ((_enc.value._padChar : GoByte));
            };
        } else if (_remain == ((1 : GoInt))) {
            if (_enc.value._padChar != noPadding) {
                _dst[_di + ((2 : GoInt))] = ((_enc.value._padChar : GoByte));
                _dst[_di + ((3 : GoInt))] = ((_enc.value._padChar : GoByte));
            };
        };
    }
    public function strict():Pointer<Encoding> {
        var _enc = this.__copy__();
        _enc._strict = true;
        return Go.pointer(_enc);
    }
    public function withPadding(_padding:GoRune):Pointer<Encoding> {
        var _enc = this.__copy__();
        if (_padding == (("\r".code : GoRune)) || _padding == (("\n".code : GoRune)) || _padding > ((255 : GoInt32))) {
            throw "invalid padding";
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _enc._encode.length, _i++, {
                if (((_enc._encode[_i] : GoRune)) == _padding) {
                    throw "padding contained in alphabet";
                };
            });
        };
        _enc._padChar = _padding;
        return Go.pointer(_enc);
    }
    public var _encode : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 64) ((0 : GoUInt8))]);
    public var _decodeMap : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 256) ((0 : GoUInt8))]);
    public var _padChar : GoInt32 = ((0 : GoInt32));
    public var _strict : Bool = false;
    public function new(?_encode:GoArray<GoUInt8>, ?_decodeMap:GoArray<GoUInt8>, ?_padChar:GoInt32, ?_strict:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_encode) + " " + Go.string(_decodeMap) + " " + Go.string(_padChar) + " " + Go.string(_strict) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Encoding(_encode, _decodeMap, _padChar, _strict);
    }
    public function __set__(__tmp__) {
        this._encode = __tmp__._encode;
        this._decodeMap = __tmp__._decodeMap;
        this._padChar = __tmp__._padChar;
        this._strict = __tmp__._strict;
        return this;
    }
}
@:structInit class T_encoder {
    public function close():Error {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_e.value._err == null && _e.value._nbuf > ((0 : GoInt))) {
            _e.value._enc.value.encode(_e.value._out.__slice__(0), _e.value._buf.__slice__(0, _e.value._nbuf));
            {
                var __tmp__ = _e.value._w.write(_e.value._out.__slice__(0, _e.value._enc.value.encodedLen(_e.value._nbuf)));
                _e.value._err = __tmp__._1;
            };
            _e.value._nbuf = ((0 : GoInt));
        };
        return _e.value._err;
    }
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_e.value._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _e.value._err };
        };
        if (_e.value._nbuf > ((0 : GoInt))) {
            var _i:GoInt = ((0 : GoInt));
            {
                _i = ((0 : GoInt));
                Go.cfor(_i < _p.length && _e.value._nbuf < ((3 : GoInt)), _i++, {
                    _e.value._buf[_e.value._nbuf] = _p[_i];
                    _e.value._nbuf++;
                });
            };
            _n = _n + (_i);
            _p = _p.__slice__(_i);
            if (_e.value._nbuf < ((3 : GoInt))) {
                return { _0 : _n, _1 : _err };
            };
            _e.value._enc.value.encode(_e.value._out.__slice__(0), _e.value._buf.__slice__(0));
            {
                {
                    var __tmp__ = _e.value._w.write(_e.value._out.__slice__(0, ((4 : GoInt))));
                    _e.value._err = __tmp__._1;
                };
                if (_e.value._err != null) {
                    return { _0 : _n, _1 : _e.value._err };
                };
            };
            _e.value._nbuf = ((0 : GoInt));
        };
        while (_p.length >= ((3 : GoInt))) {
            var _nn:GoInt = _e.value._out.length / ((4 : GoInt)) * ((3 : GoInt));
            if (_nn > _p.length) {
                _nn = _p.length;
                _nn = _nn - (_nn % ((3 : GoInt)));
            };
            _e.value._enc.value.encode(_e.value._out.__slice__(0), _p.__slice__(0, _nn));
            {
                {
                    var __tmp__ = _e.value._w.write(_e.value._out.__slice__(((0 : GoInt)), _nn / ((3 : GoInt)) * ((4 : GoInt))));
                    _e.value._err = __tmp__._1;
                };
                if (_e.value._err != null) {
                    return { _0 : _n, _1 : _e.value._err };
                };
            };
            _n = _n + (_nn);
            _p = _p.__slice__(_nn);
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _p.length, _i++, {
                _e.value._buf[_i] = _p[_i];
            });
        };
        _e.value._nbuf = _p.length;
        _n = _n + (_p.length);
        return { _0 : _n, _1 : _err };
    }
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _enc : Pointer<Encoding> = new Pointer<Encoding>().nil();
    public var _w : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var _buf : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 3) ((0 : GoUInt8))]);
    public var _nbuf : GoInt = ((0 : GoInt));
    public var _out : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 1024) ((0 : GoUInt8))]);
    public function new(?_err:stdgo.Error, ?_enc:Pointer<Encoding>, ?_w:stdgo.io.Io.Writer, ?_buf:GoArray<GoUInt8>, ?_nbuf:GoInt, ?_out:GoArray<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_err) + " " + Go.string(_enc) + " " + Go.string(_w) + " " + Go.string(_buf) + " " + Go.string(_nbuf) + " " + Go.string(_out) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_encoder(_err, _enc, _w, _buf, _nbuf, _out);
    }
    public function __set__(__tmp__) {
        this._err = __tmp__._err;
        this._enc = __tmp__._enc;
        this._w = __tmp__._w;
        this._buf = __tmp__._buf;
        this._nbuf = __tmp__._nbuf;
        this._out = __tmp__._out;
        return this;
    }
}
@:named class CorruptInputError {
    public function error():GoString {
        var _e = this.__copy__();
        return (("illegal base64 data at input byte " : GoString)) + stdgo.strconv.Strconv.formatInt(_e.__t__, ((10 : GoInt)));
    }
    public var __t__ : GoInt64;
    public function new(?t:GoInt64) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new CorruptInputError(__t__);
}
@:structInit class T_decoder {
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_d.value._out.length > ((0 : GoInt))) {
            _n = Go.copy(_p, _d.value._out);
            _d.value._out = _d.value._out.__slice__(_n);
            return { _0 : _n, _1 : ((null : stdgo.Error)) };
        };
        if (_d.value._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _d.value._err };
        };
        while (_d.value._nbuf < ((4 : GoInt)) && _d.value._readErr == null) {
            var _nn:GoInt = _p.length / ((3 : GoInt)) * ((4 : GoInt));
            if (_nn < ((4 : GoInt))) {
                _nn = ((4 : GoInt));
            };
            if (_nn > _d.value._buf.length) {
                _nn = _d.value._buf.length;
            };
            {
                var __tmp__ = _d.value._r.read(_d.value._buf.__slice__(_d.value._nbuf, _nn));
                _nn = __tmp__._0;
                _d.value._readErr = __tmp__._1;
            };
            _d.value._nbuf = _d.value._nbuf + (_nn);
        };
        if (_d.value._nbuf < ((4 : GoInt))) {
            if (_d.value._enc.value._padChar == noPadding && _d.value._nbuf > ((0 : GoInt))) {
                var _nw:GoInt = ((0 : GoInt));
                {
                    var __tmp__ = _d.value._enc.value.decode(_d.value._outbuf.__slice__(0), _d.value._buf.__slice__(0, _d.value._nbuf));
                    _nw = __tmp__._0;
                    _d.value._err = __tmp__._1;
                };
                _d.value._nbuf = ((0 : GoInt));
                _d.value._out = _d.value._outbuf.__slice__(0, _nw);
                _n = Go.copy(_p, _d.value._out);
                _d.value._out = _d.value._out.__slice__(_n);
                if (_n > ((0 : GoInt)) || _p.length == ((0 : GoInt)) && _d.value._out.length > ((0 : GoInt))) {
                    return { _0 : _n, _1 : ((null : stdgo.Error)) };
                };
                if (_d.value._err != null) {
                    return { _0 : ((0 : GoInt)), _1 : _d.value._err };
                };
            };
            _d.value._err = _d.value._readErr;
            if (Go.toInterface(_d.value._err) == Go.toInterface(stdgo.io.Io.eof) && _d.value._nbuf > ((0 : GoInt))) {
                _d.value._err = stdgo.io.Io.errUnexpectedEOF;
            };
            return { _0 : ((0 : GoInt)), _1 : _d.value._err };
        };
        var _nr:GoInt = _d.value._nbuf / ((4 : GoInt)) * ((4 : GoInt));
        var _nw:GoInt = _d.value._nbuf / ((4 : GoInt)) * ((3 : GoInt));
        if (_nw > _p.length) {
            {
                var __tmp__ = _d.value._enc.value.decode(_d.value._outbuf.__slice__(0), _d.value._buf.__slice__(0, _nr));
                _nw = __tmp__._0;
                _d.value._err = __tmp__._1;
            };
            _d.value._out = _d.value._outbuf.__slice__(0, _nw);
            _n = Go.copy(_p, _d.value._out);
            _d.value._out = _d.value._out.__slice__(_n);
        } else {
            {
                var __tmp__ = _d.value._enc.value.decode(_p, _d.value._buf.__slice__(0, _nr));
                _n = __tmp__._0;
                _d.value._err = __tmp__._1;
            };
        };
        _d.value._nbuf = _d.value._nbuf - (_nr);
        Go.copy(_d.value._buf.__slice__(0, _d.value._nbuf), _d.value._buf.__slice__(_nr));
        return { _0 : _n, _1 : _d.value._err };
    }
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _readErr : stdgo.Error = ((null : stdgo.Error));
    public var _enc : Pointer<Encoding> = new Pointer<Encoding>().nil();
    public var _r : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public var _buf : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 1024) ((0 : GoUInt8))]);
    public var _nbuf : GoInt = ((0 : GoInt));
    public var _out : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _outbuf : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 768) ((0 : GoUInt8))]);
    public function new(?_err:stdgo.Error, ?_readErr:stdgo.Error, ?_enc:Pointer<Encoding>, ?_r:stdgo.io.Io.Reader, ?_buf:GoArray<GoUInt8>, ?_nbuf:GoInt, ?_out:Slice<GoUInt8>, ?_outbuf:GoArray<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_err) + " " + Go.string(_readErr) + " " + Go.string(_enc) + " " + Go.string(_r) + " " + Go.string(_buf) + " " + Go.string(_nbuf) + " " + Go.string(_out) + " " + Go.string(_outbuf) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_decoder(_err, _readErr, _enc, _r, _buf, _nbuf, _out, _outbuf);
    }
    public function __set__(__tmp__) {
        this._err = __tmp__._err;
        this._readErr = __tmp__._readErr;
        this._enc = __tmp__._enc;
        this._r = __tmp__._r;
        this._buf = __tmp__._buf;
        this._nbuf = __tmp__._nbuf;
        this._out = __tmp__._out;
        this._outbuf = __tmp__._outbuf;
        return this;
    }
}
@:structInit class T_newlineFilteringReader {
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _r.value._wrapped.read(_p), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        while (_n > ((0 : GoInt))) {
            var _offset:GoInt = ((0 : GoInt));
            {
                var _i;
                var _b;
                for (_obj in _p.__slice__(0, _n).keyValueIterator()) {
                    _i = _obj.key;
                    _b = _obj.value;
                    if (_b != (("\r".code : GoRune)) && _b != (("\n".code : GoRune))) {
                        if (_i != _offset) {
                            _p[_offset] = _b;
                        };
                        _offset++;
                    };
                };
            };
            if (_offset > ((0 : GoInt))) {
                return { _0 : _offset, _1 : _err };
            };
            {
                var __tmp__ = _r.value._wrapped.read(_p);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        return { _0 : _n, _1 : _err };
    }
    public var _wrapped : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public function new(?_wrapped:stdgo.io.Io.Reader) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_wrapped) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_newlineFilteringReader(_wrapped);
    }
    public function __set__(__tmp__) {
        this._wrapped = __tmp__._wrapped;
        return this;
    }
}
final noPadding : GoRune = -((1 : GoUnTypedInt));
final stdPadding : GoRune = (("=".code : GoRune));
final _encodeURL : GoString = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_";
var urlencoding : Pointer<Encoding> = newEncoding(_encodeURL);
var rawURLEncoding : Pointer<Encoding> = urlencoding.value.withPadding(noPadding);
final _encodeStd : GoString = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
var stdEncoding : Pointer<Encoding> = newEncoding(_encodeStd);
var rawStdEncoding : Pointer<Encoding> = stdEncoding.value.withPadding(noPadding);
/**
    // NewEncoding returns a new padded Encoding defined by the given alphabet,
    // which must be a 64-byte string that does not contain the padding character
    // or CR / LF ('\r', '\n').
    // The resulting Encoding uses the default padding character ('='),
    // which may be changed or disabled via WithPadding.
**/
function newEncoding(_encoder:GoString):Pointer<Encoding> {
        if (_encoder.length != ((64 : GoInt))) {
            throw "encoding alphabet is not 64-bytes long";
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _encoder.length, _i++, {
                if (_encoder[_i] == (("\n".code : GoRune)) || _encoder[_i] == (("\r".code : GoRune))) {
                    throw "encoding alphabet contains newline character";
                };
            });
        };
        var _e:Pointer<Encoding> = Go.pointer(new Encoding());
        _e.value._padChar = stdPadding;
        Go.copy(_e.value._encode.__slice__(0), _encoder);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _e.value._decodeMap.length, _i++, {
                _e.value._decodeMap[_i] = ((255 : GoUInt8));
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _encoder.length, _i++, {
                _e.value._decodeMap[_encoder[_i]] = ((_i : GoByte));
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
function newEncoder(_enc:Pointer<Encoding>, _w:stdgo.io.Io.Writer):stdgo.io.Io.WriteCloser {
        return Go.pointer((({ _enc : _enc, _w : _w, _err : ((null : stdgo.Error)), _buf : new GoArray<GoUInt8>(...[for (i in 0 ... 3) ((0 : GoUInt8))]), _nbuf : 0, _out : new GoArray<GoUInt8>(...[for (i in 0 ... 1024) ((0 : GoUInt8))]) } : T_encoder))).value;
    }
/**
    // assemble32 assembles 4 base64 digits into 3 bytes.
    // Each digit comes from the decode map, and will be 0xff
    // if it came from an invalid character.
**/
function _assemble32(_n1:GoByte, _n2:GoByte, _n3:GoByte, _n4:GoByte):{ var _0 : GoUInt32; var _1 : Bool; } {
        var _dn:GoUInt32 = ((0 : GoUInt32)), _ok:Bool = false;
        if (_n1 | _n2 | _n3 | _n4 == ((255 : GoUInt8))) {
            return { _0 : ((0 : GoUInt32)), _1 : false };
        };
        return { _0 : (((_n1 : GoUInt32)) << ((26 : GoUnTypedInt))) | (((_n2 : GoUInt32)) << ((20 : GoUnTypedInt))) | (((_n3 : GoUInt32)) << ((14 : GoUnTypedInt))) | (((_n4 : GoUInt32)) << ((8 : GoUnTypedInt))), _1 : true };
    }
/**
    // assemble64 assembles 8 base64 digits into 6 bytes.
    // Each digit comes from the decode map, and will be 0xff
    // if it came from an invalid character.
**/
function _assemble64(_n1:GoByte, _n2:GoByte, _n3:GoByte, _n4:GoByte, _n5:GoByte, _n6:GoByte, _n7:GoByte, _n8:GoByte):{ var _0 : GoUInt64; var _1 : Bool; } {
        var _dn:GoUInt64 = ((0 : GoUInt64)), _ok:Bool = false;
        if (_n1 | _n2 | _n3 | _n4 | _n5 | _n6 | _n7 | _n8 == ((255 : GoUInt8))) {
            return { _0 : ((0 : GoUInt64)), _1 : false };
        };
        return { _0 : (((_n1 : GoUInt64)) << ((58 : GoUnTypedInt))) | (((_n2 : GoUInt64)) << ((52 : GoUnTypedInt))) | (((_n3 : GoUInt64)) << ((46 : GoUnTypedInt))) | (((_n4 : GoUInt64)) << ((40 : GoUnTypedInt))) | (((_n5 : GoUInt64)) << ((34 : GoUnTypedInt))) | (((_n6 : GoUInt64)) << ((28 : GoUnTypedInt))) | (((_n7 : GoUInt64)) << ((22 : GoUnTypedInt))) | (((_n8 : GoUInt64)) << ((16 : GoUnTypedInt))), _1 : true };
    }
/**
    // NewDecoder constructs a new base64 stream decoder.
**/
function newDecoder(_enc:Pointer<Encoding>, _r:stdgo.io.Io.Reader):stdgo.io.Io.Reader {
        return Go.pointer((({ _enc : _enc, _r : Go.pointer(new T_newlineFilteringReader(_r)).value, _err : ((null : stdgo.Error)), _readErr : ((null : stdgo.Error)), _buf : new GoArray<GoUInt8>(...[for (i in 0 ... 1024) ((0 : GoUInt8))]), _nbuf : 0, _out : new Slice<GoUInt8>().nil(), _outbuf : new GoArray<GoUInt8>(...[for (i in 0 ... 768) ((0 : GoUInt8))]) } : T_decoder))).value;
    }
class Encoding_extension_fields {
    public function withPadding(__tmp__, _padding:GoRune):Pointer<Encoding> return __tmp__.withPadding(_padding);
    public function strict(__tmp__):Pointer<Encoding> return __tmp__.strict();
    public function encode(__tmp__, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void __tmp__.encode(_dst, _src);
    public function encodeToString(__tmp__, _src:Slice<GoByte>):GoString return __tmp__.encodeToString(_src);
    public function encodedLen(__tmp__, _n:GoInt):GoInt return __tmp__.encodedLen(_n);
    public function _decodeQuantum(__tmp__, _dst:Slice<GoByte>, _src:Slice<GoByte>, _si:GoInt):{ var _0 : GoInt; var _1 : GoInt; var _2 : Error; } return __tmp__._decodeQuantum(_dst, _src, _si);
    public function decodeString(__tmp__, _s:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.decodeString(_s);
    public function decode(__tmp__, _dst:Slice<GoByte>, _src:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.decode(_dst, _src);
    public function decodedLen(__tmp__, _n:GoInt):GoInt return __tmp__.decodedLen(_n);
}
class T_encoder_extension_fields {
    public function write(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_p);
    public function close(__tmp__):Error return __tmp__.close();
}
class CorruptInputError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
class T_decoder_extension_fields {
    public function read(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_p);
}
class T_newlineFilteringReader_extension_fields {
    public function read(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_p);
}

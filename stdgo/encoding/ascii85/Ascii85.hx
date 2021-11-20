package stdgo.encoding.ascii85;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:structInit class T_encoder {
    public function close():Error {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_e.value._err == null && _e.value._nbuf > ((0 : GoInt))) {
            var _nout:GoInt = encode(_e.value._out.__slice__(((0 : GoInt))), _e.value._buf.__slice__(((0 : GoInt)), _e.value._nbuf));
            _e.value._nbuf = ((0 : GoInt));
            {
                var __tmp__ = _e.value._w.write(_e.value._out.__slice__(((0 : GoInt)), _nout));
                _e.value._err = __tmp__._1;
            };
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
                Go.cfor(_i < _p.length && _e.value._nbuf < ((4 : GoInt)), _i++, {
                    _e.value._buf[_e.value._nbuf] = _p[_i];
                    _e.value._nbuf++;
                });
            };
            _n = _n + (_i);
            _p = _p.__slice__(_i);
            if (_e.value._nbuf < ((4 : GoInt))) {
                return { _0 : _n, _1 : _err };
            };
            var _nout:GoInt = encode(_e.value._out.__slice__(((0 : GoInt))), _e.value._buf.__slice__(((0 : GoInt))));
            {
                {
                    var __tmp__ = _e.value._w.write(_e.value._out.__slice__(((0 : GoInt)), _nout));
                    _e.value._err = __tmp__._1;
                };
                if (_e.value._err != null) {
                    return { _0 : _n, _1 : _e.value._err };
                };
            };
            _e.value._nbuf = ((0 : GoInt));
        };
        while (_p.length >= ((4 : GoInt))) {
            var _nn:GoInt = _e.value._out.length / ((5 : GoInt)) * ((4 : GoInt));
            if (_nn > _p.length) {
                _nn = _p.length;
            };
            _nn = _nn - (_nn % ((4 : GoInt)));
            if (_nn > ((0 : GoInt))) {
                var _nout:GoInt = encode(_e.value._out.__slice__(((0 : GoInt))), _p.__slice__(((0 : GoInt)), _nn));
                {
                    {
                        var __tmp__ = _e.value._w.write(_e.value._out.__slice__(((0 : GoInt)), _nout));
                        _e.value._err = __tmp__._1;
                    };
                    if (_e.value._err != null) {
                        return { _0 : _n, _1 : _e.value._err };
                    };
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
    public var _w : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var _buf : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]);
    public var _nbuf : GoInt = ((0 : GoInt));
    public var _out : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 1024) ((0 : GoUInt8))]);
    public function new(?_err:stdgo.Error, ?_w:stdgo.io.Io.Writer, ?_buf:GoArray<GoUInt8>, ?_nbuf:GoInt, ?_out:GoArray<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_err) + " " + Go.string(_w) + " " + Go.string(_buf) + " " + Go.string(_nbuf) + " " + Go.string(_out) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_encoder(_err, _w, _buf, _nbuf, _out);
    }
    public function __set__(__tmp__) {
        this._err = __tmp__._err;
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
        return (("illegal ascii85 data at input byte " : GoString)) + stdgo.strconv.Strconv.formatInt(_e.__t__, ((10 : GoInt)));
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
        if (_p.length == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        if (_d.value._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _d.value._err };
        };
        while (true) {
            if (_d.value._out.length > ((0 : GoInt))) {
                _n = Go.copy(_p, _d.value._out);
                _d.value._out = _d.value._out.__slice__(_n);
                return { _0 : _n, _1 : _err };
            };
            var _nn:GoInt = ((0 : GoInt)), _nsrc:GoInt = ((0 : GoInt)), _ndst:GoInt = ((0 : GoInt));
            if (_d.value._nbuf > ((0 : GoInt))) {
                {
                    var __tmp__ = decode(_d.value._outbuf.__slice__(((0 : GoInt))), _d.value._buf.__slice__(((0 : GoInt)), _d.value._nbuf), _d.value._readErr != null);
                    _ndst = __tmp__._0;
                    _nsrc = __tmp__._1;
                    _d.value._err = __tmp__._2;
                };
                if (_ndst > ((0 : GoInt))) {
                    _d.value._out = _d.value._outbuf.__slice__(((0 : GoInt)), _ndst);
                    _d.value._nbuf = Go.copy(_d.value._buf.__slice__(((0 : GoInt))), _d.value._buf.__slice__(_nsrc, _d.value._nbuf));
                    continue;
                };
                if (_ndst == ((0 : GoInt)) && _d.value._err == null) {
                    var _off:GoInt = ((0 : GoInt));
                    {
                        var _i:GoInt = ((0 : GoInt));
                        Go.cfor(_i < _d.value._nbuf, _i++, {
                            if (_d.value._buf[_i] > ((" ".code : GoRune))) {
                                _d.value._buf[_off] = _d.value._buf[_i];
                                _off++;
                            };
                        });
                    };
                    _d.value._nbuf = _off;
                };
            };
            if (_d.value._err != null) {
                return { _0 : ((0 : GoInt)), _1 : _d.value._err };
            };
            if (_d.value._readErr != null) {
                _d.value._err = _d.value._readErr;
                return { _0 : ((0 : GoInt)), _1 : _d.value._err };
            };
            {
                var __tmp__ = _d.value._r.read(_d.value._buf.__slice__(_d.value._nbuf));
                _nn = __tmp__._0;
                _d.value._readErr = __tmp__._1;
            };
            _d.value._nbuf = _d.value._nbuf + (_nn);
        };
    }
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _readErr : stdgo.Error = ((null : stdgo.Error));
    public var _r : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public var _buf : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 1024) ((0 : GoUInt8))]);
    public var _nbuf : GoInt = ((0 : GoInt));
    public var _out : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _outbuf : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 1024) ((0 : GoUInt8))]);
    public function new(?_err:stdgo.Error, ?_readErr:stdgo.Error, ?_r:stdgo.io.Io.Reader, ?_buf:GoArray<GoUInt8>, ?_nbuf:GoInt, ?_out:Slice<GoUInt8>, ?_outbuf:GoArray<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_err) + " " + Go.string(_readErr) + " " + Go.string(_r) + " " + Go.string(_buf) + " " + Go.string(_nbuf) + " " + Go.string(_out) + " " + Go.string(_outbuf) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_decoder(_err, _readErr, _r, _buf, _nbuf, _out, _outbuf);
    }
    public function __set__(__tmp__) {
        this._err = __tmp__._err;
        this._readErr = __tmp__._readErr;
        this._r = __tmp__._r;
        this._buf = __tmp__._buf;
        this._nbuf = __tmp__._nbuf;
        this._out = __tmp__._out;
        this._outbuf = __tmp__._outbuf;
        return this;
    }
}
/**
    // Encode encodes src into at most MaxEncodedLen(len(src))
    // bytes of dst, returning the actual number of bytes written.
    //
    // The encoding handles 4-byte chunks, using a special encoding
    // for the last fragment, so Encode is not appropriate for use on
    // individual blocks of a large data stream. Use NewEncoder() instead.
    //
    // Often, ascii85-encoded data is wrapped in <~ and ~> symbols.
    // Encode does not add these.
**/
function encode(_dst:Slice<GoByte>, _src:Slice<GoByte>):GoInt {
        if (_src.length == ((0 : GoInt))) {
            return ((0 : GoInt));
        };
        var _n:GoInt = ((0 : GoInt));
        while (_src.length > ((0 : GoInt))) {
            _dst[((0 : GoInt))] = ((0 : GoUInt8));
            _dst[((1 : GoInt))] = ((0 : GoUInt8));
            _dst[((2 : GoInt))] = ((0 : GoUInt8));
            _dst[((3 : GoInt))] = ((0 : GoUInt8));
            _dst[((4 : GoInt))] = ((0 : GoUInt8));
            var _v:GoUInt32 = ((0 : GoUInt32));
            {
                var __switchIndex__ = -1;
                while (true) {
                    if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _src.length == ((3 : GoInt)))) {
                        _v = _v | ((((_src[((2 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))));
                        @:fallthrough {
                            __switchIndex__ = 2;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _src.length == ((2 : GoInt)))) {
                        _v = _v | ((((_src[((1 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))));
                        @:fallthrough {
                            __switchIndex__ = 3;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && _src.length == ((1 : GoInt)))) {
                        _v = _v | ((((_src[((0 : GoInt))] : GoUInt32)) << ((24 : GoUnTypedInt))));
                        break;
                        break;
                    };
                    break;
                };
            };
            if (_v == ((0 : GoUInt32)) && _src.length >= ((4 : GoInt))) {
                _dst[((0 : GoInt))] = (("z".code : GoRune));
                _dst = _dst.__slice__(((1 : GoInt)));
                _src = _src.__slice__(((4 : GoInt)));
                _n++;
                continue;
            };
            {
                var _i:GoInt = ((4 : GoInt));
                Go.cfor(_i >= ((0 : GoInt)), _i--, {
                    _dst[_i] = (("!".code : GoRune)) + (((_v % ((85 : GoUInt32))) : GoByte));
                    _v = _v / (((85 : GoUInt32)));
                });
            };
            var _m:GoInt = ((5 : GoInt));
            if (_src.length < ((4 : GoInt))) {
                _m = _m - (((4 : GoInt)) - _src.length);
                _src = new Slice<GoUInt8>().nil();
            } else {
                _src = _src.__slice__(((4 : GoInt)));
            };
            _dst = _dst.__slice__(_m);
            _n = _n + (_m);
        };
        return _n;
    }
/**
    // MaxEncodedLen returns the maximum length of an encoding of n source bytes.
**/
function maxEncodedLen(_n:GoInt):GoInt {
        return (_n + ((3 : GoInt))) / ((4 : GoInt)) * ((5 : GoInt));
    }
/**
    // NewEncoder returns a new ascii85 stream encoder. Data written to
    // the returned writer will be encoded and then written to w.
    // Ascii85 encodings operate in 32-bit blocks; when finished
    // writing, the caller must Close the returned encoder to flush any
    // trailing partial block.
**/
function newEncoder(_w:stdgo.io.Io.Writer):stdgo.io.Io.WriteCloser {
        return Go.pointer((({ _w : _w, _err : ((null : stdgo.Error)), _buf : new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]), _nbuf : 0, _out : new GoArray<GoUInt8>(...[for (i in 0 ... 1024) ((0 : GoUInt8))]) } : T_encoder))).value;
    }
/**
    // Decode decodes src into dst, returning both the number
    // of bytes written to dst and the number consumed from src.
    // If src contains invalid ascii85 data, Decode will return the
    // number of bytes successfully written and a CorruptInputError.
    // Decode ignores space and control characters in src.
    // Often, ascii85-encoded data is wrapped in <~ and ~> symbols.
    // Decode expects these to have been stripped by the caller.
    //
    // If flush is true, Decode assumes that src represents the
    // end of the input stream and processes it completely rather
    // than wait for the completion of another 32-bit block.
    //
    // NewDecoder wraps an io.Reader interface around Decode.
    //
**/
function decode(_dst:Slice<GoByte>, _src:Slice<GoByte>, _flush:Bool):{ var _0 : GoInt; var _1 : GoInt; var _2 : Error; } {
        var _ndst:GoInt = ((0 : GoInt)), _nsrc:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _v:GoUInt32 = ((0 : GoUInt32));
        var _nb:GoInt = ((0 : GoInt));
        {
            var _i;
            var _b;
            for (_obj in _src.keyValueIterator()) {
                _i = _obj.key;
                _b = _obj.value;
                if (_dst.length - _ndst < ((4 : GoInt))) {
                    return { _0 : _ndst, _1 : _nsrc, _2 : _err };
                };
                if (_b <= ((" ".code : GoRune))) {
                    continue;
                } else if (_b == (("z".code : GoRune)) && _nb == ((0 : GoInt))) {
                    _nb = ((5 : GoInt));
                    _v = ((0 : GoUInt32));
                } else if ((("!".code : GoRune)) <= _b && _b <= (("u".code : GoRune))) {
                    _v = _v * ((85 : GoUInt32)) + (((_b - (("!".code : GoRune))) : GoUInt32));
                    _nb++;
                } else {
                    return { _0 : ((0 : GoInt)), _1 : ((0 : GoInt)), _2 : new CorruptInputError(_i) };
                };
                if (_nb == ((5 : GoInt))) {
                    _nsrc = _i + ((1 : GoInt));
                    _dst[_ndst] = (((_v >> ((24 : GoUnTypedInt))) : GoByte));
                    _dst[_ndst + ((1 : GoInt))] = (((_v >> ((16 : GoUnTypedInt))) : GoByte));
                    _dst[_ndst + ((2 : GoInt))] = (((_v >> ((8 : GoUnTypedInt))) : GoByte));
                    _dst[_ndst + ((3 : GoInt))] = ((_v : GoByte));
                    _ndst = _ndst + (((4 : GoInt)));
                    _nb = ((0 : GoInt));
                    _v = ((0 : GoUInt32));
                };
            };
        };
        if (_flush) {
            _nsrc = _src.length;
            if (_nb > ((0 : GoInt))) {
                if (_nb == ((1 : GoInt))) {
                    return { _0 : ((0 : GoInt)), _1 : ((0 : GoInt)), _2 : new CorruptInputError(_src.length) };
                };
                {
                    var _i:GoInt = _nb;
                    Go.cfor(_i < ((5 : GoInt)), _i++, {
                        _v = _v * ((85 : GoUInt32)) + ((84 : GoUInt32));
                    });
                };
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _nb - ((1 : GoInt)), _i++, {
                        _dst[_ndst] = (((_v >> ((24 : GoUnTypedInt))) : GoByte));
                        _v = (_v << (((8 : GoUnTypedInt))));
                        _ndst++;
                    });
                };
            };
        };
        return { _0 : _ndst, _1 : _nsrc, _2 : _err };
    }
/**
    // NewDecoder constructs a new ascii85 stream decoder.
**/
function newDecoder(_r:stdgo.io.Io.Reader):stdgo.io.Io.Reader {
        return Go.pointer((({ _r : _r, _err : ((null : stdgo.Error)), _readErr : ((null : stdgo.Error)), _buf : new GoArray<GoUInt8>(...[for (i in 0 ... 1024) ((0 : GoUInt8))]), _nbuf : 0, _out : new Slice<GoUInt8>().nil(), _outbuf : new GoArray<GoUInt8>(...[for (i in 0 ... 1024) ((0 : GoUInt8))]) } : T_decoder))).value;
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

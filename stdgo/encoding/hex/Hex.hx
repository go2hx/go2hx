package stdgo.encoding.hex;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:named class InvalidByteError {
    public function error():GoString {
        var _e = this.__copy__();
        return stdgo.fmt.Fmt.sprintf("encoding/hex: invalid byte: %#U", Go.toInterface(_e.__t__));
    }
    public var __t__ : GoUInt8;
    public function new(?t:GoUInt8) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new InvalidByteError(__t__);
}
@:structInit class T_encoder {
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        while (_p.length > ((0 : GoInt)) && _e.value._err == null) {
            var _chunkSize:GoInt = _bufferSize / ((2 : GoUnTypedInt));
            if (_p.length < _chunkSize) {
                _chunkSize = _p.length;
            };
            var _written:GoInt = ((0 : GoInt));
            var _encoded:GoInt = encode(_e.value._out.__slice__(0), _p.__slice__(0, _chunkSize));
            {
                var __tmp__ = _e.value._w.write(_e.value._out.__slice__(0, _encoded));
                _written = __tmp__._0;
                _e.value._err = __tmp__._1;
            };
            _n = _n + (_written / ((2 : GoInt)));
            _p = _p.__slice__(_chunkSize);
        };
        return { _0 : _n, _1 : _e.value._err };
    }
    public var _w : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _out : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 1024) ((0 : GoUInt8))]);
    public function new(?_w:stdgo.io.Io.Writer, ?_err:stdgo.Error, ?_out:GoArray<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_w) + " " + Go.string(_err) + " " + Go.string(_out) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_encoder(_w, _err, _out);
    }
    public function __set__(__tmp__) {
        this._w = __tmp__._w;
        this._err = __tmp__._err;
        this._out = __tmp__._out;
        return this;
    }
}
@:structInit class T_decoder {
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_d.value._in.length < ((2 : GoInt)) && _d.value._err == null) {
            var _numCopy:GoInt = ((0 : GoInt)), _numRead:GoInt = ((0 : GoInt));
            _numCopy = Go.copy(_d.value._arr.__slice__(0), _d.value._in);
            {
                var __tmp__ = _d.value._r.read(_d.value._arr.__slice__(_numCopy));
                _numRead = __tmp__._0;
                _d.value._err = __tmp__._1;
            };
            _d.value._in = _d.value._arr.__slice__(0, _numCopy + _numRead);
            if (Go.toInterface(_d.value._err) == Go.toInterface(stdgo.io.Io.eof) && _d.value._in.length % ((2 : GoInt)) != ((0 : GoInt))) {
                {
                    var __tmp__ = _fromHexChar(_d.value._in[_d.value._in.length - ((1 : GoInt))]), _:GoUInt8 = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        _d.value._err = new InvalidByteError(_d.value._in[_d.value._in.length - ((1 : GoInt))]);
                    } else {
                        _d.value._err = stdgo.io.Io.errUnexpectedEOF;
                    };
                };
            };
        };
        {
            var _numAvail:GoInt = _d.value._in.length / ((2 : GoInt));
            if (_p.length > _numAvail) {
                _p = _p.__slice__(0, _numAvail);
            };
        };
        var __tmp__ = decode(_p, _d.value._in.__slice__(0, _p.length * ((2 : GoInt)))), _numDec:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _d.value._in = _d.value._in.__slice__(((2 : GoInt)) * _numDec);
        if (_err != null) {
            {
                final __tmp__0 = new Slice<GoUInt8>().nil();
                final __tmp__1 = _err;
                _d.value._in = __tmp__0;
                _d.value._err = __tmp__1;
            };
        };
        if (_d.value._in.length < ((2 : GoInt))) {
            return { _0 : _numDec, _1 : _d.value._err };
        };
        return { _0 : _numDec, _1 : ((null : stdgo.Error)) };
    }
    public var _r : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _in : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _arr : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 1024) ((0 : GoUInt8))]);
    public function new(?_r:stdgo.io.Io.Reader, ?_err:stdgo.Error, ?_in:Slice<GoUInt8>, ?_arr:GoArray<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_r) + " " + Go.string(_err) + " " + Go.string(_in) + " " + Go.string(_arr) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_decoder(_r, _err, _in, _arr);
    }
    public function __set__(__tmp__) {
        this._r = __tmp__._r;
        this._err = __tmp__._err;
        this._in = __tmp__._in;
        this._arr = __tmp__._arr;
        return this;
    }
}
@:structInit class T_dumper {
    public function close():Error {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _err:Error = ((null : stdgo.Error));
        if (_h.value._closed) {
            return _err;
        };
        _h.value._closed = true;
        if (_h.value._used == ((0 : GoInt))) {
            return _err;
        };
        _h.value._buf[((0 : GoInt))] = ((" ".code : GoRune));
        _h.value._buf[((1 : GoInt))] = ((" ".code : GoRune));
        _h.value._buf[((2 : GoInt))] = ((" ".code : GoRune));
        _h.value._buf[((3 : GoInt))] = ((" ".code : GoRune));
        _h.value._buf[((4 : GoInt))] = (("|".code : GoRune));
        var _nBytes:GoInt = _h.value._used;
        while (_h.value._used < ((16 : GoInt))) {
            var _l:GoInt = ((3 : GoInt));
            if (_h.value._used == ((7 : GoInt))) {
                _l = ((4 : GoInt));
            } else if (_h.value._used == ((15 : GoInt))) {
                _l = ((5 : GoInt));
            };
            {
                var __tmp__ = _h.value._w.write(_h.value._buf.__slice__(0, _l));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
            _h.value._used++;
        };
        _h.value._rightChars[_nBytes] = (("|".code : GoRune));
        _h.value._rightChars[_nBytes + ((1 : GoInt))] = (("\n".code : GoRune));
        {
            var __tmp__ = _h.value._w.write(_h.value._rightChars.__slice__(0, _nBytes + ((2 : GoInt))));
            _err = __tmp__._1;
        };
        return _err;
    }
    public function write(_data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_h.value._closed) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_("encoding/hex: dumper closed") };
        };
        {
            var _i;
            for (_obj in _data.keyValueIterator()) {
                _i = _obj.key;
                if (_h.value._used == ((0 : GoInt))) {
                    _h.value._buf[((0 : GoInt))] = (((_h.value._n >> ((24 : GoUnTypedInt))) : GoByte));
                    _h.value._buf[((1 : GoInt))] = (((_h.value._n >> ((16 : GoUnTypedInt))) : GoByte));
                    _h.value._buf[((2 : GoInt))] = (((_h.value._n >> ((8 : GoUnTypedInt))) : GoByte));
                    _h.value._buf[((3 : GoInt))] = ((_h.value._n : GoByte));
                    encode(_h.value._buf.__slice__(((4 : GoInt))), _h.value._buf.__slice__(0, ((4 : GoInt))));
                    _h.value._buf[((12 : GoInt))] = ((" ".code : GoRune));
                    _h.value._buf[((13 : GoInt))] = ((" ".code : GoRune));
                    {
                        var __tmp__ = _h.value._w.write(_h.value._buf.__slice__(((4 : GoInt))));
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : _n, _1 : _err };
                    };
                };
                encode(_h.value._buf.__slice__(0), _data.__slice__(_i, _i + ((1 : GoInt))));
                _h.value._buf[((2 : GoInt))] = ((" ".code : GoRune));
                var _l:GoInt = ((3 : GoInt));
                if (_h.value._used == ((7 : GoInt))) {
                    _h.value._buf[((3 : GoInt))] = ((" ".code : GoRune));
                    _l = ((4 : GoInt));
                } else if (_h.value._used == ((15 : GoInt))) {
                    _h.value._buf[((3 : GoInt))] = ((" ".code : GoRune));
                    _h.value._buf[((4 : GoInt))] = (("|".code : GoRune));
                    _l = ((5 : GoInt));
                };
                {
                    var __tmp__ = _h.value._w.write(_h.value._buf.__slice__(0, _l));
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : _n, _1 : _err };
                };
                _n++;
                _h.value._rightChars[_h.value._used] = _toChar(_data[_i]);
                _h.value._used++;
                _h.value._n++;
                if (_h.value._used == ((16 : GoInt))) {
                    _h.value._rightChars[((16 : GoInt))] = (("|".code : GoRune));
                    _h.value._rightChars[((17 : GoInt))] = (("\n".code : GoRune));
                    {
                        var __tmp__ = _h.value._w.write(_h.value._rightChars.__slice__(0));
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : _n, _1 : _err };
                    };
                    _h.value._used = ((0 : GoInt));
                };
            };
        };
        return { _0 : _n, _1 : _err };
    }
    public var _w : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var _rightChars : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 18) ((0 : GoUInt8))]);
    public var _buf : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 14) ((0 : GoUInt8))]);
    public var _used : GoInt = ((0 : GoInt));
    public var _n : GoUInt = ((0 : GoUInt));
    public var _closed : Bool = false;
    public function new(?_w:stdgo.io.Io.Writer, ?_rightChars:GoArray<GoUInt8>, ?_buf:GoArray<GoUInt8>, ?_used:GoInt, ?_n:GoUInt, ?_closed:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_w) + " " + Go.string(_rightChars) + " " + Go.string(_buf) + " " + Go.string(_used) + " " + Go.string(_n) + " " + Go.string(_closed) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_dumper(_w, _rightChars, _buf, _used, _n, _closed);
    }
    public function __set__(__tmp__) {
        this._w = __tmp__._w;
        this._rightChars = __tmp__._rightChars;
        this._buf = __tmp__._buf;
        this._used = __tmp__._used;
        this._n = __tmp__._n;
        this._closed = __tmp__._closed;
        return this;
    }
}
final _hextable : GoString = "0123456789abcdef";
var errLength : stdgo.Error = stdgo.errors.Errors.new_("encoding/hex: odd length hex string");
final _bufferSize : GoInt64 = ((1024 : GoUnTypedInt));
/**
    // EncodedLen returns the length of an encoding of n source bytes.
    // Specifically, it returns n * 2.
**/
function encodedLen(_n:GoInt):GoInt {
        return _n * ((2 : GoInt));
    }
/**
    // Encode encodes src into EncodedLen(len(src))
    // bytes of dst. As a convenience, it returns the number
    // of bytes written to dst, but this value is always EncodedLen(len(src)).
    // Encode implements hexadecimal encoding.
**/
function encode(_dst:Slice<GoByte>, _src:Slice<GoByte>):GoInt {
        var _j:GoInt = ((0 : GoInt));
        for (_v in _src) {
            _dst[_j] = _hextable[(_v >> ((4 : GoUnTypedInt)))];
            _dst[_j + ((1 : GoInt))] = _hextable[_v & ((15 : GoUInt8))];
            _j = _j + (((2 : GoInt)));
        };
        return _src.length * ((2 : GoInt));
    }
/**
    // DecodedLen returns the length of a decoding of x source bytes.
    // Specifically, it returns x / 2.
**/
function decodedLen(_x:GoInt):GoInt {
        return _x / ((2 : GoInt));
    }
/**
    // Decode decodes src into DecodedLen(len(src)) bytes,
    // returning the actual number of bytes written to dst.
    //
    // Decode expects that src contains only hexadecimal
    // characters and that src has even length.
    // If the input is malformed, Decode returns the number
    // of bytes decoded before the error.
**/
function decode(_dst:Slice<GoByte>, _src:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _i:GoInt = ((0 : GoInt)), _j:GoInt = ((1 : GoInt));
        Go.cfor(_j < _src.length, _j = _j + (((2 : GoInt))), {
            var __tmp__ = _fromHexChar(_src[_j - ((1 : GoInt))]), _a:GoUInt8 = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return { _0 : _i, _1 : new InvalidByteError(_src[_j - ((1 : GoInt))]) };
            };
            var __tmp__ = _fromHexChar(_src[_j]), _b:GoUInt8 = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return { _0 : _i, _1 : new InvalidByteError(_src[_j]) };
            };
            _dst[_i] = ((_a << ((4 : GoUnTypedInt)))) | _b;
            _i++;
        });
        if (_src.length % ((2 : GoInt)) == ((1 : GoInt))) {
            {
                var __tmp__ = _fromHexChar(_src[_j - ((1 : GoInt))]), _:GoUInt8 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    return { _0 : _i, _1 : new InvalidByteError(_src[_j - ((1 : GoInt))]) };
                };
            };
            return { _0 : _i, _1 : errLength };
        };
        return { _0 : _i, _1 : ((null : stdgo.Error)) };
    }
/**
    // fromHexChar converts a hex character into its value and a success flag.
**/
function _fromHexChar(_c:GoByte):{ var _0 : GoByte; var _1 : Bool; } {
        if ((("0".code : GoRune)) <= _c && _c <= (("9".code : GoRune))) {
            return { _0 : _c - (("0".code : GoRune)), _1 : true };
        } else if ((("a".code : GoRune)) <= _c && _c <= (("f".code : GoRune))) {
            return { _0 : _c - (("a".code : GoRune)) + ((10 : GoUInt8)), _1 : true };
        } else if ((("A".code : GoRune)) <= _c && _c <= (("F".code : GoRune))) {
            return { _0 : _c - (("A".code : GoRune)) + ((10 : GoUInt8)), _1 : true };
        };
        return { _0 : ((0 : GoUInt8)), _1 : false };
    }
/**
    // EncodeToString returns the hexadecimal encoding of src.
**/
function encodeToString(_src:Slice<GoByte>):GoString {
        var _dst:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((encodedLen(_src.length) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        encode(_dst, _src);
        return ((_dst : GoString));
    }
/**
    // DecodeString returns the bytes represented by the hexadecimal string s.
    //
    // DecodeString expects that src contains only hexadecimal
    // characters and that src has even length.
    // If the input is malformed, DecodeString returns
    // the bytes decoded before the error.
**/
function decodeString(_s:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _src:Slice<GoUInt8> = ((_s : Slice<GoByte>));
        var __tmp__ = decode(_src, _src), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _src.__slice__(0, _n), _1 : _err };
    }
/**
    // Dump returns a string that contains a hex dump of the given data. The format
    // of the hex dump matches the output of `hexdump -C` on the command line.
**/
function dump(_data:Slice<GoByte>):GoString {
        if (_data.length == ((0 : GoInt))) {
            return "";
        };
        var _buf:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        _buf.grow((((1 : GoInt)) + ((_data.length - ((1 : GoInt))) / ((16 : GoInt)))) * ((79 : GoInt)));
        var _dumper:stdgo.io.Io.WriteCloser = dumper(Go.pointer(_buf).value);
        _dumper.write(_data);
        _dumper.close();
        return _buf.toString();
    }
/**
    // NewEncoder returns an io.Writer that writes lowercase hexadecimal characters to w.
**/
function newEncoder(_w:stdgo.io.Io.Writer):stdgo.io.Io.Writer {
        return Go.pointer((({ _w : _w, _err : ((null : stdgo.Error)), _out : new GoArray<GoUInt8>(...[for (i in 0 ... 1024) ((0 : GoUInt8))]) } : T_encoder))).value;
    }
/**
    // NewDecoder returns an io.Reader that decodes hexadecimal characters from r.
    // NewDecoder expects that r contain only an even number of hexadecimal characters.
**/
function newDecoder(_r:stdgo.io.Io.Reader):stdgo.io.Io.Reader {
        return Go.pointer((({ _r : _r, _err : ((null : stdgo.Error)), _in : new Slice<GoUInt8>().nil(), _arr : new GoArray<GoUInt8>(...[for (i in 0 ... 1024) ((0 : GoUInt8))]) } : T_decoder))).value;
    }
/**
    // Dumper returns a WriteCloser that writes a hex dump of all written data to
    // w. The format of the dump matches the output of `hexdump -C` on the command
    // line.
**/
function dumper(_w:stdgo.io.Io.Writer):stdgo.io.Io.WriteCloser {
        return Go.pointer((({ _w : _w, _rightChars : new GoArray<GoUInt8>(...[for (i in 0 ... 18) ((0 : GoUInt8))]), _buf : new GoArray<GoUInt8>(...[for (i in 0 ... 14) ((0 : GoUInt8))]), _used : 0, _n : 0, _closed : false } : T_dumper))).value;
    }
function _toChar(_b:GoByte):GoByte {
        if (_b < ((32 : GoUInt8)) || _b > ((126 : GoUInt8))) {
            return ((".".code : GoRune));
        };
        return _b;
    }
class InvalidByteError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
class T_encoder_extension_fields {
    public function write(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_p);
}
class T_decoder_extension_fields {
    public function read(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_p);
}
class T_dumper_extension_fields {
    public function write(__tmp__, _data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_data);
    public function close(__tmp__):Error return __tmp__.close();
}

package stdgo.mime.quotedprintable;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:structInit class Reader {
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        while (_p.length > ((0 : GoInt))) {
            if (_r.value._line.length == ((0 : GoInt))) {
                if (_r.value._rerr != null) {
                    return { _0 : _n, _1 : _r.value._rerr };
                };
                {
                    var __tmp__ = _r.value._br.value.readSlice((("\n".code : GoRune)));
                    _r.value._line = __tmp__._0;
                    _r.value._rerr = __tmp__._1;
                };
                var _hasLF:Bool = stdgo.bytes.Bytes.hasSuffix(_r.value._line, _lf);
                var _hasCR:Bool = stdgo.bytes.Bytes.hasSuffix(_r.value._line, _crlf);
                var _wholeLine:Slice<GoUInt8> = _r.value._line;
                _r.value._line = stdgo.bytes.Bytes.trimRightFunc(_wholeLine, _isQPDiscardWhitespace);
                if (stdgo.bytes.Bytes.hasSuffix(_r.value._line, _softSuffix)) {
                    var _rightStripped:Slice<GoUInt8> = _wholeLine.__slice__(_r.value._line.length);
                    _r.value._line = _r.value._line.__slice__(0, _r.value._line.length - ((1 : GoInt)));
                    if (!stdgo.bytes.Bytes.hasPrefix(_rightStripped, _lf) && !stdgo.bytes.Bytes.hasPrefix(_rightStripped, _crlf) && !(_rightStripped.length == ((0 : GoInt)) && _r.value._line.length > ((0 : GoInt)) && Go.toInterface(_r.value._rerr) == Go.toInterface(stdgo.io.Io.eof))) {
                        _r.value._rerr = stdgo.fmt.Fmt.errorf("quotedprintable: invalid bytes after =: %q", Go.toInterface(_rightStripped));
                    };
                } else if (_hasLF) {
                    if (_hasCR) {
                        _r.value._line = _r.value._line.__append__((("\r".code : GoRune)), (("\n".code : GoRune)));
                    } else {
                        _r.value._line = _r.value._line.__append__((("\n".code : GoRune)));
                    };
                };
                continue;
            };
            var _b:GoUInt8 = _r.value._line[((0 : GoInt))];
            {
                var __switchIndex__ = -1;
                while (true) {
                    if (_b == (("=".code : GoRune))) {
                        {
                            var __tmp__ = _readHexByte(_r.value._line.__slice__(((1 : GoInt))));
                            _b = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            if (_r.value._line.length >= ((2 : GoInt)) && _r.value._line[((1 : GoInt))] != (("\r".code : GoRune)) && _r.value._line[((1 : GoInt))] != (("\n".code : GoRune))) {
                                _b = (("=".code : GoRune));
                                break;
                            };
                            return { _0 : _n, _1 : _err };
                        };
                        _r.value._line = _r.value._line.__slice__(((2 : GoInt)));
                        break;
                    } else if (_b == (("\t".code : GoRune)) || _b == (("\r".code : GoRune)) || _b == (("\n".code : GoRune))) {
                        break;
                        break;
                    } else if (_b >= ((128 : GoUInt8))) {
                        break;
                        break;
                    } else if (_b < ((" ".code : GoRune)) || _b > (("~".code : GoRune))) {
                        return { _0 : _n, _1 : stdgo.fmt.Fmt.errorf("quotedprintable: invalid unescaped byte 0x%02x in body", Go.toInterface(_b)) };
                        break;
                    };
                    break;
                };
            };
            _p[((0 : GoInt))] = _b;
            _p = _p.__slice__(((1 : GoInt)));
            _r.value._line = _r.value._line.__slice__(((1 : GoInt)));
            _n++;
        };
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    public var _br : Pointer<bufio.Bufio.Reader> = new Pointer<bufio.Bufio.Reader>().nil();
    public var _rerr : stdgo.Error = ((null : stdgo.Error));
    public var _line : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public function new(?_br:Pointer<bufio.Bufio.Reader>, ?_rerr:stdgo.Error, ?_line:Slice<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_br) + " " + Go.string(_rerr) + " " + Go.string(_line) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Reader(_br, _rerr, _line);
    }
    public function __set__(__tmp__) {
        this._br = __tmp__._br;
        this._rerr = __tmp__._rerr;
        this._line = __tmp__._line;
        return this;
    }
}
@:structInit class Writer {
    public function _flush():Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __tmp__ = _w.value._w.write(_w.value._line.__slice__(0, _w.value._i)), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        _w.value._i = ((0 : GoInt));
        return ((null : stdgo.Error));
    }
    public function _insertCRLF():Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _w.value._line[_w.value._i] = (("\r".code : GoRune));
        _w.value._line[_w.value._i + ((1 : GoInt))] = (("\n".code : GoRune));
        _w.value._i = _w.value._i + (((2 : GoInt)));
        return _w.value._flush();
    }
    public function _insertSoftLineBreak():Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _w.value._line[_w.value._i] = (("=".code : GoRune));
        _w.value._i++;
        return _w.value._insertCRLF();
    }
    public function _checkLastByte():Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_w.value._i == ((0 : GoInt))) {
            return ((null : stdgo.Error));
        };
        var _b:GoUInt8 = _w.value._line[_w.value._i - ((1 : GoInt))];
        if (_isWhitespace(_b)) {
            _w.value._i--;
            {
                var _err:stdgo.Error = _w.value._encode(_b);
                if (_err != null) {
                    return _err;
                };
            };
        };
        return ((null : stdgo.Error));
    }
    public function _encode(_b:GoByte):Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_lineMaxLen - ((1 : GoUnTypedInt)) - _w.value._i < ((3 : GoInt))) {
            {
                var _err:stdgo.Error = _w.value._insertSoftLineBreak();
                if (_err != null) {
                    return _err;
                };
            };
        };
        _w.value._line[_w.value._i] = (("=".code : GoRune));
        _w.value._line[_w.value._i + ((1 : GoInt))] = _upperhex[(_b >> ((4 : GoUnTypedInt)))];
        _w.value._line[_w.value._i + ((2 : GoInt))] = _upperhex[_b & ((15 : GoUInt8))];
        _w.value._i = _w.value._i + (((3 : GoInt)));
        return ((null : stdgo.Error));
    }
    public function _write(_p:Slice<GoByte>):Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        for (_ => _b in _p) {
            if (_b == (("\n".code : GoRune)) || _b == (("\r".code : GoRune))) {
                if (_w.value._cr && _b == (("\n".code : GoRune))) {
                    _w.value._cr = false;
                    continue;
                };
                if (_b == (("\r".code : GoRune))) {
                    _w.value._cr = true;
                };
                {
                    var _err:stdgo.Error = _w.value._checkLastByte();
                    if (_err != null) {
                        return _err;
                    };
                };
                {
                    var _err:stdgo.Error = _w.value._insertCRLF();
                    if (_err != null) {
                        return _err;
                    };
                };
                continue;
            };
            if (_w.value._i == _lineMaxLen - ((1 : GoUnTypedInt))) {
                {
                    var _err:stdgo.Error = _w.value._insertSoftLineBreak();
                    if (_err != null) {
                        return _err;
                    };
                };
            };
            _w.value._line[_w.value._i] = _b;
            _w.value._i++;
            _w.value._cr = false;
        };
        return ((null : stdgo.Error));
    }
    public function close():Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _w.value._checkLastByte();
            if (_err != null) {
                return _err;
            };
        };
        return _w.value._flush();
    }
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        for (_i => _b in _p) {
            if (_b >= (("!".code : GoRune)) && _b <= (("~".code : GoRune)) && _b != (("=".code : GoRune))) {
                continue;
            } else if (_isWhitespace(_b) || !_w.value.binary && (_b == (("\n".code : GoRune)) || _b == (("\r".code : GoRune)))) {
                continue;
            };
            if (_i > _n) {
                {
                    var _err:stdgo.Error = _w.value._write(_p.__slice__(_n, _i));
                    if (_err != null) {
                        return { _0 : _n, _1 : _err };
                    };
                };
                _n = _i;
            };
            {
                var _err:stdgo.Error = _w.value._encode(_b);
                if (_err != null) {
                    return { _0 : _n, _1 : _err };
                };
            };
            _n++;
        };
        if (_n == _p.length) {
            return { _0 : _n, _1 : ((null : stdgo.Error)) };
        };
        {
            var _err:stdgo.Error = _w.value._write(_p.__slice__(_n));
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
        };
        return { _0 : _p.length, _1 : ((null : stdgo.Error)) };
    }
    public var binary : Bool = false;
    public var _w : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var _i : GoInt = ((0 : GoInt));
    public var _line : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 78) ((0 : GoUInt8))]);
    public var _cr : Bool = false;
    public function new(?binary:Bool, ?_w:stdgo.io.Io.Writer, ?_i:GoInt, ?_line:GoArray<GoUInt8>, ?_cr:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(binary) + " " + Go.string(_w) + " " + Go.string(_i) + " " + Go.string(_line) + " " + Go.string(_cr) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Writer(binary, _w, _i, _line, _cr);
    }
    public function __set__(__tmp__) {
        this.binary = __tmp__.binary;
        this._w = __tmp__._w;
        this._i = __tmp__._i;
        this._line = __tmp__._line;
        this._cr = __tmp__._cr;
        return this;
    }
}
var _crlf : Slice<GoUInt8> = (("\r\n" : Slice<GoByte>));
final _lineMaxLen : GoInt64 = ((76 : GoUnTypedInt));
var _softSuffix : Slice<GoUInt8> = (("=" : Slice<GoByte>));
final _upperhex : GoString = "0123456789ABCDEF";
var _lf : Slice<GoUInt8> = (("\n" : Slice<GoByte>));
/**
    // NewReader returns a quoted-printable reader, decoding from r.
**/
function newReader(_r:stdgo.io.Io.Reader):Pointer<Reader> {
        return Go.pointer((({ _br : bufio.Bufio.newReader(_r), _rerr : ((null : stdgo.Error)), _line : new Slice<GoUInt8>().nil() } : Reader)));
    }
function _fromHex(_b:GoByte):{ var _0 : GoByte; var _1 : Error; } {
        if (_b >= (("0".code : GoRune)) && _b <= (("9".code : GoRune))) {
            return { _0 : _b - (("0".code : GoRune)), _1 : ((null : stdgo.Error)) };
        } else if (_b >= (("A".code : GoRune)) && _b <= (("F".code : GoRune))) {
            return { _0 : _b - (("A".code : GoRune)) + ((10 : GoUInt8)), _1 : ((null : stdgo.Error)) };
        } else if (_b >= (("a".code : GoRune)) && _b <= (("f".code : GoRune))) {
            return { _0 : _b - (("a".code : GoRune)) + ((10 : GoUInt8)), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : ((0 : GoUInt8)), _1 : stdgo.fmt.Fmt.errorf("quotedprintable: invalid hex byte 0x%02x", Go.toInterface(_b)) };
    }
function _readHexByte(_v:Slice<GoByte>):{ var _0 : GoByte; var _1 : Error; } {
        var _b:GoByte = ((0 : GoUInt8)), _err:Error = ((null : stdgo.Error));
        if (_v.length < ((2 : GoInt))) {
            return { _0 : ((0 : GoUInt8)), _1 : stdgo.io.Io.errUnexpectedEOF };
        };
        var _hb:GoByte = ((0 : GoUInt8)), _lb:GoByte = ((0 : GoUInt8));
        {
            {
                var __tmp__ = _fromHex(_v[((0 : GoInt))]);
                _hb = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : ((0 : GoUInt8)), _1 : _err };
            };
        };
        {
            {
                var __tmp__ = _fromHex(_v[((1 : GoInt))]);
                _lb = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : ((0 : GoUInt8)), _1 : _err };
            };
        };
        return { _0 : (_hb << ((4 : GoUnTypedInt))) | _lb, _1 : ((null : stdgo.Error)) };
    }
function _isQPDiscardWhitespace(_r:GoRune):Bool {
        if (_r == (("\n".code : GoRune)) || _r == (("\r".code : GoRune)) || _r == ((" ".code : GoRune)) || _r == (("\t".code : GoRune))) {
            return true;
        };
        return false;
    }
/**
    // NewWriter returns a new Writer that writes to w.
**/
function newWriter(_w:stdgo.io.Io.Writer):Pointer<Writer> {
        return Go.pointer((({ _w : _w, binary : false, _i : 0, _line : new GoArray<GoUInt8>(...[for (i in 0 ... 78) ((0 : GoUInt8))]), _cr : false } : Writer)));
    }
function _isWhitespace(_b:GoByte):Bool {
        return _b == ((" ".code : GoRune)) || _b == (("\t".code : GoRune));
    }
class Reader_extension_fields {
    public function read(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_p);
}
class Writer_extension_fields {
    public function write(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_p);
    public function close(__tmp__):Error return __tmp__.close();
    public function _write(__tmp__, _p:Slice<GoByte>):Error return __tmp__._write(_p);
    public function _encode(__tmp__, _b:GoByte):Error return __tmp__._encode(_b);
    public function _checkLastByte(__tmp__):Error return __tmp__._checkLastByte();
    public function _insertSoftLineBreak(__tmp__):Error return __tmp__._insertSoftLineBreak();
    public function _insertCRLF(__tmp__):Error return __tmp__._insertCRLF();
    public function _flush(__tmp__):Error return __tmp__._flush();
}

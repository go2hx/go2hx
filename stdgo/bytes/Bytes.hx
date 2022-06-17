package stdgo.bytes;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var errTooLarge : stdgo.Error = stdgo.errors.Errors.new_(((("bytes.Buffer: too large" : GoString))));
var _errNegativeRead : stdgo.Error = stdgo.errors.Errors.new_(((("bytes.Buffer: reader returned negative count from Read" : GoString))));
var _errUnreadByte : stdgo.Error = stdgo.errors.Errors.new_(((("bytes.Buffer: UnreadByte: previous operation was not a successful read" : GoString))));
var _asciiSpace : GoArray<GoUInt8> = {
    var s:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 256) 0]);
    s[0] = ((1 : GoUInt8));
    s[1] = ((1 : GoUInt8));
    s[2] = ((1 : GoUInt8));
    s[3] = ((1 : GoUInt8));
    s[4] = ((1 : GoUInt8));
    s[5] = ((1 : GoUInt8));
    s;
};
var indexBytePortable : (Slice<GoUInt8>, GoUInt8) -> GoInt = _indexBytePortable;
@:structInit @:using(stdgo.bytes.Bytes.Buffer_static_extension) class Buffer {
    @:keep
    public function readString(_delim:GoByte):{ var _0 : GoString; var _1 : Error; } {
        var _b = this;
        _b;
        var _line:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        var __tmp__ = _b._readSlice(_delim), _slice:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : ((_slice : GoString)), _1 : _err };
    }
    @:keep
    public function _readSlice(_delim:GoByte):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _b = this;
        _b;
        var _line:Slice<GoByte> = ((null : Slice<GoUInt8>)), _err:Error = ((null : stdgo.Error));
        var _i:GoInt = indexByte(((_b._buf.__slice__(_b._off) : Slice<GoUInt8>)), _delim);
        var _end:GoInt = (_b._off + _i) + ((1 : GoInt));
        if (_i < ((0 : GoInt))) {
            _end = (_b._buf != null ? _b._buf.length : ((0 : GoInt)));
            _err = stdgo.io.Io.eof;
        };
        _line = ((_b._buf.__slice__(_b._off, _end) : Slice<GoUInt8>));
        _b._off = _end;
        _b._lastRead = ((-1 : GoInt8));
        return { _0 : _line, _1 : _err };
    }
    @:keep
    public function readBytes(_delim:GoByte):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _b = this;
        _b;
        var _line:Slice<GoByte> = ((null : Slice<GoUInt8>)), _err:Error = ((null : stdgo.Error));
        var __tmp__ = _b._readSlice(_delim), _slice:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _line = (_line != null ? _line.__append__(..._slice.__toArray__()) : new Slice<GoUInt8>(..._slice.__toArray__()));
        return { _0 : _line, _1 : _err };
    }
    @:keep
    public function unreadByte():Error {
        var _b = this;
        _b;
        if (_b._lastRead == ((0 : GoInt8))) {
            return _errUnreadByte;
        };
        _b._lastRead = ((0 : GoInt8));
        if (_b._off > ((0 : GoInt))) {
            _b._off--;
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public function unreadRune():Error {
        var _b = this;
        _b;
        if (_b._lastRead <= ((0 : GoInt8))) {
            return stdgo.errors.Errors.new_(((("bytes.Buffer: UnreadRune: previous operation was not a successful ReadRune" : GoString))));
        };
        if (_b._off >= ((_b._lastRead : GoInt))) {
            _b._off = _b._off - (((_b._lastRead : GoInt)));
        };
        _b._lastRead = ((0 : GoInt8));
        return ((null : stdgo.Error));
    }
    @:keep
    public function readRune():{ var _0 : GoRune; var _1 : GoInt; var _2 : Error; } {
        var _b = this;
        _b;
        var _r:GoRune = ((0 : GoInt32)), _size:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_b._empty()) {
            _b.reset();
            return { _0 : ((0 : GoInt32)), _1 : ((0 : GoInt)), _2 : stdgo.io.Io.eof };
        };
        var _c:GoUInt8 = (_b._buf != null ? _b._buf[_b._off] : ((0 : GoUInt8)));
        if (_c < ((128 : GoUInt8))) {
            _b._off++;
            _b._lastRead = ((1 : GoInt8));
            return { _0 : ((_c : GoRune)), _1 : ((1 : GoInt)), _2 : ((null : stdgo.Error)) };
        };
        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_b._buf.__slice__(_b._off) : Slice<GoUInt8>))), _r:GoInt32 = __tmp__._0, _n:GoInt = __tmp__._1;
        _b._off = _b._off + (_n);
        _b._lastRead = ((_n : T_readOp));
        return { _0 : _r, _1 : _n, _2 : ((null : stdgo.Error)) };
    }
    @:keep
    public function readByte():{ var _0 : GoByte; var _1 : Error; } {
        var _b = this;
        _b;
        if (_b._empty()) {
            _b.reset();
            return { _0 : ((0 : GoUInt8)), _1 : stdgo.io.Io.eof };
        };
        var _c:GoUInt8 = (_b._buf != null ? _b._buf[_b._off] : ((0 : GoUInt8)));
        _b._off++;
        _b._lastRead = ((-1 : GoInt8));
        return { _0 : _c, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function next(_n:GoInt):Slice<GoByte> {
        var _b = this;
        _b;
        _b._lastRead = ((0 : GoInt8));
        var _m:GoInt = _b.len();
        if (_n > _m) {
            _n = _m;
        };
        var _data:Slice<GoUInt8> = ((_b._buf.__slice__(_b._off, _b._off + _n) : Slice<GoUInt8>));
        _b._off = _b._off + (_n);
        if (_n > ((0 : GoInt))) {
            _b._lastRead = ((-1 : GoInt8));
        };
        return _data;
    }
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _b = this;
        _b;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _b._lastRead = ((0 : GoInt8));
        if (_b._empty()) {
            _b.reset();
            if ((_p != null ? _p.length : ((0 : GoInt))) == ((0 : GoInt))) {
                return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
            };
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
        };
        _n = Go.copySlice(_p, ((_b._buf.__slice__(_b._off) : Slice<GoUInt8>)));
        _b._off = _b._off + (_n);
        if (_n > ((0 : GoInt))) {
            _b._lastRead = ((-1 : GoInt8));
        };
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function writeRune(_r:GoRune):{ var _0 : GoInt; var _1 : Error; } {
        var _b = this;
        _b;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (((_r : GoUInt32)) < ((128 : GoUInt32))) {
            _b.writeByte(((_r : GoByte)));
            return { _0 : ((1 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        _b._lastRead = ((0 : GoInt8));
        var __tmp__ = _b._tryGrowByReslice(((4 : GoInt))), _m:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = _b._grow(((4 : GoInt)));
        };
        _n = stdgo.unicode.utf8.Utf8.encodeRune(((_b._buf.__slice__(_m, _m + ((4 : GoInt))) : Slice<GoUInt8>)), _r);
        _b._buf = ((_b._buf.__slice__(0, _m + _n) : Slice<GoUInt8>));
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function writeByte(_c:GoByte):Error {
        var _b = this;
        _b;
        _b._lastRead = ((0 : GoInt8));
        var __tmp__ = _b._tryGrowByReslice(((1 : GoInt))), _m:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = _b._grow(((1 : GoInt)));
        };
        if (_b._buf != null) _b._buf[_m] = _c;
        return ((null : stdgo.Error));
    }
    @:keep
    public function writeTo(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        var _b = this;
        _b;
        var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        _b._lastRead = ((0 : GoInt8));
        {
            var _nBytes:GoInt = _b.len();
            if (_nBytes > ((0 : GoInt))) {
                var __tmp__ = _w.write(((_b._buf.__slice__(_b._off) : Slice<GoUInt8>))), _m:GoInt = __tmp__._0, _e:stdgo.Error = __tmp__._1;
                if (_m > _nBytes) {
                    throw Go.toInterface(((("bytes.Buffer.WriteTo: invalid Write count" : GoString))));
                };
                _b._off = _b._off + (_m);
                _n = ((_m : GoInt64));
                if (_e != null) {
                    return { _0 : _n, _1 : _e };
                };
                if (_m != _nBytes) {
                    return { _0 : _n, _1 : stdgo.io.Io.errShortWrite };
                };
            };
        };
        _b.reset();
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function readFrom(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } {
        var _b = this;
        _b;
        var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        _b._lastRead = ((0 : GoInt8));
        while (true) {
            var _i:GoInt = _b._grow(((512 : GoInt)));
            _b._buf = ((_b._buf.__slice__(0, _i) : Slice<GoUInt8>));
            var __tmp__ = _r.read(((_b._buf.__slice__(_i, (_b._buf != null ? _b._buf.cap() : ((0 : GoInt)))) : Slice<GoUInt8>))), _m:GoInt = __tmp__._0, _e:stdgo.Error = __tmp__._1;
            if (_m < ((0 : GoInt))) {
                throw Go.toInterface(_errNegativeRead);
            };
            _b._buf = ((_b._buf.__slice__(0, _i + _m) : Slice<GoUInt8>));
            _n = _n + (((_m : GoInt64)));
            if (_e == stdgo.io.Io.eof) {
                return { _0 : _n, _1 : ((null : stdgo.Error)) };
            };
            if (_e != null) {
                return { _0 : _n, _1 : _e };
            };
        };
    }
    @:keep
    public function writeString(_s:GoString):{ var _0 : GoInt; var _1 : Error; } {
        var _b = this;
        _b;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _b._lastRead = ((0 : GoInt8));
        var __tmp__ = _b._tryGrowByReslice((_s != null ? _s.length : ((0 : GoInt)))), _m:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = _b._grow((_s != null ? _s.length : ((0 : GoInt))));
        };
        return { _0 : Go.copySlice(((_b._buf.__slice__(_m) : Slice<GoUInt8>)), _s), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _b = this;
        _b;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _b._lastRead = ((0 : GoInt8));
        var __tmp__ = _b._tryGrowByReslice((_p != null ? _p.length : ((0 : GoInt)))), _m:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = _b._grow((_p != null ? _p.length : ((0 : GoInt))));
        };
        return { _0 : Go.copySlice(((_b._buf.__slice__(_m) : Slice<GoUInt8>)), _p), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function grow(_n:GoInt):Void {
        var _b = this;
        _b;
        if (_n < ((0 : GoInt))) {
            throw Go.toInterface(((("bytes.Buffer.Grow: negative count" : GoString))));
        };
        var _m:GoInt = _b._grow(_n);
        _b._buf = ((_b._buf.__slice__(0, _m) : Slice<GoUInt8>));
    }
    @:keep
    public function _grow(_n:GoInt):GoInt {
        var _b = this;
        _b;
        var _m:GoInt = _b.len();
        if ((_m == ((0 : GoInt))) && (_b._off != ((0 : GoInt)))) {
            _b.reset();
        };
        {
            var __tmp__ = _b._tryGrowByReslice(_n), _i:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _i;
            };
        };
        if ((_b._buf == null) && (_n <= ((64 : GoInt)))) {
            _b._buf = new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((64 : GoInt)) : GoInt)).toBasic());
            return ((0 : GoInt));
        };
        var _c:GoInt = (_b._buf != null ? _b._buf.cap() : ((0 : GoInt)));
        if (_n <= ((_c / ((2 : GoInt))) - _m)) {
            Go.copySlice(_b._buf, ((_b._buf.__slice__(_b._off) : Slice<GoUInt8>)));
        } else if (_c > ((((2147483647 : GoInt)) - _c) - _n)) {
            throw Go.toInterface(errTooLarge);
        } else {
            var _buf:Slice<GoUInt8> = _makeSlice((((2 : GoInt)) * _c) + _n);
            Go.copySlice(_buf, ((_b._buf.__slice__(_b._off) : Slice<GoUInt8>)));
            _b._buf = _buf;
        };
        _b._off = ((0 : GoInt));
        _b._buf = ((_b._buf.__slice__(0, _m + _n) : Slice<GoUInt8>));
        return _m;
    }
    @:keep
    public function _tryGrowByReslice(_n:GoInt):{ var _0 : GoInt; var _1 : Bool; } {
        var _b = this;
        _b;
        {
            var _l:GoInt = (_b._buf != null ? _b._buf.length : ((0 : GoInt)));
            if (_n <= ((_b._buf != null ? _b._buf.cap() : ((0 : GoInt))) - _l)) {
                _b._buf = ((_b._buf.__slice__(0, _l + _n) : Slice<GoUInt8>));
                return { _0 : _l, _1 : true };
            };
        };
        return { _0 : ((0 : GoInt)), _1 : false };
    }
    @:keep
    public function reset():Void {
        var _b = this;
        _b;
        _b._buf = ((_b._buf.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>));
        _b._off = ((0 : GoInt));
        _b._lastRead = ((0 : GoInt8));
    }
    @:keep
    public function truncate(_n:GoInt):Void {
        var _b = this;
        _b;
        if (_n == ((0 : GoInt))) {
            _b.reset();
            return;
        };
        _b._lastRead = ((0 : GoInt8));
        if ((_n < ((0 : GoInt))) || (_n > _b.len())) {
            throw Go.toInterface(((("bytes.Buffer: truncation out of range" : GoString))));
        };
        _b._buf = ((_b._buf.__slice__(0, _b._off + _n) : Slice<GoUInt8>));
    }
    @:keep
    public function cap_():GoInt {
        var _b = this;
        _b;
        return (_b._buf != null ? _b._buf.cap() : ((0 : GoInt)));
    }
    @:keep
    public function len():GoInt {
        var _b = this;
        _b;
        return (_b._buf != null ? _b._buf.length : ((0 : GoInt))) - _b._off;
    }
    @:keep
    public function _empty():Bool {
        var _b = this;
        _b;
        return (_b._buf != null ? _b._buf.length : ((0 : GoInt))) <= _b._off;
    }
    @:keep
    public function toString():GoString {
        var _b = this;
        _b;
        if (_b == null) {
            return ((("<nil>" : GoString)));
        };
        return ((((_b._buf.__slice__(_b._off) : Slice<GoUInt8>)) : GoString));
    }
    @:keep
    public function bytes():Slice<GoByte> {
        var _b = this;
        _b;
        return ((_b._buf.__slice__(_b._off) : Slice<GoUInt8>));
    }
    public var _buf : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _off : GoInt = ((0 : GoInt));
    public var _lastRead : T_readOp = new T_readOp();
    public function new(?_buf:Slice<GoUInt8>, ?_off:GoInt, ?_lastRead:T_readOp) {
        if (_buf != null) this._buf = _buf;
        if (_off != null) this._off = _off;
        if (_lastRead != null) this._lastRead = _lastRead;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Buffer(_buf, _off, _lastRead);
    }
}
@:structInit @:using(stdgo.bytes.Bytes.Reader_static_extension) class Reader {
    @:keep
    public function reset(_b:Slice<GoByte>):Void {
        var _r = this;
        _r;
        {
            var __tmp__ = ((new Reader(_b, ((0 : GoInt64)), ((-1 : GoInt))) : Reader));
            _r._s = __tmp__._s;
            _r._i = __tmp__._i;
            _r._prevRune = __tmp__._prevRune;
        };
    }
    @:keep
    public function writeTo(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        var _r = this;
        _r;
        var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        _r._prevRune = ((-1 : GoInt));
        if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
            return { _0 : ((0 : GoInt64)), _1 : ((null : stdgo.Error)) };
        };
        var _b:Slice<GoUInt8> = ((_r._s.__slice__(_r._i) : Slice<GoUInt8>));
        var __tmp__ = _w.write(_b), _m:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_m > (_b != null ? _b.length : ((0 : GoInt)))) {
            throw Go.toInterface(((("bytes.Reader.WriteTo: invalid Write count" : GoString))));
        };
        _r._i = _r._i + (((_m : GoInt64)));
        _n = ((_m : GoInt64));
        if ((_m != (_b != null ? _b.length : ((0 : GoInt)))) && (_err == null)) {
            _err = stdgo.io.Io.errShortWrite;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public function seek(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : Error; } {
        var _r = this;
        _r;
        _r._prevRune = ((-1 : GoInt));
        var _abs:GoInt64 = ((0 : GoInt64));
        if (_whence == ((0 : GoInt))) {
            _abs = _offset;
        } else if (_whence == ((1 : GoInt))) {
            _abs = _r._i + _offset;
        } else if (_whence == ((2 : GoInt))) {
            _abs = (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64)) + _offset;
        } else {
            return { _0 : ((0 : GoInt64)), _1 : stdgo.errors.Errors.new_(((("bytes.Reader.Seek: invalid whence" : GoString)))) };
        };
        if (_abs < ((0 : GoInt64))) {
            return { _0 : ((0 : GoInt64)), _1 : stdgo.errors.Errors.new_(((("bytes.Reader.Seek: negative position" : GoString)))) };
        };
        _r._i = _abs;
        return { _0 : _abs, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function unreadRune():Error {
        var _r = this;
        _r;
        if (_r._i <= ((0 : GoInt64))) {
            return stdgo.errors.Errors.new_(((("bytes.Reader.UnreadRune: at beginning of slice" : GoString))));
        };
        if (_r._prevRune < ((0 : GoInt))) {
            return stdgo.errors.Errors.new_(((("bytes.Reader.UnreadRune: previous operation was not ReadRune" : GoString))));
        };
        _r._i = ((_r._prevRune : GoInt64));
        _r._prevRune = ((-1 : GoInt));
        return ((null : stdgo.Error));
    }
    @:keep
    public function readRune():{ var _0 : GoRune; var _1 : GoInt; var _2 : Error; } {
        var _r = this;
        _r;
        var _ch:GoRune = ((0 : GoInt32)), _size:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
            _r._prevRune = ((-1 : GoInt));
            return { _0 : ((0 : GoInt32)), _1 : ((0 : GoInt)), _2 : stdgo.io.Io.eof };
        };
        _r._prevRune = ((_r._i : GoInt));
        {
            var _c:GoUInt8 = (_r._s != null ? _r._s[_r._i] : ((0 : GoUInt8)));
            if (_c < ((128 : GoUInt8))) {
                _r._i++;
                return { _0 : ((_c : GoRune)), _1 : ((1 : GoInt)), _2 : ((null : stdgo.Error)) };
            };
        };
        {
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_r._s.__slice__(_r._i) : Slice<GoUInt8>)));
            _ch = __tmp__._0;
            _size = __tmp__._1;
        };
        _r._i = _r._i + (((_size : GoInt64)));
        return { _0 : _ch, _1 : _size, _2 : _err };
    }
    @:keep
    public function unreadByte():Error {
        var _r = this;
        _r;
        if (_r._i <= ((0 : GoInt64))) {
            return stdgo.errors.Errors.new_(((("bytes.Reader.UnreadByte: at beginning of slice" : GoString))));
        };
        _r._prevRune = ((-1 : GoInt));
        _r._i--;
        return ((null : stdgo.Error));
    }
    @:keep
    public function readByte():{ var _0 : GoByte; var _1 : Error; } {
        var _r = this;
        _r;
        _r._prevRune = ((-1 : GoInt));
        if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
            return { _0 : ((0 : GoUInt8)), _1 : stdgo.io.Io.eof };
        };
        var _b:GoUInt8 = (_r._s != null ? _r._s[_r._i] : ((0 : GoUInt8)));
        _r._i++;
        return { _0 : _b, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function readAt(_b:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } {
        var _r = this;
        _r;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_off < ((0 : GoInt64))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("bytes.Reader.ReadAt: negative offset" : GoString)))) };
        };
        if (_off >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
        };
        _n = Go.copySlice(_b, ((_r._s.__slice__(_off) : Slice<GoUInt8>)));
        if (_n < (_b != null ? _b.length : ((0 : GoInt)))) {
            _err = stdgo.io.Io.eof;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = this;
        _r;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
        };
        _r._prevRune = ((-1 : GoInt));
        _n = Go.copySlice(_b, ((_r._s.__slice__(_r._i) : Slice<GoUInt8>)));
        _r._i = _r._i + (((_n : GoInt64)));
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public function size():GoInt64 {
        var _r = this;
        _r;
        return (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64));
    }
    @:keep
    public function len():GoInt {
        var _r = this;
        _r;
        if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
            return ((0 : GoInt));
        };
        return ((((((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64)) - _r._i) : GoInt));
    }
    public var _s : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _i : GoInt64 = ((0 : GoInt64));
    public var _prevRune : GoInt = ((0 : GoInt));
    public function new(?_s:Slice<GoUInt8>, ?_i:GoInt64, ?_prevRune:GoInt) {
        if (_s != null) this._s = _s;
        if (_i != null) this._i = _i;
        if (_prevRune != null) this._prevRune = _prevRune;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Reader(_s, _i, _prevRune);
    }
}
@:named typedef T_readOp = GoInt8;
@:named @:using(stdgo.bytes.Bytes.T_asciiSet_static_extension) typedef T_asciiSet = GoArray<GoUInt32>;
function _makeSlice(_n:GoInt):Slice<GoByte> {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        __deferstack__.unshift(() -> {
            var a = function():Void {
                if (({
                    final r = __recover_exception__;
                    __recover_exception__ = null;
                    r;
                }) != null) {
                    throw Go.toInterface(errTooLarge);
                };
            };
            a();
        });
        try {
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
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
                return ((null : Slice<GoUInt8>));
            };
        };
    }
function newBuffer(_buf:Slice<GoByte>):Buffer {
        return (({ _buf : _buf, _off : 0, _lastRead : new T_readOp() } : Buffer));
    }
function newBufferString(_s:GoString):Buffer {
        return (({ _buf : ((_s : Slice<GoByte>)), _off : 0, _lastRead : new T_readOp() } : Buffer));
    }
function equal(_a:Slice<GoByte>, _b:Slice<GoByte>):Bool {
        return ((_a : GoString)) == ((_b : GoString));
    }
function compare(_a:Slice<GoByte>, _b:Slice<GoByte>):GoInt {
        return stdgo.internal.bytealg.Bytealg.compare(_a, _b);
    }
function _explode(_s:Slice<GoByte>, _n:GoInt):Slice<Slice<GoByte>> {
        if (_n <= ((0 : GoInt))) {
            _n = (_s != null ? _s.length : ((0 : GoInt)));
        };
        var _a:Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((null : Slice<GoUInt8>))]);
        var _size:GoInt = ((0 : GoInt));
        var _na:GoInt = ((0 : GoInt));
        while ((_s != null ? _s.length : ((0 : GoInt))) > ((0 : GoInt))) {
            if ((_na + ((1 : GoInt))) >= _n) {
                if (_a != null) _a[_na] = _s;
                _na++;
                break;
            };
            {
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_s);
                _size = __tmp__._1;
            };
            if (_a != null) _a[_na] = ((_s.__slice__(((0 : GoInt)), _size) : Slice<GoUInt8>)).__setCap__(((_size : GoInt)) - ((1 : GoInt)));
            _s = ((_s.__slice__(_size) : Slice<GoUInt8>));
            _na++;
        };
        return ((_a.__slice__(((0 : GoInt)), _na) : Slice<Slice<GoUInt8>>));
    }
function count(_s:Slice<GoByte>, _sep:Slice<GoByte>):GoInt {
        if ((_sep != null ? _sep.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return stdgo.unicode.utf8.Utf8.runeCount(_s) + ((1 : GoInt));
        };
        if ((_sep != null ? _sep.length : ((0 : GoInt))) == ((1 : GoInt))) {
            return stdgo.internal.bytealg.Bytealg.count(_s, (_sep != null ? _sep[((0 : GoInt))] : ((0 : GoUInt8))));
        };
        var _n:GoInt = ((0 : GoInt));
        while (true) {
            var _i:GoInt = index(_s, _sep);
            if (_i == ((-1 : GoInt))) {
                return _n;
            };
            _n++;
            _s = ((_s.__slice__(_i + (_sep != null ? _sep.length : ((0 : GoInt)))) : Slice<GoUInt8>));
        };
    }
function contains(_b:Slice<GoByte>, _subslice:Slice<GoByte>):Bool {
        return index(_b, _subslice) != ((-1 : GoInt));
    }
function containsAny(_b:Slice<GoByte>, _chars:GoString):Bool {
        return indexAny(_b, _chars) >= ((0 : GoInt));
    }
function containsRune(_b:Slice<GoByte>, _r:GoRune):Bool {
        return indexRune(_b, _r) >= ((0 : GoInt));
    }
function indexByte(_b:Slice<GoByte>, _c:GoByte):GoInt {
        return stdgo.internal.bytealg.Bytealg.indexByte(_b, _c);
    }
function _indexBytePortable(_s:Slice<GoByte>, _c:GoByte):GoInt {
        for (_i => _b in _s) {
            if (_b == _c) {
                return _i;
            };
        };
        return ((-1 : GoInt));
    }
function lastIndex(_s:Slice<GoByte>, _sep:Slice<GoByte>):GoInt {
        var _n:GoInt = (_sep != null ? _sep.length : ((0 : GoInt)));
        if (_n == ((0 : GoInt))) {
            return (_s != null ? _s.length : ((0 : GoInt)));
        } else if (_n == ((1 : GoInt))) {
            return lastIndexByte(_s, (_sep != null ? _sep[((0 : GoInt))] : ((0 : GoUInt8))));
        } else if (_n == (_s != null ? _s.length : ((0 : GoInt)))) {
            if (equal(_s, _sep)) {
                return ((0 : GoInt));
            };
            return ((-1 : GoInt));
        } else if (_n > (_s != null ? _s.length : ((0 : GoInt)))) {
            return ((-1 : GoInt));
        };
        var __tmp__ = stdgo.internal.bytealg.Bytealg.hashStrRevBytes(_sep), _hashss:GoUInt32 = __tmp__._0, _pow:GoUInt32 = __tmp__._1;
        var _last:GoInt = (_s != null ? _s.length : ((0 : GoInt))) - _n;
        var _h:GoUInt32 = ((0 : GoUInt32));
        {
            var _i:GoInt = (_s != null ? _s.length : ((0 : GoInt))) - ((1 : GoInt));
            Go.cfor(_i >= _last, _i--, {
                _h = (_h * ((16777619 : GoUInt32))) + (((_s != null ? _s[_i] : ((0 : GoUInt8))) : GoUInt32));
            });
        };
        if ((_h == _hashss) && equal(((_s.__slice__(_last) : Slice<GoUInt8>)), _sep)) {
            return _last;
        };
        {
            var _i:GoInt = _last - ((1 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                _h = _h * (((16777619 : GoUInt32)));
                _h = _h + ((((_s != null ? _s[_i] : ((0 : GoUInt8))) : GoUInt32)));
                _h = _h - (_pow * (((_s != null ? _s[_i + _n] : ((0 : GoUInt8))) : GoUInt32)));
                if ((_h == _hashss) && equal(((_s.__slice__(_i, _i + _n) : Slice<GoUInt8>)), _sep)) {
                    return _i;
                };
            });
        };
        return ((-1 : GoInt));
    }
function lastIndexByte(_s:Slice<GoByte>, _c:GoByte):GoInt {
        {
            var _i:GoInt = (_s != null ? _s.length : ((0 : GoInt))) - ((1 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                if ((_s != null ? _s[_i] : ((0 : GoUInt8))) == _c) {
                    return _i;
                };
            });
        };
        return ((-1 : GoInt));
    }
function indexRune(_s:Slice<GoByte>, _r:GoRune):GoInt {
        if ((((0 : GoInt32)) <= _r) && (_r < ((128 : GoInt32)))) {
            return indexByte(_s, ((_r : GoByte)));
        } else if (_r == ((65533 : GoInt32))) {
            {
                var _i:GoInt = ((0 : GoInt));
                while (_i < (_s != null ? _s.length : ((0 : GoInt)))) {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_s.__slice__(_i) : Slice<GoUInt8>))), _r1:GoInt32 = __tmp__._0, _n:GoInt = __tmp__._1;
                    if (_r1 == ((65533 : GoInt32))) {
                        return _i;
                    };
                    _i = _i + (_n);
                };
            };
            return ((-1 : GoInt));
        } else if (!stdgo.unicode.utf8.Utf8.validRune(_r)) {
            return ((-1 : GoInt));
        } else {
            var _b:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]);
            var _n:GoInt = stdgo.unicode.utf8.Utf8.encodeRune(((_b.__slice__(0) : Slice<GoUInt8>)), _r);
            return index(_s, ((_b.__slice__(0, _n) : Slice<GoUInt8>)));
        };
    }
function indexAny(_s:Slice<GoByte>, _chars:GoString):GoInt {
        if (_chars == ((("" : GoString)))) {
            return ((-1 : GoInt));
        };
        if ((_s != null ? _s.length : ((0 : GoInt))) == ((1 : GoInt))) {
            var _r:GoInt32 = (((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) : GoRune));
            if (_r >= ((128 : GoInt32))) {
                for (__key__ => __value__ in _chars) {
                    _r = __value__;
                    if (_r == ((65533 : GoInt32))) {
                        return ((0 : GoInt));
                    };
                };
                return ((-1 : GoInt));
            };
            if (stdgo.internal.bytealg.Bytealg.indexByteString(_chars, (_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8)))) >= ((0 : GoInt))) {
                return ((0 : GoInt));
            };
            return ((-1 : GoInt));
        };
        if ((_chars != null ? _chars.length : ((0 : GoInt))) == ((1 : GoInt))) {
            var _r:GoInt32 = (((_chars != null ? _chars[((0 : GoInt))] : ((0 : GoUInt8))) : GoRune));
            if (_r >= ((128 : GoInt32))) {
                _r = ((65533 : GoInt32));
            };
            return indexRune(_s, _r);
        };
        if ((_s != null ? _s.length : ((0 : GoInt))) > ((8 : GoInt))) {
            {
                var __tmp__ = _makeASCIISet(_chars), _as:T_asciiSet = __tmp__._0, _isASCII:Bool = __tmp__._1;
                if (_isASCII) {
                    for (_i => _c in _s) {
                        if (_as._contains(_c)) {
                            return _i;
                        };
                    };
                    return ((-1 : GoInt));
                };
            };
        };
        var _width:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_s != null ? _s.length : ((0 : GoInt))), _i = _i + (_width), {
                var _r:GoInt32 = (((_s != null ? _s[_i] : ((0 : GoUInt8))) : GoRune));
                if (_r < ((128 : GoInt32))) {
                    if (stdgo.internal.bytealg.Bytealg.indexByteString(_chars, (_s != null ? _s[_i] : ((0 : GoUInt8)))) >= ((0 : GoInt))) {
                        return _i;
                    };
                    _width = ((1 : GoInt));
                    continue;
                };
                {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_s.__slice__(_i) : Slice<GoUInt8>)));
                    _r = __tmp__._0;
                    _width = __tmp__._1;
                };
                if (_r != ((65533 : GoInt32))) {
                    if ((_chars != null ? _chars.length : ((0 : GoInt))) == _width) {
                        if (_chars == ((_r : GoString))) {
                            return _i;
                        };
                        continue;
                    };
                    if (stdgo.internal.bytealg.Bytealg.maxLen >= _width) {
                        if (stdgo.internal.bytealg.Bytealg.indexString(_chars, ((_r : GoString))) >= ((0 : GoInt))) {
                            return _i;
                        };
                        continue;
                    };
                };
                for (_ => _ch in _chars) {
                    if (_r == _ch) {
                        return _i;
                    };
                };
            });
        };
        return ((-1 : GoInt));
    }
function lastIndexAny(_s:Slice<GoByte>, _chars:GoString):GoInt {
        if (_chars == ((("" : GoString)))) {
            return ((-1 : GoInt));
        };
        if ((_s != null ? _s.length : ((0 : GoInt))) > ((8 : GoInt))) {
            {
                var __tmp__ = _makeASCIISet(_chars), _as:T_asciiSet = __tmp__._0, _isASCII:Bool = __tmp__._1;
                if (_isASCII) {
                    {
                        var _i:GoInt = (_s != null ? _s.length : ((0 : GoInt))) - ((1 : GoInt));
                        Go.cfor(_i >= ((0 : GoInt)), _i--, {
                            if (_as._contains((_s != null ? _s[_i] : ((0 : GoUInt8))))) {
                                return _i;
                            };
                        });
                    };
                    return ((-1 : GoInt));
                };
            };
        };
        if ((_s != null ? _s.length : ((0 : GoInt))) == ((1 : GoInt))) {
            var _r:GoInt32 = (((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) : GoRune));
            if (_r >= ((128 : GoInt32))) {
                for (__key__ => __value__ in _chars) {
                    _r = __value__;
                    if (_r == ((65533 : GoInt32))) {
                        return ((0 : GoInt));
                    };
                };
                return ((-1 : GoInt));
            };
            if (stdgo.internal.bytealg.Bytealg.indexByteString(_chars, (_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8)))) >= ((0 : GoInt))) {
                return ((0 : GoInt));
            };
            return ((-1 : GoInt));
        };
        if ((_chars != null ? _chars.length : ((0 : GoInt))) == ((1 : GoInt))) {
            var _cr:GoInt32 = (((_chars != null ? _chars[((0 : GoInt))] : ((0 : GoUInt8))) : GoRune));
            if (_cr >= ((128 : GoInt32))) {
                _cr = ((65533 : GoInt32));
            };
            {
                var _i:GoInt = (_s != null ? _s.length : ((0 : GoInt)));
                while (_i > ((0 : GoInt))) {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRune(((_s.__slice__(0, _i) : Slice<GoUInt8>))), _r:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
                    _i = _i - (_size);
                    if (_r == _cr) {
                        return _i;
                    };
                };
            };
            return ((-1 : GoInt));
        };
        {
            var _i:GoInt = (_s != null ? _s.length : ((0 : GoInt)));
            while (_i > ((0 : GoInt))) {
                var _r:GoInt32 = (((_s != null ? _s[_i - ((1 : GoInt))] : ((0 : GoUInt8))) : GoRune));
                if (_r < ((128 : GoInt32))) {
                    if (stdgo.internal.bytealg.Bytealg.indexByteString(_chars, (_s != null ? _s[_i - ((1 : GoInt))] : ((0 : GoUInt8)))) >= ((0 : GoInt))) {
                        return _i - ((1 : GoInt));
                    };
                    _i--;
                    continue;
                };
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRune(((_s.__slice__(0, _i) : Slice<GoUInt8>))), _r:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
                _i = _i - (_size);
                if (_r != ((65533 : GoInt32))) {
                    if ((_chars != null ? _chars.length : ((0 : GoInt))) == _size) {
                        if (_chars == ((_r : GoString))) {
                            return _i;
                        };
                        continue;
                    };
                    if (stdgo.internal.bytealg.Bytealg.maxLen >= _size) {
                        if (stdgo.internal.bytealg.Bytealg.indexString(_chars, ((_r : GoString))) >= ((0 : GoInt))) {
                            return _i;
                        };
                        continue;
                    };
                };
                for (_ => _ch in _chars) {
                    if (_r == _ch) {
                        return _i;
                    };
                };
            };
        };
        return ((-1 : GoInt));
    }
function _genSplit(_s:Slice<GoByte>, _sep:Slice<GoByte>, _sepSave:GoInt, _n:GoInt):Slice<Slice<GoByte>> {
        if (_n == ((0 : GoInt))) {
            return ((null : Slice<Slice<GoUInt8>>));
        };
        if ((_sep != null ? _sep.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return _explode(_s, _n);
        };
        if (_n < ((0 : GoInt))) {
            _n = count(_s, _sep) + ((1 : GoInt));
        };
        var _a:Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((null : Slice<GoUInt8>))]);
        _n--;
        var _i:GoInt = ((0 : GoInt));
        while (_i < _n) {
            var _m:GoInt = index(_s, _sep);
            if (_m < ((0 : GoInt))) {
                break;
            };
            if (_a != null) _a[_i] = ((_s.__slice__(0, _m + _sepSave) : Slice<GoUInt8>)).__setCap__(((_m + _sepSave : GoInt)) - ((1 : GoInt)));
            _s = ((_s.__slice__(_m + (_sep != null ? _sep.length : ((0 : GoInt)))) : Slice<GoUInt8>));
            _i++;
        };
        if (_a != null) _a[_i] = _s;
        return ((_a.__slice__(0, _i + ((1 : GoInt))) : Slice<Slice<GoUInt8>>));
    }
function splitN(_s:Slice<GoByte>, _sep:Slice<GoByte>, _n:GoInt):Slice<Slice<GoByte>> {
        return _genSplit(_s, _sep, ((0 : GoInt)), _n);
    }
function splitAfterN(_s:Slice<GoByte>, _sep:Slice<GoByte>, _n:GoInt):Slice<Slice<GoByte>> {
        return _genSplit(_s, _sep, (_sep != null ? _sep.length : ((0 : GoInt))), _n);
    }
function split(_s:Slice<GoByte>, _sep:Slice<GoByte>):Slice<Slice<GoByte>> {
        return _genSplit(_s, _sep, ((0 : GoInt)), ((-1 : GoInt)));
    }
function splitAfter(_s:Slice<GoByte>, _sep:Slice<GoByte>):Slice<Slice<GoByte>> {
        return _genSplit(_s, _sep, (_sep != null ? _sep.length : ((0 : GoInt))), ((-1 : GoInt)));
    }
function fields(_s:Slice<GoByte>):Slice<Slice<GoByte>> {
        var _n:GoInt = ((0 : GoInt));
        var _wasSpace:GoInt = ((1 : GoInt));
        var _setBits:GoUInt8 = ((((0 : GoUInt8)) : GoUInt8));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_s != null ? _s.length : ((0 : GoInt))), _i++, {
                var _r:GoUInt8 = (_s != null ? _s[_i] : ((0 : GoUInt8)));
                _setBits = _setBits | (_r);
                var _isSpace:GoInt = (((_asciiSpace != null ? _asciiSpace[_r] : ((0 : GoUInt8))) : GoInt));
                _n = _n + (_wasSpace & (-1 ^ _isSpace));
                _wasSpace = _isSpace;
            });
        };
        if (_setBits >= ((128 : GoUInt8))) {
            return fieldsFunc(_s, stdgo.unicode.Unicode.isSpace);
        };
        var _a:Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((null : Slice<GoUInt8>))]);
        var _na:GoInt = ((0 : GoInt));
        var _fieldStart:GoInt = ((0 : GoInt));
        var _i:GoInt = ((0 : GoInt));
        while ((_i < (_s != null ? _s.length : ((0 : GoInt)))) && ((_asciiSpace != null ? _asciiSpace[(_s != null ? _s[_i] : ((0 : GoUInt8)))] : ((0 : GoUInt8))) != ((0 : GoUInt8)))) {
            _i++;
        };
        _fieldStart = _i;
        while (_i < (_s != null ? _s.length : ((0 : GoInt)))) {
            if ((_asciiSpace != null ? _asciiSpace[(_s != null ? _s[_i] : ((0 : GoUInt8)))] : ((0 : GoUInt8))) == ((0 : GoUInt8))) {
                _i++;
                continue;
            };
            if (_a != null) _a[_na] = ((_s.__slice__(_fieldStart, _i) : Slice<GoUInt8>)).__setCap__(((_i : GoInt)) - ((1 : GoInt)));
            _na++;
            _i++;
            while ((_i < (_s != null ? _s.length : ((0 : GoInt)))) && ((_asciiSpace != null ? _asciiSpace[(_s != null ? _s[_i] : ((0 : GoUInt8)))] : ((0 : GoUInt8))) != ((0 : GoUInt8)))) {
                _i++;
            };
            _fieldStart = _i;
        };
        if (_fieldStart < (_s != null ? _s.length : ((0 : GoInt)))) {
            if (_a != null) _a[_na] = ((_s.__slice__(_fieldStart, (_s != null ? _s.length : ((0 : GoInt)))) : Slice<GoUInt8>)).__setCap__((((_s != null ? _s.length : ((0 : GoInt))) : GoInt)) - ((1 : GoInt)));
        };
        return _a;
    }
@:structInit class T_span_fieldsFunc_0 {
    public var _start : GoInt = ((0 : GoInt));
    public var _end : GoInt = ((0 : GoInt));
    public function new(?_start:GoInt, ?_end:GoInt) {
        if (_start != null) this._start = _start;
        if (_end != null) this._end = _end;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_span_fieldsFunc_0(_start, _end);
    }
}
function fieldsFunc(_s:Slice<GoByte>, _f:GoRune -> Bool):Slice<Slice<GoByte>> {
        {};
        var _spans:Slice<T_span_fieldsFunc_0> = new Slice<T_span_fieldsFunc_0>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_span_fieldsFunc_0()]).__setCap__(((((32 : GoInt)) : GoInt)).toBasic());
        var _start:GoInt = ((-1 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            while (_i < (_s != null ? _s.length : ((0 : GoInt)))) {
                var _size:GoInt = ((1 : GoInt));
                var _r:GoInt32 = (((_s != null ? _s[_i] : ((0 : GoUInt8))) : GoRune));
                if (_r >= ((128 : GoInt32))) {
                    {
                        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_s.__slice__(_i) : Slice<GoUInt8>)));
                        _r = __tmp__._0;
                        _size = __tmp__._1;
                    };
                };
                if (_f(_r)) {
                    if (_start >= ((0 : GoInt))) {
                        _spans = (_spans != null ? _spans.__append__(((new T_span_fieldsFunc_0(_start, _i) : T_span_fieldsFunc_0))) : new Slice<T_span_fieldsFunc_0>(((new T_span_fieldsFunc_0(_start, _i) : T_span_fieldsFunc_0))));
                        _start = ((-1 : GoInt));
                    };
                } else {
                    if (_start < ((0 : GoInt))) {
                        _start = _i;
                    };
                };
                _i = _i + (_size);
            };
        };
        if (_start >= ((0 : GoInt))) {
            _spans = (_spans != null ? _spans.__append__(((new T_span_fieldsFunc_0(_start, (_s != null ? _s.length : ((0 : GoInt)))) : T_span_fieldsFunc_0))) : new Slice<T_span_fieldsFunc_0>(((new T_span_fieldsFunc_0(_start, (_s != null ? _s.length : ((0 : GoInt)))) : T_span_fieldsFunc_0))));
        };
        var _a:Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>(...[for (i in 0 ... (((_spans != null ? _spans.length : ((0 : GoInt))) : GoInt)).toBasic()) ((null : Slice<GoUInt8>))]);
        for (_i => _span in _spans) {
            if (_a != null) _a[_i] = ((_s.__slice__(_span._start, _span._end) : Slice<GoUInt8>)).__setCap__(((_span._end : GoInt)) - ((1 : GoInt)));
        };
        return _a;
    }
function join(_s:Slice<Slice<GoByte>>, _sep:Slice<GoByte>):Slice<GoByte> {
        if ((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return ((new Slice<GoUInt8>() : Slice<GoUInt8>));
        };
        if ((_s != null ? _s.length : ((0 : GoInt))) == ((1 : GoInt))) {
            return (((((null : Slice<GoUInt8>)) : Slice<GoByte>)) != null ? ((((null : Slice<GoUInt8>)) : Slice<GoByte>)).__append__(...(_s != null ? _s[((0 : GoInt))] : ((null : Slice<GoUInt8>))).__toArray__()) : new Slice<GoUInt8>(...(_s != null ? _s[((0 : GoInt))] : ((null : Slice<GoUInt8>))).__toArray__()));
        };
        var _n:GoInt = (_sep != null ? _sep.length : ((0 : GoInt))) * ((_s != null ? _s.length : ((0 : GoInt))) - ((1 : GoInt)));
        for (_ => _v in _s) {
            _n = _n + ((_v != null ? _v.length : ((0 : GoInt))));
        };
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _bp:GoInt = Go.copySlice(_b, (_s != null ? _s[((0 : GoInt))] : ((null : Slice<GoUInt8>))));
        for (_ => _v in ((_s.__slice__(((1 : GoInt))) : Slice<Slice<GoUInt8>>))) {
            _bp = _bp + (Go.copySlice(((_b.__slice__(_bp) : Slice<GoUInt8>)), _sep));
            _bp = _bp + (Go.copySlice(((_b.__slice__(_bp) : Slice<GoUInt8>)), _v));
        };
        return _b;
    }
function hasPrefix(_s:Slice<GoByte>, _prefix:Slice<GoByte>):Bool {
        return ((_s != null ? _s.length : ((0 : GoInt))) >= (_prefix != null ? _prefix.length : ((0 : GoInt)))) && equal(((_s.__slice__(((0 : GoInt)), (_prefix != null ? _prefix.length : ((0 : GoInt)))) : Slice<GoUInt8>)), _prefix);
    }
function hasSuffix(_s:Slice<GoByte>, _suffix:Slice<GoByte>):Bool {
        return ((_s != null ? _s.length : ((0 : GoInt))) >= (_suffix != null ? _suffix.length : ((0 : GoInt)))) && equal(((_s.__slice__((_s != null ? _s.length : ((0 : GoInt))) - (_suffix != null ? _suffix.length : ((0 : GoInt)))) : Slice<GoUInt8>)), _suffix);
    }
function map(_mapping:(_r:GoRune) -> GoRune, _s:Slice<GoByte>):Slice<GoByte> {
        var _maxbytes:GoInt = (_s != null ? _s.length : ((0 : GoInt)));
        var _nbytes:GoInt = ((0 : GoInt));
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_maxbytes : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _i:GoInt = ((0 : GoInt));
            while (_i < (_s != null ? _s.length : ((0 : GoInt)))) {
                var _wid:GoInt = ((1 : GoInt));
                var _r:GoInt32 = (((_s != null ? _s[_i] : ((0 : GoUInt8))) : GoRune));
                if (_r >= ((128 : GoInt32))) {
                    {
                        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_s.__slice__(_i) : Slice<GoUInt8>)));
                        _r = __tmp__._0;
                        _wid = __tmp__._1;
                    };
                };
                _r = _mapping(_r);
                if (_r >= ((0 : GoInt32))) {
                    var _rl:GoInt = stdgo.unicode.utf8.Utf8.runeLen(_r);
                    if (_rl < ((0 : GoInt))) {
                        _rl = (((((65533 : GoInt32)) : GoString)) != null ? ((((65533 : GoInt32)) : GoString)).length : ((0 : GoInt)));
                    };
                    if ((_nbytes + _rl) > _maxbytes) {
                        _maxbytes = (_maxbytes * ((2 : GoInt))) + ((4 : GoInt));
                        var _nb:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_maxbytes : GoInt)).toBasic()) ((0 : GoUInt8))]);
                        Go.copySlice(_nb, ((_b.__slice__(((0 : GoInt)), _nbytes) : Slice<GoUInt8>)));
                        _b = _nb;
                    };
                    _nbytes = _nbytes + (stdgo.unicode.utf8.Utf8.encodeRune(((_b.__slice__(_nbytes, _maxbytes) : Slice<GoUInt8>)), _r));
                };
                _i = _i + (_wid);
            };
        };
        return ((_b.__slice__(((0 : GoInt)), _nbytes) : Slice<GoUInt8>));
    }
function repeat(_b:Slice<GoByte>, _count:GoInt):Slice<GoByte> {
        if (_count == ((0 : GoInt))) {
            return ((new Slice<GoUInt8>() : Slice<GoUInt8>));
        };
        if (_count < ((0 : GoInt))) {
            throw Go.toInterface(((("bytes: negative Repeat count" : GoString))));
        } else if ((((_b != null ? _b.length : ((0 : GoInt))) * _count) / _count) != (_b != null ? _b.length : ((0 : GoInt)))) {
            throw Go.toInterface(((("bytes: Repeat count causes overflow" : GoString))));
        };
        var _nb:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_b != null ? _b.length : ((0 : GoInt))) * _count : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _bp:GoInt = Go.copySlice(_nb, _b);
        while (_bp < (_nb != null ? _nb.length : ((0 : GoInt)))) {
            Go.copySlice(((_nb.__slice__(_bp) : Slice<GoUInt8>)), ((_nb.__slice__(0, _bp) : Slice<GoUInt8>)));
            _bp = _bp * (((2 : GoInt)));
        };
        return _nb;
    }
function toUpper(_s:Slice<GoByte>):Slice<GoByte> {
        var _isASCII:Bool = true, _hasLower:Bool = false;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_s != null ? _s.length : ((0 : GoInt))), _i++, {
                var _c:GoUInt8 = (_s != null ? _s[_i] : ((0 : GoUInt8)));
                if (_c >= ((128 : GoUInt8))) {
                    _isASCII = false;
                    break;
                };
                _hasLower = _hasLower || ((((((("a" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("z" : GoString))).code : GoRune))));
            });
        };
        if (_isASCII) {
            if (!_hasLower) {
                return (((((("" : GoString))) : Slice<GoByte>)) != null ? ((((("" : GoString))) : Slice<GoByte>)).__append__(..._s.__toArray__()) : new Slice<GoUInt8>(..._s.__toArray__()));
            };
            var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_s != null ? _s.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < (_s != null ? _s.length : ((0 : GoInt))), _i++, {
                    var _c:GoUInt8 = (_s != null ? _s[_i] : ((0 : GoUInt8)));
                    if ((((((("a" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("z" : GoString))).code : GoRune)))) {
                        _c = _c - (((32 : GoUInt8)));
                    };
                    if (_b != null) _b[_i] = _c;
                });
            };
            return _b;
        };
        return map(stdgo.unicode.Unicode.toUpper, _s);
    }
function toLower(_s:Slice<GoByte>):Slice<GoByte> {
        var _isASCII:Bool = true, _hasUpper:Bool = false;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_s != null ? _s.length : ((0 : GoInt))), _i++, {
                var _c:GoUInt8 = (_s != null ? _s[_i] : ((0 : GoUInt8)));
                if (_c >= ((128 : GoUInt8))) {
                    _isASCII = false;
                    break;
                };
                _hasUpper = _hasUpper || ((((((("A" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("Z" : GoString))).code : GoRune))));
            });
        };
        if (_isASCII) {
            if (!_hasUpper) {
                return (((((("" : GoString))) : Slice<GoByte>)) != null ? ((((("" : GoString))) : Slice<GoByte>)).__append__(..._s.__toArray__()) : new Slice<GoUInt8>(..._s.__toArray__()));
            };
            var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_s != null ? _s.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < (_s != null ? _s.length : ((0 : GoInt))), _i++, {
                    var _c:GoUInt8 = (_s != null ? _s[_i] : ((0 : GoUInt8)));
                    if ((((((("A" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("Z" : GoString))).code : GoRune)))) {
                        _c = _c + (((32 : GoUInt8)));
                    };
                    if (_b != null) _b[_i] = _c;
                });
            };
            return _b;
        };
        return map(stdgo.unicode.Unicode.toLower, _s);
    }
function toTitle(_s:Slice<GoByte>):Slice<GoByte> {
        return map(stdgo.unicode.Unicode.toTitle, _s);
    }
function toUpperSpecial(_c:stdgo.unicode.Unicode.SpecialCase, _s:Slice<GoByte>):Slice<GoByte> {
        return map(_c.toUpper, _s);
    }
function toLowerSpecial(_c:stdgo.unicode.Unicode.SpecialCase, _s:Slice<GoByte>):Slice<GoByte> {
        return map(_c.toLower, _s);
    }
function toTitleSpecial(_c:stdgo.unicode.Unicode.SpecialCase, _s:Slice<GoByte>):Slice<GoByte> {
        return map(_c.toTitle, _s);
    }
function toValidUTF8(_s:Slice<GoByte>, _replacement:Slice<GoByte>):Slice<GoByte> {
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__((((_s != null ? _s.length : ((0 : GoInt))) + (_replacement != null ? _replacement.length : ((0 : GoInt))) : GoInt)).toBasic());
        var _invalid:Bool = false;
        {
            var _i:GoInt = ((0 : GoInt));
            while (_i < (_s != null ? _s.length : ((0 : GoInt)))) {
                var _c:GoUInt8 = (_s != null ? _s[_i] : ((0 : GoUInt8)));
                if (_c < ((128 : GoUInt8))) {
                    _i++;
                    _invalid = false;
                    _b = (_b != null ? _b.__append__(_c) : new Slice<GoUInt8>(_c));
                    continue;
                };
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_s.__slice__(_i) : Slice<GoUInt8>))), _:GoInt32 = __tmp__._0, _wid:GoInt = __tmp__._1;
                if (_wid == ((1 : GoInt))) {
                    _i++;
                    if (!_invalid) {
                        _invalid = true;
                        _b = (_b != null ? _b.__append__(..._replacement.__toArray__()) : new Slice<GoUInt8>(..._replacement.__toArray__()));
                    };
                    continue;
                };
                _invalid = false;
                _b = (_b != null ? _b.__append__(...((_s.__slice__(_i, _i + _wid) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_s.__slice__(_i, _i + _wid) : Slice<GoUInt8>)).__toArray__()));
                _i = _i + (_wid);
            };
        };
        return _b;
    }
function _isSeparator(_r:GoRune):Bool {
        if (_r <= ((127 : GoInt32))) {
            if ((((((("0" : GoString))).code : GoRune)) <= _r) && (_r <= ((((("9" : GoString))).code : GoRune)))) {
                return false;
            } else if ((((((("a" : GoString))).code : GoRune)) <= _r) && (_r <= ((((("z" : GoString))).code : GoRune)))) {
                return false;
            } else if ((((((("A" : GoString))).code : GoRune)) <= _r) && (_r <= ((((("Z" : GoString))).code : GoRune)))) {
                return false;
            } else if (_r == ((((("_" : GoString))).code : GoRune))) {
                return false;
            };
            return true;
        };
        if (stdgo.unicode.Unicode.isLetter(_r) || stdgo.unicode.Unicode.isDigit(_r)) {
            return false;
        };
        return stdgo.unicode.Unicode.isSpace(_r);
    }
function title(_s:Slice<GoByte>):Slice<GoByte> {
        var _prev:GoInt32 = (((((" " : GoString))).code : GoRune));
        return map(function(_r:GoRune):GoRune {
            if (_isSeparator(_prev)) {
                _prev = _r;
                return stdgo.unicode.Unicode.toTitle(_r);
            };
            _prev = _r;
            return _r;
        }, _s);
    }
function trimLeftFunc(_s:Slice<GoByte>, _f:(_r:GoRune) -> Bool):Slice<GoByte> {
        var _i:GoInt = _indexFunc(_s, _f, false);
        if (_i == ((-1 : GoInt))) {
            return ((null : Slice<GoUInt8>));
        };
        return ((_s.__slice__(_i) : Slice<GoUInt8>));
    }
function trimRightFunc(_s:Slice<GoByte>, _f:(_r:GoRune) -> Bool):Slice<GoByte> {
        var _i:GoInt = _lastIndexFunc(_s, _f, false);
        if ((_i >= ((0 : GoInt))) && ((_s != null ? _s[_i] : ((0 : GoUInt8))) >= ((128 : GoUInt8)))) {
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_s.__slice__(_i) : Slice<GoUInt8>))), _:GoInt32 = __tmp__._0, _wid:GoInt = __tmp__._1;
            _i = _i + (_wid);
        } else {
            _i++;
        };
        return ((_s.__slice__(((0 : GoInt)), _i) : Slice<GoUInt8>));
    }
function trimFunc(_s:Slice<GoByte>, _f:(_r:GoRune) -> Bool):Slice<GoByte> {
        return trimRightFunc(trimLeftFunc(_s, _f), _f);
    }
function trimPrefix(_s:Slice<GoByte>, _prefix:Slice<GoByte>):Slice<GoByte> {
        if (hasPrefix(_s, _prefix)) {
            return ((_s.__slice__((_prefix != null ? _prefix.length : ((0 : GoInt)))) : Slice<GoUInt8>));
        };
        return _s;
    }
function trimSuffix(_s:Slice<GoByte>, _suffix:Slice<GoByte>):Slice<GoByte> {
        if (hasSuffix(_s, _suffix)) {
            return ((_s.__slice__(0, (_s != null ? _s.length : ((0 : GoInt))) - (_suffix != null ? _suffix.length : ((0 : GoInt)))) : Slice<GoUInt8>));
        };
        return _s;
    }
function indexFunc(_s:Slice<GoByte>, _f:(_r:GoRune) -> Bool):GoInt {
        return _indexFunc(_s, _f, true);
    }
function lastIndexFunc(_s:Slice<GoByte>, _f:(_r:GoRune) -> Bool):GoInt {
        return _lastIndexFunc(_s, _f, true);
    }
function _indexFunc(_s:Slice<GoByte>, _f:(_r:GoRune) -> Bool, _truth:Bool):GoInt {
        var _start:GoInt = ((0 : GoInt));
        while (_start < (_s != null ? _s.length : ((0 : GoInt)))) {
            var _wid:GoInt = ((1 : GoInt));
            var _r:GoInt32 = (((_s != null ? _s[_start] : ((0 : GoUInt8))) : GoRune));
            if (_r >= ((128 : GoInt32))) {
                {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_s.__slice__(_start) : Slice<GoUInt8>)));
                    _r = __tmp__._0;
                    _wid = __tmp__._1;
                };
            };
            if (_f(_r) == _truth) {
                return _start;
            };
            _start = _start + (_wid);
        };
        return ((-1 : GoInt));
    }
function _lastIndexFunc(_s:Slice<GoByte>, _f:(_r:GoRune) -> Bool, _truth:Bool):GoInt {
        {
            var _i:GoInt = (_s != null ? _s.length : ((0 : GoInt)));
            while (_i > ((0 : GoInt))) {
                var _r:GoInt32 = (((_s != null ? _s[_i - ((1 : GoInt))] : ((0 : GoUInt8))) : GoRune)), _size:GoInt = ((1 : GoInt));
                if (_r >= ((128 : GoInt32))) {
                    {
                        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRune(((_s.__slice__(((0 : GoInt)), _i) : Slice<GoUInt8>)));
                        _r = __tmp__._0;
                        _size = __tmp__._1;
                    };
                };
                _i = _i - (_size);
                if (_f(_r) == _truth) {
                    return _i;
                };
            };
        };
        return ((-1 : GoInt));
    }
function _makeASCIISet(_chars:GoString):{ var _0 : T_asciiSet; var _1 : Bool; } {
        var _as:T_asciiSet = new T_asciiSet(), _ok:Bool = false;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_chars != null ? _chars.length : ((0 : GoInt))), _i++, {
                var _c:GoUInt8 = (_chars != null ? _chars[_i] : ((0 : GoUInt8)));
                if (_c >= ((128 : GoUInt8))) {
                    return { _0 : (_as == null ? null : _as.__copy__()), _1 : false };
                };
                if (_as != null) (_as != null ? _as[_c / ((32 : GoUInt8))] : ((0 : GoUInt32))) | (((1 : GoUInt32)) << (_c % ((32 : GoUInt8))));
            });
        };
        return { _0 : (_as == null ? null : _as.__copy__()), _1 : true };
    }
function _containsRune(_s:GoString, _r:GoRune):Bool {
        for (_ => _c in _s) {
            if (_c == _r) {
                return true;
            };
        };
        return false;
    }
function trim(_s:Slice<GoByte>, _cutset:GoString):Slice<GoByte> {
        if (((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt))) || (_cutset == ((("" : GoString))))) {
            return _s;
        };
        if (((_cutset != null ? _cutset.length : ((0 : GoInt))) == ((1 : GoInt))) && ((_cutset != null ? _cutset[((0 : GoInt))] : ((0 : GoUInt8))) < ((128 : GoUInt8)))) {
            return _trimLeftByte(_trimRightByte(_s, (_cutset != null ? _cutset[((0 : GoInt))] : ((0 : GoUInt8)))), (_cutset != null ? _cutset[((0 : GoInt))] : ((0 : GoUInt8))));
        };
        {
            var __tmp__ = _makeASCIISet(_cutset), _as:T_asciiSet = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _trimLeftASCII(_trimRightASCII(_s, _as), _as);
            };
        };
        return _trimLeftUnicode(_trimRightUnicode(_s, _cutset), _cutset);
    }
function trimLeft(_s:Slice<GoByte>, _cutset:GoString):Slice<GoByte> {
        if (((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt))) || (_cutset == ((("" : GoString))))) {
            return _s;
        };
        if (((_cutset != null ? _cutset.length : ((0 : GoInt))) == ((1 : GoInt))) && ((_cutset != null ? _cutset[((0 : GoInt))] : ((0 : GoUInt8))) < ((128 : GoUInt8)))) {
            return _trimLeftByte(_s, (_cutset != null ? _cutset[((0 : GoInt))] : ((0 : GoUInt8))));
        };
        {
            var __tmp__ = _makeASCIISet(_cutset), _as:T_asciiSet = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _trimLeftASCII(_s, _as);
            };
        };
        return _trimLeftUnicode(_s, _cutset);
    }
function _trimLeftByte(_s:Slice<GoByte>, _c:GoByte):Slice<GoByte> {
        while (((_s != null ? _s.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) == _c)) {
            _s = ((_s.__slice__(((1 : GoInt))) : Slice<GoUInt8>));
        };
        return _s;
    }
function _trimLeftASCII(_s:Slice<GoByte>, _as:T_asciiSet):Slice<GoByte> {
        while ((_s != null ? _s.length : ((0 : GoInt))) > ((0 : GoInt))) {
            if (!_as._contains((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))))) {
                break;
            };
            _s = ((_s.__slice__(((1 : GoInt))) : Slice<GoUInt8>));
        };
        return _s;
    }
function _trimLeftUnicode(_s:Slice<GoByte>, _cutset:GoString):Slice<GoByte> {
        while ((_s != null ? _s.length : ((0 : GoInt))) > ((0 : GoInt))) {
            var _r:GoInt32 = (((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) : GoRune)), _n:GoInt = ((1 : GoInt));
            if (_r >= ((128 : GoInt32))) {
                {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_s);
                    _r = __tmp__._0;
                    _n = __tmp__._1;
                };
            };
            if (!_containsRune(_cutset, _r)) {
                break;
            };
            _s = ((_s.__slice__(_n) : Slice<GoUInt8>));
        };
        return _s;
    }
function trimRight(_s:Slice<GoByte>, _cutset:GoString):Slice<GoByte> {
        if (((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt))) || (_cutset == ((("" : GoString))))) {
            return _s;
        };
        if (((_cutset != null ? _cutset.length : ((0 : GoInt))) == ((1 : GoInt))) && ((_cutset != null ? _cutset[((0 : GoInt))] : ((0 : GoUInt8))) < ((128 : GoUInt8)))) {
            return _trimRightByte(_s, (_cutset != null ? _cutset[((0 : GoInt))] : ((0 : GoUInt8))));
        };
        {
            var __tmp__ = _makeASCIISet(_cutset), _as:T_asciiSet = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _trimRightASCII(_s, _as);
            };
        };
        return _trimRightUnicode(_s, _cutset);
    }
function _trimRightByte(_s:Slice<GoByte>, _c:GoByte):Slice<GoByte> {
        while (((_s != null ? _s.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_s != null ? _s[(_s != null ? _s.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) == _c)) {
            _s = ((_s.__slice__(0, (_s != null ? _s.length : ((0 : GoInt))) - ((1 : GoInt))) : Slice<GoUInt8>));
        };
        return _s;
    }
function _trimRightASCII(_s:Slice<GoByte>, _as:T_asciiSet):Slice<GoByte> {
        while ((_s != null ? _s.length : ((0 : GoInt))) > ((0 : GoInt))) {
            if (!_as._contains((_s != null ? _s[(_s != null ? _s.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))))) {
                break;
            };
            _s = ((_s.__slice__(0, (_s != null ? _s.length : ((0 : GoInt))) - ((1 : GoInt))) : Slice<GoUInt8>));
        };
        return _s;
    }
function _trimRightUnicode(_s:Slice<GoByte>, _cutset:GoString):Slice<GoByte> {
        while ((_s != null ? _s.length : ((0 : GoInt))) > ((0 : GoInt))) {
            var _r:GoInt32 = (((_s != null ? _s[(_s != null ? _s.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) : GoRune)), _n:GoInt = ((1 : GoInt));
            if (_r >= ((128 : GoInt32))) {
                {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRune(_s);
                    _r = __tmp__._0;
                    _n = __tmp__._1;
                };
            };
            if (!_containsRune(_cutset, _r)) {
                break;
            };
            _s = ((_s.__slice__(0, (_s != null ? _s.length : ((0 : GoInt))) - _n) : Slice<GoUInt8>));
        };
        return _s;
    }
function trimSpace(_s:Slice<GoByte>):Slice<GoByte> {
        var _start:GoInt = ((0 : GoInt));
        Go.cfor(_start < (_s != null ? _s.length : ((0 : GoInt))), _start++, {
            var _c:GoUInt8 = (_s != null ? _s[_start] : ((0 : GoUInt8)));
            if (_c >= ((128 : GoUInt8))) {
                return trimFunc(((_s.__slice__(_start) : Slice<GoUInt8>)), stdgo.unicode.Unicode.isSpace);
            };
            if ((_asciiSpace != null ? _asciiSpace[_c] : ((0 : GoUInt8))) == ((0 : GoUInt8))) {
                break;
            };
        });
        var _stop:GoInt = (_s != null ? _s.length : ((0 : GoInt)));
        Go.cfor(_stop > _start, _stop--, {
            var _c:GoUInt8 = (_s != null ? _s[_stop - ((1 : GoInt))] : ((0 : GoUInt8)));
            if (_c >= ((128 : GoUInt8))) {
                return trimFunc(((_s.__slice__(_start, _stop) : Slice<GoUInt8>)), stdgo.unicode.Unicode.isSpace);
            };
            if ((_asciiSpace != null ? _asciiSpace[_c] : ((0 : GoUInt8))) == ((0 : GoUInt8))) {
                break;
            };
        });
        if (_start == _stop) {
            return ((null : Slice<GoUInt8>));
        };
        return ((_s.__slice__(_start, _stop) : Slice<GoUInt8>));
    }
function runes(_s:Slice<GoByte>):Slice<GoRune> {
        var _t:Slice<GoInt32> = new Slice<GoInt32>(...[for (i in 0 ... ((stdgo.unicode.utf8.Utf8.runeCount(_s) : GoInt)).toBasic()) ((0 : GoInt32))]);
        var _i:GoInt = ((0 : GoInt));
        while ((_s != null ? _s.length : ((0 : GoInt))) > ((0 : GoInt))) {
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_s), _r:GoInt32 = __tmp__._0, _l:GoInt = __tmp__._1;
            if (_t != null) _t[_i] = _r;
            _i++;
            _s = ((_s.__slice__(_l) : Slice<GoUInt8>));
        };
        return _t;
    }
function replace(_s:Slice<GoByte>, _old:Slice<GoByte>, _new:Slice<GoByte>, _n:GoInt):Slice<GoByte> {
        var _m:GoInt = ((0 : GoInt));
        if (_n != ((0 : GoInt))) {
            _m = count(_s, _old);
        };
        if (_m == ((0 : GoInt))) {
            return (((((null : Slice<GoUInt8>)) : Slice<GoByte>)) != null ? ((((null : Slice<GoUInt8>)) : Slice<GoByte>)).__append__(..._s.__toArray__()) : new Slice<GoUInt8>(..._s.__toArray__()));
        };
        if ((_n < ((0 : GoInt))) || (_m < _n)) {
            _n = _m;
        };
        var _t:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_s != null ? _s.length : ((0 : GoInt))) + (_n * ((_new != null ? _new.length : ((0 : GoInt))) - (_old != null ? _old.length : ((0 : GoInt))))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _w:GoInt = ((0 : GoInt));
        var _start:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                var _j:GoInt = _start;
                if ((_old != null ? _old.length : ((0 : GoInt))) == ((0 : GoInt))) {
                    if (_i > ((0 : GoInt))) {
                        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_s.__slice__(_start) : Slice<GoUInt8>))), _:GoInt32 = __tmp__._0, _wid:GoInt = __tmp__._1;
                        _j = _j + (_wid);
                    };
                } else {
                    _j = _j + (index(((_s.__slice__(_start) : Slice<GoUInt8>)), _old));
                };
                _w = _w + (Go.copySlice(((_t.__slice__(_w) : Slice<GoUInt8>)), ((_s.__slice__(_start, _j) : Slice<GoUInt8>))));
                _w = _w + (Go.copySlice(((_t.__slice__(_w) : Slice<GoUInt8>)), _new));
                _start = _j + (_old != null ? _old.length : ((0 : GoInt)));
            });
        };
        _w = _w + (Go.copySlice(((_t.__slice__(_w) : Slice<GoUInt8>)), ((_s.__slice__(_start) : Slice<GoUInt8>))));
        return ((_t.__slice__(((0 : GoInt)), _w) : Slice<GoUInt8>));
    }
function replaceAll(_s:Slice<GoByte>, _old:Slice<GoByte>, _new:Slice<GoByte>):Slice<GoByte> {
        return replace(_s, _old, _new, ((-1 : GoInt)));
    }
function equalFold(_s:Slice<GoByte>, _t:Slice<GoByte>):Bool {
        while (((_s != null ? _s.length : ((0 : GoInt))) != ((0 : GoInt))) && ((_t != null ? _t.length : ((0 : GoInt))) != ((0 : GoInt)))) {
            var _sr:GoRune = ((0 : GoInt32)), _tr:GoRune = ((0 : GoInt32));
            if ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) < ((128 : GoUInt8))) {
                {
                    final __tmp__0 = (((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) : GoRune));
                    final __tmp__1 = ((_s.__slice__(((1 : GoInt))) : Slice<GoUInt8>));
                    _sr = __tmp__0;
                    _s = __tmp__1;
                };
            } else {
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_s), _r:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
                {
                    final __tmp__0 = _r;
                    final __tmp__1 = ((_s.__slice__(_size) : Slice<GoUInt8>));
                    _sr = __tmp__0;
                    _s = __tmp__1;
                };
            };
            if ((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) < ((128 : GoUInt8))) {
                {
                    final __tmp__0 = (((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) : GoRune));
                    final __tmp__1 = ((_t.__slice__(((1 : GoInt))) : Slice<GoUInt8>));
                    _tr = __tmp__0;
                    _t = __tmp__1;
                };
            } else {
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_t), _r:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
                {
                    final __tmp__0 = _r;
                    final __tmp__1 = ((_t.__slice__(_size) : Slice<GoUInt8>));
                    _tr = __tmp__0;
                    _t = __tmp__1;
                };
            };
            if (_tr == _sr) {
                continue;
            };
            if (_tr < _sr) {
                {
                    final __tmp__0 = _sr;
                    final __tmp__1 = _tr;
                    _tr = __tmp__0;
                    _sr = __tmp__1;
                };
            };
            if (_tr < ((128 : GoInt32))) {
                if (((((((("A" : GoString))).code : GoRune)) <= _sr) && (_sr <= ((((("Z" : GoString))).code : GoRune)))) && (_tr == ((_sr + ((((("a" : GoString))).code : GoRune))) - ((((("A" : GoString))).code : GoRune))))) {
                    continue;
                };
                return false;
            };
            var _r:GoInt32 = stdgo.unicode.Unicode.simpleFold(_sr);
            while ((_r != _sr) && (_r < _tr)) {
                _r = stdgo.unicode.Unicode.simpleFold(_r);
            };
            if (_r == _tr) {
                continue;
            };
            return false;
        };
        return (_s != null ? _s.length : ((0 : GoInt))) == (_t != null ? _t.length : ((0 : GoInt)));
    }
function index(_s:Slice<GoByte>, _sep:Slice<GoByte>):GoInt {
        var _n:GoInt = (_sep != null ? _sep.length : ((0 : GoInt)));
        if (_n == ((0 : GoInt))) {
            return ((0 : GoInt));
        } else if (_n == ((1 : GoInt))) {
            return indexByte(_s, (_sep != null ? _sep[((0 : GoInt))] : ((0 : GoUInt8))));
        } else if (_n == (_s != null ? _s.length : ((0 : GoInt)))) {
            if (equal(_sep, _s)) {
                return ((0 : GoInt));
            };
            return ((-1 : GoInt));
        } else if (_n > (_s != null ? _s.length : ((0 : GoInt)))) {
            return ((-1 : GoInt));
        } else if (_n <= stdgo.internal.bytealg.Bytealg.maxLen) {
            if ((_s != null ? _s.length : ((0 : GoInt))) <= ((0 : GoInt))) {
                return stdgo.internal.bytealg.Bytealg.index(_s, _sep);
            };
            var _c0:GoUInt8 = (_sep != null ? _sep[((0 : GoInt))] : ((0 : GoUInt8)));
            var _c1:GoUInt8 = (_sep != null ? _sep[((1 : GoInt))] : ((0 : GoUInt8)));
            var _i:GoInt = ((0 : GoInt));
            var _t:GoInt = ((_s != null ? _s.length : ((0 : GoInt))) - _n) + ((1 : GoInt));
            var _fails:GoInt = ((0 : GoInt));
            while (_i < _t) {
                if ((_s != null ? _s[_i] : ((0 : GoUInt8))) != _c0) {
                    var _o:GoInt = indexByte(((_s.__slice__(_i + ((1 : GoInt)), _t) : Slice<GoUInt8>)), _c0);
                    if (_o < ((0 : GoInt))) {
                        return ((-1 : GoInt));
                    };
                    _i = _i + (_o + ((1 : GoInt)));
                };
                if (((_s != null ? _s[_i + ((1 : GoInt))] : ((0 : GoUInt8))) == _c1) && equal(((_s.__slice__(_i, _i + _n) : Slice<GoUInt8>)), _sep)) {
                    return _i;
                };
                _fails++;
                _i++;
                if (_fails > stdgo.internal.bytealg.Bytealg.cutover(_i)) {
                    var _r:GoInt = stdgo.internal.bytealg.Bytealg.index(((_s.__slice__(_i) : Slice<GoUInt8>)), _sep);
                    if (_r >= ((0 : GoInt))) {
                        return _r + _i;
                    };
                    return ((-1 : GoInt));
                };
            };
            return ((-1 : GoInt));
        };
        var _c0:GoUInt8 = (_sep != null ? _sep[((0 : GoInt))] : ((0 : GoUInt8)));
        var _c1:GoUInt8 = (_sep != null ? _sep[((1 : GoInt))] : ((0 : GoUInt8)));
        var _i:GoInt = ((0 : GoInt));
        var _fails:GoInt = ((0 : GoInt));
        var _t:GoInt = ((_s != null ? _s.length : ((0 : GoInt))) - _n) + ((1 : GoInt));
        while (_i < _t) {
            if ((_s != null ? _s[_i] : ((0 : GoUInt8))) != _c0) {
                var _o:GoInt = indexByte(((_s.__slice__(_i + ((1 : GoInt)), _t) : Slice<GoUInt8>)), _c0);
                if (_o < ((0 : GoInt))) {
                    break;
                };
                _i = _i + (_o + ((1 : GoInt)));
            };
            if (((_s != null ? _s[_i + ((1 : GoInt))] : ((0 : GoUInt8))) == _c1) && equal(((_s.__slice__(_i, _i + _n) : Slice<GoUInt8>)), _sep)) {
                return _i;
            };
            _i++;
            _fails++;
            if ((_fails >= (((4 : GoInt)) + (_i >> ((4 : GoUnTypedInt))))) && (_i < _t)) {
                var _j:GoInt = stdgo.internal.bytealg.Bytealg.indexRabinKarpBytes(((_s.__slice__(_i) : Slice<GoUInt8>)), _sep);
                if (_j < ((0 : GoInt))) {
                    return ((-1 : GoInt));
                };
                return _i + _j;
            };
        };
        return ((-1 : GoInt));
    }
function cut(_s:Slice<GoByte>, _sep:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Slice<GoByte>; var _2 : Bool; } {
        var _before:Slice<GoByte> = ((null : Slice<GoUInt8>)), _after:Slice<GoByte> = ((null : Slice<GoUInt8>)), _found:Bool = false;
        {
            var _i:GoInt = index(_s, _sep);
            if (_i >= ((0 : GoInt))) {
                return { _0 : ((_s.__slice__(0, _i) : Slice<GoUInt8>)), _1 : ((_s.__slice__(_i + (_sep != null ? _sep.length : ((0 : GoInt)))) : Slice<GoUInt8>)), _2 : true };
            };
        };
        return { _0 : _s, _1 : ((null : Slice<GoUInt8>)), _2 : false };
    }
function newReader(_b:Slice<GoByte>):Reader {
        return ((new Reader(_b, ((0 : GoInt64)), ((-1 : GoInt))) : Reader));
    }
class Buffer_wrapper {
    @:keep
    public function readString(_delim:GoByte):{ var _0 : GoString; var _1 : Error; } {
        var _b = __t__;
        _b;
        var _line:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        var __tmp__ = _b._readSlice(_delim), _slice:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : ((_slice : GoString)), _1 : _err };
    }
    @:keep
    public function _readSlice(_delim:GoByte):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _b = __t__;
        _b;
        var _line:Slice<GoByte> = ((null : Slice<GoUInt8>)), _err:Error = ((null : stdgo.Error));
        var _i:GoInt = indexByte(((_b._buf.__slice__(_b._off) : Slice<GoUInt8>)), _delim);
        var _end:GoInt = (_b._off + _i) + ((1 : GoInt));
        if (_i < ((0 : GoInt))) {
            _end = (_b._buf != null ? _b._buf.length : ((0 : GoInt)));
            _err = stdgo.io.Io.eof;
        };
        _line = ((_b._buf.__slice__(_b._off, _end) : Slice<GoUInt8>));
        _b._off = _end;
        _b._lastRead = ((-1 : GoInt8));
        return { _0 : _line, _1 : _err };
    }
    @:keep
    public function readBytes(_delim:GoByte):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _b = __t__;
        _b;
        var _line:Slice<GoByte> = ((null : Slice<GoUInt8>)), _err:Error = ((null : stdgo.Error));
        var __tmp__ = _b._readSlice(_delim), _slice:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _line = (_line != null ? _line.__append__(..._slice.__toArray__()) : new Slice<GoUInt8>(..._slice.__toArray__()));
        return { _0 : _line, _1 : _err };
    }
    @:keep
    public function unreadByte():Error {
        var _b = __t__;
        _b;
        if (_b._lastRead == ((0 : GoInt8))) {
            return _errUnreadByte;
        };
        _b._lastRead = ((0 : GoInt8));
        if (_b._off > ((0 : GoInt))) {
            _b._off--;
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public function unreadRune():Error {
        var _b = __t__;
        _b;
        if (_b._lastRead <= ((0 : GoInt8))) {
            return stdgo.errors.Errors.new_(((("bytes.Buffer: UnreadRune: previous operation was not a successful ReadRune" : GoString))));
        };
        if (_b._off >= ((_b._lastRead : GoInt))) {
            _b._off = _b._off - (((_b._lastRead : GoInt)));
        };
        _b._lastRead = ((0 : GoInt8));
        return ((null : stdgo.Error));
    }
    @:keep
    public function readRune():{ var _0 : GoRune; var _1 : GoInt; var _2 : Error; } {
        var _b = __t__;
        _b;
        var _r:GoRune = ((0 : GoInt32)), _size:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_b._empty()) {
            _b.reset();
            return { _0 : ((0 : GoInt32)), _1 : ((0 : GoInt)), _2 : stdgo.io.Io.eof };
        };
        var _c:GoUInt8 = (_b._buf != null ? _b._buf[_b._off] : ((0 : GoUInt8)));
        if (_c < ((128 : GoUInt8))) {
            _b._off++;
            _b._lastRead = ((1 : GoInt8));
            return { _0 : ((_c : GoRune)), _1 : ((1 : GoInt)), _2 : ((null : stdgo.Error)) };
        };
        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_b._buf.__slice__(_b._off) : Slice<GoUInt8>))), _r:GoInt32 = __tmp__._0, _n:GoInt = __tmp__._1;
        _b._off = _b._off + (_n);
        _b._lastRead = ((_n : T_readOp));
        return { _0 : _r, _1 : _n, _2 : ((null : stdgo.Error)) };
    }
    @:keep
    public function readByte():{ var _0 : GoByte; var _1 : Error; } {
        var _b = __t__;
        _b;
        if (_b._empty()) {
            _b.reset();
            return { _0 : ((0 : GoUInt8)), _1 : stdgo.io.Io.eof };
        };
        var _c:GoUInt8 = (_b._buf != null ? _b._buf[_b._off] : ((0 : GoUInt8)));
        _b._off++;
        _b._lastRead = ((-1 : GoInt8));
        return { _0 : _c, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function next(_n:GoInt):Slice<GoByte> {
        var _b = __t__;
        _b;
        _b._lastRead = ((0 : GoInt8));
        var _m:GoInt = _b.len();
        if (_n > _m) {
            _n = _m;
        };
        var _data:Slice<GoUInt8> = ((_b._buf.__slice__(_b._off, _b._off + _n) : Slice<GoUInt8>));
        _b._off = _b._off + (_n);
        if (_n > ((0 : GoInt))) {
            _b._lastRead = ((-1 : GoInt8));
        };
        return _data;
    }
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _b = __t__;
        _b;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _b._lastRead = ((0 : GoInt8));
        if (_b._empty()) {
            _b.reset();
            if ((_p != null ? _p.length : ((0 : GoInt))) == ((0 : GoInt))) {
                return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
            };
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
        };
        _n = Go.copySlice(_p, ((_b._buf.__slice__(_b._off) : Slice<GoUInt8>)));
        _b._off = _b._off + (_n);
        if (_n > ((0 : GoInt))) {
            _b._lastRead = ((-1 : GoInt8));
        };
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function writeRune(_r:GoRune):{ var _0 : GoInt; var _1 : Error; } {
        var _b = __t__;
        _b;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (((_r : GoUInt32)) < ((128 : GoUInt32))) {
            _b.writeByte(((_r : GoByte)));
            return { _0 : ((1 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        _b._lastRead = ((0 : GoInt8));
        var __tmp__ = _b._tryGrowByReslice(((4 : GoInt))), _m:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = _b._grow(((4 : GoInt)));
        };
        _n = stdgo.unicode.utf8.Utf8.encodeRune(((_b._buf.__slice__(_m, _m + ((4 : GoInt))) : Slice<GoUInt8>)), _r);
        _b._buf = ((_b._buf.__slice__(0, _m + _n) : Slice<GoUInt8>));
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function writeByte(_c:GoByte):Error {
        var _b = __t__;
        _b;
        _b._lastRead = ((0 : GoInt8));
        var __tmp__ = _b._tryGrowByReslice(((1 : GoInt))), _m:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = _b._grow(((1 : GoInt)));
        };
        if (_b._buf != null) _b._buf[_m] = _c;
        return ((null : stdgo.Error));
    }
    @:keep
    public function writeTo(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        var _b = __t__;
        _b;
        var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        _b._lastRead = ((0 : GoInt8));
        {
            var _nBytes:GoInt = _b.len();
            if (_nBytes > ((0 : GoInt))) {
                var __tmp__ = _w.write(((_b._buf.__slice__(_b._off) : Slice<GoUInt8>))), _m:GoInt = __tmp__._0, _e:stdgo.Error = __tmp__._1;
                if (_m > _nBytes) {
                    throw Go.toInterface(((("bytes.Buffer.WriteTo: invalid Write count" : GoString))));
                };
                _b._off = _b._off + (_m);
                _n = ((_m : GoInt64));
                if (_e != null) {
                    return { _0 : _n, _1 : _e };
                };
                if (_m != _nBytes) {
                    return { _0 : _n, _1 : stdgo.io.Io.errShortWrite };
                };
            };
        };
        _b.reset();
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function readFrom(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } {
        var _b = __t__;
        _b;
        var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        _b._lastRead = ((0 : GoInt8));
        while (true) {
            var _i:GoInt = _b._grow(((512 : GoInt)));
            _b._buf = ((_b._buf.__slice__(0, _i) : Slice<GoUInt8>));
            var __tmp__ = _r.read(((_b._buf.__slice__(_i, (_b._buf != null ? _b._buf.cap() : ((0 : GoInt)))) : Slice<GoUInt8>))), _m:GoInt = __tmp__._0, _e:stdgo.Error = __tmp__._1;
            if (_m < ((0 : GoInt))) {
                throw Go.toInterface(_errNegativeRead);
            };
            _b._buf = ((_b._buf.__slice__(0, _i + _m) : Slice<GoUInt8>));
            _n = _n + (((_m : GoInt64)));
            if (_e == stdgo.io.Io.eof) {
                return { _0 : _n, _1 : ((null : stdgo.Error)) };
            };
            if (_e != null) {
                return { _0 : _n, _1 : _e };
            };
        };
    }
    @:keep
    public function writeString(_s:GoString):{ var _0 : GoInt; var _1 : Error; } {
        var _b = __t__;
        _b;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _b._lastRead = ((0 : GoInt8));
        var __tmp__ = _b._tryGrowByReslice((_s != null ? _s.length : ((0 : GoInt)))), _m:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = _b._grow((_s != null ? _s.length : ((0 : GoInt))));
        };
        return { _0 : Go.copySlice(((_b._buf.__slice__(_m) : Slice<GoUInt8>)), _s), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _b = __t__;
        _b;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _b._lastRead = ((0 : GoInt8));
        var __tmp__ = _b._tryGrowByReslice((_p != null ? _p.length : ((0 : GoInt)))), _m:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = _b._grow((_p != null ? _p.length : ((0 : GoInt))));
        };
        return { _0 : Go.copySlice(((_b._buf.__slice__(_m) : Slice<GoUInt8>)), _p), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function grow(_n:GoInt):Void {
        var _b = __t__;
        _b;
        if (_n < ((0 : GoInt))) {
            throw Go.toInterface(((("bytes.Buffer.Grow: negative count" : GoString))));
        };
        var _m:GoInt = _b._grow(_n);
        _b._buf = ((_b._buf.__slice__(0, _m) : Slice<GoUInt8>));
    }
    @:keep
    public function _grow(_n:GoInt):GoInt {
        var _b = __t__;
        _b;
        var _m:GoInt = _b.len();
        if ((_m == ((0 : GoInt))) && (_b._off != ((0 : GoInt)))) {
            _b.reset();
        };
        {
            var __tmp__ = _b._tryGrowByReslice(_n), _i:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _i;
            };
        };
        if ((_b._buf == null) && (_n <= ((64 : GoInt)))) {
            _b._buf = new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((64 : GoInt)) : GoInt)).toBasic());
            return ((0 : GoInt));
        };
        var _c:GoInt = (_b._buf != null ? _b._buf.cap() : ((0 : GoInt)));
        if (_n <= ((_c / ((2 : GoInt))) - _m)) {
            Go.copySlice(_b._buf, ((_b._buf.__slice__(_b._off) : Slice<GoUInt8>)));
        } else if (_c > ((((2147483647 : GoInt)) - _c) - _n)) {
            throw Go.toInterface(errTooLarge);
        } else {
            var _buf:Slice<GoUInt8> = _makeSlice((((2 : GoInt)) * _c) + _n);
            Go.copySlice(_buf, ((_b._buf.__slice__(_b._off) : Slice<GoUInt8>)));
            _b._buf = _buf;
        };
        _b._off = ((0 : GoInt));
        _b._buf = ((_b._buf.__slice__(0, _m + _n) : Slice<GoUInt8>));
        return _m;
    }
    @:keep
    public function _tryGrowByReslice(_n:GoInt):{ var _0 : GoInt; var _1 : Bool; } {
        var _b = __t__;
        _b;
        {
            var _l:GoInt = (_b._buf != null ? _b._buf.length : ((0 : GoInt)));
            if (_n <= ((_b._buf != null ? _b._buf.cap() : ((0 : GoInt))) - _l)) {
                _b._buf = ((_b._buf.__slice__(0, _l + _n) : Slice<GoUInt8>));
                return { _0 : _l, _1 : true };
            };
        };
        return { _0 : ((0 : GoInt)), _1 : false };
    }
    @:keep
    public function reset():Void {
        var _b = __t__;
        _b;
        _b._buf = ((_b._buf.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>));
        _b._off = ((0 : GoInt));
        _b._lastRead = ((0 : GoInt8));
    }
    @:keep
    public function truncate(_n:GoInt):Void {
        var _b = __t__;
        _b;
        if (_n == ((0 : GoInt))) {
            _b.reset();
            return;
        };
        _b._lastRead = ((0 : GoInt8));
        if ((_n < ((0 : GoInt))) || (_n > _b.len())) {
            throw Go.toInterface(((("bytes.Buffer: truncation out of range" : GoString))));
        };
        _b._buf = ((_b._buf.__slice__(0, _b._off + _n) : Slice<GoUInt8>));
    }
    @:keep
    public function cap_():GoInt {
        var _b = __t__;
        _b;
        return (_b._buf != null ? _b._buf.cap() : ((0 : GoInt)));
    }
    @:keep
    public function len():GoInt {
        var _b = __t__;
        _b;
        return (_b._buf != null ? _b._buf.length : ((0 : GoInt))) - _b._off;
    }
    @:keep
    public function _empty():Bool {
        var _b = __t__;
        _b;
        return (_b._buf != null ? _b._buf.length : ((0 : GoInt))) <= _b._off;
    }
    @:keep
    public function toString():GoString {
        var _b = __t__;
        _b;
        if (_b == null) {
            return ((("<nil>" : GoString)));
        };
        return ((((_b._buf.__slice__(_b._off) : Slice<GoUInt8>)) : GoString));
    }
    @:keep
    public function bytes():Slice<GoByte> {
        var _b = __t__;
        _b;
        return ((_b._buf.__slice__(_b._off) : Slice<GoUInt8>));
    }
    public var __t__ : Buffer;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class Buffer_static_extension {
    @:keep
    public static function readString( _b:Ref<Buffer>, _delim:GoByte):{ var _0 : GoString; var _1 : Error; } {
        _b;
        var _line:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        var __tmp__ = _b._readSlice(_delim), _slice:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : ((_slice : GoString)), _1 : _err };
    }
    @:keep
    public static function _readSlice( _b:Ref<Buffer>, _delim:GoByte):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        _b;
        var _line:Slice<GoByte> = ((null : Slice<GoUInt8>)), _err:Error = ((null : stdgo.Error));
        var _i:GoInt = indexByte(((_b._buf.__slice__(_b._off) : Slice<GoUInt8>)), _delim);
        var _end:GoInt = (_b._off + _i) + ((1 : GoInt));
        if (_i < ((0 : GoInt))) {
            _end = (_b._buf != null ? _b._buf.length : ((0 : GoInt)));
            _err = stdgo.io.Io.eof;
        };
        _line = ((_b._buf.__slice__(_b._off, _end) : Slice<GoUInt8>));
        _b._off = _end;
        _b._lastRead = ((-1 : GoInt8));
        return { _0 : _line, _1 : _err };
    }
    @:keep
    public static function readBytes( _b:Ref<Buffer>, _delim:GoByte):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        _b;
        var _line:Slice<GoByte> = ((null : Slice<GoUInt8>)), _err:Error = ((null : stdgo.Error));
        var __tmp__ = _b._readSlice(_delim), _slice:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _line = (_line != null ? _line.__append__(..._slice.__toArray__()) : new Slice<GoUInt8>(..._slice.__toArray__()));
        return { _0 : _line, _1 : _err };
    }
    @:keep
    public static function unreadByte( _b:Ref<Buffer>):Error {
        _b;
        if (_b._lastRead == ((0 : GoInt8))) {
            return _errUnreadByte;
        };
        _b._lastRead = ((0 : GoInt8));
        if (_b._off > ((0 : GoInt))) {
            _b._off--;
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public static function unreadRune( _b:Ref<Buffer>):Error {
        _b;
        if (_b._lastRead <= ((0 : GoInt8))) {
            return stdgo.errors.Errors.new_(((("bytes.Buffer: UnreadRune: previous operation was not a successful ReadRune" : GoString))));
        };
        if (_b._off >= ((_b._lastRead : GoInt))) {
            _b._off = _b._off - (((_b._lastRead : GoInt)));
        };
        _b._lastRead = ((0 : GoInt8));
        return ((null : stdgo.Error));
    }
    @:keep
    public static function readRune( _b:Ref<Buffer>):{ var _0 : GoRune; var _1 : GoInt; var _2 : Error; } {
        _b;
        var _r:GoRune = ((0 : GoInt32)), _size:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_b._empty()) {
            _b.reset();
            return { _0 : ((0 : GoInt32)), _1 : ((0 : GoInt)), _2 : stdgo.io.Io.eof };
        };
        var _c:GoUInt8 = (_b._buf != null ? _b._buf[_b._off] : ((0 : GoUInt8)));
        if (_c < ((128 : GoUInt8))) {
            _b._off++;
            _b._lastRead = ((1 : GoInt8));
            return { _0 : ((_c : GoRune)), _1 : ((1 : GoInt)), _2 : ((null : stdgo.Error)) };
        };
        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_b._buf.__slice__(_b._off) : Slice<GoUInt8>))), _r:GoInt32 = __tmp__._0, _n:GoInt = __tmp__._1;
        _b._off = _b._off + (_n);
        _b._lastRead = ((_n : T_readOp));
        return { _0 : _r, _1 : _n, _2 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function readByte( _b:Ref<Buffer>):{ var _0 : GoByte; var _1 : Error; } {
        _b;
        if (_b._empty()) {
            _b.reset();
            return { _0 : ((0 : GoUInt8)), _1 : stdgo.io.Io.eof };
        };
        var _c:GoUInt8 = (_b._buf != null ? _b._buf[_b._off] : ((0 : GoUInt8)));
        _b._off++;
        _b._lastRead = ((-1 : GoInt8));
        return { _0 : _c, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function next( _b:Ref<Buffer>, _n:GoInt):Slice<GoByte> {
        _b;
        _b._lastRead = ((0 : GoInt8));
        var _m:GoInt = _b.len();
        if (_n > _m) {
            _n = _m;
        };
        var _data:Slice<GoUInt8> = ((_b._buf.__slice__(_b._off, _b._off + _n) : Slice<GoUInt8>));
        _b._off = _b._off + (_n);
        if (_n > ((0 : GoInt))) {
            _b._lastRead = ((-1 : GoInt8));
        };
        return _data;
    }
    @:keep
    public static function read( _b:Ref<Buffer>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _b;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _b._lastRead = ((0 : GoInt8));
        if (_b._empty()) {
            _b.reset();
            if ((_p != null ? _p.length : ((0 : GoInt))) == ((0 : GoInt))) {
                return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
            };
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
        };
        _n = Go.copySlice(_p, ((_b._buf.__slice__(_b._off) : Slice<GoUInt8>)));
        _b._off = _b._off + (_n);
        if (_n > ((0 : GoInt))) {
            _b._lastRead = ((-1 : GoInt8));
        };
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function writeRune( _b:Ref<Buffer>, _r:GoRune):{ var _0 : GoInt; var _1 : Error; } {
        _b;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (((_r : GoUInt32)) < ((128 : GoUInt32))) {
            _b.writeByte(((_r : GoByte)));
            return { _0 : ((1 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        _b._lastRead = ((0 : GoInt8));
        var __tmp__ = _b._tryGrowByReslice(((4 : GoInt))), _m:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = _b._grow(((4 : GoInt)));
        };
        _n = stdgo.unicode.utf8.Utf8.encodeRune(((_b._buf.__slice__(_m, _m + ((4 : GoInt))) : Slice<GoUInt8>)), _r);
        _b._buf = ((_b._buf.__slice__(0, _m + _n) : Slice<GoUInt8>));
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function writeByte( _b:Ref<Buffer>, _c:GoByte):Error {
        _b;
        _b._lastRead = ((0 : GoInt8));
        var __tmp__ = _b._tryGrowByReslice(((1 : GoInt))), _m:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = _b._grow(((1 : GoInt)));
        };
        if (_b._buf != null) _b._buf[_m] = _c;
        return ((null : stdgo.Error));
    }
    @:keep
    public static function writeTo( _b:Ref<Buffer>, _w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        _b;
        var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        _b._lastRead = ((0 : GoInt8));
        {
            var _nBytes:GoInt = _b.len();
            if (_nBytes > ((0 : GoInt))) {
                var __tmp__ = _w.write(((_b._buf.__slice__(_b._off) : Slice<GoUInt8>))), _m:GoInt = __tmp__._0, _e:stdgo.Error = __tmp__._1;
                if (_m > _nBytes) {
                    throw Go.toInterface(((("bytes.Buffer.WriteTo: invalid Write count" : GoString))));
                };
                _b._off = _b._off + (_m);
                _n = ((_m : GoInt64));
                if (_e != null) {
                    return { _0 : _n, _1 : _e };
                };
                if (_m != _nBytes) {
                    return { _0 : _n, _1 : stdgo.io.Io.errShortWrite };
                };
            };
        };
        _b.reset();
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function readFrom( _b:Ref<Buffer>, _r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } {
        _b;
        var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        _b._lastRead = ((0 : GoInt8));
        while (true) {
            var _i:GoInt = _b._grow(((512 : GoInt)));
            _b._buf = ((_b._buf.__slice__(0, _i) : Slice<GoUInt8>));
            var __tmp__ = _r.read(((_b._buf.__slice__(_i, (_b._buf != null ? _b._buf.cap() : ((0 : GoInt)))) : Slice<GoUInt8>))), _m:GoInt = __tmp__._0, _e:stdgo.Error = __tmp__._1;
            if (_m < ((0 : GoInt))) {
                throw Go.toInterface(_errNegativeRead);
            };
            _b._buf = ((_b._buf.__slice__(0, _i + _m) : Slice<GoUInt8>));
            _n = _n + (((_m : GoInt64)));
            if (_e == stdgo.io.Io.eof) {
                return { _0 : _n, _1 : ((null : stdgo.Error)) };
            };
            if (_e != null) {
                return { _0 : _n, _1 : _e };
            };
        };
    }
    @:keep
    public static function writeString( _b:Ref<Buffer>, _s:GoString):{ var _0 : GoInt; var _1 : Error; } {
        _b;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _b._lastRead = ((0 : GoInt8));
        var __tmp__ = _b._tryGrowByReslice((_s != null ? _s.length : ((0 : GoInt)))), _m:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = _b._grow((_s != null ? _s.length : ((0 : GoInt))));
        };
        return { _0 : Go.copySlice(((_b._buf.__slice__(_m) : Slice<GoUInt8>)), _s), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function write( _b:Ref<Buffer>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _b;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _b._lastRead = ((0 : GoInt8));
        var __tmp__ = _b._tryGrowByReslice((_p != null ? _p.length : ((0 : GoInt)))), _m:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = _b._grow((_p != null ? _p.length : ((0 : GoInt))));
        };
        return { _0 : Go.copySlice(((_b._buf.__slice__(_m) : Slice<GoUInt8>)), _p), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function grow( _b:Ref<Buffer>, _n:GoInt):Void {
        _b;
        if (_n < ((0 : GoInt))) {
            throw Go.toInterface(((("bytes.Buffer.Grow: negative count" : GoString))));
        };
        var _m:GoInt = _b._grow(_n);
        _b._buf = ((_b._buf.__slice__(0, _m) : Slice<GoUInt8>));
    }
    @:keep
    public static function _grow( _b:Ref<Buffer>, _n:GoInt):GoInt {
        _b;
        var _m:GoInt = _b.len();
        if ((_m == ((0 : GoInt))) && (_b._off != ((0 : GoInt)))) {
            _b.reset();
        };
        {
            var __tmp__ = _b._tryGrowByReslice(_n), _i:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _i;
            };
        };
        if ((_b._buf == null) && (_n <= ((64 : GoInt)))) {
            _b._buf = new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((64 : GoInt)) : GoInt)).toBasic());
            return ((0 : GoInt));
        };
        var _c:GoInt = (_b._buf != null ? _b._buf.cap() : ((0 : GoInt)));
        if (_n <= ((_c / ((2 : GoInt))) - _m)) {
            Go.copySlice(_b._buf, ((_b._buf.__slice__(_b._off) : Slice<GoUInt8>)));
        } else if (_c > ((((2147483647 : GoInt)) - _c) - _n)) {
            throw Go.toInterface(errTooLarge);
        } else {
            var _buf:Slice<GoUInt8> = _makeSlice((((2 : GoInt)) * _c) + _n);
            Go.copySlice(_buf, ((_b._buf.__slice__(_b._off) : Slice<GoUInt8>)));
            _b._buf = _buf;
        };
        _b._off = ((0 : GoInt));
        _b._buf = ((_b._buf.__slice__(0, _m + _n) : Slice<GoUInt8>));
        return _m;
    }
    @:keep
    public static function _tryGrowByReslice( _b:Ref<Buffer>, _n:GoInt):{ var _0 : GoInt; var _1 : Bool; } {
        _b;
        {
            var _l:GoInt = (_b._buf != null ? _b._buf.length : ((0 : GoInt)));
            if (_n <= ((_b._buf != null ? _b._buf.cap() : ((0 : GoInt))) - _l)) {
                _b._buf = ((_b._buf.__slice__(0, _l + _n) : Slice<GoUInt8>));
                return { _0 : _l, _1 : true };
            };
        };
        return { _0 : ((0 : GoInt)), _1 : false };
    }
    @:keep
    public static function reset( _b:Ref<Buffer>):Void {
        _b;
        _b._buf = ((_b._buf.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>));
        _b._off = ((0 : GoInt));
        _b._lastRead = ((0 : GoInt8));
    }
    @:keep
    public static function truncate( _b:Ref<Buffer>, _n:GoInt):Void {
        _b;
        if (_n == ((0 : GoInt))) {
            _b.reset();
            return;
        };
        _b._lastRead = ((0 : GoInt8));
        if ((_n < ((0 : GoInt))) || (_n > _b.len())) {
            throw Go.toInterface(((("bytes.Buffer: truncation out of range" : GoString))));
        };
        _b._buf = ((_b._buf.__slice__(0, _b._off + _n) : Slice<GoUInt8>));
    }
    @:keep
    public static function cap_( _b:Ref<Buffer>):GoInt {
        _b;
        return (_b._buf != null ? _b._buf.cap() : ((0 : GoInt)));
    }
    @:keep
    public static function len( _b:Ref<Buffer>):GoInt {
        _b;
        return (_b._buf != null ? _b._buf.length : ((0 : GoInt))) - _b._off;
    }
    @:keep
    public static function _empty( _b:Ref<Buffer>):Bool {
        _b;
        return (_b._buf != null ? _b._buf.length : ((0 : GoInt))) <= _b._off;
    }
    @:keep
    public static function toString( _b:Ref<Buffer>):GoString {
        _b;
        if (_b == null) {
            return ((("<nil>" : GoString)));
        };
        return ((((_b._buf.__slice__(_b._off) : Slice<GoUInt8>)) : GoString));
    }
    @:keep
    public static function bytes( _b:Ref<Buffer>):Slice<GoByte> {
        _b;
        return ((_b._buf.__slice__(_b._off) : Slice<GoUInt8>));
    }
}
class Reader_wrapper {
    @:keep
    public function reset(_b:Slice<GoByte>):Void {
        var _r = __t__;
        _r;
        {
            var __tmp__ = ((new Reader(_b, ((0 : GoInt64)), ((-1 : GoInt))) : Reader));
            _r._s = __tmp__._s;
            _r._i = __tmp__._i;
            _r._prevRune = __tmp__._prevRune;
        };
    }
    @:keep
    public function writeTo(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        var _r = __t__;
        _r;
        var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        _r._prevRune = ((-1 : GoInt));
        if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
            return { _0 : ((0 : GoInt64)), _1 : ((null : stdgo.Error)) };
        };
        var _b:Slice<GoUInt8> = ((_r._s.__slice__(_r._i) : Slice<GoUInt8>));
        var __tmp__ = _w.write(_b), _m:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_m > (_b != null ? _b.length : ((0 : GoInt)))) {
            throw Go.toInterface(((("bytes.Reader.WriteTo: invalid Write count" : GoString))));
        };
        _r._i = _r._i + (((_m : GoInt64)));
        _n = ((_m : GoInt64));
        if ((_m != (_b != null ? _b.length : ((0 : GoInt)))) && (_err == null)) {
            _err = stdgo.io.Io.errShortWrite;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public function seek(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : Error; } {
        var _r = __t__;
        _r;
        _r._prevRune = ((-1 : GoInt));
        var _abs:GoInt64 = ((0 : GoInt64));
        if (_whence == ((0 : GoInt))) {
            _abs = _offset;
        } else if (_whence == ((1 : GoInt))) {
            _abs = _r._i + _offset;
        } else if (_whence == ((2 : GoInt))) {
            _abs = (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64)) + _offset;
        } else {
            return { _0 : ((0 : GoInt64)), _1 : stdgo.errors.Errors.new_(((("bytes.Reader.Seek: invalid whence" : GoString)))) };
        };
        if (_abs < ((0 : GoInt64))) {
            return { _0 : ((0 : GoInt64)), _1 : stdgo.errors.Errors.new_(((("bytes.Reader.Seek: negative position" : GoString)))) };
        };
        _r._i = _abs;
        return { _0 : _abs, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function unreadRune():Error {
        var _r = __t__;
        _r;
        if (_r._i <= ((0 : GoInt64))) {
            return stdgo.errors.Errors.new_(((("bytes.Reader.UnreadRune: at beginning of slice" : GoString))));
        };
        if (_r._prevRune < ((0 : GoInt))) {
            return stdgo.errors.Errors.new_(((("bytes.Reader.UnreadRune: previous operation was not ReadRune" : GoString))));
        };
        _r._i = ((_r._prevRune : GoInt64));
        _r._prevRune = ((-1 : GoInt));
        return ((null : stdgo.Error));
    }
    @:keep
    public function readRune():{ var _0 : GoRune; var _1 : GoInt; var _2 : Error; } {
        var _r = __t__;
        _r;
        var _ch:GoRune = ((0 : GoInt32)), _size:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
            _r._prevRune = ((-1 : GoInt));
            return { _0 : ((0 : GoInt32)), _1 : ((0 : GoInt)), _2 : stdgo.io.Io.eof };
        };
        _r._prevRune = ((_r._i : GoInt));
        {
            var _c:GoUInt8 = (_r._s != null ? _r._s[_r._i] : ((0 : GoUInt8)));
            if (_c < ((128 : GoUInt8))) {
                _r._i++;
                return { _0 : ((_c : GoRune)), _1 : ((1 : GoInt)), _2 : ((null : stdgo.Error)) };
            };
        };
        {
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_r._s.__slice__(_r._i) : Slice<GoUInt8>)));
            _ch = __tmp__._0;
            _size = __tmp__._1;
        };
        _r._i = _r._i + (((_size : GoInt64)));
        return { _0 : _ch, _1 : _size, _2 : _err };
    }
    @:keep
    public function unreadByte():Error {
        var _r = __t__;
        _r;
        if (_r._i <= ((0 : GoInt64))) {
            return stdgo.errors.Errors.new_(((("bytes.Reader.UnreadByte: at beginning of slice" : GoString))));
        };
        _r._prevRune = ((-1 : GoInt));
        _r._i--;
        return ((null : stdgo.Error));
    }
    @:keep
    public function readByte():{ var _0 : GoByte; var _1 : Error; } {
        var _r = __t__;
        _r;
        _r._prevRune = ((-1 : GoInt));
        if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
            return { _0 : ((0 : GoUInt8)), _1 : stdgo.io.Io.eof };
        };
        var _b:GoUInt8 = (_r._s != null ? _r._s[_r._i] : ((0 : GoUInt8)));
        _r._i++;
        return { _0 : _b, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function readAt(_b:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } {
        var _r = __t__;
        _r;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_off < ((0 : GoInt64))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("bytes.Reader.ReadAt: negative offset" : GoString)))) };
        };
        if (_off >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
        };
        _n = Go.copySlice(_b, ((_r._s.__slice__(_off) : Slice<GoUInt8>)));
        if (_n < (_b != null ? _b.length : ((0 : GoInt)))) {
            _err = stdgo.io.Io.eof;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = __t__;
        _r;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
        };
        _r._prevRune = ((-1 : GoInt));
        _n = Go.copySlice(_b, ((_r._s.__slice__(_r._i) : Slice<GoUInt8>)));
        _r._i = _r._i + (((_n : GoInt64)));
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public function size():GoInt64 {
        var _r = __t__;
        _r;
        return (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64));
    }
    @:keep
    public function len():GoInt {
        var _r = __t__;
        _r;
        if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
            return ((0 : GoInt));
        };
        return ((((((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64)) - _r._i) : GoInt));
    }
    public var __t__ : Reader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class Reader_static_extension {
    @:keep
    public static function reset( _r:Ref<Reader>, _b:Slice<GoByte>):Void {
        _r;
        {
            var __tmp__ = ((new Reader(_b, ((0 : GoInt64)), ((-1 : GoInt))) : Reader));
            _r._s = __tmp__._s;
            _r._i = __tmp__._i;
            _r._prevRune = __tmp__._prevRune;
        };
    }
    @:keep
    public static function writeTo( _r:Ref<Reader>, _w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        _r;
        var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        _r._prevRune = ((-1 : GoInt));
        if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
            return { _0 : ((0 : GoInt64)), _1 : ((null : stdgo.Error)) };
        };
        var _b:Slice<GoUInt8> = ((_r._s.__slice__(_r._i) : Slice<GoUInt8>));
        var __tmp__ = _w.write(_b), _m:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_m > (_b != null ? _b.length : ((0 : GoInt)))) {
            throw Go.toInterface(((("bytes.Reader.WriteTo: invalid Write count" : GoString))));
        };
        _r._i = _r._i + (((_m : GoInt64)));
        _n = ((_m : GoInt64));
        if ((_m != (_b != null ? _b.length : ((0 : GoInt)))) && (_err == null)) {
            _err = stdgo.io.Io.errShortWrite;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public static function seek( _r:Ref<Reader>, _offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : Error; } {
        _r;
        _r._prevRune = ((-1 : GoInt));
        var _abs:GoInt64 = ((0 : GoInt64));
        if (_whence == ((0 : GoInt))) {
            _abs = _offset;
        } else if (_whence == ((1 : GoInt))) {
            _abs = _r._i + _offset;
        } else if (_whence == ((2 : GoInt))) {
            _abs = (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64)) + _offset;
        } else {
            return { _0 : ((0 : GoInt64)), _1 : stdgo.errors.Errors.new_(((("bytes.Reader.Seek: invalid whence" : GoString)))) };
        };
        if (_abs < ((0 : GoInt64))) {
            return { _0 : ((0 : GoInt64)), _1 : stdgo.errors.Errors.new_(((("bytes.Reader.Seek: negative position" : GoString)))) };
        };
        _r._i = _abs;
        return { _0 : _abs, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function unreadRune( _r:Ref<Reader>):Error {
        _r;
        if (_r._i <= ((0 : GoInt64))) {
            return stdgo.errors.Errors.new_(((("bytes.Reader.UnreadRune: at beginning of slice" : GoString))));
        };
        if (_r._prevRune < ((0 : GoInt))) {
            return stdgo.errors.Errors.new_(((("bytes.Reader.UnreadRune: previous operation was not ReadRune" : GoString))));
        };
        _r._i = ((_r._prevRune : GoInt64));
        _r._prevRune = ((-1 : GoInt));
        return ((null : stdgo.Error));
    }
    @:keep
    public static function readRune( _r:Ref<Reader>):{ var _0 : GoRune; var _1 : GoInt; var _2 : Error; } {
        _r;
        var _ch:GoRune = ((0 : GoInt32)), _size:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
            _r._prevRune = ((-1 : GoInt));
            return { _0 : ((0 : GoInt32)), _1 : ((0 : GoInt)), _2 : stdgo.io.Io.eof };
        };
        _r._prevRune = ((_r._i : GoInt));
        {
            var _c:GoUInt8 = (_r._s != null ? _r._s[_r._i] : ((0 : GoUInt8)));
            if (_c < ((128 : GoUInt8))) {
                _r._i++;
                return { _0 : ((_c : GoRune)), _1 : ((1 : GoInt)), _2 : ((null : stdgo.Error)) };
            };
        };
        {
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_r._s.__slice__(_r._i) : Slice<GoUInt8>)));
            _ch = __tmp__._0;
            _size = __tmp__._1;
        };
        _r._i = _r._i + (((_size : GoInt64)));
        return { _0 : _ch, _1 : _size, _2 : _err };
    }
    @:keep
    public static function unreadByte( _r:Ref<Reader>):Error {
        _r;
        if (_r._i <= ((0 : GoInt64))) {
            return stdgo.errors.Errors.new_(((("bytes.Reader.UnreadByte: at beginning of slice" : GoString))));
        };
        _r._prevRune = ((-1 : GoInt));
        _r._i--;
        return ((null : stdgo.Error));
    }
    @:keep
    public static function readByte( _r:Ref<Reader>):{ var _0 : GoByte; var _1 : Error; } {
        _r;
        _r._prevRune = ((-1 : GoInt));
        if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
            return { _0 : ((0 : GoUInt8)), _1 : stdgo.io.Io.eof };
        };
        var _b:GoUInt8 = (_r._s != null ? _r._s[_r._i] : ((0 : GoUInt8)));
        _r._i++;
        return { _0 : _b, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function readAt( _r:Ref<Reader>, _b:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } {
        _r;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_off < ((0 : GoInt64))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("bytes.Reader.ReadAt: negative offset" : GoString)))) };
        };
        if (_off >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
        };
        _n = Go.copySlice(_b, ((_r._s.__slice__(_off) : Slice<GoUInt8>)));
        if (_n < (_b != null ? _b.length : ((0 : GoInt)))) {
            _err = stdgo.io.Io.eof;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public static function read( _r:Ref<Reader>, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _r;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
        };
        _r._prevRune = ((-1 : GoInt));
        _n = Go.copySlice(_b, ((_r._s.__slice__(_r._i) : Slice<GoUInt8>)));
        _r._i = _r._i + (((_n : GoInt64)));
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public static function size( _r:Ref<Reader>):GoInt64 {
        _r;
        return (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64));
    }
    @:keep
    public static function len( _r:Ref<Reader>):GoInt {
        _r;
        if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
            return ((0 : GoInt));
        };
        return ((((((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64)) - _r._i) : GoInt));
    }
}
class T_readOp_wrapper {
    public var __t__ : T_readOp;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_asciiSet_wrapper {
    @:keep
    public function _contains(_c:GoByte):Bool {
        var _as = __t__;
        _as;
        return ((_as != null ? _as[_c / ((32 : GoUInt8))] : ((0 : GoUInt32))) & (((1 : GoUInt32)) << (_c % ((32 : GoUInt8))))) != ((0 : GoUInt32));
    }
    public var __t__ : T_asciiSet;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_asciiSet_static_extension {
    @:keep
    public static function _contains( _as:Ref<T_asciiSet>, _c:GoByte):Bool {
        _as;
        return ((_as != null ? _as[_c / ((32 : GoUInt8))] : ((0 : GoUInt32))) & (((1 : GoUInt32)) << (_c % ((32 : GoUInt8))))) != ((0 : GoUInt32));
    }
}
class T_span_fieldsFunc_0_wrapper {
    public var __t__ : T_span_fieldsFunc_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}

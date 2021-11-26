package stdgo.bufio;
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
    public function _writeBuf(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _w.write(_b.value._buf.__slice__(_b.value._r, _b.value._w)), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_n < ((0 : GoInt))) {
            throw _errNegativeWrite;
        };
        _b.value._r = _b.value._r + (_n);
        return { _0 : ((_n : GoInt64)), _1 : _err };
    }
    public function writeTo(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = _b.value._writeBuf(_w);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _n, _1 : _err };
        };
        {
            var __tmp__ = try {
                { value : ((_b.value._rd.__underlying__().value : stdgo.io.Io.WriterTo)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.io.Io.WriterTo)), ok : false };
            }, _r = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                var __tmp__ = _r.writeTo(_w), _m:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _n = _n + (_m);
                return { _0 : _n, _1 : _err };
            };
        };
        {
            var __tmp__ = try {
                { value : ((_w.__underlying__().value : stdgo.io.Io.ReaderFrom)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.io.Io.ReaderFrom)), ok : false };
            }, _w = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                var __tmp__ = _w.readFrom(_b.value._rd), _m:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _n = _n + (_m);
                return { _0 : _n, _1 : _err };
            };
        };
        if (_b.value._w - _b.value._r < _b.value._buf.length) {
            _b.value._fill();
        };
        while (_b.value._r < _b.value._w) {
            var __tmp__ = _b.value._writeBuf(_w), _m:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _n = _n + (_m);
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
            _b.value._fill();
        };
        if (Go.toInterface(_b.value._err) == Go.toInterface(stdgo.io.Io.eof)) {
            _b.value._err = ((null : stdgo.Error));
        };
        return { _0 : _n, _1 : _b.value._readErr() };
    }
    public function readString(_delim:GoByte):{ var _0 : GoString; var _1 : Error; } {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _b.value._collectFragments(_delim), _full:Slice<Slice<GoUInt8>> = __tmp__._0, _frag:Slice<GoUInt8> = __tmp__._1, _n:GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        var _buf:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        _buf.grow(_n);
        for (_ => _fb in _full) {
            _buf.write(_fb);
        };
        _buf.write(_frag);
        return { _0 : _buf.toString(), _1 : _err };
    }
    public function readBytes(_delim:GoByte):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _b.value._collectFragments(_delim), _full:Slice<Slice<GoUInt8>> = __tmp__._0, _frag:Slice<GoUInt8> = __tmp__._1, _n:GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _n = ((0 : GoInt));
        for (_i => _ in _full) {
            _n = _n + (Go.copy(_buf.__slice__(_n), _full[_i]));
        };
        Go.copy(_buf.__slice__(_n), _frag);
        return { _0 : _buf, _1 : _err };
    }
    public function _collectFragments(_delim:GoByte):{ var _0 : Slice<Slice<GoByte>>; var _1 : Slice<GoByte>; var _2 : GoInt; var _3 : Error; } {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _fullBuffers:Slice<Slice<GoByte>> = new Slice<Slice<GoUInt8>>().nil(), _finalFragment:Slice<GoByte> = new Slice<GoUInt8>().nil(), _totalLen:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _frag:Slice<GoByte> = new Slice<GoUInt8>().nil();
        while (true) {
            var _e:Error = ((null : stdgo.Error));
            {
                var __tmp__ = _b.value.readSlice(_delim);
                _frag = __tmp__._0;
                _e = __tmp__._1;
            };
            if (_e == null) {
                break;
            };
            if (Go.toInterface(_e) != Go.toInterface(errBufferFull)) {
                _err = _e;
                break;
            };
            var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_frag.length : GoInt)).toBasic()) ((0 : GoUInt8))]);
            Go.copy(_buf, _frag);
            _fullBuffers = _fullBuffers.__append__(_buf);
            _totalLen = _totalLen + (_buf.length);
        };
        _totalLen = _totalLen + (_frag.length);
        return { _0 : _fullBuffers, _1 : _frag, _2 : _totalLen, _3 : _err };
    }
    public function readLine():{ var _0 : Slice<GoByte>; var _1 : Bool; var _2 : Error; } {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _line:Slice<GoByte> = new Slice<GoUInt8>().nil(), _isPrefix:Bool = false, _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = _b.value.readSlice((("\n".code : GoRune)));
            _line = __tmp__._0;
            _err = __tmp__._1;
        };
        if (Go.toInterface(_err) == Go.toInterface(errBufferFull)) {
            if (_line.length > ((0 : GoInt)) && _line[_line.length - ((1 : GoInt))] == (("\r".code : GoRune))) {
                if (_b.value._r == ((0 : GoInt))) {
                    throw "bufio: tried to rewind past start of buffer";
                };
                _b.value._r--;
                _line = _line.__slice__(0, _line.length - ((1 : GoInt)));
            };
            return { _0 : _line, _1 : true, _2 : ((null : stdgo.Error)) };
        };
        if (_line.length == ((0 : GoInt))) {
            if (_err != null) {
                _line = new Slice<GoUInt8>().nil();
            };
            return { _0 : _line, _1 : _isPrefix, _2 : _err };
        };
        _err = ((null : stdgo.Error));
        if (_line[_line.length - ((1 : GoInt))] == (("\n".code : GoRune))) {
            var _drop:GoInt = ((1 : GoInt));
            if (_line.length > ((1 : GoInt)) && _line[_line.length - ((2 : GoInt))] == (("\r".code : GoRune))) {
                _drop = ((2 : GoInt));
            };
            _line = _line.__slice__(0, _line.length - _drop);
        };
        return { _0 : _line, _1 : _isPrefix, _2 : _err };
    }
    public function readSlice(_delim:GoByte):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _line:Slice<GoByte> = new Slice<GoUInt8>().nil(), _err:Error = ((null : stdgo.Error));
        var _s:GoInt = ((0 : GoInt));
        while (true) {
            {
                var _i:GoInt = stdgo.bytes.Bytes.indexByte(_b.value._buf.__slice__(_b.value._r + _s, _b.value._w), _delim);
                if (_i >= ((0 : GoInt))) {
                    _i = _i + (_s);
                    _line = _b.value._buf.__slice__(_b.value._r, _b.value._r + _i + ((1 : GoInt)));
                    _b.value._r = _b.value._r + (_i + ((1 : GoInt)));
                    break;
                };
            };
            if (_b.value._err != null) {
                _line = _b.value._buf.__slice__(_b.value._r, _b.value._w);
                _b.value._r = _b.value._w;
                _err = _b.value._readErr();
                break;
            };
            if (_b.value.buffered() >= _b.value._buf.length) {
                _b.value._r = _b.value._w;
                _line = _b.value._buf;
                _err = errBufferFull;
                break;
            };
            _s = _b.value._w - _b.value._r;
            _b.value._fill();
        };
        {
            var _i:GoInt = _line.length - ((1 : GoInt));
            if (_i >= ((0 : GoInt))) {
                _b.value._lastByte = ((_line[_i] : GoInt));
                _b.value._lastRuneSize = -((1 : GoUnTypedInt));
            };
        };
        return { _0 : _line, _1 : _err };
    }
    public function buffered():GoInt {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _b.value._w - _b.value._r;
    }
    public function unreadRune():Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.value._lastRuneSize < ((0 : GoInt)) || _b.value._r < _b.value._lastRuneSize) {
            return errInvalidUnreadRune;
        };
        _b.value._r = _b.value._r - (_b.value._lastRuneSize);
        _b.value._lastByte = -((1 : GoUnTypedInt));
        _b.value._lastRuneSize = -((1 : GoUnTypedInt));
        return ((null : stdgo.Error));
    }
    public function readRune():{ var _0 : GoRune; var _1 : GoInt; var _2 : Error; } {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _r:GoRune = ((0 : GoInt32)), _size:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        while (_b.value._r + stdgo.unicode.utf8.Utf8.utfmax > _b.value._w && !stdgo.unicode.utf8.Utf8.fullRune(_b.value._buf.__slice__(_b.value._r, _b.value._w)) && _b.value._err == null && _b.value._w - _b.value._r < _b.value._buf.length) {
            _b.value._fill();
        };
        _b.value._lastRuneSize = -((1 : GoUnTypedInt));
        if (_b.value._r == _b.value._w) {
            return { _0 : ((0 : GoInt32)), _1 : ((0 : GoInt)), _2 : _b.value._readErr() };
        };
        {
            final __tmp__0 = ((_b.value._buf[_b.value._r] : GoRune));
            final __tmp__1 = ((1 : GoInt));
            _r = __tmp__0;
            _size = __tmp__1;
        };
        if (_r >= stdgo.unicode.utf8.Utf8.runeSelf) {
            {
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_b.value._buf.__slice__(_b.value._r, _b.value._w));
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
        };
        _b.value._r = _b.value._r + (_size);
        _b.value._lastByte = ((_b.value._buf[_b.value._r - ((1 : GoInt))] : GoInt));
        _b.value._lastRuneSize = _size;
        return { _0 : _r, _1 : _size, _2 : ((null : stdgo.Error)) };
    }
    public function unreadByte():Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.value._lastByte < ((0 : GoInt)) || _b.value._r == ((0 : GoInt)) && _b.value._w > ((0 : GoInt))) {
            return errInvalidUnreadByte;
        };
        if (_b.value._r > ((0 : GoInt))) {
            _b.value._r--;
        } else {
            _b.value._w = ((1 : GoInt));
        };
        _b.value._buf[_b.value._r] = ((_b.value._lastByte : GoByte));
        _b.value._lastByte = -((1 : GoUnTypedInt));
        _b.value._lastRuneSize = -((1 : GoUnTypedInt));
        return ((null : stdgo.Error));
    }
    public function readByte():{ var _0 : GoByte; var _1 : Error; } {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value._lastRuneSize = -((1 : GoUnTypedInt));
        while (_b.value._r == _b.value._w) {
            if (_b.value._err != null) {
                return { _0 : ((0 : GoUInt8)), _1 : _b.value._readErr() };
            };
            _b.value._fill();
        };
        var _c:GoUInt8 = _b.value._buf[_b.value._r];
        _b.value._r++;
        _b.value._lastByte = ((_c : GoInt));
        return { _0 : _c, _1 : ((null : stdgo.Error)) };
    }
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _n = _p.length;
        if (_n == ((0 : GoInt))) {
            if (_b.value.buffered() > ((0 : GoInt))) {
                return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
            };
            return { _0 : ((0 : GoInt)), _1 : _b.value._readErr() };
        };
        if (_b.value._r == _b.value._w) {
            if (_b.value._err != null) {
                return { _0 : ((0 : GoInt)), _1 : _b.value._readErr() };
            };
            if (_p.length >= _b.value._buf.length) {
                {
                    var __tmp__ = _b.value._rd.read(_p);
                    _n = __tmp__._0;
                    _b.value._err = __tmp__._1;
                };
                if (_n < ((0 : GoInt))) {
                    throw _errNegativeRead;
                };
                if (_n > ((0 : GoInt))) {
                    _b.value._lastByte = ((_p[_n - ((1 : GoInt))] : GoInt));
                    _b.value._lastRuneSize = -((1 : GoUnTypedInt));
                };
                return { _0 : _n, _1 : _b.value._readErr() };
            };
            _b.value._r = ((0 : GoInt));
            _b.value._w = ((0 : GoInt));
            {
                var __tmp__ = _b.value._rd.read(_b.value._buf);
                _n = __tmp__._0;
                _b.value._err = __tmp__._1;
            };
            if (_n < ((0 : GoInt))) {
                throw _errNegativeRead;
            };
            if (_n == ((0 : GoInt))) {
                return { _0 : ((0 : GoInt)), _1 : _b.value._readErr() };
            };
            _b.value._w = _b.value._w + (_n);
        };
        _n = Go.copy(_p, _b.value._buf.__slice__(_b.value._r, _b.value._w));
        _b.value._r = _b.value._r + (_n);
        _b.value._lastByte = ((_b.value._buf[_b.value._r - ((1 : GoInt))] : GoInt));
        _b.value._lastRuneSize = -((1 : GoUnTypedInt));
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    public function discard(_n:GoInt):{ var _0 : GoInt; var _1 : Error; } {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _discarded:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_n < ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : errNegativeCount };
        };
        if (_n == ((0 : GoInt))) {
            return { _0 : _discarded, _1 : _err };
        };
        var _remain:GoInt = _n;
        while (true) {
            var _skip:GoInt = _b.value.buffered();
            if (_skip == ((0 : GoInt))) {
                _b.value._fill();
                _skip = _b.value.buffered();
            };
            if (_skip > _remain) {
                _skip = _remain;
            };
            _b.value._r = _b.value._r + (_skip);
            _remain = _remain - (_skip);
            if (_remain == ((0 : GoInt))) {
                return { _0 : _n, _1 : ((null : stdgo.Error)) };
            };
            if (_b.value._err != null) {
                return { _0 : _n - _remain, _1 : _b.value._readErr() };
            };
        };
    }
    public function peek(_n:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n < ((0 : GoInt))) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : errNegativeCount };
        };
        _b.value._lastByte = -((1 : GoUnTypedInt));
        _b.value._lastRuneSize = -((1 : GoUnTypedInt));
        while (_b.value._w - _b.value._r < _n && _b.value._w - _b.value._r < _b.value._buf.length && _b.value._err == null) {
            _b.value._fill();
        };
        if (_n > _b.value._buf.length) {
            return { _0 : _b.value._buf.__slice__(_b.value._r, _b.value._w), _1 : errBufferFull };
        };
        var _err:Error = ((null : stdgo.Error));
        {
            var _avail:GoInt = _b.value._w - _b.value._r;
            if (_avail < _n) {
                _n = _avail;
                _err = _b.value._readErr();
                if (_err == null) {
                    _err = errBufferFull;
                };
            };
        };
        return { _0 : _b.value._buf.__slice__(_b.value._r, _b.value._r + _n), _1 : _err };
    }
    public function _readErr():Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _err:stdgo.Error = _b.value._err;
        _b.value._err = ((null : stdgo.Error));
        return _err;
    }
    public function _fill():Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.value._r > ((0 : GoInt))) {
            Go.copy(_b.value._buf, _b.value._buf.__slice__(_b.value._r, _b.value._w));
            _b.value._w = _b.value._w - (_b.value._r);
            _b.value._r = ((0 : GoInt));
        };
        if (_b.value._w >= _b.value._buf.length) {
            throw "bufio: tried to fill full buffer";
        };
        {
            var _i:GoInt = _maxConsecutiveEmptyReads;
            Go.cfor(_i > ((0 : GoInt)), _i--, {
                var __tmp__ = _b.value._rd.read(_b.value._buf.__slice__(_b.value._w)), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_n < ((0 : GoInt))) {
                    throw _errNegativeRead;
                };
                _b.value._w = _b.value._w + (_n);
                if (_err != null) {
                    _b.value._err = _err;
                    return;
                };
                if (_n > ((0 : GoInt))) {
                    return;
                };
            });
        };
        _b.value._err = stdgo.io.Io.errNoProgress;
    }
    public function _reset(_buf:Slice<GoByte>, _r:stdgo.io.Io.Reader):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value = (({ _buf : _buf, _rd : _r, _lastByte : -((1 : GoUnTypedInt)), _lastRuneSize : -((1 : GoUnTypedInt)), _r : 0, _w : 0, _err : ((null : stdgo.Error)) } : Reader)).__copy__();
    }
    public function reset(_r:stdgo.io.Io.Reader):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value._reset(_b.value._buf, _r);
    }
    public function size():GoInt {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _b.value._buf.length;
    }
    public var _buf : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _rd : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public var _r : GoInt = ((0 : GoInt));
    public var _w : GoInt = ((0 : GoInt));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _lastByte : GoInt = ((0 : GoInt));
    public var _lastRuneSize : GoInt = ((0 : GoInt));
    public function new(?_buf:Slice<GoUInt8>, ?_rd:stdgo.io.Io.Reader, ?_r:GoInt, ?_w:GoInt, ?_err:stdgo.Error, ?_lastByte:GoInt, ?_lastRuneSize:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_buf) + " " + Go.string(_rd) + " " + Go.string(_r) + " " + Go.string(_w) + " " + Go.string(_err) + " " + Go.string(_lastByte) + " " + Go.string(_lastRuneSize) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Reader(_buf, _rd, _r, _w, _err, _lastByte, _lastRuneSize);
    }
    public function __set__(__tmp__) {
        this._buf = __tmp__._buf;
        this._rd = __tmp__._rd;
        this._r = __tmp__._r;
        this._w = __tmp__._w;
        this._err = __tmp__._err;
        this._lastByte = __tmp__._lastByte;
        this._lastRuneSize = __tmp__._lastRuneSize;
        return this;
    }
}
@:structInit class Writer {
    public function readFrom(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        if (_b.value._err != null) {
            return { _0 : ((0 : GoInt64)), _1 : _b.value._err };
        };
        if (_b.value.buffered() == ((0 : GoInt))) {
            {
                var __tmp__ = try {
                    { value : ((_b.value._wr.__underlying__().value : stdgo.io.Io.ReaderFrom)), ok : true };
                } catch(_) {
                    { value : ((null : stdgo.io.Io.ReaderFrom)), ok : false };
                }, _w = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    {
                        var __tmp__ = _w.readFrom(_r);
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    _b.value._err = _err;
                    return { _0 : _n, _1 : _err };
                };
            };
        };
        var _m:GoInt = ((0 : GoInt));
        while (true) {
            if (_b.value.available() == ((0 : GoInt))) {
                {
                    var _err1:stdgo.Error = _b.value.flush();
                    if (_err1 != null) {
                        return { _0 : _n, _1 : _err1 };
                    };
                };
            };
            var _nr:GoInt = ((0 : GoInt));
            while (_nr < _maxConsecutiveEmptyReads) {
                {
                    var __tmp__ = _r.read(_b.value._buf.__slice__(_b.value._n));
                    _m = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_m != ((0 : GoInt)) || _err != null) {
                    break;
                };
                _nr++;
            };
            if (_nr == _maxConsecutiveEmptyReads) {
                return { _0 : _n, _1 : stdgo.io.Io.errNoProgress };
            };
            _b.value._n = _b.value._n + (_m);
            _n = _n + (((_m : GoInt64)));
            if (_err != null) {
                break;
            };
        };
        if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
            if (_b.value.available() == ((0 : GoInt))) {
                _err = _b.value.flush();
            } else {
                _err = ((null : stdgo.Error));
            };
        };
        return { _0 : _n, _1 : _err };
    }
    public function writeString(_s:GoString):{ var _0 : GoInt; var _1 : Error; } {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _nn:GoInt = ((0 : GoInt));
        while (_s.length > _b.value.available() && _b.value._err == null) {
            var _n:GoInt = Go.copy(_b.value._buf.__slice__(_b.value._n), _s);
            _b.value._n = _b.value._n + (_n);
            _nn = _nn + (_n);
            _s = _s.__slice__(_n);
            _b.value.flush();
        };
        if (_b.value._err != null) {
            return { _0 : _nn, _1 : _b.value._err };
        };
        var _n:GoInt = Go.copy(_b.value._buf.__slice__(_b.value._n), _s);
        _b.value._n = _b.value._n + (_n);
        _nn = _nn + (_n);
        return { _0 : _nn, _1 : ((null : stdgo.Error)) };
    }
    public function writeRune(_r:GoRune):{ var _0 : GoInt; var _1 : Error; } {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _size:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (((_r : GoUInt32)) < stdgo.unicode.utf8.Utf8.runeSelf) {
            _err = _b.value.writeByte(((_r : GoByte)));
            if (_err != null) {
                return { _0 : ((0 : GoInt)), _1 : _err };
            };
            return { _0 : ((1 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        if (_b.value._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _b.value._err };
        };
        var _n:GoInt = _b.value.available();
        if (_n < stdgo.unicode.utf8.Utf8.utfmax) {
            {
                _b.value.flush();
                if (_b.value._err != null) {
                    return { _0 : ((0 : GoInt)), _1 : _b.value._err };
                };
            };
            _n = _b.value.available();
            if (_n < stdgo.unicode.utf8.Utf8.utfmax) {
                return _b.value.writeString(((_r : GoString)));
            };
        };
        _size = stdgo.unicode.utf8.Utf8.encodeRune(_b.value._buf.__slice__(_b.value._n), _r);
        _b.value._n = _b.value._n + (_size);
        return { _0 : _size, _1 : ((null : stdgo.Error)) };
    }
    public function writeByte(_c:GoByte):Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.value._err != null) {
            return _b.value._err;
        };
        if (_b.value.available() <= ((0 : GoInt)) && _b.value.flush() != null) {
            return _b.value._err;
        };
        _b.value._buf[_b.value._n] = _c;
        _b.value._n++;
        return ((null : stdgo.Error));
    }
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _nn:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        while (_p.length > _b.value.available() && _b.value._err == null) {
            var _n:GoInt = ((0 : GoInt));
            if (_b.value.buffered() == ((0 : GoInt))) {
                {
                    var __tmp__ = _b.value._wr.write(_p);
                    _n = __tmp__._0;
                    _b.value._err = __tmp__._1;
                };
            } else {
                _n = Go.copy(_b.value._buf.__slice__(_b.value._n), _p);
                _b.value._n = _b.value._n + (_n);
                _b.value.flush();
            };
            _nn = _nn + (_n);
            _p = _p.__slice__(_n);
        };
        if (_b.value._err != null) {
            return { _0 : _nn, _1 : _b.value._err };
        };
        var _n:GoInt = Go.copy(_b.value._buf.__slice__(_b.value._n), _p);
        _b.value._n = _b.value._n + (_n);
        _nn = _nn + (_n);
        return { _0 : _nn, _1 : ((null : stdgo.Error)) };
    }
    public function buffered():GoInt {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _b.value._n;
    }
    public function available():GoInt {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _b.value._buf.length - _b.value._n;
    }
    public function flush():Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.value._err != null) {
            return _b.value._err;
        };
        if (_b.value._n == ((0 : GoInt))) {
            return ((null : stdgo.Error));
        };
        var __tmp__ = _b.value._wr.write(_b.value._buf.__slice__(((0 : GoInt)), _b.value._n)), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_n < _b.value._n && _err == null) {
            _err = stdgo.io.Io.errShortWrite;
        };
        if (_err != null) {
            if (_n > ((0 : GoInt)) && _n < _b.value._n) {
                Go.copy(_b.value._buf.__slice__(((0 : GoInt)), _b.value._n - _n), _b.value._buf.__slice__(_n, _b.value._n));
            };
            _b.value._n = _b.value._n - (_n);
            _b.value._err = _err;
            return _err;
        };
        _b.value._n = ((0 : GoInt));
        return ((null : stdgo.Error));
    }
    public function reset(_w:stdgo.io.Io.Writer):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value._err = ((null : stdgo.Error));
        _b.value._n = ((0 : GoInt));
        _b.value._wr = _w;
    }
    public function size():GoInt {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _b.value._buf.length;
    }
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _buf : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _n : GoInt = ((0 : GoInt));
    public var _wr : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public function new(?_err:stdgo.Error, ?_buf:Slice<GoUInt8>, ?_n:GoInt, ?_wr:stdgo.io.Io.Writer) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_err) + " " + Go.string(_buf) + " " + Go.string(_n) + " " + Go.string(_wr) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Writer(_err, _buf, _n, _wr);
    }
    public function __set__(__tmp__) {
        this._err = __tmp__._err;
        this._buf = __tmp__._buf;
        this._n = __tmp__._n;
        this._wr = __tmp__._wr;
        return this;
    }
}
@:structInit class ReadWriter {
    @:embedded
    public var reader : Pointer<Reader> = new Pointer<Reader>().nil();
    @:embedded
    public var writer : Pointer<Writer> = new Pointer<Writer>().nil();
    public function new(?reader:Pointer<Reader>, ?writer:Pointer<Writer>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(reader) + " " + Go.string(writer) + "}";
    }
    public function available():GoInt return writer.available();
    public function discard(_n:GoInt):{ var _0 : GoInt; var _1 : stdgo.Error; } return reader.discard(_0);
    public function flush():stdgo.Error return writer.flush();
    public function peek(_n:GoInt):{ var _0 : GoInt -> { var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; }; var _1 : GoInt -> { var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; }; } return reader.peek(_0);
    public function read(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return reader.read(_0);
    public function readByte():{ var _0 : () -> { var _0 : GoUInt8; var _1 : stdgo.Error; }; var _1 : () -> { var _0 : GoUInt8; var _1 : stdgo.Error; }; } return reader.readByte();
    public function readBytes(_delim:GoUInt8):{ var _0 : GoUInt8 -> { var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; }; var _1 : GoUInt8 -> { var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; }; } return reader.readBytes(_0);
    public function readFrom(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return writer.readFrom(_0);
    public function readLine():{ var _0 : Slice<GoUInt8>; var _1 : Bool; var _2 : stdgo.Error; } return reader.readLine();
    public function readRune():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return reader.readRune();
    public function readSlice(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return reader.readSlice(_0);
    public function readString(_delim:GoUInt8):{ var _0 : GoUInt8 -> { var _0 : GoString; var _1 : stdgo.Error; }; var _1 : GoUInt8 -> { var _0 : GoString; var _1 : stdgo.Error; }; } return reader.readString(_0);
    public function unreadByte():stdgo.Error return reader.unreadByte();
    public function unreadRune():stdgo.Error return reader.unreadRune();
    public function write(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return writer.write(_0);
    public function writeByte(_c:GoUInt8):stdgo.Error return writer.writeByte(_0);
    public function writeRune(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return writer.writeRune(_0);
    public function writeString(_s:GoString):{ var _0 : GoString -> { var _0 : GoInt; var _1 : stdgo.Error; }; var _1 : GoString -> { var _0 : GoInt; var _1 : stdgo.Error; }; } return writer.writeString(_0);
    public function writeTo(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return reader.writeTo(_0);
    public function _collectFragments(_delim:GoUInt8):{ var _0 : Slice<Slice<GoUInt8>>; var _1 : Slice<GoUInt8>; var _2 : GoInt; var _3 : stdgo.Error; } return reader._collectFragments(_0);
    public function _fill() reader._fill();
    public function _readErr():stdgo.Error return reader._readErr();
    public function _reset(_buf:Slice<GoUInt8>, _r:stdgo.io.Io.Reader) reader._reset(_0, _1);
    public function _writeBuf(_w:stdgo.io.Io.Writer):{ var _0 : stdgo.io.Io.Writer -> { var _0 : GoInt64; var _1 : stdgo.Error; }; var _1 : stdgo.io.Io.Writer -> { var _0 : GoInt64; var _1 : stdgo.Error; }; } return reader._writeBuf(_0);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ReadWriter(reader, writer);
    }
    public function __set__(__tmp__) {
        this.reader = __tmp__.reader;
        this.writer = __tmp__.writer;
        return this;
    }
}
@:structInit class Scanner {
    public function split(_split:SplitFunc):Void {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_s.value._scanCalled) {
            throw "Split called after Scan";
        };
        _s.value._split = _split.__copy__();
    }
    public function buffer(_buf:Slice<GoByte>, _max:GoInt):Void {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_s.value._scanCalled) {
            throw "Buffer called after Scan";
        };
        _s.value._buf = _buf.__slice__(((0 : GoInt)), _buf.cap());
        _s.value._maxTokenSize = _max;
    }
    public function _setErr(_err:Error):Void {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_s.value._err == null || Go.toInterface(_s.value._err) == Go.toInterface(stdgo.io.Io.eof)) {
            _s.value._err = _err;
        };
    }
    public function _advance(_n:GoInt):Bool {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n < ((0 : GoInt))) {
            _s.value._setErr(errNegativeAdvance);
            return false;
        };
        if (_n > _s.value._end - _s.value._start) {
            _s.value._setErr(errAdvanceTooFar);
            return false;
        };
        _s.value._start = _s.value._start + (_n);
        return true;
    }
    public function scan():Bool {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_s.value._done) {
            return false;
        };
        _s.value._scanCalled = true;
        while (true) {
            if (_s.value._end > _s.value._start || _s.value._err != null) {
                var __tmp__ = _s.value._split.__t__(_s.value._buf.__slice__(_s.value._start, _s.value._end), _s.value._err != null), _advance:GoInt = __tmp__._0, _token:Slice<GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    if (Go.toInterface(_err) == Go.toInterface(errFinalToken)) {
                        _s.value._token = _token;
                        _s.value._done = true;
                        return true;
                    };
                    _s.value._setErr(_err);
                    return false;
                };
                if (!_s.value._advance(_advance)) {
                    return false;
                };
                _s.value._token = _token;
                if ((_token != null && !_token.isNil())) {
                    if (_s.value._err == null || _advance > ((0 : GoInt))) {
                        _s.value._empties = ((0 : GoInt));
                    } else {
                        _s.value._empties++;
                        if (_s.value._empties > _maxConsecutiveEmptyReads) {
                            throw "bufio.Scan: too many empty tokens without progressing";
                        };
                    };
                    return true;
                };
            };
            if (_s.value._err != null) {
                _s.value._start = ((0 : GoInt));
                _s.value._end = ((0 : GoInt));
                return false;
            };
            if (_s.value._start > ((0 : GoInt)) && (_s.value._end == _s.value._buf.length || _s.value._start > _s.value._buf.length / ((2 : GoInt)))) {
                Go.copy(_s.value._buf, _s.value._buf.__slice__(_s.value._start, _s.value._end));
                _s.value._end = _s.value._end - (_s.value._start);
                _s.value._start = ((0 : GoInt));
            };
            if (_s.value._end == _s.value._buf.length) {
                final _maxInt:GoInt = (((-1 ^ ((((0 : GoUInt)) : GoUInt)) >> ((1 : GoUnTypedInt))) : GoInt));
                if (_s.value._buf.length >= _s.value._maxTokenSize || _s.value._buf.length > _maxInt / ((2 : GoInt))) {
                    _s.value._setErr(errTooLong);
                    return false;
                };
                var _newSize:GoInt = _s.value._buf.length * ((2 : GoInt));
                if (_newSize == ((0 : GoInt))) {
                    _newSize = _startBufSize;
                };
                if (_newSize > _s.value._maxTokenSize) {
                    _newSize = _s.value._maxTokenSize;
                };
                var _newBuf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_newSize : GoInt)).toBasic()) ((0 : GoUInt8))]);
                Go.copy(_newBuf, _s.value._buf.__slice__(_s.value._start, _s.value._end));
                _s.value._buf = _newBuf;
                _s.value._end = _s.value._end - (_s.value._start);
                _s.value._start = ((0 : GoInt));
            };
            {
                var _loop:GoInt = ((0 : GoInt));
                while (true) {
                    var __tmp__ = _s.value._r.read(_s.value._buf.__slice__(_s.value._end, _s.value._buf.length)), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_n < ((0 : GoInt)) || _s.value._buf.length - _s.value._end < _n) {
                        _s.value._setErr(errBadReadCount);
                        break;
                    };
                    _s.value._end = _s.value._end + (_n);
                    if (_err != null) {
                        _s.value._setErr(_err);
                        break;
                    };
                    if (_n > ((0 : GoInt))) {
                        _s.value._empties = ((0 : GoInt));
                        break;
                    };
                    _loop++;
                    if (_loop > _maxConsecutiveEmptyReads) {
                        _s.value._setErr(stdgo.io.Io.errNoProgress);
                        break;
                    };
                };
            };
        };
    }
    public function text():GoString {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return ((_s.value._token : GoString));
    }
    public function bytes():Slice<GoByte> {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _s.value._token;
    }
    public function err():Error {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (Go.toInterface(_s.value._err) == Go.toInterface(stdgo.io.Io.eof)) {
            return ((null : stdgo.Error));
        };
        return _s.value._err;
    }
    public var _r : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public var _split : SplitFunc = new SplitFunc();
    public var _maxTokenSize : GoInt = ((0 : GoInt));
    public var _token : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _buf : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _start : GoInt = ((0 : GoInt));
    public var _end : GoInt = ((0 : GoInt));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _empties : GoInt = ((0 : GoInt));
    public var _scanCalled : Bool = false;
    public var _done : Bool = false;
    public function new(?_r:stdgo.io.Io.Reader, ?_split:SplitFunc, ?_maxTokenSize:GoInt, ?_token:Slice<GoUInt8>, ?_buf:Slice<GoUInt8>, ?_start:GoInt, ?_end:GoInt, ?_err:stdgo.Error, ?_empties:GoInt, ?_scanCalled:Bool, ?_done:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_r) + " " + Go.string(_split) + " " + Go.string(_maxTokenSize) + " " + Go.string(_token) + " " + Go.string(_buf) + " " + Go.string(_start) + " " + Go.string(_end) + " " + Go.string(_err) + " " + Go.string(_empties) + " " + Go.string(_scanCalled) + " " + Go.string(_done) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Scanner(
_r,
_split,
_maxTokenSize,
_token,
_buf,
_start,
_end,
_err,
_empties,
_scanCalled,
_done);
    }
    public function __set__(__tmp__) {
        this._r = __tmp__._r;
        this._split = __tmp__._split;
        this._maxTokenSize = __tmp__._maxTokenSize;
        this._token = __tmp__._token;
        this._buf = __tmp__._buf;
        this._start = __tmp__._start;
        this._end = __tmp__._end;
        this._err = __tmp__._err;
        this._empties = __tmp__._empties;
        this._scanCalled = __tmp__._scanCalled;
        this._done = __tmp__._done;
        return this;
    }
}
@:named class SplitFunc {
    public var __t__ : (Slice<GoUInt8>, Bool) -> { var _0 : GoInt; var _1 : Slice<GoUInt8>; var _2 : stdgo.Error; };
    public function new(?t:(Slice<GoUInt8>, Bool) -> { var _0 : GoInt; var _1 : Slice<GoUInt8>; var _2 : stdgo.Error; }) {
        __t__ = t == null ? null : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new SplitFunc(__t__);
}
var errAdvanceTooFar : stdgo.Error = stdgo.errors.Errors.new_("bufio.Scanner: SplitFunc returns advance count beyond input");
var errNegativeCount : stdgo.Error = stdgo.errors.Errors.new_("bufio: negative count");
final _defaultBufSize : GoInt64 = ((4096 : GoUnTypedInt));
final _minReadBufferSize : GoInt64 = ((16 : GoUnTypedInt));
var _errorRune : Slice<GoUInt8> = ((((stdgo.unicode.utf8.Utf8.runeError : GoString)) : Slice<GoByte>));
var errFinalToken : stdgo.Error = stdgo.errors.Errors.new_("final token");
final _startBufSize : GoInt64 = ((4096 : GoUnTypedInt));
var errBadReadCount : stdgo.Error = stdgo.errors.Errors.new_("bufio.Scanner: Read returned impossible count");
var _errNegativeWrite : stdgo.Error = stdgo.errors.Errors.new_("bufio: writer returned negative count from Write");
var errInvalidUnreadRune : stdgo.Error = stdgo.errors.Errors.new_("bufio: invalid use of UnreadRune");
var errInvalidUnreadByte : stdgo.Error = stdgo.errors.Errors.new_("bufio: invalid use of UnreadByte");
final maxScanTokenSize : GoUnTypedInt = ((64 : GoUnTypedInt)) * ((1024 : GoUnTypedInt));
var errNegativeAdvance : stdgo.Error = stdgo.errors.Errors.new_("bufio.Scanner: SplitFunc returns negative advance count");
var errTooLong : stdgo.Error = stdgo.errors.Errors.new_("bufio.Scanner: token too long");
var errBufferFull : stdgo.Error = stdgo.errors.Errors.new_("bufio: buffer full");
var _errNegativeRead : stdgo.Error = stdgo.errors.Errors.new_("bufio: reader returned negative count from Read");
final _maxConsecutiveEmptyReads : GoInt64 = ((100 : GoUnTypedInt));
/**
    // NewReaderSize returns a new Reader whose buffer has at least the specified
    // size. If the argument io.Reader is already a Reader with large enough
    // size, it returns the underlying Reader.
**/
function newReaderSize(_rd:stdgo.io.Io.Reader, _size:GoInt):Pointer<Reader> {
        var __tmp__ = try {
            { value : ((_rd.__underlying__().value : Pointer<Reader>)), ok : true };
        } catch(_) {
            { value : new Pointer<Reader>().nil(), ok : false };
        }, _b = __tmp__.value, _ok = __tmp__.ok;
        if (_ok && _b.value._buf.length >= _size) {
            return _b;
        };
        if (_size < _minReadBufferSize) {
            _size = _minReadBufferSize;
        };
        var _r:Pointer<Reader> = Go.pointer(new Reader());
        _r.value._reset(new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]), _rd);
        return _r;
    }
/**
    // NewReader returns a new Reader whose buffer has the default size.
**/
function newReader(_rd:stdgo.io.Io.Reader):Pointer<Reader> {
        return newReaderSize(_rd, _defaultBufSize);
    }
/**
    // NewWriterSize returns a new Writer whose buffer has at least the specified
    // size. If the argument io.Writer is already a Writer with large enough
    // size, it returns the underlying Writer.
**/
function newWriterSize(_w:stdgo.io.Io.Writer, _size:GoInt):Pointer<Writer> {
        var __tmp__ = try {
            { value : ((_w.__underlying__().value : Pointer<Writer>)), ok : true };
        } catch(_) {
            { value : new Pointer<Writer>().nil(), ok : false };
        }, _b = __tmp__.value, _ok = __tmp__.ok;
        if (_ok && _b.value._buf.length >= _size) {
            return _b;
        };
        if (_size <= ((0 : GoInt))) {
            _size = _defaultBufSize;
        };
        return Go.pointer((({ _buf : new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]), _wr : _w, _err : ((null : stdgo.Error)), _n : 0 } : Writer)));
    }
/**
    // NewWriter returns a new Writer whose buffer has the default size.
**/
function newWriter(_w:stdgo.io.Io.Writer):Pointer<Writer> {
        return newWriterSize(_w, _defaultBufSize);
    }
/**
    // NewReadWriter allocates a new ReadWriter that dispatches to r and w.
**/
function newReadWriter(_r:Pointer<Reader>, _w:Pointer<Writer>):Pointer<ReadWriter> {
        return Go.pointer(new ReadWriter(_r, _w));
    }
/**
    // NewScanner returns a new Scanner to read from r.
    // The split function defaults to ScanLines.
**/
function newScanner(_r:stdgo.io.Io.Reader):Pointer<Scanner> {
        return Go.pointer((({ _r : _r, _split : new SplitFunc(scanLines), _maxTokenSize : maxScanTokenSize, _token : new Slice<GoUInt8>().nil(), _buf : new Slice<GoUInt8>().nil(), _start : 0, _end : 0, _err : ((null : stdgo.Error)), _empties : 0, _scanCalled : false, _done : false } : Scanner)));
    }
/**
    // ScanBytes is a split function for a Scanner that returns each byte as a token.
**/
function scanBytes(_data:Slice<GoByte>, _atEOF:Bool):{ var _0 : GoInt; var _1 : Slice<GoByte>; var _2 : Error; } {
        var _advance:GoInt = ((0 : GoInt)), _token:Slice<GoByte> = new Slice<GoUInt8>().nil(), _err:Error = ((null : stdgo.Error));
        if (_atEOF && _data.length == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : new Slice<GoUInt8>().nil(), _2 : ((null : stdgo.Error)) };
        };
        return { _0 : ((1 : GoInt)), _1 : _data.__slice__(((0 : GoInt)), ((1 : GoInt))), _2 : ((null : stdgo.Error)) };
    }
/**
    // ScanRunes is a split function for a Scanner that returns each
    // UTF-8-encoded rune as a token. The sequence of runes returned is
    // equivalent to that from a range loop over the input as a string, which
    // means that erroneous UTF-8 encodings translate to U+FFFD = "\xef\xbf\xbd".
    // Because of the Scan interface, this makes it impossible for the client to
    // distinguish correctly encoded replacement runes from encoding errors.
**/
function scanRunes(_data:Slice<GoByte>, _atEOF:Bool):{ var _0 : GoInt; var _1 : Slice<GoByte>; var _2 : Error; } {
        var _advance:GoInt = ((0 : GoInt)), _token:Slice<GoByte> = new Slice<GoUInt8>().nil(), _err:Error = ((null : stdgo.Error));
        if (_atEOF && _data.length == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : new Slice<GoUInt8>().nil(), _2 : ((null : stdgo.Error)) };
        };
        if (_data[((0 : GoInt))] < stdgo.unicode.utf8.Utf8.runeSelf) {
            return { _0 : ((1 : GoInt)), _1 : _data.__slice__(((0 : GoInt)), ((1 : GoInt))), _2 : ((null : stdgo.Error)) };
        };
        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_data), _:GoInt32 = __tmp__._0, _width:GoInt = __tmp__._1;
        if (_width > ((1 : GoInt))) {
            return { _0 : _width, _1 : _data.__slice__(((0 : GoInt)), _width), _2 : ((null : stdgo.Error)) };
        };
        if (!_atEOF && !stdgo.unicode.utf8.Utf8.fullRune(_data)) {
            return { _0 : ((0 : GoInt)), _1 : new Slice<GoUInt8>().nil(), _2 : ((null : stdgo.Error)) };
        };
        return { _0 : ((1 : GoInt)), _1 : _errorRune, _2 : ((null : stdgo.Error)) };
    }
/**
    // dropCR drops a terminal \r from the data.
**/
function _dropCR(_data:Slice<GoByte>):Slice<GoByte> {
        if (_data.length > ((0 : GoInt)) && _data[_data.length - ((1 : GoInt))] == (("\r".code : GoRune))) {
            return _data.__slice__(((0 : GoInt)), _data.length - ((1 : GoInt)));
        };
        return _data;
    }
/**
    // ScanLines is a split function for a Scanner that returns each line of
    // text, stripped of any trailing end-of-line marker. The returned line may
    // be empty. The end-of-line marker is one optional carriage return followed
    // by one mandatory newline. In regular expression notation, it is `\r?\n`.
    // The last non-empty line of input will be returned even if it has no
    // newline.
**/
function scanLines(_data:Slice<GoByte>, _atEOF:Bool):{ var _0 : GoInt; var _1 : Slice<GoByte>; var _2 : Error; } {
        var _advance:GoInt = ((0 : GoInt)), _token:Slice<GoByte> = new Slice<GoUInt8>().nil(), _err:Error = ((null : stdgo.Error));
        if (_atEOF && _data.length == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : new Slice<GoUInt8>().nil(), _2 : ((null : stdgo.Error)) };
        };
        {
            var _i:GoInt = stdgo.bytes.Bytes.indexByte(_data, (("\n".code : GoRune)));
            if (_i >= ((0 : GoInt))) {
                return { _0 : _i + ((1 : GoInt)), _1 : _dropCR(_data.__slice__(((0 : GoInt)), _i)), _2 : ((null : stdgo.Error)) };
            };
        };
        if (_atEOF) {
            return { _0 : _data.length, _1 : _dropCR(_data), _2 : ((null : stdgo.Error)) };
        };
        return { _0 : ((0 : GoInt)), _1 : new Slice<GoUInt8>().nil(), _2 : ((null : stdgo.Error)) };
    }
/**
    // isSpace reports whether the character is a Unicode white space character.
    // We avoid dependency on the unicode package, but check validity of the implementation
    // in the tests.
**/
function _isSpace(_r:GoRune):Bool {
        if (_r <= (("\u{00FF}".code : GoRune))) {
            if (_r == ((" ".code : GoRune)) || _r == (("\t".code : GoRune)) || _r == (("\n".code : GoRune)) || _r == (("".code : GoRune)) || _r == (("".code : GoRune)) || _r == (("\r".code : GoRune))) {
                return true;
            } else if (_r == (("\u{0085}".code : GoRune)) || _r == (("\u{00A0}".code : GoRune))) {
                return true;
            };
            return false;
        };
        if ((("\u{2000}".code : GoRune)) <= _r && _r <= (("\u{200a}".code : GoRune))) {
            return true;
        };
        if (_r == (("\u{1680}".code : GoRune)) || _r == (("\u{2028}".code : GoRune)) || _r == (("\u{2029}".code : GoRune)) || _r == (("\u{202f}".code : GoRune)) || _r == (("\u{205f}".code : GoRune)) || _r == (("\u{3000}".code : GoRune))) {
            return true;
        };
        return false;
    }
/**
    // ScanWords is a split function for a Scanner that returns each
    // space-separated word of text, with surrounding spaces deleted. It will
    // never return an empty string. The definition of space is set by
    // unicode.IsSpace.
**/
function scanWords(_data:Slice<GoByte>, _atEOF:Bool):{ var _0 : GoInt; var _1 : Slice<GoByte>; var _2 : Error; } {
        var _advance:GoInt = ((0 : GoInt)), _token:Slice<GoByte> = new Slice<GoUInt8>().nil(), _err:Error = ((null : stdgo.Error));
        var _start:GoInt = ((0 : GoInt));
        {
            var _width:GoInt = ((0 : GoInt));
            Go.cfor(_start < _data.length, _start = _start + (_width), {
                var _r:GoRune = ((0 : GoInt32));
                {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_data.__slice__(_start));
                    _r = __tmp__._0;
                    _width = __tmp__._1;
                };
                if (!_isSpace(_r)) {
                    break;
                };
            });
        };
        {
            var _width:GoInt = ((0 : GoInt)), _i:GoInt = _start;
            Go.cfor(_i < _data.length, _i = _i + (_width), {
                var _r:GoRune = ((0 : GoInt32));
                {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_data.__slice__(_i));
                    _r = __tmp__._0;
                    _width = __tmp__._1;
                };
                if (_isSpace(_r)) {
                    return { _0 : _i + _width, _1 : _data.__slice__(_start, _i), _2 : ((null : stdgo.Error)) };
                };
            });
        };
        if (_atEOF && _data.length > _start) {
            return { _0 : _data.length, _1 : _data.__slice__(_start), _2 : ((null : stdgo.Error)) };
        };
        return { _0 : _start, _1 : new Slice<GoUInt8>().nil(), _2 : ((null : stdgo.Error)) };
    }
class Reader_extension_fields {
    public function size(__tmp__):GoInt return __tmp__.size();
    public function reset(__tmp__, _r:stdgo.io.Io.Reader):Void __tmp__.reset(_r);
    public function _reset(__tmp__, _buf:Slice<GoByte>, _r:stdgo.io.Io.Reader):Void __tmp__._reset(_buf, _r);
    public function _fill(__tmp__):Void __tmp__._fill();
    public function _readErr(__tmp__):Error return __tmp__._readErr();
    public function peek(__tmp__, _n:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.peek(_n);
    public function discard(__tmp__, _n:GoInt):{ var _0 : GoInt; var _1 : Error; } return __tmp__.discard(_n);
    public function read(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_p);
    public function readByte(__tmp__):{ var _0 : GoByte; var _1 : Error; } return __tmp__.readByte();
    public function unreadByte(__tmp__):Error return __tmp__.unreadByte();
    public function readRune(__tmp__):{ var _0 : GoRune; var _1 : GoInt; var _2 : Error; } return __tmp__.readRune();
    public function unreadRune(__tmp__):Error return __tmp__.unreadRune();
    public function buffered(__tmp__):GoInt return __tmp__.buffered();
    public function readSlice(__tmp__, _delim:GoByte):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.readSlice(_delim);
    public function readLine(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Bool; var _2 : Error; } return __tmp__.readLine();
    public function _collectFragments(__tmp__, _delim:GoByte):{ var _0 : Slice<Slice<GoByte>>; var _1 : Slice<GoByte>; var _2 : GoInt; var _3 : Error; } return __tmp__._collectFragments(_delim);
    public function readBytes(__tmp__, _delim:GoByte):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.readBytes(_delim);
    public function readString(__tmp__, _delim:GoByte):{ var _0 : GoString; var _1 : Error; } return __tmp__.readString(_delim);
    public function writeTo(__tmp__, _w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } return __tmp__.writeTo(_w);
    public function _writeBuf(__tmp__, _w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } return __tmp__._writeBuf(_w);
}
class Writer_extension_fields {
    public function size(__tmp__):GoInt return __tmp__.size();
    public function reset(__tmp__, _w:stdgo.io.Io.Writer):Void __tmp__.reset(_w);
    public function flush(__tmp__):Error return __tmp__.flush();
    public function available(__tmp__):GoInt return __tmp__.available();
    public function buffered(__tmp__):GoInt return __tmp__.buffered();
    public function write(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_p);
    public function writeByte(__tmp__, _c:GoByte):Error return __tmp__.writeByte(_c);
    public function writeRune(__tmp__, _r:GoRune):{ var _0 : GoInt; var _1 : Error; } return __tmp__.writeRune(_r);
    public function writeString(__tmp__, _s:GoString):{ var _0 : GoInt; var _1 : Error; } return __tmp__.writeString(_s);
    public function readFrom(__tmp__, _r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } return __tmp__.readFrom(_r);
}
class Scanner_extension_fields {
    public function err(__tmp__):Error return __tmp__.err();
    public function bytes(__tmp__):Slice<GoByte> return __tmp__.bytes();
    public function text(__tmp__):GoString return __tmp__.text();
    public function scan(__tmp__):Bool return __tmp__.scan();
    public function _advance(__tmp__, _n:GoInt):Bool return __tmp__._advance(_n);
    public function _setErr(__tmp__, _err:Error):Void __tmp__._setErr(_err);
    public function buffer(__tmp__, _buf:Slice<GoByte>, _max:GoInt):Void __tmp__.buffer(_buf, _max);
    public function split(__tmp__, _split:SplitFunc):Void __tmp__.split(_split);
}

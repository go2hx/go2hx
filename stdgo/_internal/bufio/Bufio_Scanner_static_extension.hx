package stdgo._internal.bufio;
@:keep @:allow(stdgo._internal.bufio.Bufio.Scanner_asInterface) class Scanner_static_extension {
    @:keep
    static public function split( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner>, _split:stdgo._internal.bufio.Bufio_SplitFunc.SplitFunc):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner> = _s;
        if (_s._scanCalled) {
            throw stdgo.Go.toInterface(("Split called after Scan" : stdgo.GoString));
        };
        _s._split = _split;
    }
    @:keep
    static public function buffer( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner>, _buf:stdgo.Slice<stdgo.GoUInt8>, _max:stdgo.GoInt):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner> = _s;
        if (_s._scanCalled) {
            throw stdgo.Go.toInterface(("Buffer called after Scan" : stdgo.GoString));
        };
        _s._buf = (_buf.__slice__((0 : stdgo.GoInt), _buf.capacity) : stdgo.Slice<stdgo.GoUInt8>);
        _s._maxTokenSize = _max;
    }
    @:keep
    static public function _setErr( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner>, _err:stdgo.Error):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner> = _s;
        if (((_s._err == null) || (stdgo.Go.toInterface(_s._err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
            _s._err = _err;
        };
    }
    @:keep
    static public function _advance( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner>, _n:stdgo.GoInt):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner> = _s;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _s._setErr(stdgo._internal.bufio.Bufio_errNegativeAdvance.errNegativeAdvance);
            return false;
        };
        if ((_n > (_s._end - _s._start : stdgo.GoInt) : Bool)) {
            _s._setErr(stdgo._internal.bufio.Bufio_errAdvanceTooFar.errAdvanceTooFar);
            return false;
        };
        _s._start = (_s._start + (_n) : stdgo.GoInt);
        return true;
    }
    @:keep
    static public function scan( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner> = _s;
        if (_s._done) {
            return false;
        };
        _s._scanCalled = true;
        while (true) {
            if (((_s._end > _s._start : Bool) || (_s._err != null) : Bool)) {
                var __tmp__ = _s._split((_s._buf.__slice__(_s._start, _s._end) : stdgo.Slice<stdgo.GoUInt8>), _s._err != null), _advance:stdgo.GoInt = __tmp__._0, _token:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.bufio.Bufio_errFinalToken.errFinalToken))) {
                        _s._token = _token;
                        _s._done = true;
                        return true;
                    };
                    _s._setErr(_err);
                    return false;
                };
                if (!_s._advance(_advance)) {
                    return false;
                };
                _s._token = _token;
                if (_token != null) {
                    if (((_s._err == null) || (_advance > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _s._empties = (0 : stdgo.GoInt);
                    } else {
                        _s._empties++;
                        if ((_s._empties > (100 : stdgo.GoInt) : Bool)) {
                            throw stdgo.Go.toInterface(("bufio.Scan: too many empty tokens without progressing" : stdgo.GoString));
                        };
                    };
                    return true;
                };
            };
            if (_s._err != null) {
                _s._start = (0 : stdgo.GoInt);
                _s._end = (0 : stdgo.GoInt);
                return false;
            };
            if (((_s._start > (0 : stdgo.GoInt) : Bool) && (((_s._end == (_s._buf.length)) || (_s._start > ((_s._buf.length) / (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                _s._buf.__copyTo__((_s._buf.__slice__(_s._start, _s._end) : stdgo.Slice<stdgo.GoUInt8>));
                _s._end = (_s._end - (_s._start) : stdgo.GoInt);
                _s._start = (0 : stdgo.GoInt);
            };
            if (_s._end == ((_s._buf.length))) {
                {};
                if ((((_s._buf.length) >= _s._maxTokenSize : Bool) || ((_s._buf.length) > (1073741823 : stdgo.GoInt) : Bool) : Bool)) {
                    _s._setErr(stdgo._internal.bufio.Bufio_errTooLong.errTooLong);
                    return false;
                };
                var _newSize = ((_s._buf.length) * (2 : stdgo.GoInt) : stdgo.GoInt);
                if (_newSize == ((0 : stdgo.GoInt))) {
                    _newSize = (4096 : stdgo.GoInt);
                };
                if ((_newSize > _s._maxTokenSize : Bool)) {
                    _newSize = _s._maxTokenSize;
                };
                var _newBuf = (new stdgo.Slice<stdgo.GoUInt8>((_newSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                _newBuf.__copyTo__((_s._buf.__slice__(_s._start, _s._end) : stdgo.Slice<stdgo.GoUInt8>));
                _s._buf = _newBuf;
                _s._end = (_s._end - (_s._start) : stdgo.GoInt);
                _s._start = (0 : stdgo.GoInt);
            };
            {
                var _loop = (0 : stdgo.GoInt);
                while (true) {
                    var __tmp__ = _s._r.read((_s._buf.__slice__(_s._end, (_s._buf.length)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_n < (0 : stdgo.GoInt) : Bool) || (((_s._buf.length) - _s._end : stdgo.GoInt) < _n : Bool) : Bool)) {
                        _s._setErr(stdgo._internal.bufio.Bufio_errBadReadCount.errBadReadCount);
                        break;
                    };
                    _s._end = (_s._end + (_n) : stdgo.GoInt);
                    if (_err != null) {
                        _s._setErr(_err);
                        break;
                    };
                    if ((_n > (0 : stdgo.GoInt) : Bool)) {
                        _s._empties = (0 : stdgo.GoInt);
                        break;
                    };
                    _loop++;
                    if ((_loop > (100 : stdgo.GoInt) : Bool)) {
                        _s._setErr(stdgo._internal.io.Io_errNoProgress.errNoProgress);
                        break;
                    };
                };
            };
        };
    }
    @:keep
    static public function text( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner> = _s;
        return (_s._token : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function bytes( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner> = _s;
        return _s._token;
    }
    @:keep
    static public function err( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner>):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner> = _s;
        if (stdgo.Go.toInterface(_s._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            return (null : stdgo.Error);
        };
        return _s._err;
    }
    @:keep
    static public function errOrEOF( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner>):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner> = _s;
        return _s._err;
    }
    @:keep
    static public function maxTokenSize( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner>, _n:stdgo.GoInt):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner> = _s;
        if (((_n < (4 : stdgo.GoInt) : Bool) || (_n > (1000000000 : stdgo.GoInt) : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("bad max token size" : stdgo.GoString));
        };
        if ((_n < (_s._buf.length) : Bool)) {
            _s._buf = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        _s._maxTokenSize = _n;
    }
}

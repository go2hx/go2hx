package stdgo._internal.bufio;
@:keep @:allow(stdgo._internal.bufio.Bufio.Scanner_asInterface) class Scanner_static_extension {
    @:keep
    @:tdfield
    static public function split( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>, _split:stdgo._internal.bufio.Bufio_splitfunc.SplitFunc):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner> = _s;
        if ((@:checkr _s ?? throw "null pointer dereference")._scanCalled) {
            throw stdgo.Go.toInterface(("Split called after Scan" : stdgo.GoString));
        };
        (@:checkr _s ?? throw "null pointer dereference")._split = _split;
    }
    @:keep
    @:tdfield
    static public function buffer( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>, _buf:stdgo.Slice<stdgo.GoUInt8>, _max:stdgo.GoInt):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner> = _s;
        if ((@:checkr _s ?? throw "null pointer dereference")._scanCalled) {
            throw stdgo.Go.toInterface(("Buffer called after Scan" : stdgo.GoString));
        };
        (@:checkr _s ?? throw "null pointer dereference")._buf = (_buf.__slice__((0 : stdgo.GoInt), _buf.capacity) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _s ?? throw "null pointer dereference")._maxTokenSize = _max;
    }
    @:keep
    @:tdfield
    static public function _setErr( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>, _err:stdgo.Error):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner> = _s;
        if ((((@:checkr _s ?? throw "null pointer dereference")._err == null) || (stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
            (@:checkr _s ?? throw "null pointer dereference")._err = _err;
        };
    }
    @:keep
    @:tdfield
    static public function _advance( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>, _n:stdgo.GoInt):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner> = _s;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            @:check2r _s._setErr(stdgo._internal.bufio.Bufio_errnegativeadvance.errNegativeAdvance);
            return false;
        };
        if ((_n > ((@:checkr _s ?? throw "null pointer dereference")._end - (@:checkr _s ?? throw "null pointer dereference")._start : stdgo.GoInt) : Bool)) {
            @:check2r _s._setErr(stdgo._internal.bufio.Bufio_erradvancetoofar.errAdvanceTooFar);
            return false;
        };
        (@:checkr _s ?? throw "null pointer dereference")._start = ((@:checkr _s ?? throw "null pointer dereference")._start + (_n) : stdgo.GoInt);
        return true;
    }
    @:keep
    @:tdfield
    static public function scan( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner> = _s;
        if ((@:checkr _s ?? throw "null pointer dereference")._done) {
            return false;
        };
        (@:checkr _s ?? throw "null pointer dereference")._scanCalled = true;
        while (true) {
            if ((((@:checkr _s ?? throw "null pointer dereference")._end > (@:checkr _s ?? throw "null pointer dereference")._start : Bool) || ((@:checkr _s ?? throw "null pointer dereference")._err != null) : Bool)) {
                var __tmp__ = (@:checkr _s ?? throw "null pointer dereference")._split(((@:checkr _s ?? throw "null pointer dereference")._buf.__slice__((@:checkr _s ?? throw "null pointer dereference")._start, (@:checkr _s ?? throw "null pointer dereference")._end) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _s ?? throw "null pointer dereference")._err != null), _advance:stdgo.GoInt = __tmp__._0, _token:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.bufio.Bufio_errfinaltoken.errFinalToken))) {
                        (@:checkr _s ?? throw "null pointer dereference")._token = _token;
                        (@:checkr _s ?? throw "null pointer dereference")._done = true;
                        return true;
                    };
                    @:check2r _s._setErr(_err);
                    return false;
                };
                if (!@:check2r _s._advance(_advance)) {
                    return false;
                };
                (@:checkr _s ?? throw "null pointer dereference")._token = _token;
                if (_token != null) {
                    if ((((@:checkr _s ?? throw "null pointer dereference")._err == null) || (_advance > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        (@:checkr _s ?? throw "null pointer dereference")._empties = (0 : stdgo.GoInt);
                    } else {
                        (@:checkr _s ?? throw "null pointer dereference")._empties++;
                        if (((@:checkr _s ?? throw "null pointer dereference")._empties > (100 : stdgo.GoInt) : Bool)) {
                            throw stdgo.Go.toInterface(("bufio.Scan: too many empty tokens without progressing" : stdgo.GoString));
                        };
                    };
                    return true;
                };
            };
            if ((@:checkr _s ?? throw "null pointer dereference")._err != null) {
                (@:checkr _s ?? throw "null pointer dereference")._start = (0 : stdgo.GoInt);
                (@:checkr _s ?? throw "null pointer dereference")._end = (0 : stdgo.GoInt);
                return false;
            };
            if ((((@:checkr _s ?? throw "null pointer dereference")._start > (0 : stdgo.GoInt) : Bool) && ((((@:checkr _s ?? throw "null pointer dereference")._end == ((@:checkr _s ?? throw "null pointer dereference")._buf.length)) || ((@:checkr _s ?? throw "null pointer dereference")._start > (((@:checkr _s ?? throw "null pointer dereference")._buf.length) / (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                (@:checkr _s ?? throw "null pointer dereference")._buf.__copyTo__(((@:checkr _s ?? throw "null pointer dereference")._buf.__slice__((@:checkr _s ?? throw "null pointer dereference")._start, (@:checkr _s ?? throw "null pointer dereference")._end) : stdgo.Slice<stdgo.GoUInt8>));
                (@:checkr _s ?? throw "null pointer dereference")._end = ((@:checkr _s ?? throw "null pointer dereference")._end - ((@:checkr _s ?? throw "null pointer dereference")._start) : stdgo.GoInt);
                (@:checkr _s ?? throw "null pointer dereference")._start = (0 : stdgo.GoInt);
            };
            if ((@:checkr _s ?? throw "null pointer dereference")._end == (((@:checkr _s ?? throw "null pointer dereference")._buf.length))) {
                {};
                if (((((@:checkr _s ?? throw "null pointer dereference")._buf.length) >= (@:checkr _s ?? throw "null pointer dereference")._maxTokenSize : Bool) || (((@:checkr _s ?? throw "null pointer dereference")._buf.length) > (1073741823 : stdgo.GoInt) : Bool) : Bool)) {
                    @:check2r _s._setErr(stdgo._internal.bufio.Bufio_errtoolong.errTooLong);
                    return false;
                };
                var _newSize = (((@:checkr _s ?? throw "null pointer dereference")._buf.length) * (2 : stdgo.GoInt) : stdgo.GoInt);
                if (_newSize == ((0 : stdgo.GoInt))) {
                    _newSize = (4096 : stdgo.GoInt);
                };
                if ((_newSize > (@:checkr _s ?? throw "null pointer dereference")._maxTokenSize : Bool)) {
                    _newSize = (@:checkr _s ?? throw "null pointer dereference")._maxTokenSize;
                };
                var _newBuf = (new stdgo.Slice<stdgo.GoUInt8>((_newSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                _newBuf.__copyTo__(((@:checkr _s ?? throw "null pointer dereference")._buf.__slice__((@:checkr _s ?? throw "null pointer dereference")._start, (@:checkr _s ?? throw "null pointer dereference")._end) : stdgo.Slice<stdgo.GoUInt8>));
                (@:checkr _s ?? throw "null pointer dereference")._buf = _newBuf;
                (@:checkr _s ?? throw "null pointer dereference")._end = ((@:checkr _s ?? throw "null pointer dereference")._end - ((@:checkr _s ?? throw "null pointer dereference")._start) : stdgo.GoInt);
                (@:checkr _s ?? throw "null pointer dereference")._start = (0 : stdgo.GoInt);
            };
            {
                var _loop = (0 : stdgo.GoInt);
                while (true) {
                    var __tmp__ = (@:checkr _s ?? throw "null pointer dereference")._r.read(((@:checkr _s ?? throw "null pointer dereference")._buf.__slice__((@:checkr _s ?? throw "null pointer dereference")._end, ((@:checkr _s ?? throw "null pointer dereference")._buf.length)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_n < (0 : stdgo.GoInt) : Bool) || ((((@:checkr _s ?? throw "null pointer dereference")._buf.length) - (@:checkr _s ?? throw "null pointer dereference")._end : stdgo.GoInt) < _n : Bool) : Bool)) {
                        @:check2r _s._setErr(stdgo._internal.bufio.Bufio_errbadreadcount.errBadReadCount);
                        break;
                    };
                    (@:checkr _s ?? throw "null pointer dereference")._end = ((@:checkr _s ?? throw "null pointer dereference")._end + (_n) : stdgo.GoInt);
                    if (_err != null) {
                        @:check2r _s._setErr(_err);
                        break;
                    };
                    if ((_n > (0 : stdgo.GoInt) : Bool)) {
                        (@:checkr _s ?? throw "null pointer dereference")._empties = (0 : stdgo.GoInt);
                        break;
                    };
                    _loop++;
                    if ((_loop > (100 : stdgo.GoInt) : Bool)) {
                        @:check2r _s._setErr(stdgo._internal.io.Io_errnoprogress.errNoProgress);
                        break;
                    };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function text( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner> = _s;
        return ((@:checkr _s ?? throw "null pointer dereference")._token : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function bytes( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner> = _s;
        return (@:checkr _s ?? throw "null pointer dereference")._token;
    }
    @:keep
    @:tdfield
    static public function err( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner> = _s;
        if (stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            return (null : stdgo.Error);
        };
        return (@:checkr _s ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function errOrEOF( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner> = _s;
        return (@:checkr _s ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function maxTokenSize( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>, _n:stdgo.GoInt):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner> = _s;
        if (((_n < (4 : stdgo.GoInt) : Bool) || (_n > (1000000000 : stdgo.GoInt) : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("bad max token size" : stdgo.GoString));
        };
        if ((_n < ((@:checkr _s ?? throw "null pointer dereference")._buf.length) : Bool)) {
            (@:checkr _s ?? throw "null pointer dereference")._buf = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        (@:checkr _s ?? throw "null pointer dereference")._maxTokenSize = _n;
    }
}

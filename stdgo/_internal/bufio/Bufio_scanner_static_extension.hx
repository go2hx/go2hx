package stdgo._internal.bufio;
@:keep @:allow(stdgo._internal.bufio.Bufio.Scanner_asInterface) class Scanner_static_extension {
    @:keep
    @:tdfield
    static public function split( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>, _split:stdgo._internal.bufio.Bufio_splitfunc.SplitFunc):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner> = _s;
        //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L280"
        if ((@:checkr _s ?? throw "null pointer dereference")._scanCalled) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L281"
            throw stdgo.Go.toInterface(("Split called after Scan" : stdgo.GoString));
        };
        (@:checkr _s ?? throw "null pointer dereference")._split = _split;
    }
    @:keep
    @:tdfield
    static public function buffer( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>, _buf:stdgo.Slice<stdgo.GoUInt8>, _max:stdgo.GoInt):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner> = _s;
        //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L268"
        if ((@:checkr _s ?? throw "null pointer dereference")._scanCalled) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L269"
            throw stdgo.Go.toInterface(("Buffer called after Scan" : stdgo.GoString));
        };
        (@:checkr _s ?? throw "null pointer dereference")._buf = (_buf.__slice__((0 : stdgo.GoInt), _buf.capacity) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _s ?? throw "null pointer dereference")._maxTokenSize = _max;
    }
    @:keep
    @:tdfield
    static public function _setErr( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>, _err:stdgo.Error):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner> = _s;
        //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L253"
        if ((((@:checkr _s ?? throw "null pointer dereference")._err == null) || (stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
            (@:checkr _s ?? throw "null pointer dereference")._err = _err;
        };
    }
    @:keep
    @:tdfield
    static public function _advance( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>, _n:stdgo.GoInt):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner> = _s;
        //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L239"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L240"
            _s._setErr(stdgo._internal.bufio.Bufio_errnegativeadvance.errNegativeAdvance);
            //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L241"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L243"
        if ((_n > ((@:checkr _s ?? throw "null pointer dereference")._end - (@:checkr _s ?? throw "null pointer dereference")._start : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L244"
            _s._setErr(stdgo._internal.bufio.Bufio_erradvancetoofar.errAdvanceTooFar);
            //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L245"
            return false;
        };
        (@:checkr _s ?? throw "null pointer dereference")._start = ((@:checkr _s ?? throw "null pointer dereference")._start + (_n) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L248"
        return true;
    }
    @:keep
    @:tdfield
    static public function scan( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner> = _s;
        //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L136"
        if ((@:checkr _s ?? throw "null pointer dereference")._done) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L137"
            return false;
        };
        (@:checkr _s ?? throw "null pointer dereference")._scanCalled = true;
        //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L141"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L145"
            if ((((@:checkr _s ?? throw "null pointer dereference")._end > (@:checkr _s ?? throw "null pointer dereference")._start : Bool) || ((@:checkr _s ?? throw "null pointer dereference")._err != null) : Bool)) {
                var __tmp__ = (@:checkr _s ?? throw "null pointer dereference")._split(((@:checkr _s ?? throw "null pointer dereference")._buf.__slice__((@:checkr _s ?? throw "null pointer dereference")._start, (@:checkr _s ?? throw "null pointer dereference")._end) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _s ?? throw "null pointer dereference")._err != null), _advance:stdgo.GoInt = __tmp__._0, _token:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L147"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L148"
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.bufio.Bufio_errfinaltoken.errFinalToken))) {
                        (@:checkr _s ?? throw "null pointer dereference")._token = _token;
                        (@:checkr _s ?? throw "null pointer dereference")._done = true;
                        //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L151"
                        return true;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L153"
                    _s._setErr(_err);
                    //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L154"
                    return false;
                };
                //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L156"
                if (!_s._advance(_advance)) {
                    //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L157"
                    return false;
                };
                (@:checkr _s ?? throw "null pointer dereference")._token = _token;
                //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L160"
                if (_token != null) {
                    //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L161"
                    if ((((@:checkr _s ?? throw "null pointer dereference")._err == null) || (_advance > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        (@:checkr _s ?? throw "null pointer dereference")._empties = (0 : stdgo.GoInt);
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L165"
                        (@:checkr _s ?? throw "null pointer dereference")._empties++;
                        //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L166"
                        if (((@:checkr _s ?? throw "null pointer dereference")._empties > (100 : stdgo.GoInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L167"
                            throw stdgo.Go.toInterface(("bufio.Scan: too many empty tokens without progressing" : stdgo.GoString));
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L170"
                    return true;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L175"
            if ((@:checkr _s ?? throw "null pointer dereference")._err != null) {
                (@:checkr _s ?? throw "null pointer dereference")._start = (0 : stdgo.GoInt);
                (@:checkr _s ?? throw "null pointer dereference")._end = (0 : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L179"
                return false;
            };
            //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L184"
            if ((((@:checkr _s ?? throw "null pointer dereference")._start > (0 : stdgo.GoInt) : Bool) && ((((@:checkr _s ?? throw "null pointer dereference")._end == ((@:checkr _s ?? throw "null pointer dereference")._buf.length)) || ((@:checkr _s ?? throw "null pointer dereference")._start > (((@:checkr _s ?? throw "null pointer dereference")._buf.length) / (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L185"
                (@:checkr _s ?? throw "null pointer dereference")._buf.__copyTo__(((@:checkr _s ?? throw "null pointer dereference")._buf.__slice__((@:checkr _s ?? throw "null pointer dereference")._start, (@:checkr _s ?? throw "null pointer dereference")._end) : stdgo.Slice<stdgo.GoUInt8>));
                (@:checkr _s ?? throw "null pointer dereference")._end = ((@:checkr _s ?? throw "null pointer dereference")._end - ((@:checkr _s ?? throw "null pointer dereference")._start) : stdgo.GoInt);
                (@:checkr _s ?? throw "null pointer dereference")._start = (0 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L190"
            if ((@:checkr _s ?? throw "null pointer dereference")._end == (((@:checkr _s ?? throw "null pointer dereference")._buf.length))) {
                {};
                //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L193"
                if (((((@:checkr _s ?? throw "null pointer dereference")._buf.length) >= (@:checkr _s ?? throw "null pointer dereference")._maxTokenSize : Bool) || (((@:checkr _s ?? throw "null pointer dereference")._buf.length) > (1073741823 : stdgo.GoInt) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L194"
                    _s._setErr(stdgo._internal.bufio.Bufio_errtoolong.errTooLong);
                    //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L195"
                    return false;
                };
                var _newSize = (((@:checkr _s ?? throw "null pointer dereference")._buf.length) * (2 : stdgo.GoInt) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L198"
                if (_newSize == ((0 : stdgo.GoInt))) {
                    _newSize = (4096 : stdgo.GoInt);
                };
                //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L201"
                if ((_newSize > (@:checkr _s ?? throw "null pointer dereference")._maxTokenSize : Bool)) {
                    _newSize = (@:checkr _s ?? throw "null pointer dereference")._maxTokenSize;
                };
                var _newBuf = (new stdgo.Slice<stdgo.GoUInt8>((_newSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L205"
                _newBuf.__copyTo__(((@:checkr _s ?? throw "null pointer dereference")._buf.__slice__((@:checkr _s ?? throw "null pointer dereference")._start, (@:checkr _s ?? throw "null pointer dereference")._end) : stdgo.Slice<stdgo.GoUInt8>));
                (@:checkr _s ?? throw "null pointer dereference")._buf = _newBuf;
                (@:checkr _s ?? throw "null pointer dereference")._end = ((@:checkr _s ?? throw "null pointer dereference")._end - ((@:checkr _s ?? throw "null pointer dereference")._start) : stdgo.GoInt);
                (@:checkr _s ?? throw "null pointer dereference")._start = (0 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L213"
            {
                var _loop = (0 : stdgo.GoInt);
                while (true) {
                    var __tmp__ = (@:checkr _s ?? throw "null pointer dereference")._r.read(((@:checkr _s ?? throw "null pointer dereference")._buf.__slice__((@:checkr _s ?? throw "null pointer dereference")._end, ((@:checkr _s ?? throw "null pointer dereference")._buf.length)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L215"
                    if (((_n < (0 : stdgo.GoInt) : Bool) || ((((@:checkr _s ?? throw "null pointer dereference")._buf.length) - (@:checkr _s ?? throw "null pointer dereference")._end : stdgo.GoInt) < _n : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L216"
                        _s._setErr(stdgo._internal.bufio.Bufio_errbadreadcount.errBadReadCount);
                        //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L217"
                        break;
                    };
                    (@:checkr _s ?? throw "null pointer dereference")._end = ((@:checkr _s ?? throw "null pointer dereference")._end + (_n) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L220"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L221"
                        _s._setErr(_err);
                        //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L222"
                        break;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L224"
                    if ((_n > (0 : stdgo.GoInt) : Bool)) {
                        (@:checkr _s ?? throw "null pointer dereference")._empties = (0 : stdgo.GoInt);
                        //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L226"
                        break;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L228"
                    _loop++;
                    //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L229"
                    if ((_loop > (100 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L230"
                        _s._setErr(stdgo._internal.io.Io_errnoprogress.errNoProgress);
                        //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L231"
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
        //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L113"
        return ((@:checkr _s ?? throw "null pointer dereference")._token : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function bytes( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner> = _s;
        //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L107"
        return (@:checkr _s ?? throw "null pointer dereference")._token;
    }
    @:keep
    @:tdfield
    static public function err( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner> = _s;
        //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L97"
        if (stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L98"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L100"
        return (@:checkr _s ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function errOrEOF( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner> = _s;
        //"file:///home/runner/.go/go1.21.3/src/bufio/export_test.go#L28"
        return (@:checkr _s ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function maxTokenSize( _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>, _n:stdgo.GoInt):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner> = _s;
        //"file:///home/runner/.go/go1.21.3/src/bufio/export_test.go#L17"
        if (((_n < (4 : stdgo.GoInt) : Bool) || (_n > (1000000000 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/export_test.go#L18"
            throw stdgo.Go.toInterface(("bad max token size" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/export_test.go#L20"
        if ((_n < ((@:checkr _s ?? throw "null pointer dereference")._buf.length) : Bool)) {
            (@:checkr _s ?? throw "null pointer dereference")._buf = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        (@:checkr _s ?? throw "null pointer dereference")._maxTokenSize = _n;
    }
}

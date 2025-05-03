package stdgo._internal.fmt;
@:keep @:allow(stdgo._internal.fmt.Fmt.T_readRune_asInterface) class T_readRune_static_extension {
    @:keep
    @:tdfield
    static public function unreadRune( _r:stdgo.Ref<stdgo._internal.fmt.Fmt_t_readrune.T_readRune>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.fmt.Fmt_t_readrune.T_readRune> = _r;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L370"
        if (((@:checkr _r ?? throw "null pointer dereference")._peekRune >= (0 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L371"
            return stdgo._internal.errors.Errors_new_.new_(("fmt: scanning called UnreadRune with no rune available" : stdgo.GoString));
        };
        (@:checkr _r ?? throw "null pointer dereference")._peekRune = (-1 ^ (@:checkr _r ?? throw "null pointer dereference")._peekRune);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L375"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function readRune( _r:stdgo.Ref<stdgo._internal.fmt.Fmt_t_readrune.T_readRune>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.fmt.Fmt_t_readrune.T_readRune> = _r;
        var _rr = (0 : stdgo.GoInt32), _size = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L331"
        if (((@:checkr _r ?? throw "null pointer dereference")._peekRune >= (0 : stdgo.GoInt32) : Bool)) {
            _rr = (@:checkr _r ?? throw "null pointer dereference")._peekRune;
            (@:checkr _r ?? throw "null pointer dereference")._peekRune = (-1 ^ (@:checkr _r ?? throw "null pointer dereference")._peekRune);
            _size = stdgo._internal.unicode.utf8.Utf8_runelen.runeLen(_rr);
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L335"
            return { _0 : _rr, _1 : _size, _2 : _err };
        };
        {
            var __tmp__ = _r._readByte();
            (@:checkr _r ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L338"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L339"
            return { _0 : _rr, _1 : _size, _2 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L341"
        if (((@:checkr _r ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
            _rr = ((@:checkr _r ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] : stdgo.GoInt32);
            _size = (1 : stdgo.GoInt);
            (@:checkr _r ?? throw "null pointer dereference")._peekRune = (-1 ^ _rr);
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L346"
            return { _0 : _rr, _1 : _size, _2 : _err };
        };
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L349"
        {
            _n = (1 : stdgo.GoInt);
            while (!stdgo._internal.unicode.utf8.Utf8_fullrune.fullRune(((@:checkr _r ?? throw "null pointer dereference")._buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>))) {
                {
                    var __tmp__ = _r._readByte();
                    (@:checkr _r ?? throw "null pointer dereference")._buf[(_n : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
//"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L351"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L352"
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        _err = (null : stdgo.Error);
                        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L354"
                        break;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L356"
                    return { _0 : _rr, _1 : _size, _2 : _err };
                };
                _n++;
            };
        };
        {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(((@:checkr _r ?? throw "null pointer dereference")._buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
            _rr = @:tmpset0 __tmp__._0;
            _size = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L360"
        if ((_size < _n : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L361"
            ((@:checkr _r ?? throw "null pointer dereference")._pendBuf.__slice__((@:checkr _r ?? throw "null pointer dereference")._pending) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _r ?? throw "null pointer dereference")._buf.__slice__(_size, _n) : stdgo.Slice<stdgo.GoUInt8>));
            (@:checkr _r ?? throw "null pointer dereference")._pending = ((@:checkr _r ?? throw "null pointer dereference")._pending + ((_n - _size : stdgo.GoInt)) : stdgo.GoInt);
        };
        (@:checkr _r ?? throw "null pointer dereference")._peekRune = (-1 ^ _rr);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L366"
        return { _0 : _rr, _1 : _size, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function _readByte( _r:stdgo.Ref<stdgo._internal.fmt.Fmt_t_readrune.T_readRune>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.fmt.Fmt_t_readrune.T_readRune> = _r;
        var _b = (0 : stdgo.GoUInt8), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L315"
        if (((@:checkr _r ?? throw "null pointer dereference")._pending > (0 : stdgo.GoInt) : Bool)) {
            _b = (@:checkr _r ?? throw "null pointer dereference")._pendBuf[(0 : stdgo.GoInt)];
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L317"
            ((@:checkr _r ?? throw "null pointer dereference")._pendBuf.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _r ?? throw "null pointer dereference")._pendBuf.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L318"
            (@:checkr _r ?? throw "null pointer dereference")._pending--;
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L319"
            return { _0 : _b, _1 : _err };
        };
        var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _r ?? throw "null pointer dereference")._reader, ((@:checkr _r ?? throw "null pointer dereference")._pendBuf.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L322"
        if (_n != ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L323"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoUInt8), _1 : _err };
                _b = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L325"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } = { _0 : (@:checkr _r ?? throw "null pointer dereference")._pendBuf[(0 : stdgo.GoInt)], _1 : _err };
            _b = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}

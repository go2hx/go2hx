package stdgo._internal.fmt;
@:keep @:allow(stdgo._internal.fmt.Fmt.T_readRune_asInterface) class T_readRune_static_extension {
    @:keep
    @:tdfield
    static public function unreadRune( _r:stdgo.Ref<stdgo._internal.fmt.Fmt_t_readrune.T_readRune>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.fmt.Fmt_t_readrune.T_readRune> = _r;
        if (((@:checkr _r ?? throw "null pointer dereference")._peekRune >= (0 : stdgo.GoInt32) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("fmt: scanning called UnreadRune with no rune available" : stdgo.GoString));
        };
        (@:checkr _r ?? throw "null pointer dereference")._peekRune = (-1 ^ (@:checkr _r ?? throw "null pointer dereference")._peekRune);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function readRune( _r:stdgo.Ref<stdgo._internal.fmt.Fmt_t_readrune.T_readRune>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.fmt.Fmt_t_readrune.T_readRune> = _r;
        var _rr = (0 : stdgo.GoInt32), _size = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((@:checkr _r ?? throw "null pointer dereference")._peekRune >= (0 : stdgo.GoInt32) : Bool)) {
            _rr = (@:checkr _r ?? throw "null pointer dereference")._peekRune;
            (@:checkr _r ?? throw "null pointer dereference")._peekRune = (-1 ^ (@:checkr _r ?? throw "null pointer dereference")._peekRune);
            _size = stdgo._internal.unicode.utf8.Utf8_runelen.runeLen(_rr);
            return { _0 : _rr, _1 : _size, _2 : _err };
        };
        {
            var __tmp__ = @:check2r _r._readByte();
            (@:checkr _r ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _rr, _1 : _size, _2 : _err };
        };
        if (((@:checkr _r ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
            _rr = ((@:checkr _r ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] : stdgo.GoInt32);
            _size = (1 : stdgo.GoInt);
            (@:checkr _r ?? throw "null pointer dereference")._peekRune = (-1 ^ _rr);
            return { _0 : _rr, _1 : _size, _2 : _err };
        };
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            _n = (1 : stdgo.GoInt);
            while (!stdgo._internal.unicode.utf8.Utf8_fullrune.fullRune(((@:checkr _r ?? throw "null pointer dereference")._buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>))) {
                {
                    var __tmp__ = @:check2r _r._readByte();
                    (@:checkr _r ?? throw "null pointer dereference")._buf[(_n : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        _err = (null : stdgo.Error);
                        break;
                    };
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
        if ((_size < _n : Bool)) {
            ((@:checkr _r ?? throw "null pointer dereference")._pendBuf.__slice__((@:checkr _r ?? throw "null pointer dereference")._pending) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _r ?? throw "null pointer dereference")._buf.__slice__(_size, _n) : stdgo.Slice<stdgo.GoUInt8>));
            (@:checkr _r ?? throw "null pointer dereference")._pending = ((@:checkr _r ?? throw "null pointer dereference")._pending + ((_n - _size : stdgo.GoInt)) : stdgo.GoInt);
        };
        (@:checkr _r ?? throw "null pointer dereference")._peekRune = (-1 ^ _rr);
        return { _0 : _rr, _1 : _size, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function _readByte( _r:stdgo.Ref<stdgo._internal.fmt.Fmt_t_readrune.T_readRune>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.fmt.Fmt_t_readrune.T_readRune> = _r;
        var _b = (0 : stdgo.GoUInt8), _err = (null : stdgo.Error);
        if (((@:checkr _r ?? throw "null pointer dereference")._pending > (0 : stdgo.GoInt) : Bool)) {
            _b = (@:checkr _r ?? throw "null pointer dereference")._pendBuf[(0 : stdgo.GoInt)];
            ((@:checkr _r ?? throw "null pointer dereference")._pendBuf.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _r ?? throw "null pointer dereference")._pendBuf.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            (@:checkr _r ?? throw "null pointer dereference")._pending--;
            return { _0 : _b, _1 : _err };
        };
        var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _r ?? throw "null pointer dereference")._reader, ((@:checkr _r ?? throw "null pointer dereference")._pendBuf.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_n != ((1 : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoUInt8), _1 : _err };
                _b = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } = { _0 : (@:checkr _r ?? throw "null pointer dereference")._pendBuf[(0 : stdgo.GoInt)], _1 : _err };
            _b = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}

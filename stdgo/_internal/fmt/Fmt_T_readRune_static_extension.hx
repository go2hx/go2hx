package stdgo._internal.fmt;
@:keep @:allow(stdgo._internal.fmt.Fmt.T_readRune_asInterface) class T_readRune_static_extension {
    @:keep
    static public function unreadRune( _r:stdgo.Ref<stdgo._internal.fmt.Fmt_T_readRune.T_readRune>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.fmt.Fmt_T_readRune.T_readRune> = _r;
        if ((_r._peekRune >= (0 : stdgo.GoInt32) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("fmt: scanning called UnreadRune with no rune available" : stdgo.GoString));
        };
        _r._peekRune = (-1 ^ _r._peekRune);
        return (null : stdgo.Error);
    }
    @:keep
    static public function readRune( _r:stdgo.Ref<stdgo._internal.fmt.Fmt_T_readRune.T_readRune>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.fmt.Fmt_T_readRune.T_readRune> = _r;
        var _rr = (0 : stdgo.GoInt32), _size = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_r._peekRune >= (0 : stdgo.GoInt32) : Bool)) {
            _rr = _r._peekRune;
            _r._peekRune = (-1 ^ _r._peekRune);
            _size = stdgo._internal.unicode.utf8.Utf8_runeLen.runeLen(_rr);
            return { _0 : _rr, _1 : _size, _2 : _err };
        };
        {
            var __tmp__ = _r._readByte();
            _r._buf[(0 : stdgo.GoInt)] = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _rr, _1 : _size, _2 : _err };
        };
        if ((_r._buf[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
            _rr = (_r._buf[(0 : stdgo.GoInt)] : stdgo.GoInt32);
            _size = (1 : stdgo.GoInt);
            _r._peekRune = (-1 ^ _rr);
            return { _0 : _rr, _1 : _size, _2 : _err };
        };
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            _n = (1 : stdgo.GoInt);
            while (!stdgo._internal.unicode.utf8.Utf8_fullRune.fullRune((_r._buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>))) {
                {
                    var __tmp__ = _r._readByte();
                    _r._buf[(_n : stdgo.GoInt)] = __tmp__._0;
                    _err = __tmp__._1;
                };
if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                        _err = (null : stdgo.Error);
                        break;
                    };
                    return { _0 : _rr, _1 : _size, _2 : _err };
                };
                _n++;
            };
        };
        {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune((_r._buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
            _rr = __tmp__._0;
            _size = __tmp__._1;
        };
        if ((_size < _n : Bool)) {
            stdgo.Go.copySlice((_r._pendBuf.__slice__(_r._pending) : stdgo.Slice<stdgo.GoUInt8>), (_r._buf.__slice__(_size, _n) : stdgo.Slice<stdgo.GoUInt8>));
            _r._pending = (_r._pending + ((_n - _size : stdgo.GoInt)) : stdgo.GoInt);
        };
        _r._peekRune = (-1 ^ _rr);
        return { _0 : _rr, _1 : _size, _2 : _err };
    }
    @:keep
    static public function _readByte( _r:stdgo.Ref<stdgo._internal.fmt.Fmt_T_readRune.T_readRune>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.fmt.Fmt_T_readRune.T_readRune> = _r;
        var _b = (0 : stdgo.GoUInt8), _err = (null : stdgo.Error);
        if ((_r._pending > (0 : stdgo.GoInt) : Bool)) {
            _b = _r._pendBuf[(0 : stdgo.GoInt)];
            stdgo.Go.copySlice((_r._pendBuf.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_r._pendBuf.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _r._pending--;
            return { _0 : _b, _1 : _err };
        };
        var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r._reader, (_r._pendBuf.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_n != ((1 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoUInt8), _1 : _err };
        };
        return { _0 : _r._pendBuf[(0 : stdgo.GoInt)], _1 : _err };
    }
}

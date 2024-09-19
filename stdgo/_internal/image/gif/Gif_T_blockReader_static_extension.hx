package stdgo._internal.image.gif;
@:keep @:allow(stdgo._internal.image.gif.Gif.T_blockReader_asInterface) class T_blockReader_static_extension {
    @:keep
    static public function _close( _b:stdgo.Ref<stdgo._internal.image.gif.Gif_T_blockReader.T_blockReader>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.image.gif.Gif_T_blockReader.T_blockReader> = _b;
        if (stdgo.Go.toInterface(_b._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            return (null : stdgo.Error);
        } else if (_b._err != null) {
            return _b._err;
        };
        if (_b._i == (_b._j)) {
            _b._fill();
            if (stdgo.Go.toInterface(_b._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                return (null : stdgo.Error);
            } else if (_b._err != null) {
                return _b._err;
            } else if ((_b._j > (1 : stdgo.GoUInt8) : Bool)) {
                return stdgo._internal.image.gif.Gif__errTooMuch._errTooMuch;
            };
        };
        _b._fill();
        if (stdgo.Go.toInterface(_b._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            return (null : stdgo.Error);
        } else if (_b._err != null) {
            return _b._err;
        };
        return stdgo._internal.image.gif.Gif__errTooMuch._errTooMuch;
    }
    @:keep
    static public function read( _b:stdgo.Ref<stdgo._internal.image.gif.Gif_T_blockReader.T_blockReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.image.gif.Gif_T_blockReader.T_blockReader> = _b;
        if (((_p.length == (0 : stdgo.GoInt)) || (_b._err != null) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : _b._err };
        };
        if (_b._i == (_b._j)) {
            _b._fill();
            if (_b._err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _b._err };
            };
        };
        var _n = (stdgo.Go.copySlice(_p, (_b._d._tmp.__slice__(_b._i, _b._j) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
        _b._i = (_b._i + ((_n : stdgo.GoUInt8)) : stdgo.GoUInt8);
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function readByte( _b:stdgo.Ref<stdgo._internal.image.gif.Gif_T_blockReader.T_blockReader>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.image.gif.Gif_T_blockReader.T_blockReader> = _b;
        if (_b._i == (_b._j)) {
            _b._fill();
            if (_b._err != null) {
                return { _0 : (0 : stdgo.GoUInt8), _1 : _b._err };
            };
        };
        var _c = (_b._d._tmp[(_b._i : stdgo.GoInt)] : stdgo.GoUInt8);
        _b._i++;
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _fill( _b:stdgo.Ref<stdgo._internal.image.gif.Gif_T_blockReader.T_blockReader>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.image.gif.Gif_T_blockReader.T_blockReader> = _b;
        if (_b._err != null) {
            return;
        };
        {
            var __tmp__ = stdgo._internal.image.gif.Gif__readByte._readByte(_b._d._r);
            _b._j = __tmp__._0;
            _b._err = __tmp__._1;
        };
        if (((_b._j == (0 : stdgo.GoUInt8)) && (_b._err == null) : Bool)) {
            _b._err = stdgo._internal.io.Io_eof.eof;
        };
        if (_b._err != null) {
            return;
        };
        _b._i = (0 : stdgo.GoUInt8);
        _b._err = stdgo._internal.image.gif.Gif__readFull._readFull(_b._d._r, (_b._d._tmp.__slice__(0, _b._j) : stdgo.Slice<stdgo.GoUInt8>));
        if (_b._err != null) {
            _b._j = (0 : stdgo.GoUInt8);
        };
    }
}

package stdgo._internal.image.gif;
@:keep @:allow(stdgo._internal.image.gif.Gif.T_blockReader_asInterface) class T_blockReader_static_extension {
    @:keep
    @:tdfield
    static public function _close( _b:stdgo.Ref<stdgo._internal.image.gif.Gif_t_blockreader.T_blockReader>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.image.gif.Gif_t_blockreader.T_blockReader> = _b;
        if (stdgo.Go.toInterface((@:checkr _b ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            return (null : stdgo.Error);
        } else if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
            return (@:checkr _b ?? throw "null pointer dereference")._err;
        };
        if ((@:checkr _b ?? throw "null pointer dereference")._i == ((@:checkr _b ?? throw "null pointer dereference")._j)) {
            @:check2r _b._fill();
            if (stdgo.Go.toInterface((@:checkr _b ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                return (null : stdgo.Error);
            } else if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
                return (@:checkr _b ?? throw "null pointer dereference")._err;
            } else if (((@:checkr _b ?? throw "null pointer dereference")._j > (1 : stdgo.GoUInt8) : Bool)) {
                return stdgo._internal.image.gif.Gif__errtoomuch._errTooMuch;
            };
        };
        @:check2r _b._fill();
        if (stdgo.Go.toInterface((@:checkr _b ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            return (null : stdgo.Error);
        } else if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
            return (@:checkr _b ?? throw "null pointer dereference")._err;
        };
        return stdgo._internal.image.gif.Gif__errtoomuch._errTooMuch;
    }
    @:keep
    @:tdfield
    static public function read( _b:stdgo.Ref<stdgo._internal.image.gif.Gif_t_blockreader.T_blockReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.image.gif.Gif_t_blockreader.T_blockReader> = _b;
        if (((_p.length == (0 : stdgo.GoInt)) || ((@:checkr _b ?? throw "null pointer dereference")._err != null) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _b ?? throw "null pointer dereference")._err };
        };
        if ((@:checkr _b ?? throw "null pointer dereference")._i == ((@:checkr _b ?? throw "null pointer dereference")._j)) {
            @:check2r _b._fill();
            if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _b ?? throw "null pointer dereference")._err };
            };
        };
        var _n = (_p.__copyTo__(((@:checkr (@:checkr _b ?? throw "null pointer dereference")._d ?? throw "null pointer dereference")._tmp.__slice__((@:checkr _b ?? throw "null pointer dereference")._i, (@:checkr _b ?? throw "null pointer dereference")._j) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._i = ((@:checkr _b ?? throw "null pointer dereference")._i + ((_n : stdgo.GoUInt8)) : stdgo.GoUInt8);
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function readByte( _b:stdgo.Ref<stdgo._internal.image.gif.Gif_t_blockreader.T_blockReader>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.image.gif.Gif_t_blockreader.T_blockReader> = _b;
        if ((@:checkr _b ?? throw "null pointer dereference")._i == ((@:checkr _b ?? throw "null pointer dereference")._j)) {
            @:check2r _b._fill();
            if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
                return { _0 : (0 : stdgo.GoUInt8), _1 : (@:checkr _b ?? throw "null pointer dereference")._err };
            };
        };
        var _c = ((@:checkr (@:checkr _b ?? throw "null pointer dereference")._d ?? throw "null pointer dereference")._tmp[((@:checkr _b ?? throw "null pointer dereference")._i : stdgo.GoInt)] : stdgo.GoUInt8);
        (@:checkr _b ?? throw "null pointer dereference")._i++;
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _fill( _b:stdgo.Ref<stdgo._internal.image.gif.Gif_t_blockreader.T_blockReader>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.image.gif.Gif_t_blockreader.T_blockReader> = _b;
        if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
            return;
        };
        {
            var __tmp__ = stdgo._internal.image.gif.Gif__readbyte._readByte((@:checkr (@:checkr _b ?? throw "null pointer dereference")._d ?? throw "null pointer dereference")._r);
            (@:checkr _b ?? throw "null pointer dereference")._j = @:tmpset0 __tmp__._0;
            (@:checkr _b ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
        if ((((@:checkr _b ?? throw "null pointer dereference")._j == (0 : stdgo.GoUInt8)) && ((@:checkr _b ?? throw "null pointer dereference")._err == null) : Bool)) {
            (@:checkr _b ?? throw "null pointer dereference")._err = stdgo._internal.io.Io_eof.eOF;
        };
        if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
            return;
        };
        (@:checkr _b ?? throw "null pointer dereference")._i = (0 : stdgo.GoUInt8);
        (@:checkr _b ?? throw "null pointer dereference")._err = stdgo._internal.image.gif.Gif__readfull._readFull((@:checkr (@:checkr _b ?? throw "null pointer dereference")._d ?? throw "null pointer dereference")._r, ((@:checkr (@:checkr _b ?? throw "null pointer dereference")._d ?? throw "null pointer dereference")._tmp.__slice__(0, (@:checkr _b ?? throw "null pointer dereference")._j) : stdgo.Slice<stdgo.GoUInt8>));
        if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
            (@:checkr _b ?? throw "null pointer dereference")._j = (0 : stdgo.GoUInt8);
        };
    }
}

package stdgo._internal.image.gif;
@:keep @:allow(stdgo._internal.image.gif.Gif.T_blockReader_asInterface) class T_blockReader_static_extension {
    @:keep
    @:tdfield
    static public function _close( _b:stdgo.Ref<stdgo._internal.image.gif.Gif_t_blockreader.T_blockReader>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.image.gif.Gif_t_blockreader.T_blockReader> = _b;
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L185"
        if (stdgo.Go.toInterface((@:checkr _b ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L187"
            return (null : stdgo.Error);
        } else if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L190"
            return (@:checkr _b ?? throw "null pointer dereference")._err;
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L193"
        if ((@:checkr _b ?? throw "null pointer dereference")._i == ((@:checkr _b ?? throw "null pointer dereference")._j)) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L196"
            _b._fill();
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L197"
            if (stdgo.Go.toInterface((@:checkr _b ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L198"
                return (null : stdgo.Error);
            } else if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L200"
                return (@:checkr _b ?? throw "null pointer dereference")._err;
            } else if (((@:checkr _b ?? throw "null pointer dereference")._j > (1 : stdgo.GoUInt8) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L202"
                return stdgo._internal.image.gif.Gif__errtoomuch._errTooMuch;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L208"
        _b._fill();
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L209"
        if (stdgo.Go.toInterface((@:checkr _b ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L210"
            return (null : stdgo.Error);
        } else if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L212"
            return (@:checkr _b ?? throw "null pointer dereference")._err;
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L215"
        return stdgo._internal.image.gif.Gif__errtoomuch._errTooMuch;
    }
    @:keep
    @:tdfield
    static public function read( _b:stdgo.Ref<stdgo._internal.image.gif.Gif_t_blockreader.T_blockReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.image.gif.Gif_t_blockreader.T_blockReader> = _b;
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L161"
        if (((_p.length == (0 : stdgo.GoInt)) || ((@:checkr _b ?? throw "null pointer dereference")._err != null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L162"
            return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _b ?? throw "null pointer dereference")._err };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L164"
        if ((@:checkr _b ?? throw "null pointer dereference")._i == ((@:checkr _b ?? throw "null pointer dereference")._j)) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L165"
            _b._fill();
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L166"
            if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L167"
                return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _b ?? throw "null pointer dereference")._err };
            };
        };
        var _n = (_p.__copyTo__(((@:checkr (@:checkr _b ?? throw "null pointer dereference")._d ?? throw "null pointer dereference")._tmp.__slice__((@:checkr _b ?? throw "null pointer dereference")._i, (@:checkr _b ?? throw "null pointer dereference")._j) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._i = ((@:checkr _b ?? throw "null pointer dereference")._i + ((_n : stdgo.GoUInt8)) : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L173"
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function readByte( _b:stdgo.Ref<stdgo._internal.image.gif.Gif_t_blockreader.T_blockReader>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.image.gif.Gif_t_blockreader.T_blockReader> = _b;
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L146"
        if ((@:checkr _b ?? throw "null pointer dereference")._i == ((@:checkr _b ?? throw "null pointer dereference")._j)) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L147"
            _b._fill();
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L148"
            if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L149"
                return { _0 : (0 : stdgo.GoUInt8), _1 : (@:checkr _b ?? throw "null pointer dereference")._err };
            };
        };
        var _c = ((@:checkr (@:checkr _b ?? throw "null pointer dereference")._d ?? throw "null pointer dereference")._tmp[((@:checkr _b ?? throw "null pointer dereference")._i : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L154"
        (@:checkr _b ?? throw "null pointer dereference")._i++;
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L155"
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _fill( _b:stdgo.Ref<stdgo._internal.image.gif.Gif_t_blockreader.T_blockReader>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.image.gif.Gif_t_blockreader.T_blockReader> = _b;
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L127"
        if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L128"
            return;
        };
        {
            var __tmp__ = stdgo._internal.image.gif.Gif__readbyte._readByte((@:checkr (@:checkr _b ?? throw "null pointer dereference")._d ?? throw "null pointer dereference")._r);
            (@:checkr _b ?? throw "null pointer dereference")._j = @:tmpset0 __tmp__._0;
            (@:checkr _b ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L131"
        if ((((@:checkr _b ?? throw "null pointer dereference")._j == (0 : stdgo.GoUInt8)) && ((@:checkr _b ?? throw "null pointer dereference")._err == null) : Bool)) {
            (@:checkr _b ?? throw "null pointer dereference")._err = stdgo._internal.io.Io_eof.eOF;
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L134"
        if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L135"
            return;
        };
        (@:checkr _b ?? throw "null pointer dereference")._i = (0 : stdgo.GoUInt8);
        (@:checkr _b ?? throw "null pointer dereference")._err = stdgo._internal.image.gif.Gif__readfull._readFull((@:checkr (@:checkr _b ?? throw "null pointer dereference")._d ?? throw "null pointer dereference")._r, ((@:checkr (@:checkr _b ?? throw "null pointer dereference")._d ?? throw "null pointer dereference")._tmp.__slice__(0, (@:checkr _b ?? throw "null pointer dereference")._j) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L140"
        if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
            (@:checkr _b ?? throw "null pointer dereference")._j = (0 : stdgo.GoUInt8);
        };
    }
}

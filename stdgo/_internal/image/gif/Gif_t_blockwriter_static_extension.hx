package stdgo._internal.image.gif;
@:keep @:allow(stdgo._internal.image.gif.Gif.T_blockWriter_asInterface) class T_blockWriter_static_extension {
    @:keep
    @:tdfield
    static public function _close( _b:stdgo._internal.image.gif.Gif_t_blockwriter.T_blockWriter):Void {
        @:recv var _b:stdgo._internal.image.gif.Gif_t_blockwriter.T_blockWriter = _b?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L113"
        if ((@:checkr _b._e ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L114"
            _b._e._writeByte((0 : stdgo.GoUInt8));
        } else {
            var _n = ((@:checkr _b._e ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] : stdgo.GoUInt);
            (@:checkr _b._e ?? throw "null pointer dereference")._buf[((_n + (1u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L118"
            _b._e._write(((@:checkr _b._e ?? throw "null pointer dereference")._buf.__slice__(0, (_n + (2u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.Slice<stdgo.GoUInt8>));
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L120"
        _b._e._flush();
    }
    @:keep
    @:tdfield
    static public function write( _b:stdgo._internal.image.gif.Gif_t_blockwriter.T_blockWriter, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo._internal.image.gif.Gif_t_blockwriter.T_blockWriter = _b?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L102"
        for (_i => _c in _data) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L103"
            {
                var _err = (_b.writeByte(_c) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L104"
                    return { _0 : _i, _1 : _err };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L107"
        return { _0 : (_data.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function writeByte( _b:stdgo._internal.image.gif.Gif_t_blockwriter.T_blockWriter, _c:stdgo.GoUInt8):stdgo.Error {
        @:recv var _b:stdgo._internal.image.gif.Gif_t_blockwriter.T_blockWriter = _b?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L82"
        if ((@:checkr _b._e ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L83"
            return (@:checkr _b._e ?? throw "null pointer dereference")._err;
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L87"
        (@:checkr _b._e ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)]++;
        (@:checkr _b._e ?? throw "null pointer dereference")._buf[((@:checkr _b._e ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] : stdgo.GoInt)] = _c;
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L89"
        if (((@:checkr _b._e ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] < (255 : stdgo.GoUInt8) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L90"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L94"
        _b._e._write(((@:checkr _b._e ?? throw "null pointer dereference")._buf.__slice__(0, (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _b._e ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L96"
        return (@:checkr _b._e ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function flush( _b:stdgo._internal.image.gif.Gif_t_blockwriter.T_blockWriter):stdgo.Error {
        @:recv var _b:stdgo._internal.image.gif.Gif_t_blockwriter.T_blockWriter = _b?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L78"
        return (@:checkr _b._e ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function _setup( _b:stdgo._internal.image.gif.Gif_t_blockwriter.T_blockWriter):Void {
        @:recv var _b:stdgo._internal.image.gif.Gif_t_blockwriter.T_blockWriter = _b?.__copy__();
        (@:checkr _b._e ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
    }
}

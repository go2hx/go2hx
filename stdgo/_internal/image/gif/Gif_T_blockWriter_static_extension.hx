package stdgo._internal.image.gif;
@:keep @:allow(stdgo._internal.image.gif.Gif.T_blockWriter_asInterface) class T_blockWriter_static_extension {
    @:keep
    static public function _close( _b:stdgo._internal.image.gif.Gif_T_blockWriter.T_blockWriter):Void {
        @:recv var _b:stdgo._internal.image.gif.Gif_T_blockWriter.T_blockWriter = _b?.__copy__();
        if (_b._e._buf[(0 : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
            _b._e._writeByte((0 : stdgo.GoUInt8));
        } else {
            var _n = (_b._e._buf[(0 : stdgo.GoInt)] : stdgo.GoUInt);
            _b._e._buf[((_n + (1u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            _b._e._write((_b._e._buf.__slice__(0, (_n + (2u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.Slice<stdgo.GoUInt8>));
        };
        _b._e._flush();
    }
    @:keep
    static public function write( _b:stdgo._internal.image.gif.Gif_T_blockWriter.T_blockWriter, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo._internal.image.gif.Gif_T_blockWriter.T_blockWriter = _b?.__copy__();
        for (_i => _c in _data) {
            {
                var _err = (_b.writeByte(_c) : stdgo.Error);
                if (_err != null) {
                    return { _0 : _i, _1 : _err };
                };
            };
        };
        return { _0 : (_data.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function writeByte( _b:stdgo._internal.image.gif.Gif_T_blockWriter.T_blockWriter, _c:stdgo.GoUInt8):stdgo.Error {
        @:recv var _b:stdgo._internal.image.gif.Gif_T_blockWriter.T_blockWriter = _b?.__copy__();
        if (_b._e._err != null) {
            return _b._e._err;
        };
        _b._e._buf[(0 : stdgo.GoInt)]++;
        _b._e._buf[(_b._e._buf[(0 : stdgo.GoInt)] : stdgo.GoInt)] = _c;
        if ((_b._e._buf[(0 : stdgo.GoInt)] < (255 : stdgo.GoUInt8) : Bool)) {
            return (null : stdgo.Error);
        };
        _b._e._write((_b._e._buf.__slice__(0, (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _b._e._buf[(0 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        return _b._e._err;
    }
    @:keep
    static public function flush( _b:stdgo._internal.image.gif.Gif_T_blockWriter.T_blockWriter):stdgo.Error {
        @:recv var _b:stdgo._internal.image.gif.Gif_T_blockWriter.T_blockWriter = _b?.__copy__();
        return _b._e._err;
    }
    @:keep
    static public function _setup( _b:stdgo._internal.image.gif.Gif_T_blockWriter.T_blockWriter):Void {
        @:recv var _b:stdgo._internal.image.gif.Gif_T_blockWriter.T_blockWriter = _b?.__copy__();
        _b._e._buf[(0 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
    }
}

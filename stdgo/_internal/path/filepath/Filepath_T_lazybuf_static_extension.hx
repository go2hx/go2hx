package stdgo._internal.path.filepath;
@:keep @:allow(stdgo._internal.path.filepath.Filepath.T_lazybuf_asInterface) class T_lazybuf_static_extension {
    @:keep
    static public function _string( _b:stdgo.Ref<stdgo._internal.path.filepath.Filepath_T_lazybuf.T_lazybuf>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<stdgo._internal.path.filepath.Filepath_T_lazybuf.T_lazybuf> = _b;
        if (_b._buf == null) {
            return (_b._volAndPath.__slice__(0, (_b._volLen + _b._w : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return ((_b._volAndPath.__slice__(0, _b._volLen) : stdgo.GoString) + ((_b._buf.__slice__(0, _b._w) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _prepend( _b:stdgo.Ref<stdgo._internal.path.filepath.Filepath_T_lazybuf.T_lazybuf>, _prefix:haxe.Rest<stdgo.GoUInt8>):Void {
        var _prefix = new stdgo.Slice<stdgo.GoUInt8>(_prefix.length, 0, ..._prefix);
        @:recv var _b:stdgo.Ref<stdgo._internal.path.filepath.Filepath_T_lazybuf.T_lazybuf> = _b;
        _b._buf = (_prefix.__append__(...(_b._buf : Array<stdgo.GoUInt8>)));
        _b._w = (_b._w + ((_prefix.length)) : stdgo.GoInt);
    }
    @:keep
    static public function _append( _b:stdgo.Ref<stdgo._internal.path.filepath.Filepath_T_lazybuf.T_lazybuf>, _c:stdgo.GoUInt8):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.path.filepath.Filepath_T_lazybuf.T_lazybuf> = _b;
        if (_b._buf == null) {
            if (((_b._w < (_b._path.length) : Bool) && (_b._path[(_b._w : stdgo.GoInt)] == _c) : Bool)) {
                _b._w++;
                return;
            };
            _b._buf = (new stdgo.Slice<stdgo.GoUInt8>((_b._path.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _b._buf.__copyTo__((_b._path.__slice__(0, _b._w) : stdgo.GoString));
        };
        _b._buf[(_b._w : stdgo.GoInt)] = _c;
        _b._w++;
    }
    @:keep
    static public function _index( _b:stdgo.Ref<stdgo._internal.path.filepath.Filepath_T_lazybuf.T_lazybuf>, _i:stdgo.GoInt):stdgo.GoUInt8 {
        @:recv var _b:stdgo.Ref<stdgo._internal.path.filepath.Filepath_T_lazybuf.T_lazybuf> = _b;
        if (_b._buf != null) {
            return _b._buf[(_i : stdgo.GoInt)];
        };
        return _b._path[(_i : stdgo.GoInt)];
    }
}

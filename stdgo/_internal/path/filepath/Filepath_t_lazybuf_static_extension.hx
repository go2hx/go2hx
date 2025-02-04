package stdgo._internal.path.filepath;
@:keep @:allow(stdgo._internal.path.filepath.Filepath.T_lazybuf_asInterface) class T_lazybuf_static_extension {
    @:keep
    @:tdfield
    static public function _string( _b:stdgo.Ref<stdgo._internal.path.filepath.Filepath_t_lazybuf.T_lazybuf>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<stdgo._internal.path.filepath.Filepath_t_lazybuf.T_lazybuf> = _b;
        if ((@:checkr _b ?? throw "null pointer dereference")._buf == null) {
            return ((@:checkr _b ?? throw "null pointer dereference")._volAndPath.__slice__(0, ((@:checkr _b ?? throw "null pointer dereference")._volLen + (@:checkr _b ?? throw "null pointer dereference")._w : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return (((@:checkr _b ?? throw "null pointer dereference")._volAndPath.__slice__(0, (@:checkr _b ?? throw "null pointer dereference")._volLen) : stdgo.GoString) + (((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(0, (@:checkr _b ?? throw "null pointer dereference")._w) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _prepend( _b:stdgo.Ref<stdgo._internal.path.filepath.Filepath_t_lazybuf.T_lazybuf>, _prefix:haxe.Rest<stdgo.GoUInt8>):Void {
        var _prefix = new stdgo.Slice<stdgo.GoUInt8>(_prefix.length, 0, ..._prefix);
        @:recv var _b:stdgo.Ref<stdgo._internal.path.filepath.Filepath_t_lazybuf.T_lazybuf> = _b;
        (@:checkr _b ?? throw "null pointer dereference")._buf = (_prefix.__append__(...((@:checkr _b ?? throw "null pointer dereference")._buf : Array<stdgo.GoUInt8>)));
        (@:checkr _b ?? throw "null pointer dereference")._w = ((@:checkr _b ?? throw "null pointer dereference")._w + ((_prefix.length)) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _append( _b:stdgo.Ref<stdgo._internal.path.filepath.Filepath_t_lazybuf.T_lazybuf>, _c:stdgo.GoUInt8):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.path.filepath.Filepath_t_lazybuf.T_lazybuf> = _b;
        if ((@:checkr _b ?? throw "null pointer dereference")._buf == null) {
            if ((((@:checkr _b ?? throw "null pointer dereference")._w < ((@:checkr _b ?? throw "null pointer dereference")._path.length) : Bool) && ((@:checkr _b ?? throw "null pointer dereference")._path[((@:checkr _b ?? throw "null pointer dereference")._w : stdgo.GoInt)] == _c) : Bool)) {
                (@:checkr _b ?? throw "null pointer dereference")._w++;
                return;
            };
            (@:checkr _b ?? throw "null pointer dereference")._buf = (new stdgo.Slice<stdgo.GoUInt8>(((@:checkr _b ?? throw "null pointer dereference")._path.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _b ?? throw "null pointer dereference")._buf.__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._path.__slice__(0, (@:checkr _b ?? throw "null pointer dereference")._w) : stdgo.GoString));
        };
        (@:checkr _b ?? throw "null pointer dereference")._buf[((@:checkr _b ?? throw "null pointer dereference")._w : stdgo.GoInt)] = _c;
        (@:checkr _b ?? throw "null pointer dereference")._w++;
    }
    @:keep
    @:tdfield
    static public function _index( _b:stdgo.Ref<stdgo._internal.path.filepath.Filepath_t_lazybuf.T_lazybuf>, _i:stdgo.GoInt):stdgo.GoUInt8 {
        @:recv var _b:stdgo.Ref<stdgo._internal.path.filepath.Filepath_t_lazybuf.T_lazybuf> = _b;
        if ((@:checkr _b ?? throw "null pointer dereference")._buf != null) {
            return (@:checkr _b ?? throw "null pointer dereference")._buf[(_i : stdgo.GoInt)];
        };
        return (@:checkr _b ?? throw "null pointer dereference")._path[(_i : stdgo.GoInt)];
    }
}

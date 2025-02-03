package stdgo.path.filepath;
class T_lazybuf_static_extension {
    static public function _string(_b:T_lazybuf):String {
        final _b = (_b : stdgo.Ref<stdgo._internal.path.filepath.Filepath_T_lazybuf.T_lazybuf>);
        return stdgo._internal.path.filepath.Filepath_T_lazybuf_static_extension.T_lazybuf_static_extension._string(_b);
    }
    static public function _prepend(_b:T_lazybuf, _prefix:haxe.Rest<std.UInt>):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.path.filepath.Filepath_T_lazybuf.T_lazybuf>);
        stdgo._internal.path.filepath.Filepath_T_lazybuf_static_extension.T_lazybuf_static_extension._prepend(_b, ...[for (i in _prefix) i]);
    }
    static public function _append(_b:T_lazybuf, _c:std.UInt):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.path.filepath.Filepath_T_lazybuf.T_lazybuf>);
        final _c = (_c : stdgo.GoUInt8);
        stdgo._internal.path.filepath.Filepath_T_lazybuf_static_extension.T_lazybuf_static_extension._append(_b, _c);
    }
    static public function _index(_b:T_lazybuf, _i:StdTypes.Int):std.UInt {
        final _b = (_b : stdgo.Ref<stdgo._internal.path.filepath.Filepath_T_lazybuf.T_lazybuf>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.path.filepath.Filepath_T_lazybuf_static_extension.T_lazybuf_static_extension._index(_b, _i);
    }
}

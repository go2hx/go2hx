package stdgo._internal.path.filepath;
@:structInit @:using(stdgo._internal.path.filepath.Filepath_t_lazybuf_static_extension.T_lazybuf_static_extension) class T_lazybuf {
    public var _path : stdgo.GoString = "";
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _w : stdgo.GoInt = 0;
    public var _volAndPath : stdgo.GoString = "";
    public var _volLen : stdgo.GoInt = 0;
    public function new(?_path:stdgo.GoString, ?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_w:stdgo.GoInt, ?_volAndPath:stdgo.GoString, ?_volLen:stdgo.GoInt) {
        if (_path != null) this._path = _path;
        if (_buf != null) this._buf = _buf;
        if (_w != null) this._w = _w;
        if (_volAndPath != null) this._volAndPath = _volAndPath;
        if (_volLen != null) this._volLen = _volLen;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_lazybuf(_path, _buf, _w, _volAndPath, _volLen);
    }
}

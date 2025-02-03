package stdgo.path.filepath;
@:structInit @:using(stdgo.path.filepath.Filepath.T_lazybuf_static_extension) abstract T_lazybuf(stdgo._internal.path.filepath.Filepath_T_lazybuf.T_lazybuf) from stdgo._internal.path.filepath.Filepath_T_lazybuf.T_lazybuf to stdgo._internal.path.filepath.Filepath_T_lazybuf.T_lazybuf {
    public var _path(get, set) : String;
    function get__path():String return this._path;
    function set__path(v:String):String {
        this._path = (v : stdgo.GoString);
        return v;
    }
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _w(get, set) : StdTypes.Int;
    function get__w():StdTypes.Int return this._w;
    function set__w(v:StdTypes.Int):StdTypes.Int {
        this._w = (v : stdgo.GoInt);
        return v;
    }
    public var _volAndPath(get, set) : String;
    function get__volAndPath():String return this._volAndPath;
    function set__volAndPath(v:String):String {
        this._volAndPath = (v : stdgo.GoString);
        return v;
    }
    public var _volLen(get, set) : StdTypes.Int;
    function get__volLen():StdTypes.Int return this._volLen;
    function set__volLen(v:StdTypes.Int):StdTypes.Int {
        this._volLen = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_path:String, ?_buf:Array<std.UInt>, ?_w:StdTypes.Int, ?_volAndPath:String, ?_volLen:StdTypes.Int) this = new stdgo._internal.path.filepath.Filepath_T_lazybuf.T_lazybuf((_path : stdgo.GoString), ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_w : stdgo.GoInt), (_volAndPath : stdgo.GoString), (_volLen : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

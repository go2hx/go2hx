package stdgo.syscall;
@:structInit @:using(stdgo.syscall.Syscall.T_jsFile_static_extension) abstract T_jsFile(stdgo._internal.syscall.Syscall_T_jsFile.T_jsFile) from stdgo._internal.syscall.Syscall_T_jsFile.T_jsFile to stdgo._internal.syscall.Syscall_T_jsFile.T_jsFile {
    public var _path(get, set) : String;
    function get__path():String return this._path;
    function set__path(v:String):String {
        this._path = (v : stdgo.GoString);
        return v;
    }
    public var _entries(get, set) : Array<String>;
    function get__entries():Array<String> return [for (i in this._entries) i];
    function set__entries(v:Array<String>):Array<String> {
        this._entries = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _dirIdx(get, set) : StdTypes.Int;
    function get__dirIdx():StdTypes.Int return this._dirIdx;
    function set__dirIdx(v:StdTypes.Int):StdTypes.Int {
        this._dirIdx = (v : stdgo.GoInt);
        return v;
    }
    public var _pos(get, set) : haxe.Int64;
    function get__pos():haxe.Int64 return this._pos;
    function set__pos(v:haxe.Int64):haxe.Int64 {
        this._pos = (v : stdgo.GoInt64);
        return v;
    }
    public var _seeked(get, set) : Bool;
    function get__seeked():Bool return this._seeked;
    function set__seeked(v:Bool):Bool {
        this._seeked = v;
        return v;
    }
    public function new(?_path:String, ?_entries:Array<String>, ?_dirIdx:StdTypes.Int, ?_pos:haxe.Int64, ?_seeked:Bool) this = new stdgo._internal.syscall.Syscall_T_jsFile.T_jsFile((_path : stdgo.GoString), ([for (i in _entries) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), (_dirIdx : stdgo.GoInt), (_pos : stdgo.GoInt64), _seeked);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

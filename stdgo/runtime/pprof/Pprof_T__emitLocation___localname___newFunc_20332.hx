package stdgo.runtime.pprof;
@:structInit abstract T__emitLocation___localname___newFunc_20332(stdgo._internal.runtime.pprof.Pprof_T__emitLocation___localname___newFunc_20332.T__emitLocation___localname___newFunc_20332) from stdgo._internal.runtime.pprof.Pprof_T__emitLocation___localname___newFunc_20332.T__emitLocation___localname___newFunc_20332 to stdgo._internal.runtime.pprof.Pprof_T__emitLocation___localname___newFunc_20332.T__emitLocation___localname___newFunc_20332 {
    public var _id(get, set) : haxe.UInt64;
    function get__id():haxe.UInt64 return this._id;
    function set__id(v:haxe.UInt64):haxe.UInt64 {
        this._id = (v : stdgo.GoUInt64);
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _file(get, set) : String;
    function get__file():String return this._file;
    function set__file(v:String):String {
        this._file = (v : stdgo.GoString);
        return v;
    }
    public var _startLine(get, set) : haxe.Int64;
    function get__startLine():haxe.Int64 return this._startLine;
    function set__startLine(v:haxe.Int64):haxe.Int64 {
        this._startLine = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_id:haxe.UInt64, ?_name:String, ?_file:String, ?_startLine:haxe.Int64) this = new stdgo._internal.runtime.pprof.Pprof_T__emitLocation___localname___newFunc_20332.T__emitLocation___localname___newFunc_20332((_id : stdgo.GoUInt64), (_name : stdgo.GoString), (_file : stdgo.GoString), (_startLine : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

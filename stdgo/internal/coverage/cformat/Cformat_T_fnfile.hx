package stdgo.internal.coverage.cformat;
@:structInit @:using(stdgo.internal.coverage.cformat.Cformat.T_fnfile_static_extension) abstract T_fnfile(stdgo._internal.internal.coverage.cformat.Cformat_T_fnfile.T_fnfile) from stdgo._internal.internal.coverage.cformat.Cformat_T_fnfile.T_fnfile to stdgo._internal.internal.coverage.cformat.Cformat_T_fnfile.T_fnfile {
    public var _file(get, set) : String;
    function get__file():String return this._file;
    function set__file(v:String):String {
        this._file = (v : stdgo.GoString);
        return v;
    }
    public var _fname(get, set) : String;
    function get__fname():String return this._fname;
    function set__fname(v:String):String {
        this._fname = (v : stdgo.GoString);
        return v;
    }
    public var _lit(get, set) : Bool;
    function get__lit():Bool return this._lit;
    function set__lit(v:Bool):Bool {
        this._lit = v;
        return v;
    }
    public function new(?_file:String, ?_fname:String, ?_lit:Bool) this = new stdgo._internal.internal.coverage.cformat.Cformat_T_fnfile.T_fnfile((_file : stdgo.GoString), (_fname : stdgo.GoString), _lit);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

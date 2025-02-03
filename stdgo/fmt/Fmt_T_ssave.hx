package stdgo.fmt;
@:structInit @:using(stdgo.fmt.Fmt.T_ssave_static_extension) abstract T_ssave(stdgo._internal.fmt.Fmt_T_ssave.T_ssave) from stdgo._internal.fmt.Fmt_T_ssave.T_ssave to stdgo._internal.fmt.Fmt_T_ssave.T_ssave {
    public var _validSave(get, set) : Bool;
    function get__validSave():Bool return this._validSave;
    function set__validSave(v:Bool):Bool {
        this._validSave = v;
        return v;
    }
    public var _nlIsEnd(get, set) : Bool;
    function get__nlIsEnd():Bool return this._nlIsEnd;
    function set__nlIsEnd(v:Bool):Bool {
        this._nlIsEnd = v;
        return v;
    }
    public var _nlIsSpace(get, set) : Bool;
    function get__nlIsSpace():Bool return this._nlIsSpace;
    function set__nlIsSpace(v:Bool):Bool {
        this._nlIsSpace = v;
        return v;
    }
    public var _argLimit(get, set) : StdTypes.Int;
    function get__argLimit():StdTypes.Int return this._argLimit;
    function set__argLimit(v:StdTypes.Int):StdTypes.Int {
        this._argLimit = (v : stdgo.GoInt);
        return v;
    }
    public var _limit(get, set) : StdTypes.Int;
    function get__limit():StdTypes.Int return this._limit;
    function set__limit(v:StdTypes.Int):StdTypes.Int {
        this._limit = (v : stdgo.GoInt);
        return v;
    }
    public var _maxWid(get, set) : StdTypes.Int;
    function get__maxWid():StdTypes.Int return this._maxWid;
    function set__maxWid(v:StdTypes.Int):StdTypes.Int {
        this._maxWid = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_validSave:Bool, ?_nlIsEnd:Bool, ?_nlIsSpace:Bool, ?_argLimit:StdTypes.Int, ?_limit:StdTypes.Int, ?_maxWid:StdTypes.Int) this = new stdgo._internal.fmt.Fmt_T_ssave.T_ssave(_validSave, _nlIsEnd, _nlIsSpace, (_argLimit : stdgo.GoInt), (_limit : stdgo.GoInt), (_maxWid : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

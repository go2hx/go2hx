package stdgo.regexp;
@:structInit @:using(stdgo.regexp.Regexp.T_job_static_extension) abstract T_job(stdgo._internal.regexp.Regexp_T_job.T_job) from stdgo._internal.regexp.Regexp_T_job.T_job to stdgo._internal.regexp.Regexp_T_job.T_job {
    public var _pc(get, set) : std.UInt;
    function get__pc():std.UInt return this._pc;
    function set__pc(v:std.UInt):std.UInt {
        this._pc = (v : stdgo.GoUInt32);
        return v;
    }
    public var _arg(get, set) : Bool;
    function get__arg():Bool return this._arg;
    function set__arg(v:Bool):Bool {
        this._arg = v;
        return v;
    }
    public var _pos(get, set) : StdTypes.Int;
    function get__pos():StdTypes.Int return this._pos;
    function set__pos(v:StdTypes.Int):StdTypes.Int {
        this._pos = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_pc:std.UInt, ?_arg:Bool, ?_pos:StdTypes.Int) this = new stdgo._internal.regexp.Regexp_T_job.T_job((_pc : stdgo.GoUInt32), _arg, (_pos : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

package stdgo.runtime.coverage;
@:structInit @:using(stdgo.runtime.coverage.Coverage.T_pkfunc_static_extension) abstract T_pkfunc(stdgo._internal.runtime.coverage.Coverage_T_pkfunc.T_pkfunc) from stdgo._internal.runtime.coverage.Coverage_T_pkfunc.T_pkfunc to stdgo._internal.runtime.coverage.Coverage_T_pkfunc.T_pkfunc {
    public var _pk(get, set) : std.UInt;
    function get__pk():std.UInt return this._pk;
    function set__pk(v:std.UInt):std.UInt {
        this._pk = (v : stdgo.GoUInt32);
        return v;
    }
    public var _fcn(get, set) : std.UInt;
    function get__fcn():std.UInt return this._fcn;
    function set__fcn(v:std.UInt):std.UInt {
        this._fcn = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?_pk:std.UInt, ?_fcn:std.UInt) this = new stdgo._internal.runtime.coverage.Coverage_T_pkfunc.T_pkfunc((_pk : stdgo.GoUInt32), (_fcn : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

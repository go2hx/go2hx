package stdgo._internal.regexp;
@:structInit @:using(stdgo._internal.regexp.Regexp_t_job_static_extension.T_job_static_extension) class T_job {
    public var _pc : stdgo.GoUInt32 = 0;
    public var _arg : Bool = false;
    public var _pos : stdgo.GoInt = 0;
    public function new(?_pc:stdgo.GoUInt32, ?_arg:Bool, ?_pos:stdgo.GoInt) {
        if (_pc != null) this._pc = _pc;
        if (_arg != null) this._arg = _arg;
        if (_pos != null) this._pos = _pos;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_job(_pc, _arg, _pos);
    }
}

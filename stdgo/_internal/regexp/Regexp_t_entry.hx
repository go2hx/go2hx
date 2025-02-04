package stdgo._internal.regexp;
@:structInit @:using(stdgo._internal.regexp.Regexp_t_entry_static_extension.T_entry_static_extension) class T_entry {
    public var _pc : stdgo.GoUInt32 = 0;
    public var _t : stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>);
    public function new(?_pc:stdgo.GoUInt32, ?_t:stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>) {
        if (_pc != null) this._pc = _pc;
        if (_t != null) this._t = _t;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_entry(_pc, _t);
    }
}

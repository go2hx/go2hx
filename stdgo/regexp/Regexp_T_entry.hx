package stdgo.regexp;
@:structInit @:using(stdgo.regexp.Regexp.T_entry_static_extension) abstract T_entry(stdgo._internal.regexp.Regexp_T_entry.T_entry) from stdgo._internal.regexp.Regexp_T_entry.T_entry to stdgo._internal.regexp.Regexp_T_entry.T_entry {
    public var _pc(get, set) : std.UInt;
    function get__pc():std.UInt return this._pc;
    function set__pc(v:std.UInt):std.UInt {
        this._pc = (v : stdgo.GoUInt32);
        return v;
    }
    public var _t(get, set) : T_thread;
    function get__t():T_thread return this._t;
    function set__t(v:T_thread):T_thread {
        this._t = (v : stdgo.Ref<stdgo._internal.regexp.Regexp_T_thread.T_thread>);
        return v;
    }
    public function new(?_pc:std.UInt, ?_t:T_thread) this = new stdgo._internal.regexp.Regexp_T_entry.T_entry((_pc : stdgo.GoUInt32), (_t : stdgo.Ref<stdgo._internal.regexp.Regexp_T_thread.T_thread>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

package stdgo.runtime.pprof;
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_label_static_extension) abstract T_label(stdgo._internal.runtime.pprof.Pprof_T_label.T_label) from stdgo._internal.runtime.pprof.Pprof_T_label.T_label to stdgo._internal.runtime.pprof.Pprof_T_label.T_label {
    public var _key(get, set) : String;
    function get__key():String return this._key;
    function set__key(v:String):String {
        this._key = (v : stdgo.GoString);
        return v;
    }
    public var _value(get, set) : String;
    function get__value():String return this._value;
    function set__value(v:String):String {
        this._value = (v : stdgo.GoString);
        return v;
    }
    public function new(?_key:String, ?_value:String) this = new stdgo._internal.runtime.pprof.Pprof_T_label.T_label((_key : stdgo.GoString), (_value : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

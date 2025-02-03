package stdgo.expvar;
@:structInit @:using(stdgo.expvar.Expvar.KeyValue_static_extension) abstract KeyValue(stdgo._internal.expvar.Expvar_KeyValue.KeyValue) from stdgo._internal.expvar.Expvar_KeyValue.KeyValue to stdgo._internal.expvar.Expvar_KeyValue.KeyValue {
    public var key(get, set) : String;
    function get_key():String return this.key;
    function set_key(v:String):String {
        this.key = (v : stdgo.GoString);
        return v;
    }
    public var value(get, set) : Var;
    function get_value():Var return this.value;
    function set_value(v:Var):Var {
        this.value = v;
        return v;
    }
    public function new(?key:String, ?value:Var) this = new stdgo._internal.expvar.Expvar_KeyValue.KeyValue((key : stdgo.GoString), value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

package stdgo._internal.expvar;
@:structInit @:using(stdgo._internal.expvar.Expvar_keyvalue_static_extension.KeyValue_static_extension) class KeyValue {
    public var key : stdgo.GoString = "";
    public var value : stdgo._internal.expvar.Expvar_var.Var = (null : stdgo._internal.expvar.Expvar_var.Var);
    public function new(?key:stdgo.GoString, ?value:stdgo._internal.expvar.Expvar_var.Var) {
        if (key != null) this.key = key;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new KeyValue(key, value);
    }
}

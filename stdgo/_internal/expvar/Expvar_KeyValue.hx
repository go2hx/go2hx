package stdgo._internal.expvar;
@:structInit class KeyValue {
    public var key : stdgo.GoString = "";
    public var value : stdgo._internal.expvar.Expvar_Var.Var = (null : stdgo._internal.expvar.Expvar_Var.Var);
    public function new(?key:stdgo.GoString, ?value:stdgo._internal.expvar.Expvar_Var.Var) {
        if (key != null) this.key = key;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new KeyValue(key, value);
    }
}

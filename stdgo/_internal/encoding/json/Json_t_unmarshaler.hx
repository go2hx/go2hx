package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_unmarshaler_static_extension.T_unmarshaler_static_extension) class T_unmarshaler {
    public var t : Bool = false;
    public function new(?t:Bool) {
        if (t != null) this.t = t;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_unmarshaler(t);
    }
}

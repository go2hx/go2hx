package stdgo._internal.encoding.json;
@:structInit class T_ustruct {
    public var m : stdgo._internal.encoding.json.Json_T_unmarshaler.T_unmarshaler = ({} : stdgo._internal.encoding.json.Json_T_unmarshaler.T_unmarshaler);
    public function new(?m:stdgo._internal.encoding.json.Json_T_unmarshaler.T_unmarshaler) {
        if (m != null) this.m = m;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ustruct(m);
    }
}

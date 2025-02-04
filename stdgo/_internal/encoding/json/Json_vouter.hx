package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_vouter_static_extension.VOuter_static_extension) class VOuter {
    public var v : stdgo._internal.encoding.json.Json_v.V = ({} : stdgo._internal.encoding.json.Json_v.V);
    public function new(?v:stdgo._internal.encoding.json.Json_v.V) {
        if (v != null) this.v = v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new VOuter(v);
    }
}

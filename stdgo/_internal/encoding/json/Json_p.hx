package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_p_static_extension.P_static_extension) class P {
    public var pP : stdgo._internal.encoding.json.Json_pp.PP = ({} : stdgo._internal.encoding.json.Json_pp.PP);
    public function new(?pP:stdgo._internal.encoding.json.Json_pp.PP) {
        if (pP != null) this.pP = pP;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new P(pP);
    }
}

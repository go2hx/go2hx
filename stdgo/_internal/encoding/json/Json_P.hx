package stdgo._internal.encoding.json;
@:structInit class P {
    public var pP : stdgo._internal.encoding.json.Json_PP.PP = ({} : stdgo._internal.encoding.json.Json_PP.PP);
    public function new(?pP:stdgo._internal.encoding.json.Json_PP.PP) {
        if (pP != null) this.pP = pP;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new P(pP);
    }
}

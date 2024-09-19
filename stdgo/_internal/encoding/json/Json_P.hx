package stdgo._internal.encoding.json;
@:structInit class P {
    public var pp : stdgo._internal.encoding.json.Json_PP.PP = ({} : stdgo._internal.encoding.json.Json_PP.PP);
    public function new(?pp:stdgo._internal.encoding.json.Json_PP.PP) {
        if (pp != null) this.pp = pp;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new P(pp);
    }
}

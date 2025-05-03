package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.Delim_asInterface) class Delim_static_extension {
    @:keep
    @:tdfield
    static public function string( _d:stdgo._internal.encoding.json.Json_delim.Delim):stdgo.GoString {
        @:recv var _d:stdgo._internal.encoding.json.Json_delim.Delim = _d;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L353"
        return (_d : stdgo.GoString)?.__copy__();
    }
}

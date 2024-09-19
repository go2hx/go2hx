package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.Delim_asInterface) class Delim_static_extension {
    @:keep
    static public function string( _d:stdgo._internal.encoding.json.Json_Delim.Delim):stdgo.GoString {
        @:recv var _d:stdgo._internal.encoding.json.Json_Delim.Delim = _d;
        return (_d : stdgo.GoString)?.__copy__();
    }
}

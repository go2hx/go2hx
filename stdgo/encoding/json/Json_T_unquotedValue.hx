package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_unquotedValue_static_extension) abstract T_unquotedValue(stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue) from stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue to stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue {
    public function new() this = new stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

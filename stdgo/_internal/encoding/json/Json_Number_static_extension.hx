package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.Number_asInterface) class Number_static_extension {
    @:keep
    static public function int64( _n:stdgo._internal.encoding.json.Json_Number.Number):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _n:stdgo._internal.encoding.json.Json_Number.Number = _n;
        return stdgo._internal.strconv.Strconv_parseInt.parseInt((_n : stdgo.GoString)?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt));
    }
    @:keep
    static public function float64( _n:stdgo._internal.encoding.json.Json_Number.Number):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.Error; } {
        @:recv var _n:stdgo._internal.encoding.json.Json_Number.Number = _n;
        return stdgo._internal.strconv.Strconv_parseFloat.parseFloat((_n : stdgo.GoString)?.__copy__(), (64 : stdgo.GoInt));
    }
    @:keep
    static public function string( _n:stdgo._internal.encoding.json.Json_Number.Number):stdgo.GoString {
        @:recv var _n:stdgo._internal.encoding.json.Json_Number.Number = _n;
        return (_n : stdgo.GoString)?.__copy__();
    }
}
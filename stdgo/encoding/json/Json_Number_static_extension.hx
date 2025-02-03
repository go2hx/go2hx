package stdgo.encoding.json;
class Number_static_extension {
    static public function int64(_n:Number):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_Number_static_extension.Number_static_extension.int64(_n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function float64(_n:Number):stdgo.Tuple<StdTypes.Float, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_Number_static_extension.Number_static_extension.float64(_n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function string(_n:Number):String {
        return stdgo._internal.encoding.json.Json_Number_static_extension.Number_static_extension.string(_n);
    }
}

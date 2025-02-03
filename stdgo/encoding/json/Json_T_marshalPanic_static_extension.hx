package stdgo.encoding.json;
class T_marshalPanic_static_extension {
    static public function marshalJSON(_:T_marshalPanic):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_marshalPanic_static_extension.T_marshalPanic_static_extension.marshalJSON(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}

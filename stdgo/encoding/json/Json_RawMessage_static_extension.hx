package stdgo.encoding.json;
class RawMessage_static_extension {
    static public function unmarshalJSON(_m:RawMessage, _data:Array<std.UInt>):stdgo.Error {
        final _m = (_m : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_RawMessage_static_extension.RawMessage_static_extension.unmarshalJSON(_m, _data);
    }
    static public function marshalJSON(_m:RawMessage):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_RawMessage_static_extension.RawMessage_static_extension.marshalJSON(_m);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}

package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_nilJSONMarshaler_asInterface) class T_nilJSONMarshaler_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function marshalJSON( _nm:stdgo.Pointer<stdgo._internal.encoding.json.Json_t_niljsonmarshaler.T_nilJSONMarshaler>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L571"
        if (_nm == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L572"
            return stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(("0zenil0" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L574"
        return stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface((("zenil:" : stdgo.GoString) + (_nm.value : stdgo.GoString)?.__copy__() : stdgo.GoString)));
    }
}

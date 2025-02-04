package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_nilJSONMarshaler_asInterface) class T_nilJSONMarshaler_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function marshalJSON( _nm:stdgo.Pointer<stdgo._internal.encoding.json.Json_t_niljsonmarshaler.T_nilJSONMarshaler>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        if (_nm == null) {
            return stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(("0zenil0" : stdgo.GoString)));
        };
        return stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface((("zenil:" : stdgo.GoString) + (_nm.value : stdgo.GoString)?.__copy__() : stdgo.GoString)));
    }
}

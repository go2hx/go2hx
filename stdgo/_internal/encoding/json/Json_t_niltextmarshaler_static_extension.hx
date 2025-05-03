package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_nilTextMarshaler_asInterface) class T_nilTextMarshaler_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function marshalText( _nm:stdgo.Pointer<stdgo._internal.encoding.json.Json_t_niltextmarshaler.T_nilTextMarshaler>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L583"
        if (_nm == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L584"
            return { _0 : ((("0zenil0" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L586"
        return { _0 : ((("zenil:" : stdgo.GoString) + (_nm.value : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}

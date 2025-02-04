package stdgo._internal.encoding.json;
function testRefValMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _s = ({ r0 : (12 : stdgo._internal.encoding.json.Json_ref.Ref), r1 : stdgo.Go.pointer(((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_ref.Ref)), r2 : (14 : stdgo._internal.encoding.json.Json_reftext.RefText), r3 : stdgo.Go.pointer(((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_reftext.RefText)), v0 : (13 : stdgo._internal.encoding.json.Json_val.Val), v1 : stdgo.Go.pointer(((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_val.Val)), v2 : (15 : stdgo._internal.encoding.json.Json_valtext.ValText), v3 : stdgo.Go.pointer(((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_valtext.ValText)) } : stdgo._internal.encoding.json.Json_t__struct_22.T__struct_22);
        {};
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.encoding.json.Json_t__struct_22.T__struct_22>)))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("Marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var _got = ((_b : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (("{\"R0\":\"ref\",\"R1\":\"ref\",\"R2\":\"\\\"ref\\\"\",\"R3\":\"\\\"ref\\\"\",\"V0\":\"val\",\"V1\":\"val\",\"V2\":\"\\\"val\\\"\",\"V3\":\"\\\"val\\\"\"}" : stdgo.GoString))) {
                @:check2r _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("{\"R0\":\"ref\",\"R1\":\"ref\",\"R2\":\"\\\"ref\\\"\",\"R3\":\"\\\"ref\\\"\",\"V0\":\"val\",\"V1\":\"val\",\"V2\":\"\\\"val\\\"\",\"V3\":\"\\\"val\\\"\"}" : stdgo.GoString)));
            };
        };
    }

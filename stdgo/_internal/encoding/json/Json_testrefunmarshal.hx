package stdgo._internal.encoding.json;
function testRefUnmarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _want = ({ r0 : (12 : stdgo._internal.encoding.json.Json_ref.Ref), r1 : stdgo.Go.pointer(((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_ref.Ref)), r2 : (13 : stdgo._internal.encoding.json.Json_reftext.RefText), r3 : stdgo.Go.pointer(((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_reftext.RefText)) } : stdgo._internal.encoding.json.Json_t_testrefunmarshal___localname___s_40168.T_testRefUnmarshal___localname___S_40168);
        _want.r1.value = (12 : stdgo._internal.encoding.json.Json_ref.Ref);
        _want.r3.value = (13 : stdgo._internal.encoding.json.Json_reftext.RefText);
        var _got:stdgo._internal.encoding.json.Json_t_testrefunmarshal___localname___s_40168.T_testRefUnmarshal___localname___S_40168 = ({} : stdgo._internal.encoding.json.Json_t_testrefunmarshal___localname___s_40168.T_testRefUnmarshal___localname___S_40168);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1658"
        {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(((("{\"R0\":\"ref\",\"R1\":\"ref\",\"R2\":\"ref\",\"R3\":\"ref\"}" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_got) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testrefunmarshal___localname___s_40168.T_testRefUnmarshal___localname___S_40168>)))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1659"
                _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1661"
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1662"
            _t.errorf(("got %+v, want %+v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
        };
    }

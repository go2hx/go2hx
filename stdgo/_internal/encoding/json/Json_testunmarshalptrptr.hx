package stdgo._internal.encoding.json;
function testUnmarshalPtrPtr(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _xint:stdgo._internal.encoding.json.Json_xint.Xint = ({} : stdgo._internal.encoding.json.Json_xint.Xint);
        var _pxint = (stdgo.Go.setRef(_xint) : stdgo.Ref<stdgo._internal.encoding.json.Json_xint.Xint>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1263"
        {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(((("{\"X\":1}" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface(stdgo.Go.pointer(_pxint))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1264"
                _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1266"
        if (_xint.x != ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1267"
            _t.fatalf(("Did not write to xint" : stdgo.GoString));
        };
    }

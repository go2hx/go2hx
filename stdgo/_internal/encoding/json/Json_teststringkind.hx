package stdgo._internal.encoding.json;
function testStringKind(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _m1:stdgo.GoMap<stdgo._internal.encoding.json.Json_t_teststringkind___localname___stringkind_47067.T_testStringKind___localname___stringKind_47067, stdgo.GoInt> = (null : stdgo.GoMap<stdgo._internal.encoding.json.Json_t_teststringkind___localname___stringkind_47067.T_testStringKind___localname___stringKind_47067, stdgo.GoInt>), _m2:stdgo.GoMap<stdgo._internal.encoding.json.Json_t_teststringkind___localname___stringkind_47067.T_testStringKind___localname___stringKind_47067, stdgo.GoInt> = (null : stdgo.GoMap<stdgo._internal.encoding.json.Json_t_teststringkind___localname___stringkind_47067.T_testStringKind___localname___stringKind_47067, stdgo.GoInt>);
        _m1 = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set((("foo" : stdgo.GoString) : stdgo._internal.encoding.json.Json_t_teststringkind___localname___stringkind_47067.T_testStringKind___localname___stringKind_47067), (42 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo._internal.encoding.json.Json_t_teststringkind___localname___stringkind_47067.T_testStringKind___localname___stringKind_47067, stdgo.GoInt>);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_m1)), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1934"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1935"
            _t.errorf(("Unexpected error marshaling: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _err = stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_data, stdgo.Go.toInterface((stdgo.Go.setRef(_m2) : stdgo.Ref<stdgo.GoMap<stdgo._internal.encoding.json.Json_t_teststringkind___localname___stringkind_47067.T_testStringKind___localname___stringKind_47067, stdgo.GoInt>>)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1939"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1940"
            _t.errorf(("Unexpected error unmarshaling: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1943"
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_m1), stdgo.Go.toInterface(_m2))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1944"
            _t.error(stdgo.Go.toInterface(("Items should be equal after encoding and then decoding" : stdgo.GoString)));
        };
    }

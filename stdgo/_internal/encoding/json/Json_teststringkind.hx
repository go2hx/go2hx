package stdgo._internal.encoding.json;
function testStringKind(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var __0:stdgo.GoMap<stdgo._internal.encoding.json.Json_t_teststringkind___localname___stringkind_47067.T_testStringKind___localname___stringKind_47067, stdgo.GoInt> = (null : stdgo.GoMap<stdgo._internal.encoding.json.Json_t_teststringkind___localname___stringkind_47067.T_testStringKind___localname___stringKind_47067, stdgo.GoInt>), __1:stdgo.GoMap<stdgo._internal.encoding.json.Json_t_teststringkind___localname___stringkind_47067.T_testStringKind___localname___stringKind_47067, stdgo.GoInt> = (null : stdgo.GoMap<stdgo._internal.encoding.json.Json_t_teststringkind___localname___stringkind_47067.T_testStringKind___localname___stringKind_47067, stdgo.GoInt>);
var _m2 = __1, _m1 = __0;
        _m1 = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set((("foo" : stdgo.GoString) : stdgo._internal.encoding.json.Json_t_teststringkind___localname___stringkind_47067.T_testStringKind___localname___stringKind_47067), (42 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo._internal.encoding.json.Json_t_teststringkind___localname___stringkind_47067.T_testStringKind___localname___stringKind_47067, stdgo.GoInt>);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_m1)), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.errorf(("Unexpected error marshaling: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _err = stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_data, stdgo.Go.toInterface((stdgo.Go.setRef(_m2) : stdgo.Ref<stdgo.GoMap<stdgo._internal.encoding.json.Json_t_teststringkind___localname___stringkind_47067.T_testStringKind___localname___stringKind_47067, stdgo.GoInt>>)));
        if (_err != null) {
            @:check2r _t.errorf(("Unexpected error unmarshaling: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_m1), stdgo.Go.toInterface(_m2))) {
            @:check2r _t.error(stdgo.Go.toInterface(("Items should be equal after encoding and then decoding" : stdgo.GoString)));
        };
    }

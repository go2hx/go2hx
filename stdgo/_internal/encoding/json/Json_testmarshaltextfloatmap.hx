package stdgo._internal.encoding.json;
function testMarshalTextFloatMap(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoFloat64Map<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set((stdgo._internal.math.Math_nan.naN() : stdgo._internal.encoding.json.Json_t_textfloat.T_textfloat), ("1" : stdgo.GoString));
x.set((stdgo._internal.math.Math_nan.naN() : stdgo._internal.encoding.json.Json_t_textfloat.T_textfloat), ("1" : stdgo.GoString));
            x;
        } : stdgo.GoMap<stdgo._internal.encoding.json.Json_t_textfloat.T_textfloat, stdgo.GoString>);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_m)), _got:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L255"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L256"
            _t.errorf(("Marshal() error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _want = (("{\"TF:NaN\":\"1\",\"TF:NaN\":\"1\"}" : stdgo.GoString) : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L259"
        if ((_got : stdgo.GoString) != (_want)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L260"
            _t.errorf(("Marshal() = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }

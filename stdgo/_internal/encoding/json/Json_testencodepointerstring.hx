package stdgo._internal.encoding.json;
function testEncodePointerString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _n:stdgo.GoInt64 = (42i64 : stdgo.GoInt64), _n__pointer__ = stdgo.Go.pointer(_n);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(({ n : _n__pointer__ } : stdgo._internal.encoding.json.Json_t_testencodepointerstring___localname___stringpointer_16452.T_testEncodePointerString___localname___stringPointer_16452)))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L767"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L768"
            _t.fatalf(("Marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L770"
        {
            var __0 = ((_b : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = (("{\"n\":\"42\"}" : stdgo.GoString) : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L771"
                _t.errorf(("Marshal = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        var _back:stdgo._internal.encoding.json.Json_t_testencodepointerstring___localname___stringpointer_16452.T_testEncodePointerString___localname___stringPointer_16452 = ({} : stdgo._internal.encoding.json.Json_t_testencodepointerstring___localname___stringpointer_16452.T_testEncodePointerString___localname___stringPointer_16452);
        _err = stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_b, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_back) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testencodepointerstring___localname___stringpointer_16452.T_testEncodePointerString___localname___stringPointer_16452>))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L775"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L776"
            _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L778"
        if (_back.n == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L779"
            _t.fatalf(("Unmarshaled nil N field" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L781"
        if (_back.n.value != ((42i64 : stdgo.GoInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L782"
            _t.fatalf(("*N = %d; want 42" : stdgo.GoString), stdgo.Go.toInterface(_back.n.value));
        };
    }

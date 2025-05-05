package stdgo._internal.encoding.json;
function testEncodeString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L825"
        for (__4 => _tt in stdgo._internal.encoding.json.Json__encodestringtests._encodeStringTests) {
            var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_tt._in)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L827"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L828"
                _t.errorf(("Marshal(%q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L829"
                continue;
            };
            var _out = ((_b : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L832"
            if (_out != (_tt._out)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L833"
                _t.errorf(("Marshal(%q) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
            };
        };
    }

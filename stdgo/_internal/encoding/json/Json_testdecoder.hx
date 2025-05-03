package stdgo._internal.encoding.json;
function testDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L211"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i <= (stdgo._internal.encoding.json.Json__streamtest._streamTest.length) : Bool)) {
                var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
//"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L218"
                for (__4 => _c in stdgo._internal.encoding.json.Json__nlines._nlines(stdgo._internal.encoding.json.Json__streamencoded._streamEncoded?.__copy__(), _i)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L219"
                    if (_c != ((10 : stdgo.GoInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L220"
                        _buf.writeRune(_c);
                    };
                };
var _out = (new stdgo.Slice<stdgo.AnyInterface>((_i : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>);
var _dec = stdgo._internal.encoding.json.Json_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
//"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L225"
                for (_j => _ in _out) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L226"
                    {
                        var _err = (_dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_out[(_j : stdgo.GoInt)]) : stdgo.Ref<stdgo.AnyInterface>))) : stdgo.Error);
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L227"
                            _t.fatalf(("decode #%d/%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                        };
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L230"
                if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_out), stdgo.Go.toInterface((stdgo._internal.encoding.json.Json__streamtest._streamTest.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.AnyInterface>)))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L231"
                    _t.errorf(("decoding %d items: mismatch" : stdgo.GoString), stdgo.Go.toInterface(_i));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L232"
                    for (_j => _ in _out) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L233"
                        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(_out[(_j : stdgo.GoInt)], stdgo._internal.encoding.json.Json__streamtest._streamTest[(_j : stdgo.GoInt)])) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L234"
                            _t.errorf(("#%d: have %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_j), _out[(_j : stdgo.GoInt)], stdgo._internal.encoding.json.Json__streamtest._streamTest[(_j : stdgo.GoInt)]);
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L237"
                    break;
                };
                _i++;
            };
        };
    }

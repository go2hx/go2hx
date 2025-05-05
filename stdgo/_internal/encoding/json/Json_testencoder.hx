package stdgo._internal.encoding.json;
function testEncoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L44"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i <= (stdgo._internal.encoding.json.Json__streamtest._streamTest.length) : Bool)) {
                var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
var _enc = stdgo._internal.encoding.json.Json_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)));
//"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L48"
                _enc.setIndent((">" : stdgo.GoString), ("." : stdgo.GoString));
//"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L49"
                _enc.setIndent((stdgo.Go.str() : stdgo.GoString).__copy__(), (stdgo.Go.str() : stdgo.GoString).__copy__());
//"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L50"
                for (_j => _v in (stdgo._internal.encoding.json.Json__streamtest._streamTest.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.AnyInterface>)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L51"
                    {
                        var _err = (_enc.encode(_v) : stdgo.Error);
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L52"
                            _t.fatalf(("encode #%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_err));
                        };
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L55"
                {
                    var __0 = ((_buf.string() : stdgo.GoString).__copy__() : stdgo.GoString), __1 = (stdgo._internal.encoding.json.Json__nlines._nlines(stdgo._internal.encoding.json.Json__streamencoded._streamEncoded.__copy__(), _i).__copy__() : stdgo.GoString);
var _want = __1, _have = __0;
                    if (_have != (_want)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L56"
                        _t.errorf(("encoding %d items: mismatch" : stdgo.GoString), stdgo.Go.toInterface(_i));
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L57"
                        stdgo._internal.encoding.json.Json__diff._diff(_t, (_have : stdgo.Slice<stdgo.GoUInt8>), (_want : stdgo.Slice<stdgo.GoUInt8>));
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L58"
                        break;
                    };
                };
                _i++;
            };
        };
    }

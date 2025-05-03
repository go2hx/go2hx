package stdgo._internal.encoding.json;
function testEncoderIndent(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var _enc = stdgo._internal.encoding.json.Json_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L120"
        _enc.setIndent((">" : stdgo.GoString), ("." : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L121"
        for (__4 => _v in stdgo._internal.encoding.json.Json__streamtest._streamTest) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L122"
            _enc.encode(_v);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L124"
        {
            var __0 = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = (stdgo._internal.encoding.json.Json__streamencodedindent._streamEncodedIndent?.__copy__() : stdgo.GoString);
var _want = __1, _have = __0;
            if (_have != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L125"
                _t.error(stdgo.Go.toInterface(("indented encoding mismatch" : stdgo.GoString)));
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L126"
                stdgo._internal.encoding.json.Json__diff._diff(_t, (_have : stdgo.Slice<stdgo.GoUInt8>), (_want : stdgo.Slice<stdgo.GoUInt8>));
            };
        };
    }

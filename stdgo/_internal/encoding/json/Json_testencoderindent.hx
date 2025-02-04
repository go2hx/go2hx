package stdgo._internal.encoding.json;
function testEncoderIndent(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var _enc = stdgo._internal.encoding.json.Json_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)));
        @:check2r _enc.setIndent((">" : stdgo.GoString), ("." : stdgo.GoString));
        for (__4 => _v in stdgo._internal.encoding.json.Json__streamtest._streamTest) {
            @:check2r _enc.encode(_v);
        };
        {
            var __0 = ((@:check2 _buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = (stdgo._internal.encoding.json.Json__streamencodedindent._streamEncodedIndent?.__copy__() : stdgo.GoString);
var _want = __1, _have = __0;
            if (_have != (_want)) {
                @:check2r _t.error(stdgo.Go.toInterface(("indented encoding mismatch" : stdgo.GoString)));
                stdgo._internal.encoding.json.Json__diff._diff(_t, (_have : stdgo.Slice<stdgo.GoUInt8>), (_want : stdgo.Slice<stdgo.GoUInt8>));
            };
        };
    }

package stdgo._internal.encoding.json;
function testEncoderIndent(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        var _enc = stdgo._internal.encoding.json.Json_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)));
        _enc.setIndent((">" : stdgo.GoString), ("." : stdgo.GoString));
        for (__8 => _v in stdgo._internal.encoding.json.Json__streamTest._streamTest) {
            _enc.encode(_v);
        };
        {
            var __0 = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = (stdgo._internal.encoding.json.Json__streamEncodedIndent._streamEncodedIndent?.__copy__() : stdgo.GoString);
var _want = __1, _have = __0;
            if (_have != (_want)) {
                _t.error(stdgo.Go.toInterface(("indented encoding mismatch" : stdgo.GoString)));
                stdgo._internal.encoding.json.Json__diff._diff(_t, (_have : stdgo.Slice<stdgo.GoUInt8>), (_want : stdgo.Slice<stdgo.GoUInt8>));
            };
        };
    }

package stdgo._internal.encoding.json;
function testEncoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (stdgo._internal.encoding.json.Json__streamTest._streamTest.length) : Bool), _i++, {
                var _buf:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
                var _enc = stdgo._internal.encoding.json.Json_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)));
                _enc.setIndent((">" : stdgo.GoString), ("." : stdgo.GoString));
                _enc.setIndent(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__());
                for (_j => _v in (stdgo._internal.encoding.json.Json__streamTest._streamTest.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.AnyInterface>)) {
                    {
                        var _err = (_enc.encode(_v) : stdgo.Error);
                        if (_err != null) {
                            _t.fatalf(("encode #%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_err));
                        };
                    };
                };
                {
                    var __0 = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = (stdgo._internal.encoding.json.Json__nlines._nlines(stdgo._internal.encoding.json.Json__streamEncoded._streamEncoded?.__copy__(), _i)?.__copy__() : stdgo.GoString);
var _want = __1, _have = __0;
                    if (_have != (_want)) {
                        _t.errorf(("encoding %d items: mismatch" : stdgo.GoString), stdgo.Go.toInterface(_i));
                        stdgo._internal.encoding.json.Json__diff._diff(_t, (_have : stdgo.Slice<stdgo.GoUInt8>), (_want : stdgo.Slice<stdgo.GoUInt8>));
                        break;
                    };
                };
            });
        };
    }

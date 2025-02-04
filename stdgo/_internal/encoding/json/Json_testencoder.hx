package stdgo._internal.encoding.json;
function testEncoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i <= (stdgo._internal.encoding.json.Json__streamtest._streamTest.length) : Bool)) {
                var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
var _enc = stdgo._internal.encoding.json.Json_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)));
@:check2r _enc.setIndent((">" : stdgo.GoString), ("." : stdgo.GoString));
@:check2r _enc.setIndent((stdgo.Go.str() : stdgo.GoString).__copy__(), (stdgo.Go.str() : stdgo.GoString).__copy__());
for (_j => _v in (stdgo._internal.encoding.json.Json__streamtest._streamTest.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.AnyInterface>)) {
                    {
                        var _err = (@:check2r _enc.encode(_v) : stdgo.Error);
                        if (_err != null) {
                            @:check2r _t.fatalf(("encode #%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_err));
                        };
                    };
                };
{
                    var __0 = ((@:check2 _buf.string() : stdgo.GoString).__copy__() : stdgo.GoString), __1 = (stdgo._internal.encoding.json.Json__nlines._nlines(stdgo._internal.encoding.json.Json__streamencoded._streamEncoded.__copy__(), _i).__copy__() : stdgo.GoString);
var _want = __1, _have = __0;
                    if (_have != (_want)) {
                        @:check2r _t.errorf(("encoding %d items: mismatch" : stdgo.GoString), stdgo.Go.toInterface(_i));
                        stdgo._internal.encoding.json.Json__diff._diff(_t, (_have : stdgo.Slice<stdgo.GoUInt8>), (_want : stdgo.Slice<stdgo.GoUInt8>));
                        break;
                    };
                };
                _i++;
            };
        };
    }

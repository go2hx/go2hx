package stdgo._internal.encoding.json;
function testDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i <= (stdgo._internal.encoding.json.Json__streamTest._streamTest.length) : Bool)) {
                var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
for (__4 => _c in stdgo._internal.encoding.json.Json__nlines._nlines(stdgo._internal.encoding.json.Json__streamEncoded._streamEncoded?.__copy__(), _i)) {
                    if (_c != ((10 : stdgo.GoInt32))) {
                        _buf.writeRune(_c);
                    };
                };
var _out = (new stdgo.Slice<stdgo.AnyInterface>((_i : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>);
var _dec = stdgo._internal.encoding.json.Json_newDecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
for (_j => _ in _out) {
                    {
                        var _err = (_dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_out[(_j : stdgo.GoInt)]) : stdgo.Ref<stdgo.AnyInterface>))) : stdgo.Error);
                        if (_err != null) {
                            _t.fatalf(("decode #%d/%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                        };
                    };
                };
if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_out), stdgo.Go.toInterface((stdgo._internal.encoding.json.Json__streamTest._streamTest.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.AnyInterface>)))) {
                    _t.errorf(("decoding %d items: mismatch" : stdgo.GoString), stdgo.Go.toInterface(_i));
                    for (_j => _ in _out) {
                        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_out[(_j : stdgo.GoInt)], stdgo._internal.encoding.json.Json__streamTest._streamTest[(_j : stdgo.GoInt)])) {
                            _t.errorf(("#%d: have %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_j), _out[(_j : stdgo.GoInt)], stdgo._internal.encoding.json.Json__streamTest._streamTest[(_j : stdgo.GoInt)]);
                        };
                    };
                    break;
                };
                _i++;
            };
        };
    }

package stdgo._internal.encoding.base64;
function benchmarkDecodeString(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _sizes = (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(2 : stdgo.GoInt), (4 : stdgo.GoInt), (8 : stdgo.GoInt), (64 : stdgo.GoInt), (8192 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _benchFunc = function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _benchSize:stdgo.GoInt):Void {
            var _data = (stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding.encodeToString((new stdgo.Slice<stdgo.GoUInt8>((_benchSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString);
            _b.setBytes((_data.length : stdgo.GoInt64));
            _b.resetTimer();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding.decodeString(_data?.__copy__());
                });
            };
        };
        for (__0 => _size in _sizes) {
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_size))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                _benchFunc(_b, _size);
            });
        };
    }
package stdgo._internal.encoding.base64;
function benchmarkDecodeString(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _sizes = (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(2 : stdgo.GoInt), (4 : stdgo.GoInt), (8 : stdgo.GoInt), (64 : stdgo.GoInt), (8192 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _benchFunc = function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _benchSize:stdgo.GoInt):Void {
            var _data = (@:check2r stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding.encodeToString((new stdgo.Slice<stdgo.GoUInt8>((_benchSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString);
            @:check2r _b.setBytes((_data.length : stdgo.GoInt64));
            @:check2r _b.resetTimer();
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    @:check2r stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding.decodeString(_data.__copy__());
                    _i++;
                };
            };
        };
        for (__0 => _size in _sizes) {
            @:check2r _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_size))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                _benchFunc(_b, _size);
            });
        };
    }

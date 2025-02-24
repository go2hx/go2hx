package stdgo._internal.encoding.base32;
function benchmarkDecode(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _data = (new stdgo.Slice<stdgo.GoUInt8>((@:check2r stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding.encodedLen((8192 : stdgo.GoInt)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        @:check2r stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding.encode(_data, (new stdgo.Slice<stdgo.GoUInt8>((8192 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((8192 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        @:check2r _b.setBytes((_data.length : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding.decode(_buf, _data);
                _i++;
            };
        };
    }

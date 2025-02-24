package stdgo._internal.encoding.base32;
function testDecodeWithWrongPadding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _encoded = (@:check2r stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding.encodeToString(((("foobar" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString);
        var __tmp__ = @:check2r (@:checkr stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding ?? throw "null pointer dereference").withPadding((45 : stdgo.GoInt32)).decodeString(_encoded?.__copy__()), __0:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            @:check2r _t.error(stdgo.Go.toInterface(("expected error" : stdgo.GoString)));
        };
        {
            var __tmp__ = @:check2r (@:checkr stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding ?? throw "null pointer dereference").withPadding((-1 : stdgo.GoInt32)).decodeString(_encoded?.__copy__());
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err == null) {
            @:check2r _t.error(stdgo.Go.toInterface(("expected error" : stdgo.GoString)));
        };
    }

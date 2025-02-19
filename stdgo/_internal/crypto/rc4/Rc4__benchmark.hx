package stdgo._internal.crypto.rc4;
function _benchmark(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _size:stdgo.GoInt64):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.crypto.rc4.Rc4_newcipher.newCipher(stdgo._internal.crypto.rc4.Rc4__golden._golden[(0 : stdgo.GoInt)]._key), _c:stdgo.Ref<stdgo._internal.crypto.rc4.Rc4_cipher.Cipher> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        @:check2r _b.setBytes(_size);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r _c.xORKeyStream(_buf, _buf);
                _i++;
            };
        };
    }

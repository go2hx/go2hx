package stdgo._internal.crypto.des;
function testDESDecryptBlock(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_i => _tt in stdgo._internal.crypto.des.Des__encryptdestests._encryptDESTests) {
            var _c = stdgo._internal.crypto.des.Des__newcipher._newCipher(_tt._key);
            var _plain = (new stdgo.Slice<stdgo.GoUInt8>((_tt._in.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            stdgo._internal.crypto.des.Des__decryptblock._decryptBlock(((@:checkr _c ?? throw "null pointer dereference")._subkeys.__slice__(0) : stdgo.Slice<stdgo.GoUInt64>), _plain, _tt._out);
            if (!stdgo._internal.bytes.Bytes_equal.equal(_plain, _tt._in)) {
                @:check2r _t.errorf(("#%d: result: %x want: %x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_plain), stdgo.Go.toInterface(_tt._in));
            };
        };
    }

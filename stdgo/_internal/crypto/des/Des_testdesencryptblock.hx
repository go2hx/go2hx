package stdgo._internal.crypto.des;
function testDESEncryptBlock(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/crypto/des/des_test.go#L1315"
        for (_i => _tt in stdgo._internal.crypto.des.Des__encryptdestests._encryptDESTests) {
            var _c = stdgo._internal.crypto.des.Des__newcipher._newCipher(_tt._key);
            var _out = (new stdgo.Slice<stdgo.GoUInt8>((_tt._in.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/crypto/des/des_test.go#L1318"
            stdgo._internal.crypto.des.Des__encryptblock._encryptBlock(((@:checkr _c ?? throw "null pointer dereference")._subkeys.__slice__(0) : stdgo.Slice<stdgo.GoUInt64>), _out, _tt._in);
            //"file:///home/runner/.go/go1.21.3/src/crypto/des/des_test.go#L1320"
            if (!stdgo._internal.bytes.Bytes_equal.equal(_out, _tt._out)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/des/des_test.go#L1321"
                _t.errorf(("#%d: result: %x want: %x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
            };
        };
    }

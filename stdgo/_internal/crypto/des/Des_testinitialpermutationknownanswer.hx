package stdgo._internal.crypto.des;
function testInitialPermutationKnownAnswer(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/crypto/des/des_test.go#L1411"
        for (_i => _tt in stdgo._internal.crypto.des.Des__tablea1tests._tableA1Tests) {
            var __tmp__ = stdgo._internal.crypto.des.Des_newtripledescipher.newTripleDESCipher(stdgo._internal.crypto.des.Des__tablea1key._tableA1Key), _c:stdgo._internal.crypto.cipher.Cipher_block.Block = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            var _out = (new stdgo.Slice<stdgo.GoUInt8>((_tt._in.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/crypto/des/des_test.go#L1415"
            _c.decrypt(_out, _tt._in);
            //"file:///home/runner/.go/go1.21.3/src/crypto/des/des_test.go#L1417"
            if (!stdgo._internal.bytes.Bytes_equal.equal(_out, _tt._out)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/des/des_test.go#L1418"
                _t.errorf(("#%d: result: %x want: %x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
            };
        };
    }

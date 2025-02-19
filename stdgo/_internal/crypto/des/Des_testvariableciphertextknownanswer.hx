package stdgo._internal.crypto.des;
function testVariableCiphertextKnownAnswer(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_i => _tt in stdgo._internal.crypto.des.Des__tablea1tests._tableA1Tests) {
            var __tmp__ = stdgo._internal.crypto.des.Des_newtripledescipher.newTripleDESCipher(stdgo._internal.crypto.des.Des__tablea1key._tableA1Key), _c:stdgo._internal.crypto.cipher.Cipher_block.Block = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            var _plain = (new stdgo.Slice<stdgo.GoUInt8>((_tt._out.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _c.decrypt(_plain, _tt._out);
            if (!stdgo._internal.bytes.Bytes_equal.equal(_plain, _tt._in)) {
                @:check2r _t.errorf(("#%d: result: %x want: %x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_plain), stdgo.Go.toInterface(_tt._in));
            };
        };
    }

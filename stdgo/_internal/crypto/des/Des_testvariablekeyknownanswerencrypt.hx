package stdgo._internal.crypto.des;
function testVariableKeyKnownAnswerEncrypt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_i => _tt in stdgo._internal.crypto.des.Des__tablea2tests._tableA2Tests) {
            var __tmp__ = stdgo._internal.crypto.des.Des_newtripledescipher.newTripleDESCipher(_tt._key), _c:stdgo._internal.crypto.cipher.Cipher_block.Block = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            var _out = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.crypto.des.Des__tablea2plaintext._tableA2Plaintext.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _c.encrypt(_out, stdgo._internal.crypto.des.Des__tablea2plaintext._tableA2Plaintext);
            if (!stdgo._internal.bytes.Bytes_equal.equal(_out, _tt._out)) {
                @:check2r _t.errorf(("#%d: result: %x want: %x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
            };
        };
    }

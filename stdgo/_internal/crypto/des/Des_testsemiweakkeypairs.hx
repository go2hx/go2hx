package stdgo._internal.crypto.des;
function testSemiWeakKeyPairs(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/crypto/des/des_test.go#L1294"
        for (_i => _tt in stdgo._internal.crypto.des.Des__semiweakkeytests._semiWeakKeyTests) {
            var _encrypt = function(_key:stdgo.Slice<stdgo.GoUInt8>, _in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
                var _out = (null : stdgo.Slice<stdgo.GoUInt8>);
                var _c = stdgo._internal.crypto.des.Des__newcipher._newCipher(_key);
                _out = (new stdgo.Slice<stdgo.GoUInt8>((_in.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///home/runner/.go/go1.21.3/src/crypto/des/des_test.go#L1298"
                stdgo._internal.crypto.des.Des__encryptblock._encryptBlock(((@:checkr _c ?? throw "null pointer dereference")._subkeys.__slice__(0) : stdgo.Slice<stdgo.GoUInt64>), _out, _in);
                //"file:///home/runner/.go/go1.21.3/src/crypto/des/des_test.go#L1299"
                return _out;
            };
            var _result = _encrypt(_tt._key, _tt._in);
            _result = _encrypt(_tt._out, _result);
            //"file:///home/runner/.go/go1.21.3/src/crypto/des/des_test.go#L1308"
            if (!stdgo._internal.bytes.Bytes_equal.equal(_result, _tt._in)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/des/des_test.go#L1309"
                _t.errorf(("#%d: result: %x want: %x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(_tt._in));
            };
        };
    }

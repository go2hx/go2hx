package stdgo._internal.crypto.des;
function testWeakKeys(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_i => _tt in stdgo._internal.crypto.des.Des__weakkeytests._weakKeyTests) {
            var _encrypt = function(_in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
                var _out = (null : stdgo.Slice<stdgo.GoUInt8>);
                var _c = stdgo._internal.crypto.des.Des__newcipher._newCipher(_tt._key);
                _out = (new stdgo.Slice<stdgo.GoUInt8>((_in.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                stdgo._internal.crypto.des.Des__encryptblock._encryptBlock(((@:checkr _c ?? throw "null pointer dereference")._subkeys.__slice__(0) : stdgo.Slice<stdgo.GoUInt64>), _out, _in);
                return _out;
            };
            var _result = _encrypt(_tt._in);
            _result = _encrypt(_result);
            if (!stdgo._internal.bytes.Bytes_equal.equal(_result, _tt._in)) {
                @:check2r _t.errorf(("#%d: result: %x want: %x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(_tt._in));
            };
        };
    }

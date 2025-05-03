package stdgo._internal.crypto.sha512;
function _testHash(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _name:stdgo.GoString, _in:stdgo.GoString, _outHex:stdgo.GoString, _oneShotResult:stdgo.Slice<stdgo.GoUInt8>, _digestFunc:stdgo._internal.hash.Hash_hash.Hash):Void {
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L660"
        {
            var _calculated = (stdgo._internal.encoding.hex.Hex_encodetostring.encodeToString(_oneShotResult)?.__copy__() : stdgo.GoString);
            if (_calculated != (_outHex)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L661"
                _t.errorf(("one-shot result for %s(%q) = %q, but expected %q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_calculated), stdgo.Go.toInterface(_outHex));
                //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L662"
                return;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L665"
        {
            var _pass = (0 : stdgo.GoInt);
            while ((_pass < (3 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L666"
                if ((_pass < (2 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L667"
                    stdgo._internal.io.Io_writestring.writeString(_digestFunc, _in.__copy__());
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L669"
                    stdgo._internal.io.Io_writestring.writeString(_digestFunc, (_in.__slice__(0, ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L670"
                    _digestFunc.sum((null : stdgo.Slice<stdgo.GoUInt8>));
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L671"
                    stdgo._internal.io.Io_writestring.writeString(_digestFunc, (_in.__slice__(((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__());
                };
//"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L674"
                {
                    var _calculated = (stdgo._internal.encoding.hex.Hex_encodetostring.encodeToString(_digestFunc.sum((null : stdgo.Slice<stdgo.GoUInt8>))).__copy__() : stdgo.GoString);
                    if (_calculated != (_outHex)) {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L675"
                        _t.errorf(("%s(%q) = %q (in pass #%d), but expected %q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_calculated), stdgo.Go.toInterface(_pass), stdgo.Go.toInterface(_outHex));
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L677"
                _digestFunc.reset();
                _pass++;
            };
        };
    }

package stdgo._internal.math.big;
function _checkSetBytes(_b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _hex1 = (stdgo._internal.encoding.hex.Hex_encodetostring.encodeToString((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes(_b).bytes())?.__copy__() : stdgo.GoString);
        var _hex2 = (stdgo._internal.encoding.hex.Hex_encodetostring.encodeToString(_b)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L373"
        while (((_hex1.length) < (_hex2.length) : Bool)) {
            _hex1 = (("0" : stdgo.GoString) + _hex1?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L377"
        while (((_hex1.length) > (_hex2.length) : Bool)) {
            _hex2 = (("0" : stdgo.GoString) + _hex2?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L381"
        return _hex1 == (_hex2);
    }

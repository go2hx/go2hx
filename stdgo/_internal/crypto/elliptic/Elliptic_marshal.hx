package stdgo._internal.crypto.elliptic;
function marshal(_curve:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L110"
        stdgo._internal.crypto.elliptic.Elliptic__panicifnotoncurve._panicIfNotOnCurve(_curve, _x, _y);
        var _byteLen = (((_curve.params().bitSize + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
        var _ret = (new stdgo.Slice<stdgo.GoUInt8>(((1 : stdgo.GoInt) + ((2 : stdgo.GoInt) * _byteLen : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _ret[(0 : stdgo.GoInt)] = (4 : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L117"
        _x.fillBytes((_ret.__slice__((1 : stdgo.GoInt), ((1 : stdgo.GoInt) + _byteLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L118"
        _y.fillBytes((_ret.__slice__(((1 : stdgo.GoInt) + _byteLen : stdgo.GoInt), ((1 : stdgo.GoInt) + ((2 : stdgo.GoInt) * _byteLen : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L120"
        return _ret;
    }

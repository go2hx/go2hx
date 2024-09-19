package stdgo._internal.crypto.elliptic;
function marshalCompressed(_curve:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Slice<stdgo.GoUInt8> {
        stdgo._internal.crypto.elliptic.Elliptic__panicIfNotOnCurve._panicIfNotOnCurve(_curve, _x, _y);
        var _byteLen = (((_curve.params().bitSize + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
        var _compressed = (new stdgo.Slice<stdgo.GoUInt8>(((1 : stdgo.GoInt) + _byteLen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _compressed[(0 : stdgo.GoInt)] = ((_y.bit((0 : stdgo.GoInt)) : stdgo.GoUInt8) | (2 : stdgo.GoUInt8) : stdgo.GoUInt8);
        _x.fillBytes((_compressed.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        return _compressed;
    }
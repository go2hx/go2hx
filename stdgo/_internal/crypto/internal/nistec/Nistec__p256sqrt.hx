package stdgo._internal.crypto.internal.nistec;
function _p256Sqrt(_e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>):Bool {
        var _isSquare = false;
        var _candidate = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        stdgo._internal.crypto.internal.nistec.Nistec__p256sqrtcandidate._p256SqrtCandidate(_candidate, _x);
        var _square = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).square(_candidate);
        if (@:check2r _square.equal(_x) != ((1 : stdgo.GoInt))) {
            return _isSquare = false;
        };
        @:check2r _e.set(_candidate);
        return _isSquare = true;
    }

package _internal.crypto.internal.nistec;
function _p521SqrtCandidate(_z:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>, _x:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>):Void {
        _z.square(_x);
        {
            var _s = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (519 : stdgo.GoInt) : Bool), _s++, {
                _z.square(_z);
            });
        };
    }

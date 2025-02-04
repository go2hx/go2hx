package stdgo._internal.crypto.internal.nistec;
function _p521SqrtCandidate(_z:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>):Void {
        @:check2r _z.square(_x);
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (519 : stdgo.GoInt) : Bool)) {
                @:check2r _z.square(_z);
                _s++;
            };
        };
    }

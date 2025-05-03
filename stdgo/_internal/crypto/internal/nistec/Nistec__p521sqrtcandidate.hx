package stdgo._internal.crypto.internal.nistec;
function _p521SqrtCandidate(_z:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>):Void {
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L465"
        _z.square(_x);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L466"
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (519 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L467"
                _z.square(_z);
                _s++;
            };
        };
    }

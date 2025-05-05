package stdgo._internal.crypto.internal.nistec;
function _p256SqrtCandidate(_z:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>):Void {
        var _t0 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L476"
        _z.square(_x);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L477"
        _z.mul(_x, _z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L478"
        _t0.square(_z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L479"
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (2 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L480"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L482"
        _z.mul(_z, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L483"
        _t0.square(_z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L484"
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (4 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L485"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L487"
        _z.mul(_z, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L488"
        _t0.square(_z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L489"
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (8 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L490"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L492"
        _z.mul(_z, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L493"
        _t0.square(_z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L494"
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (16 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L495"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L497"
        _z.mul(_z, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L498"
        {
            var _s = (0 : stdgo.GoInt);
            while ((_s < (32 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L499"
                _z.square(_z);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L501"
        _z.mul(_x, _z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L502"
        {
            var _s = (0 : stdgo.GoInt);
            while ((_s < (96 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L503"
                _z.square(_z);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L505"
        _z.mul(_x, _z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L506"
        {
            var _s = (0 : stdgo.GoInt);
            while ((_s < (94 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L507"
                _z.square(_z);
                _s++;
            };
        };
    }

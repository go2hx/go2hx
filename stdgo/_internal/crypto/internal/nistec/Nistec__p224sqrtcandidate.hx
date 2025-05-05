package stdgo._internal.crypto.internal.nistec;
function _p224SqrtCandidate(_r:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>):Void {
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L27"
        stdgo._internal.crypto.internal.nistec.Nistec__p224ggonce._p224GGOnce.do_(function():Void {
            stdgo._internal.crypto.internal.nistec.Nistec__p224gg._p224GG = (stdgo.Go.setRef(new stdgo.GoArray<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>(96, 96, ...[for (i in 0 ... (96 > 96 ? 96 : 96 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element)])) : stdgo.Ref<stdgo.GoArray<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>>);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L29"
            for (_i => _ in stdgo._internal.crypto.internal.nistec.Nistec__p224gg._p224GG) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L30"
                if (_i == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L31"
                    stdgo._internal.crypto.internal.nistec.Nistec__p224gg._p224GG[(_i : stdgo.GoInt)].setBytes((new stdgo.Slice<stdgo.GoUInt8>(28, 28, ...[
(106 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(236 : stdgo.GoUInt8),
(103 : stdgo.GoUInt8),
(133 : stdgo.GoUInt8),
(152 : stdgo.GoUInt8),
(167 : stdgo.GoUInt8),
(146 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(85 : stdgo.GoUInt8),
(178 : stdgo.GoUInt8),
(212 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(45 : stdgo.GoUInt8),
(111 : stdgo.GoUInt8),
(251 : stdgo.GoUInt8),
(190 : stdgo.GoUInt8),
(163 : stdgo.GoUInt8),
(216 : stdgo.GoUInt8),
(206 : stdgo.GoUInt8),
(243 : stdgo.GoUInt8),
(251 : stdgo.GoUInt8),
(54 : stdgo.GoUInt8),
(50 : stdgo.GoUInt8),
(220 : stdgo.GoUInt8),
(105 : stdgo.GoUInt8),
(27 : stdgo.GoUInt8),
(116 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L36"
                    stdgo._internal.crypto.internal.nistec.Nistec__p224gg._p224GG[(_i : stdgo.GoInt)].square((stdgo.Go.setRef(stdgo._internal.crypto.internal.nistec.Nistec__p224gg._p224GG[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>));
                };
            };
        });
        var _t0 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        var _t1 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L68"
        _r.square(_x);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L69"
        _r.mul(_x, _r);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L70"
        _r.square(_r);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L71"
        _r.mul(_x, _r);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L72"
        _t0.square(_r);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L73"
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (3 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L74"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L76"
        _t0.mul(_r, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L77"
        _t1.square(_t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L78"
        _r.mul(_x, _t1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L79"
        {
            var _s = (0 : stdgo.GoInt);
            while ((_s < (5 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L80"
                _t1.square(_t1);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L82"
        _t0.mul(_t0, _t1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L83"
        _t1.square(_t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L84"
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (12 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L85"
                _t1.square(_t1);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L87"
        _t0.mul(_t0, _t1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L88"
        _t1.square(_t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L89"
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (7 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L90"
                _t1.square(_t1);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L92"
        _r.mul(_r, _t1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L93"
        {
            var _s = (0 : stdgo.GoInt);
            while ((_s < (17 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L94"
                _t1.square(_t1);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L96"
        _t0.mul(_t0, _t1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L97"
        _t1.square(_t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L98"
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (48 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L99"
                _t1.square(_t1);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L101"
        _t0.mul(_t0, _t1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L102"
        {
            var _s = (0 : stdgo.GoInt);
            while ((_s < (31 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L103"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L105"
        _r.mul(_r, _t0);
        var _v = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>).square(_r);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L109"
        _v.mul(_v, _x);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L112"
        _r.mul(_r, _x);
        var _p224MinusOne = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>).sub((stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>), (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>).one());
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L123"
        {
            var _i = (95 : stdgo.GoInt);
            while ((_i >= (1 : stdgo.GoInt) : Bool)) {
                var _w = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>).set(_v);
//"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L125"
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < (_i - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L126"
                        _w.square(_w);
                        _j++;
                    };
                };
var _cond = (_w.equal(_p224MinusOne) : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L129"
                _v.select(_t0.mul(_v, (stdgo.Go.setRef(stdgo._internal.crypto.internal.nistec.Nistec__p224gg._p224GG[((96 : stdgo.GoInt) - _i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>)), _v, _cond);
//"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224_sqrt.go#L130"
                _r.select(_t0.mul(_r, (stdgo.Go.setRef(stdgo._internal.crypto.internal.nistec.Nistec__p224gg._p224GG[(((96 : stdgo.GoInt) - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>)), _r, _cond);
                _i--;
            };
        };
    }

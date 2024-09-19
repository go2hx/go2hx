package _internal.crypto.internal.nistec;
function _p256SqrtCandidate(_z:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>, _x:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>):Void {
        var _t0:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element> = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>);
        _z.square(_x);
        _z.mul(_x, _z);
        _t0.square(_z);
        {
            var _s = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (2 : stdgo.GoInt) : Bool), _s++, {
                _t0.square(_t0);
            });
        };
        _z.mul(_z, _t0);
        _t0.square(_z);
        {
            var _s = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (4 : stdgo.GoInt) : Bool), _s++, {
                _t0.square(_t0);
            });
        };
        _z.mul(_z, _t0);
        _t0.square(_z);
        {
            var _s = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (8 : stdgo.GoInt) : Bool), _s++, {
                _t0.square(_t0);
            });
        };
        _z.mul(_z, _t0);
        _t0.square(_z);
        {
            var _s = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (16 : stdgo.GoInt) : Bool), _s++, {
                _t0.square(_t0);
            });
        };
        _z.mul(_z, _t0);
        {
            var _s = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (32 : stdgo.GoInt) : Bool), _s++, {
                _z.square(_z);
            });
        };
        _z.mul(_x, _z);
        {
            var _s = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (96 : stdgo.GoInt) : Bool), _s++, {
                _z.square(_z);
            });
        };
        _z.mul(_x, _z);
        {
            var _s = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (94 : stdgo.GoInt) : Bool), _s++, {
                _z.square(_z);
            });
        };
    }

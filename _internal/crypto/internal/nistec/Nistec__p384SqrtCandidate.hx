package _internal.crypto.internal.nistec;
function _p384SqrtCandidate(_z:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>, _x:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>):Void {
        var _t0:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>);
        var _t1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>);
        var _t2:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>);
        _z.square(_x);
        _z.mul(_x, _z);
        _z.square(_z);
        _t0.mul(_x, _z);
        _z.square(_t0);
        {
            var _s = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (3 : stdgo.GoInt) : Bool), _s++, {
                _z.square(_z);
            });
        };
        _t1.mul(_t0, _z);
        _t2.square(_t1);
        _z.mul(_x, _t2);
        {
            var _s = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (5 : stdgo.GoInt) : Bool), _s++, {
                _t2.square(_t2);
            });
        };
        _t1.mul(_t1, _t2);
        _t2.square(_t1);
        {
            var _s = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (12 : stdgo.GoInt) : Bool), _s++, {
                _t2.square(_t2);
            });
        };
        _t1.mul(_t1, _t2);
        {
            var _s = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (7 : stdgo.GoInt) : Bool), _s++, {
                _t1.square(_t1);
            });
        };
        _t1.mul(_z, _t1);
        _z.square(_t1);
        _z.mul(_x, _z);
        _t2.square(_z);
        {
            var _s = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (31 : stdgo.GoInt) : Bool), _s++, {
                _t2.square(_t2);
            });
        };
        _t1.mul(_t1, _t2);
        _t2.square(_t1);
        {
            var _s = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (63 : stdgo.GoInt) : Bool), _s++, {
                _t2.square(_t2);
            });
        };
        _t1.mul(_t1, _t2);
        _t2.square(_t1);
        {
            var _s = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (126 : stdgo.GoInt) : Bool), _s++, {
                _t2.square(_t2);
            });
        };
        _t1.mul(_t1, _t2);
        {
            var _s = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (3 : stdgo.GoInt) : Bool), _s++, {
                _t1.square(_t1);
            });
        };
        _t0.mul(_t0, _t1);
        {
            var _s = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (33 : stdgo.GoInt) : Bool), _s++, {
                _t0.square(_t0);
            });
        };
        _z.mul(_z, _t0);
        {
            var _s = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (64 : stdgo.GoInt) : Bool), _s++, {
                _z.square(_z);
            });
        };
        _z.mul(_x, _z);
        {
            var _s = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (30 : stdgo.GoInt) : Bool), _s++, {
                _z.square(_z);
            });
        };
    }

package stdgo._internal.crypto.internal.nistec;
function _p256SqrtCandidate(_z:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>):Void {
        var _t0 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        @:check2r _z.square(_x);
        @:check2r _z.mul(_x, _z);
        @:check2r _t0.square(_z);
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (2 : stdgo.GoInt) : Bool)) {
                @:check2r _t0.square(_t0);
                _s++;
            };
        };
        @:check2r _z.mul(_z, _t0);
        @:check2r _t0.square(_z);
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (4 : stdgo.GoInt) : Bool)) {
                @:check2r _t0.square(_t0);
                _s++;
            };
        };
        @:check2r _z.mul(_z, _t0);
        @:check2r _t0.square(_z);
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (8 : stdgo.GoInt) : Bool)) {
                @:check2r _t0.square(_t0);
                _s++;
            };
        };
        @:check2r _z.mul(_z, _t0);
        @:check2r _t0.square(_z);
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (16 : stdgo.GoInt) : Bool)) {
                @:check2r _t0.square(_t0);
                _s++;
            };
        };
        @:check2r _z.mul(_z, _t0);
        {
            var _s = (0 : stdgo.GoInt);
            while ((_s < (32 : stdgo.GoInt) : Bool)) {
                @:check2r _z.square(_z);
                _s++;
            };
        };
        @:check2r _z.mul(_x, _z);
        {
            var _s = (0 : stdgo.GoInt);
            while ((_s < (96 : stdgo.GoInt) : Bool)) {
                @:check2r _z.square(_z);
                _s++;
            };
        };
        @:check2r _z.mul(_x, _z);
        {
            var _s = (0 : stdgo.GoInt);
            while ((_s < (94 : stdgo.GoInt) : Bool)) {
                @:check2r _z.square(_z);
                _s++;
            };
        };
    }

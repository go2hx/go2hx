package stdgo._internal.crypto.internal.nistec;
function _p384SqrtCandidate(_z:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>):Void {
        var _t0 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        var _t1 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        var _t2 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        @:check2r _z.square(_x);
        @:check2r _z.mul(_x, _z);
        @:check2r _z.square(_z);
        @:check2r _t0.mul(_x, _z);
        @:check2r _z.square(_t0);
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (3 : stdgo.GoInt) : Bool)) {
                @:check2r _z.square(_z);
                _s++;
            };
        };
        @:check2r _t1.mul(_t0, _z);
        @:check2r _t2.square(_t1);
        @:check2r _z.mul(_x, _t2);
        {
            var _s = (0 : stdgo.GoInt);
            while ((_s < (5 : stdgo.GoInt) : Bool)) {
                @:check2r _t2.square(_t2);
                _s++;
            };
        };
        @:check2r _t1.mul(_t1, _t2);
        @:check2r _t2.square(_t1);
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (12 : stdgo.GoInt) : Bool)) {
                @:check2r _t2.square(_t2);
                _s++;
            };
        };
        @:check2r _t1.mul(_t1, _t2);
        {
            var _s = (0 : stdgo.GoInt);
            while ((_s < (7 : stdgo.GoInt) : Bool)) {
                @:check2r _t1.square(_t1);
                _s++;
            };
        };
        @:check2r _t1.mul(_z, _t1);
        @:check2r _z.square(_t1);
        @:check2r _z.mul(_x, _z);
        @:check2r _t2.square(_z);
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (31 : stdgo.GoInt) : Bool)) {
                @:check2r _t2.square(_t2);
                _s++;
            };
        };
        @:check2r _t1.mul(_t1, _t2);
        @:check2r _t2.square(_t1);
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (63 : stdgo.GoInt) : Bool)) {
                @:check2r _t2.square(_t2);
                _s++;
            };
        };
        @:check2r _t1.mul(_t1, _t2);
        @:check2r _t2.square(_t1);
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (126 : stdgo.GoInt) : Bool)) {
                @:check2r _t2.square(_t2);
                _s++;
            };
        };
        @:check2r _t1.mul(_t1, _t2);
        {
            var _s = (0 : stdgo.GoInt);
            while ((_s < (3 : stdgo.GoInt) : Bool)) {
                @:check2r _t1.square(_t1);
                _s++;
            };
        };
        @:check2r _t0.mul(_t0, _t1);
        {
            var _s = (0 : stdgo.GoInt);
            while ((_s < (33 : stdgo.GoInt) : Bool)) {
                @:check2r _t0.square(_t0);
                _s++;
            };
        };
        @:check2r _z.mul(_z, _t0);
        {
            var _s = (0 : stdgo.GoInt);
            while ((_s < (64 : stdgo.GoInt) : Bool)) {
                @:check2r _z.square(_z);
                _s++;
            };
        };
        @:check2r _z.mul(_x, _z);
        {
            var _s = (0 : stdgo.GoInt);
            while ((_s < (30 : stdgo.GoInt) : Bool)) {
                @:check2r _z.square(_z);
                _s++;
            };
        };
    }

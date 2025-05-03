package stdgo._internal.crypto.internal.nistec.fiat;
@:keep @:allow(stdgo._internal.crypto.internal.nistec.fiat.Fiat.P384Element_asInterface) class P384Element_static_extension {
    @:keep
    @:tdfield
    static public function invert( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element> = _e;
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).set(_e);
        var _t0 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        var _t1 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        var _t2 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        var _t3 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L42"
        _z.square(_x);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L43"
        _z.mul(_x, _z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L44"
        _z.square(_z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L45"
        _t1.mul(_x, _z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L46"
        _z.square(_t1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L47"
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (3 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L48"
                _z.square(_z);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L50"
        _z.mul(_t1, _z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L51"
        _t0.square(_z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L52"
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (6 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L53"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L55"
        _t0.mul(_z, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L56"
        _t2.square(_t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L57"
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (12 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L58"
                _t2.square(_t2);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L60"
        _t0.mul(_t0, _t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L61"
        {
            var _s = (0 : stdgo.GoInt);
            while ((_s < (6 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L62"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L64"
        _z.mul(_z, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L65"
        _t0.square(_z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L66"
        _t2.mul(_x, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L67"
        _t0.square(_t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L68"
        _t0.mul(_x, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L69"
        _t3.square(_t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L70"
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (31 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L71"
                _t3.square(_t3);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L73"
        _t2.mul(_t2, _t3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L74"
        _t3.square(_t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L75"
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (63 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L76"
                _t3.square(_t3);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L78"
        _t2.mul(_t2, _t3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L79"
        _t3.square(_t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L80"
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (126 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L81"
                _t3.square(_t3);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L83"
        _t2.mul(_t2, _t3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L84"
        {
            var _s = (0 : stdgo.GoInt);
            while ((_s < (3 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L85"
                _t2.square(_t2);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L87"
        _t1.mul(_t1, _t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L88"
        {
            var _s = (0 : stdgo.GoInt);
            while ((_s < (33 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L89"
                _t1.square(_t1);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L91"
        _t0.mul(_t0, _t1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L92"
        {
            var _s = (0 : stdgo.GoInt);
            while ((_s < (94 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L93"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L95"
        _z.mul(_z, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L96"
        {
            var _s = (0 : stdgo.GoInt);
            while ((_s < (2 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L97"
                _z.square(_z);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L99"
        _z.mul(_x, _z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_invert.go#L101"
        return _e.set(_z);
    }
    @:keep
    @:tdfield
    static public function select( _v:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>, _a:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>, _b:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>, _cond:stdgo.GoInt):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element> = _v;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L125"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384selectznz._p384Selectznz(((stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelement.T_p384MontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>), (_cond : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1), ((stdgo.Go.setRef((@:checkr _b ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelement.T_p384MontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>), ((stdgo.Go.setRef((@:checkr _a ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelement.T_p384MontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L127"
        return _v;
    }
    @:keep
    @:tdfield
    static public function square( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>, _t:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element> = _e;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L119"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384square._p384Square((stdgo.Go.setRef((@:checkr _e ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelement.T_p384MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelement.T_p384MontgomeryDomainFieldElement>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L120"
        return _e;
    }
    @:keep
    @:tdfield
    static public function mul( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>, _t1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>, _t2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element> = _e;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L113"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384mul._p384Mul((stdgo.Go.setRef((@:checkr _e ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelement.T_p384MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t1 ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelement.T_p384MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t2 ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelement.T_p384MontgomeryDomainFieldElement>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L114"
        return _e;
    }
    @:keep
    @:tdfield
    static public function sub( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>, _t1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>, _t2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element> = _e;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L107"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384sub._p384Sub((stdgo.Go.setRef((@:checkr _e ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelement.T_p384MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t1 ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelement.T_p384MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t2 ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelement.T_p384MontgomeryDomainFieldElement>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L108"
        return _e;
    }
    @:keep
    @:tdfield
    static public function add( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>, _t1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>, _t2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element> = _e;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L101"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384add._p384Add((stdgo.Go.setRef((@:checkr _e ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelement.T_p384MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t1 ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelement.T_p384MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t2 ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelement.T_p384MontgomeryDomainFieldElement>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L102"
        return _e;
    }
    @:keep
    @:tdfield
    static public function setBytes( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>, _v:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element> = _e;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L73"
        if ((_v.length) != ((48 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L74"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid P384Element encoding" : stdgo.GoString)) };
        };
        var _minusOneEncoding = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).sub((stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>), (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).one()).bytes();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L81"
        for (_i => _ in _v) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L82"
            if ((_v[(_i : stdgo.GoInt)] < _minusOneEncoding[(_i : stdgo.GoInt)] : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L83"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L85"
            if ((_v[(_i : stdgo.GoInt)] > _minusOneEncoding[(_i : stdgo.GoInt)] : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L86"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid P384Element encoding" : stdgo.GoString)) };
            };
        };
        var _in:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(48, 48).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L91"
        (_in.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_v);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L92"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384invertendianness._p384InvertEndianness((_in.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        var _tmp:stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384nonmontgomerydomainfieldelement.T_p384NonMontgomeryDomainFieldElement = new stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384nonmontgomerydomainfieldelement.T_p384NonMontgomeryDomainFieldElement(6, 6, ...[for (i in 0 ... 6) (0 : stdgo.GoUInt64)]);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L94"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384frombytes._p384FromBytes(((stdgo.Go.setRef(_tmp) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384nonmontgomerydomainfieldelement.T_p384NonMontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>), (stdgo.Go.setRef(_in) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L95"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384tomontgomery._p384ToMontgomery((stdgo.Go.setRef((@:checkr _e ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelement.T_p384MontgomeryDomainFieldElement>), (stdgo.Go.setRef(_tmp) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384nonmontgomerydomainfieldelement.T_p384NonMontgomeryDomainFieldElement>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L96"
        return { _0 : _e, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _bytes( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>, _out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element> = _e;
        var _tmp:stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384nonmontgomerydomainfieldelement.T_p384NonMontgomeryDomainFieldElement = new stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384nonmontgomerydomainfieldelement.T_p384NonMontgomeryDomainFieldElement(6, 6, ...[for (i in 0 ... 6) (0 : stdgo.GoUInt64)]);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L63"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384frommontgomery._p384FromMontgomery((stdgo.Go.setRef(_tmp) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384nonmontgomerydomainfieldelement.T_p384NonMontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _e ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelement.T_p384MontgomeryDomainFieldElement>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L64"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384tobytes._p384ToBytes(_out, ((stdgo.Go.setRef(_tmp) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384nonmontgomerydomainfieldelement.T_p384NonMontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L65"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384invertendianness._p384InvertEndianness((_out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L66"
        return (_out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function bytes( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element> = _e;
        var _out:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(48, 48).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L58"
        return _e._bytes((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
    }
    @:keep
    @:tdfield
    static public function set( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>, _t:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element> = _e;
        (@:checkr _e ?? throw "null pointer dereference")._x = (@:checkr _t ?? throw "null pointer dereference")._x?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L50"
        return _e;
    }
    @:keep
    @:tdfield
    static public function isZero( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>):stdgo.GoInt {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element> = _e;
        var _zero = (new stdgo.Slice<stdgo.GoUInt8>((48 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _eBytes = _e.bytes();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L44"
        return stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_eBytes, _zero);
    }
    @:keep
    @:tdfield
    static public function equal( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>, _t:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>):stdgo.GoInt {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element> = _e;
        var _eBytes = _e.bytes();
        var _tBytes = _t.bytes();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L37"
        return stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_eBytes, _tBytes);
    }
    @:keep
    @:tdfield
    static public function one( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element> = _e;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L29"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384setone._p384SetOne((stdgo.Go.setRef((@:checkr _e ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelement.T_p384MontgomeryDomainFieldElement>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384.go#L30"
        return _e;
    }
}

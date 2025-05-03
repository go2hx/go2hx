package stdgo._internal.crypto.internal.nistec.fiat;
@:keep @:allow(stdgo._internal.crypto.internal.nistec.fiat.Fiat.P521Element_asInterface) class P521Element_static_extension {
    @:keep
    @:tdfield
    static public function invert( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element> = _e;
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).set(_e);
        var _t0 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L38"
        _z.square(_x);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L39"
        _z.mul(_x, _z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L40"
        _t0.square(_z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L41"
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (2 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L42"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L44"
        _z.mul(_z, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L45"
        _t0.square(_z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L46"
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (4 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L47"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L49"
        _z.mul(_z, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L50"
        _t0.square(_z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L51"
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (8 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L52"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L54"
        _z.mul(_z, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L55"
        _t0.square(_z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L56"
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (16 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L57"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L59"
        _z.mul(_z, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L60"
        _t0.square(_z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L61"
        {
            var _s = (1 : stdgo.GoInt);
            while ((_s < (32 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L62"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L64"
        _z.mul(_z, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L65"
        _t0.square(_z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L66"
        _t0.mul(_x, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L67"
        {
            var _s = (0 : stdgo.GoInt);
            while ((_s < (64 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L68"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L70"
        _z.mul(_z, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L71"
        _t0.square(_z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L72"
        _t0.mul(_x, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L73"
        {
            var _s = (0 : stdgo.GoInt);
            while ((_s < (129 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L74"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L76"
        _z.mul(_z, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L77"
        _t0.square(_z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L78"
        _t0.mul(_x, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L79"
        {
            var _s = (0 : stdgo.GoInt);
            while ((_s < (259 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L80"
                _t0.square(_t0);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L82"
        _z.mul(_z, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L83"
        {
            var _s = (0 : stdgo.GoInt);
            while ((_s < (2 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L84"
                _z.square(_z);
                _s++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L86"
        _z.mul(_x, _z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_invert.go#L88"
        return _e.set(_z);
    }
    @:keep
    @:tdfield
    static public function select( _v:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>, _a:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>, _b:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>, _cond:stdgo.GoInt):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element> = _v;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L125"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521selectznz._p521Selectznz(((stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>), (_cond : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), ((stdgo.Go.setRef((@:checkr _b ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>), ((stdgo.Go.setRef((@:checkr _a ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L127"
        return _v;
    }
    @:keep
    @:tdfield
    static public function square( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>, _t:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element> = _e;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L119"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521square._p521Square((stdgo.Go.setRef((@:checkr _e ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L120"
        return _e;
    }
    @:keep
    @:tdfield
    static public function mul( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>, _t1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>, _t2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element> = _e;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L113"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521mul._p521Mul((stdgo.Go.setRef((@:checkr _e ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t1 ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t2 ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L114"
        return _e;
    }
    @:keep
    @:tdfield
    static public function sub( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>, _t1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>, _t2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element> = _e;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L107"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521sub._p521Sub((stdgo.Go.setRef((@:checkr _e ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t1 ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t2 ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L108"
        return _e;
    }
    @:keep
    @:tdfield
    static public function add( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>, _t1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>, _t2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element> = _e;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L101"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521add._p521Add((stdgo.Go.setRef((@:checkr _e ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t1 ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t2 ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L102"
        return _e;
    }
    @:keep
    @:tdfield
    static public function setBytes( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>, _v:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element> = _e;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L73"
        if ((_v.length) != ((66 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L74"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid P521Element encoding" : stdgo.GoString)) };
        };
        var _minusOneEncoding = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).sub((stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>), (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).one()).bytes();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L81"
        for (_i => _ in _v) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L82"
            if ((_v[(_i : stdgo.GoInt)] < _minusOneEncoding[(_i : stdgo.GoInt)] : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L83"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L85"
            if ((_v[(_i : stdgo.GoInt)] > _minusOneEncoding[(_i : stdgo.GoInt)] : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L86"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid P521Element encoding" : stdgo.GoString)) };
            };
        };
        var _in:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(66, 66).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L91"
        (_in.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_v);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L92"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521invertendianness._p521InvertEndianness((_in.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        var _tmp:stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521nonmontgomerydomainfieldelement.T_p521NonMontgomeryDomainFieldElement = new stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521nonmontgomerydomainfieldelement.T_p521NonMontgomeryDomainFieldElement(9, 9, ...[for (i in 0 ... 9) (0 : stdgo.GoUInt64)]);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L94"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521frombytes._p521FromBytes(((stdgo.Go.setRef(_tmp) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521nonmontgomerydomainfieldelement.T_p521NonMontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>), (stdgo.Go.setRef(_in) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L95"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521tomontgomery._p521ToMontgomery((stdgo.Go.setRef((@:checkr _e ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement>), (stdgo.Go.setRef(_tmp) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521nonmontgomerydomainfieldelement.T_p521NonMontgomeryDomainFieldElement>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L96"
        return { _0 : _e, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _bytes( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>, _out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element> = _e;
        var _tmp:stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521nonmontgomerydomainfieldelement.T_p521NonMontgomeryDomainFieldElement = new stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521nonmontgomerydomainfieldelement.T_p521NonMontgomeryDomainFieldElement(9, 9, ...[for (i in 0 ... 9) (0 : stdgo.GoUInt64)]);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L63"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521frommontgomery._p521FromMontgomery((stdgo.Go.setRef(_tmp) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521nonmontgomerydomainfieldelement.T_p521NonMontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _e ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L64"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521tobytes._p521ToBytes(_out, ((stdgo.Go.setRef(_tmp) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521nonmontgomerydomainfieldelement.T_p521NonMontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L65"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521invertendianness._p521InvertEndianness((_out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L66"
        return (_out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function bytes( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element> = _e;
        var _out:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(66, 66).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L58"
        return _e._bytes((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
    }
    @:keep
    @:tdfield
    static public function set( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>, _t:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element> = _e;
        (@:checkr _e ?? throw "null pointer dereference")._x = (@:checkr _t ?? throw "null pointer dereference")._x?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L50"
        return _e;
    }
    @:keep
    @:tdfield
    static public function isZero( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>):stdgo.GoInt {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element> = _e;
        var _zero = (new stdgo.Slice<stdgo.GoUInt8>((66 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _eBytes = _e.bytes();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L44"
        return stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_eBytes, _zero);
    }
    @:keep
    @:tdfield
    static public function equal( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>, _t:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>):stdgo.GoInt {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element> = _e;
        var _eBytes = _e.bytes();
        var _tBytes = _t.bytes();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L37"
        return stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_eBytes, _tBytes);
    }
    @:keep
    @:tdfield
    static public function one( _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element> = _e;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L29"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521setone._p521SetOne((stdgo.Go.setRef((@:checkr _e ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521.go#L30"
        return _e;
    }
}

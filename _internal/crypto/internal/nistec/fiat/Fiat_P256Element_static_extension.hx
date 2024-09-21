package _internal.crypto.internal.nistec.fiat;
@:keep @:allow(_internal.crypto.internal.nistec.fiat.Fiat.P256Element_asInterface) class P256Element_static_extension {
    @:keep
    static public function invert( _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>, _x:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>):stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element> {
        @:recv var _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element> = _e;
        var _z:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element> = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>).set(_e);
        var _t0:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element> = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>);
        var _t1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element> = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>);
        _z.square(_x);
        _z.mul(_x, _z);
        _z.square(_z);
        _z.mul(_x, _z);
        _t0.square(_z);
        {
            var _s = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (3 : stdgo.GoInt) : Bool), _s++, {
                _t0.square(_t0);
            });
        };
        _t0.mul(_z, _t0);
        _t1.square(_t0);
        {
            var _s = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (6 : stdgo.GoInt) : Bool), _s++, {
                _t1.square(_t1);
            });
        };
        _t0.mul(_t0, _t1);
        {
            var _s = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (3 : stdgo.GoInt) : Bool), _s++, {
                _t0.square(_t0);
            });
        };
        _z.mul(_z, _t0);
        _t0.square(_z);
        _t0.mul(_x, _t0);
        _t1.square(_t0);
        {
            var _s = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (16 : stdgo.GoInt) : Bool), _s++, {
                _t1.square(_t1);
            });
        };
        _t0.mul(_t0, _t1);
        {
            var _s = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (15 : stdgo.GoInt) : Bool), _s++, {
                _t0.square(_t0);
            });
        };
        _z.mul(_z, _t0);
        {
            var _s = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (17 : stdgo.GoInt) : Bool), _s++, {
                _t0.square(_t0);
            });
        };
        _t0.mul(_x, _t0);
        {
            var _s = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (143 : stdgo.GoInt) : Bool), _s++, {
                _t0.square(_t0);
            });
        };
        _t0.mul(_z, _t0);
        {
            var _s = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (47 : stdgo.GoInt) : Bool), _s++, {
                _t0.square(_t0);
            });
        };
        _z.mul(_z, _t0);
        {
            var _s = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (2 : stdgo.GoInt) : Bool), _s++, {
                _z.square(_z);
            });
        };
        _z.mul(_x, _z);
        return _e.set(_z);
    }
    @:keep
    static public function select( _v:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>, _a:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>, _b:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>, _cond:stdgo.GoInt):stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element> = _v;
        _internal.crypto.internal.nistec.fiat.Fiat__p256Selectznz._p256Selectznz(((stdgo.Go.setRef(_v._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p256MontgomeryDomainFieldElement.T_p256MontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>), (_cond : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1), ((stdgo.Go.setRef(_b._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p256MontgomeryDomainFieldElement.T_p256MontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>), ((stdgo.Go.setRef(_a._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p256MontgomeryDomainFieldElement.T_p256MontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>));
        return _v;
    }
    @:keep
    static public function square( _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>, _t:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>):stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element> {
        @:recv var _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element> = _e;
        _internal.crypto.internal.nistec.fiat.Fiat__p256Square._p256Square((stdgo.Go.setRef(_e._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p256MontgomeryDomainFieldElement.T_p256MontgomeryDomainFieldElement>), (stdgo.Go.setRef(_t._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p256MontgomeryDomainFieldElement.T_p256MontgomeryDomainFieldElement>));
        return _e;
    }
    @:keep
    static public function mul( _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>, _t1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>, _t2:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>):stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element> {
        @:recv var _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element> = _e;
        _internal.crypto.internal.nistec.fiat.Fiat__p256Mul._p256Mul((stdgo.Go.setRef(_e._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p256MontgomeryDomainFieldElement.T_p256MontgomeryDomainFieldElement>), (stdgo.Go.setRef(_t1._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p256MontgomeryDomainFieldElement.T_p256MontgomeryDomainFieldElement>), (stdgo.Go.setRef(_t2._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p256MontgomeryDomainFieldElement.T_p256MontgomeryDomainFieldElement>));
        return _e;
    }
    @:keep
    static public function sub( _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>, _t1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>, _t2:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>):stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element> {
        @:recv var _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element> = _e;
        _internal.crypto.internal.nistec.fiat.Fiat__p256Sub._p256Sub((stdgo.Go.setRef(_e._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p256MontgomeryDomainFieldElement.T_p256MontgomeryDomainFieldElement>), (stdgo.Go.setRef(_t1._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p256MontgomeryDomainFieldElement.T_p256MontgomeryDomainFieldElement>), (stdgo.Go.setRef(_t2._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p256MontgomeryDomainFieldElement.T_p256MontgomeryDomainFieldElement>));
        return _e;
    }
    @:keep
    static public function add( _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>, _t1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>, _t2:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>):stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element> {
        @:recv var _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element> = _e;
        _internal.crypto.internal.nistec.fiat.Fiat__p256Add._p256Add((stdgo.Go.setRef(_e._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p256MontgomeryDomainFieldElement.T_p256MontgomeryDomainFieldElement>), (stdgo.Go.setRef(_t1._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p256MontgomeryDomainFieldElement.T_p256MontgomeryDomainFieldElement>), (stdgo.Go.setRef(_t2._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p256MontgomeryDomainFieldElement.T_p256MontgomeryDomainFieldElement>));
        return _e;
    }
    @:keep
    static public function setBytes( _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>, _v:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element> = _e;
        if ((_v.length) != ((32 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid P256Element encoding" : stdgo.GoString)) };
        };
        var _minusOneEncoding:stdgo.Slice<stdgo.GoUInt8> = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>).sub((stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>), (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>).one()).bytes();
        for (_i => _ in _v) {
            if ((_v[(_i : stdgo.GoInt)] < _minusOneEncoding[(_i : stdgo.GoInt)] : Bool)) {
                break;
            };
            if ((_v[(_i : stdgo.GoInt)] > _minusOneEncoding[(_i : stdgo.GoInt)] : Bool)) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid P256Element encoding" : stdgo.GoString)) };
            };
        };
        var _in:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUInt8)]);
        stdgo.Go.copySlice((_in.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _v);
        _internal.crypto.internal.nistec.fiat.Fiat__p256InvertEndianness._p256InvertEndianness((_in.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        var _tmp:_internal.crypto.internal.nistec.fiat.Fiat_T_p256NonMontgomeryDomainFieldElement.T_p256NonMontgomeryDomainFieldElement = new _internal.crypto.internal.nistec.fiat.Fiat_T_p256NonMontgomeryDomainFieldElement.T_p256NonMontgomeryDomainFieldElement(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt64)]);
        _internal.crypto.internal.nistec.fiat.Fiat__p256FromBytes._p256FromBytes(((stdgo.Go.setRef(_tmp) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p256NonMontgomeryDomainFieldElement.T_p256NonMontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>), (stdgo.Go.setRef(_in) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        _internal.crypto.internal.nistec.fiat.Fiat__p256ToMontgomery._p256ToMontgomery((stdgo.Go.setRef(_e._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p256MontgomeryDomainFieldElement.T_p256MontgomeryDomainFieldElement>), (stdgo.Go.setRef(_tmp) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p256NonMontgomeryDomainFieldElement.T_p256NonMontgomeryDomainFieldElement>));
        return { _0 : _e, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _bytes( _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>, _out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element> = _e;
        var _tmp:_internal.crypto.internal.nistec.fiat.Fiat_T_p256NonMontgomeryDomainFieldElement.T_p256NonMontgomeryDomainFieldElement = new _internal.crypto.internal.nistec.fiat.Fiat_T_p256NonMontgomeryDomainFieldElement.T_p256NonMontgomeryDomainFieldElement(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt64)]);
        _internal.crypto.internal.nistec.fiat.Fiat__p256FromMontgomery._p256FromMontgomery((stdgo.Go.setRef(_tmp) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p256NonMontgomeryDomainFieldElement.T_p256NonMontgomeryDomainFieldElement>), (stdgo.Go.setRef(_e._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p256MontgomeryDomainFieldElement.T_p256MontgomeryDomainFieldElement>));
        _internal.crypto.internal.nistec.fiat.Fiat__p256ToBytes._p256ToBytes(_out, ((stdgo.Go.setRef(_tmp) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p256NonMontgomeryDomainFieldElement.T_p256NonMontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>));
        _internal.crypto.internal.nistec.fiat.Fiat__p256InvertEndianness._p256InvertEndianness((_out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        return (_out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function bytes( _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element> = _e;
        var _out:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUInt8)]);
        return _e._bytes((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
    }
    @:keep
    static public function set( _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>, _t:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>):stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element> {
        @:recv var _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element> = _e;
        _e._x = _t._x?.__copy__();
        return _e;
    }
    @:keep
    static public function isZero( _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>):stdgo.GoInt {
        @:recv var _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element> = _e;
        var _zero = (new stdgo.Slice<stdgo.GoUInt8>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _eBytes = _e.bytes();
        return stdgo._internal.crypto.subtle.Subtle_constantTimeCompare.constantTimeCompare(_eBytes, _zero);
    }
    @:keep
    static public function equal( _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>, _t:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>):stdgo.GoInt {
        @:recv var _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element> = _e;
        var _eBytes = _e.bytes();
        var _tBytes = _t.bytes();
        return stdgo._internal.crypto.subtle.Subtle_constantTimeCompare.constantTimeCompare(_eBytes, _tBytes);
    }
    @:keep
    static public function one( _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>):stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element> {
        @:recv var _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element> = _e;
        _internal.crypto.internal.nistec.fiat.Fiat__p256SetOne._p256SetOne((stdgo.Go.setRef(_e._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p256MontgomeryDomainFieldElement.T_p256MontgomeryDomainFieldElement>));
        return _e;
    }
}

package _internal.crypto.internal.nistec.fiat;
@:keep @:allow(_internal.crypto.internal.nistec.fiat.Fiat.P384Element_asInterface) class P384Element_static_extension {
    @:keep
    static public function invert( _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>, _x:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>):stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> {
        @:recv var _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> = _e;
        var _z:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>).set(_e);
        var _t0:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>);
        var _t1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>);
        var _t2:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>);
        var _t3:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>);
        _z.square(_x);
        _z.mul(_x, _z);
        _z.square(_z);
        _t1.mul(_x, _z);
        _z.square(_t1);
        {
            var _s = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (3 : stdgo.GoInt) : Bool), _s++, {
                _z.square(_z);
            });
        };
        _z.mul(_t1, _z);
        _t0.square(_z);
        {
            var _s = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (6 : stdgo.GoInt) : Bool), _s++, {
                _t0.square(_t0);
            });
        };
        _t0.mul(_z, _t0);
        _t2.square(_t0);
        {
            var _s = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (12 : stdgo.GoInt) : Bool), _s++, {
                _t2.square(_t2);
            });
        };
        _t0.mul(_t0, _t2);
        {
            var _s = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (6 : stdgo.GoInt) : Bool), _s++, {
                _t0.square(_t0);
            });
        };
        _z.mul(_z, _t0);
        _t0.square(_z);
        _t2.mul(_x, _t0);
        _t0.square(_t2);
        _t0.mul(_x, _t0);
        _t3.square(_t0);
        {
            var _s = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (31 : stdgo.GoInt) : Bool), _s++, {
                _t3.square(_t3);
            });
        };
        _t2.mul(_t2, _t3);
        _t3.square(_t2);
        {
            var _s = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (63 : stdgo.GoInt) : Bool), _s++, {
                _t3.square(_t3);
            });
        };
        _t2.mul(_t2, _t3);
        _t3.square(_t2);
        {
            var _s = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (126 : stdgo.GoInt) : Bool), _s++, {
                _t3.square(_t3);
            });
        };
        _t2.mul(_t2, _t3);
        {
            var _s = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (3 : stdgo.GoInt) : Bool), _s++, {
                _t2.square(_t2);
            });
        };
        _t1.mul(_t1, _t2);
        {
            var _s = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (33 : stdgo.GoInt) : Bool), _s++, {
                _t1.square(_t1);
            });
        };
        _t0.mul(_t0, _t1);
        {
            var _s = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (94 : stdgo.GoInt) : Bool), _s++, {
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
    static public function select( _v:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>, _a:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>, _b:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>, _cond:stdgo.GoInt):stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> = _v;
        _internal.crypto.internal.nistec.fiat.Fiat__p384Selectznz._p384Selectznz(((stdgo.Go.setRef(_v._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384MontgomeryDomainFieldElement.T_p384MontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>), (_cond : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1), ((stdgo.Go.setRef(_b._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384MontgomeryDomainFieldElement.T_p384MontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>), ((stdgo.Go.setRef(_a._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384MontgomeryDomainFieldElement.T_p384MontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>));
        return _v;
    }
    @:keep
    static public function square( _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>, _t:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>):stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> {
        @:recv var _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> = _e;
        _internal.crypto.internal.nistec.fiat.Fiat__p384Square._p384Square((stdgo.Go.setRef(_e._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384MontgomeryDomainFieldElement.T_p384MontgomeryDomainFieldElement>), (stdgo.Go.setRef(_t._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384MontgomeryDomainFieldElement.T_p384MontgomeryDomainFieldElement>));
        return _e;
    }
    @:keep
    static public function mul( _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>, _t1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>, _t2:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>):stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> {
        @:recv var _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> = _e;
        _internal.crypto.internal.nistec.fiat.Fiat__p384Mul._p384Mul((stdgo.Go.setRef(_e._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384MontgomeryDomainFieldElement.T_p384MontgomeryDomainFieldElement>), (stdgo.Go.setRef(_t1._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384MontgomeryDomainFieldElement.T_p384MontgomeryDomainFieldElement>), (stdgo.Go.setRef(_t2._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384MontgomeryDomainFieldElement.T_p384MontgomeryDomainFieldElement>));
        return _e;
    }
    @:keep
    static public function sub( _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>, _t1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>, _t2:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>):stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> {
        @:recv var _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> = _e;
        _internal.crypto.internal.nistec.fiat.Fiat__p384Sub._p384Sub((stdgo.Go.setRef(_e._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384MontgomeryDomainFieldElement.T_p384MontgomeryDomainFieldElement>), (stdgo.Go.setRef(_t1._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384MontgomeryDomainFieldElement.T_p384MontgomeryDomainFieldElement>), (stdgo.Go.setRef(_t2._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384MontgomeryDomainFieldElement.T_p384MontgomeryDomainFieldElement>));
        return _e;
    }
    @:keep
    static public function add( _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>, _t1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>, _t2:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>):stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> {
        @:recv var _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> = _e;
        _internal.crypto.internal.nistec.fiat.Fiat__p384Add._p384Add((stdgo.Go.setRef(_e._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384MontgomeryDomainFieldElement.T_p384MontgomeryDomainFieldElement>), (stdgo.Go.setRef(_t1._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384MontgomeryDomainFieldElement.T_p384MontgomeryDomainFieldElement>), (stdgo.Go.setRef(_t2._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384MontgomeryDomainFieldElement.T_p384MontgomeryDomainFieldElement>));
        return _e;
    }
    @:keep
    static public function setBytes( _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>, _v:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> = _e;
        if ((_v.length) != ((48 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid P384Element encoding" : stdgo.GoString)) };
        };
        var _minusOneEncoding:stdgo.Slice<stdgo.GoUInt8> = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>).sub((stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>), (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>).one()).bytes();
        for (_i => _ in _v) {
            if ((_v[(_i : stdgo.GoInt)] < _minusOneEncoding[(_i : stdgo.GoInt)] : Bool)) {
                break;
            };
            if ((_v[(_i : stdgo.GoInt)] > _minusOneEncoding[(_i : stdgo.GoInt)] : Bool)) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid P384Element encoding" : stdgo.GoString)) };
            };
        };
        var _in:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(48, 48, ...[for (i in 0 ... 48) (0 : stdgo.GoUInt8)]);
        stdgo.Go.copySlice((_in.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _v);
        _internal.crypto.internal.nistec.fiat.Fiat__p384InvertEndianness._p384InvertEndianness((_in.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        var _tmp:_internal.crypto.internal.nistec.fiat.Fiat_T_p384NonMontgomeryDomainFieldElement.T_p384NonMontgomeryDomainFieldElement = new _internal.crypto.internal.nistec.fiat.Fiat_T_p384NonMontgomeryDomainFieldElement.T_p384NonMontgomeryDomainFieldElement(6, 6, ...[for (i in 0 ... 6) (0 : stdgo.GoUInt64)]);
        _internal.crypto.internal.nistec.fiat.Fiat__p384FromBytes._p384FromBytes(((stdgo.Go.setRef(_tmp) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384NonMontgomeryDomainFieldElement.T_p384NonMontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>), (stdgo.Go.setRef(_in) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        _internal.crypto.internal.nistec.fiat.Fiat__p384ToMontgomery._p384ToMontgomery((stdgo.Go.setRef(_e._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384MontgomeryDomainFieldElement.T_p384MontgomeryDomainFieldElement>), (stdgo.Go.setRef(_tmp) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384NonMontgomeryDomainFieldElement.T_p384NonMontgomeryDomainFieldElement>));
        return { _0 : _e, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _bytes( _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>, _out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> = _e;
        var _tmp:_internal.crypto.internal.nistec.fiat.Fiat_T_p384NonMontgomeryDomainFieldElement.T_p384NonMontgomeryDomainFieldElement = new _internal.crypto.internal.nistec.fiat.Fiat_T_p384NonMontgomeryDomainFieldElement.T_p384NonMontgomeryDomainFieldElement(6, 6, ...[for (i in 0 ... 6) (0 : stdgo.GoUInt64)]);
        _internal.crypto.internal.nistec.fiat.Fiat__p384FromMontgomery._p384FromMontgomery((stdgo.Go.setRef(_tmp) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384NonMontgomeryDomainFieldElement.T_p384NonMontgomeryDomainFieldElement>), (stdgo.Go.setRef(_e._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384MontgomeryDomainFieldElement.T_p384MontgomeryDomainFieldElement>));
        _internal.crypto.internal.nistec.fiat.Fiat__p384ToBytes._p384ToBytes(_out, ((stdgo.Go.setRef(_tmp) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384NonMontgomeryDomainFieldElement.T_p384NonMontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>));
        _internal.crypto.internal.nistec.fiat.Fiat__p384InvertEndianness._p384InvertEndianness((_out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        return (_out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function bytes( _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> = _e;
        var _out:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(48, 48, ...[for (i in 0 ... 48) (0 : stdgo.GoUInt8)]);
        return _e._bytes((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
    }
    @:keep
    static public function set( _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>, _t:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>):stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> {
        @:recv var _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> = _e;
        _e._x = _t._x?.__copy__();
        return _e;
    }
    @:keep
    static public function isZero( _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>):stdgo.GoInt {
        @:recv var _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> = _e;
        var _zero = (new stdgo.Slice<stdgo.GoUInt8>((48 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _eBytes = _e.bytes();
        return stdgo._internal.crypto.subtle.Subtle_constantTimeCompare.constantTimeCompare(_eBytes, _zero);
    }
    @:keep
    static public function equal( _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>, _t:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>):stdgo.GoInt {
        @:recv var _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> = _e;
        var _eBytes = _e.bytes();
        var _tBytes = _t.bytes();
        return stdgo._internal.crypto.subtle.Subtle_constantTimeCompare.constantTimeCompare(_eBytes, _tBytes);
    }
    @:keep
    static public function one( _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>):stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> {
        @:recv var _e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> = _e;
        _internal.crypto.internal.nistec.fiat.Fiat__p384SetOne._p384SetOne((stdgo.Go.setRef(_e._x) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384MontgomeryDomainFieldElement.T_p384MontgomeryDomainFieldElement>));
        return _e;
    }
}

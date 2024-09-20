package _internal.crypto.internal.edwards25519;
@:keep @:allow(_internal.crypto.internal.edwards25519.Edwards25519.Point_asInterface) class Point_static_extension {
    @:keep
    static public function varTimeDoubleScalarBaseMult( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>, _a:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, a:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>, _b:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> = _v;
        _internal.crypto.internal.edwards25519.Edwards25519__checkInitialized._checkInitialized(a);
        var _basepointNafTable = _internal.crypto.internal.edwards25519.Edwards25519__basepointNafTable._basepointNafTable();
        var _aTable:_internal.crypto.internal.edwards25519.Edwards25519_T_nafLookupTable5.T_nafLookupTable5 = ({} : _internal.crypto.internal.edwards25519.Edwards25519_T_nafLookupTable5.T_nafLookupTable5);
        _aTable.fromP3(a);
        var _aNaf = _a._nonAdjacentForm((5u32 : stdgo.GoUInt))?.__copy__();
        var _bNaf = _b._nonAdjacentForm((8u32 : stdgo.GoUInt))?.__copy__();
        var _i = (255 : stdgo.GoInt);
        {
            var _j = (_i : stdgo.GoInt);
            stdgo.Go.cfor((_j >= (0 : stdgo.GoInt) : Bool), _j--, {
                if (((_aNaf[(_j : stdgo.GoInt)] != (0 : stdgo.GoInt8)) || (_bNaf[(_j : stdgo.GoInt)] != (0 : stdgo.GoInt8)) : Bool)) {
                    break;
                };
            });
        };
        var _multA = (stdgo.Go.setRef((new _internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached() : _internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached)) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached>);
        var _multB = (stdgo.Go.setRef((new _internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached() : _internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached)) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>);
        var _tmp1 = (stdgo.Go.setRef((new _internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1() : _internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1)) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1>);
        var _tmp2 = (stdgo.Go.setRef((new _internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2() : _internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2)) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2>);
        _tmp2.zero();
        stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
            _tmp1.double(_tmp2);
            if ((_aNaf[(_i : stdgo.GoInt)] > (0 : stdgo.GoInt8) : Bool)) {
                _v._fromP1xP1(_tmp1);
                _aTable.selectInto(_multA, _aNaf[(_i : stdgo.GoInt)]);
                _tmp1.add(_v, _multA);
            } else if ((_aNaf[(_i : stdgo.GoInt)] < (0 : stdgo.GoInt8) : Bool)) {
                _v._fromP1xP1(_tmp1);
                _aTable.selectInto(_multA, -_aNaf[(_i : stdgo.GoInt)]);
                _tmp1.sub(_v, _multA);
            };
            if ((_bNaf[(_i : stdgo.GoInt)] > (0 : stdgo.GoInt8) : Bool)) {
                _v._fromP1xP1(_tmp1);
                _basepointNafTable.selectInto(_multB, _bNaf[(_i : stdgo.GoInt)]);
                _tmp1.addAffine(_v, _multB);
            } else if ((_bNaf[(_i : stdgo.GoInt)] < (0 : stdgo.GoInt8) : Bool)) {
                _v._fromP1xP1(_tmp1);
                _basepointNafTable.selectInto(_multB, -_bNaf[(_i : stdgo.GoInt)]);
                _tmp1.subAffine(_v, _multB);
            };
            _tmp2.fromP1xP1(_tmp1);
        });
        _v._fromP2(_tmp2);
        return _v;
    }
    @:keep
    static public function scalarMult( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>, _x:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, _q:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> = _v;
        _internal.crypto.internal.edwards25519.Edwards25519__checkInitialized._checkInitialized(_q);
        var _table:_internal.crypto.internal.edwards25519.Edwards25519_T_projLookupTable.T_projLookupTable = ({} : _internal.crypto.internal.edwards25519.Edwards25519_T_projLookupTable.T_projLookupTable);
        _table.fromP3(_q);
        var _digits = _x._signedRadix16()?.__copy__();
        var _multiple = (stdgo.Go.setRef((new _internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached() : _internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached)) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached>);
        var _tmp1 = (stdgo.Go.setRef((new _internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1() : _internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1)) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1>);
        var _tmp2 = (stdgo.Go.setRef((new _internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2() : _internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2)) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2>);
        _table.selectInto(_multiple, _digits[(63 : stdgo.GoInt)]);
        _v.set(_internal.crypto.internal.edwards25519.Edwards25519_newIdentityPoint.newIdentityPoint());
        _tmp1.add(_v, _multiple);
        {
            var _i = (62 : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                _tmp2.fromP1xP1(_tmp1);
                _tmp1.double(_tmp2);
                _tmp2.fromP1xP1(_tmp1);
                _tmp1.double(_tmp2);
                _tmp2.fromP1xP1(_tmp1);
                _tmp1.double(_tmp2);
                _tmp2.fromP1xP1(_tmp1);
                _tmp1.double(_tmp2);
                _v._fromP1xP1(_tmp1);
                _table.selectInto(_multiple, _digits[(_i : stdgo.GoInt)]);
                _tmp1.add(_v, _multiple);
            });
        };
        _v._fromP1xP1(_tmp1);
        return _v;
    }
    @:keep
    static public function scalarBaseMult( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>, _x:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> = _v;
        var _basepointTable = _internal.crypto.internal.edwards25519.Edwards25519__basepointTable._basepointTable();
        var _digits = _x._signedRadix16()?.__copy__();
        var _multiple = (stdgo.Go.setRef((new _internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached() : _internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached)) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>);
        var _tmp1 = (stdgo.Go.setRef((new _internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1() : _internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1)) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1>);
        var _tmp2 = (stdgo.Go.setRef((new _internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2() : _internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2)) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2>);
        _v.set(_internal.crypto.internal.edwards25519.Edwards25519_newIdentityPoint.newIdentityPoint());
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (64 : stdgo.GoInt) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                _basepointTable[(_i / (2 : stdgo.GoInt) : stdgo.GoInt)].selectInto(_multiple, _digits[(_i : stdgo.GoInt)]);
                _tmp1.addAffine(_v, _multiple);
                _v._fromP1xP1(_tmp1);
            });
        };
        _tmp2.fromP3(_v);
        _tmp1.double(_tmp2);
        _tmp2.fromP1xP1(_tmp1);
        _tmp1.double(_tmp2);
        _tmp2.fromP1xP1(_tmp1);
        _tmp1.double(_tmp2);
        _tmp2.fromP1xP1(_tmp1);
        _tmp1.double(_tmp2);
        _v._fromP1xP1(_tmp1);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (64 : stdgo.GoInt) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                _basepointTable[(_i / (2 : stdgo.GoInt) : stdgo.GoInt)].selectInto(_multiple, _digits[(_i : stdgo.GoInt)]);
                _tmp1.addAffine(_v, _multiple);
                _v._fromP1xP1(_tmp1);
            });
        };
        return _v;
    }
    @:keep
    static public function equal( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>, _u:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>):stdgo.GoInt {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> = _v;
        _internal.crypto.internal.edwards25519.Edwards25519__checkInitialized._checkInitialized(_v, _u);
        var __0:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element), __1:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element), __2:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element), __3:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element);
var _t4 = __3, _t3 = __2, _t2 = __1, _t1 = __0;
        _t1.multiply((stdgo.Go.setRef(_v._x) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_u._z) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t2.multiply((stdgo.Go.setRef(_u._x) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_v._z) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t3.multiply((stdgo.Go.setRef(_v._y) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_u._z) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t4.multiply((stdgo.Go.setRef(_u._y) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_v._z) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        return (_t1.equal((stdgo.Go.setRef(_t2) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>)) & _t3.equal((stdgo.Go.setRef(_t4) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>)) : stdgo.GoInt);
    }
    @:keep
    static public function negate( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>, _p:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> = _v;
        _internal.crypto.internal.edwards25519.Edwards25519__checkInitialized._checkInitialized(_p);
        _v._x.negate((stdgo.Go.setRef(_p._x) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _v._y.set((stdgo.Go.setRef(_p._y) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _v._z.set((stdgo.Go.setRef(_p._z) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _v._t.negate((stdgo.Go.setRef(_p._t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        return _v;
    }
    @:keep
    static public function subtract( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>, _p:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>, _q:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> = _v;
        _internal.crypto.internal.edwards25519.Edwards25519__checkInitialized._checkInitialized(_p, _q);
        var _qCached = (stdgo.Go.setRef(({} : _internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached)) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached>).fromP3(_q);
        var _result = (stdgo.Go.setRef(({} : _internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1)) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1>).sub(_p, _qCached);
        return _v._fromP1xP1(_result);
    }
    @:keep
    static public function add( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>, _p:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>, _q:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> = _v;
        _internal.crypto.internal.edwards25519.Edwards25519__checkInitialized._checkInitialized(_p, _q);
        var _qCached = (stdgo.Go.setRef(({} : _internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached)) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached>).fromP3(_q);
        var _result = (stdgo.Go.setRef(({} : _internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1)) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1>).add(_p, _qCached);
        return _v._fromP1xP1(_result);
    }
    @:keep
    static public function _fromP2( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>, _p:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> = _v;
        _v._x.multiply((stdgo.Go.setRef(_p.x) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_p.z) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _v._y.multiply((stdgo.Go.setRef(_p.y) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_p.z) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _v._z.square((stdgo.Go.setRef(_p.z) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _v._t.multiply((stdgo.Go.setRef(_p.x) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_p.y) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        return _v;
    }
    @:keep
    static public function _fromP1xP1( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>, _p:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> = _v;
        _v._x.multiply((stdgo.Go.setRef(_p.x) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_p.t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _v._y.multiply((stdgo.Go.setRef(_p.y) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_p.z) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _v._z.multiply((stdgo.Go.setRef(_p.z) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_p.t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _v._t.multiply((stdgo.Go.setRef(_p.x) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_p.y) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        return _v;
    }
    @:keep
    static public function setBytes( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>, _x:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>; var _1 : stdgo.Error; } {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> = _v;
        var __tmp__ = (stdgo.Go.setRef(({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element)) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>).setBytes(_x), _y:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("edwards25519: invalid point encoding length" : stdgo.GoString)) };
        };
        var _y2 = (stdgo.Go.setRef(({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element)) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>).square(_y);
        var _u = (stdgo.Go.setRef(({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element)) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>).subtract(_y2, _internal.crypto.internal.edwards25519.Edwards25519__feOne._feOne);
        var _vv = (stdgo.Go.setRef(({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element)) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>).multiply(_y2, _internal.crypto.internal.edwards25519.Edwards25519__d._d);
        _vv = _vv.add(_vv, _internal.crypto.internal.edwards25519.Edwards25519__feOne._feOne);
        var __tmp__ = (stdgo.Go.setRef(({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element)) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>).sqrtRatio(_u, _vv), _xx:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> = __tmp__._0, _wasSquare:stdgo.GoInt = __tmp__._1;
        if (_wasSquare == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("edwards25519: invalid point encoding" : stdgo.GoString)) };
        };
        var _xxNeg = (stdgo.Go.setRef(({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element)) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>).negate(_xx);
        _xx = _xx.select(_xxNeg, _xx, ((_x[(31 : stdgo.GoInt)] >> (7i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt));
        _v._x.set(_xx);
        _v._y.set(_y);
        _v._z.one();
        _v._t.multiply(_xx, _y);
        return { _0 : _v, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _bytes( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>, _buf:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> = _v;
        _internal.crypto.internal.edwards25519.Edwards25519__checkInitialized._checkInitialized(_v);
        var __0:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element), __1:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element), __2:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element);
var _y = __2, _x = __1, _zInv = __0;
        _zInv.invert((stdgo.Go.setRef(_v._z) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _x.multiply((stdgo.Go.setRef(_v._x) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_zInv) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _y.multiply((stdgo.Go.setRef(_v._y) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_zInv) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        var _out = _internal.crypto.internal.edwards25519.Edwards25519__copyFieldElement._copyFieldElement(_buf, (stdgo.Go.setRef(_y) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _out[(31 : stdgo.GoInt)] = (_out[(31 : stdgo.GoInt)] | (((_x.isNegative() << (7i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        return _out;
    }
    @:keep
    static public function bytes( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> = _v;
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUInt8)]);
        return _v._bytes((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
    }
    @:keep
    static public function set( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>, _u:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> = _v;
        {
            var __tmp__ = (_u : _internal.crypto.internal.edwards25519.Edwards25519_Point.Point)?.__copy__();
            (_v : _internal.crypto.internal.edwards25519.Edwards25519_Point.Point).__291 = __tmp__.__291;
            (_v : _internal.crypto.internal.edwards25519.Edwards25519_Point.Point)._x = __tmp__._x;
            (_v : _internal.crypto.internal.edwards25519.Edwards25519_Point.Point)._y = __tmp__._y;
            (_v : _internal.crypto.internal.edwards25519.Edwards25519_Point.Point)._z = __tmp__._z;
            (_v : _internal.crypto.internal.edwards25519.Edwards25519_Point.Point)._t = __tmp__._t;
        };
        return _v;
    }
}

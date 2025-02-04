package stdgo._internal.crypto.internal.edwards25519;
@:keep @:allow(stdgo._internal.crypto.internal.edwards25519.Edwards25519.Point_asInterface) class Point_static_extension {
    @:keep
    @:tdfield
    static public function varTimeDoubleScalarBaseMult( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _a:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, a:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _b:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = _v;
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__checkinitialized._checkInitialized(a);
        var _basepointNafTable = stdgo._internal.crypto.internal.edwards25519.Edwards25519__basepointnaftable._basepointNafTable();
        var _aTable:stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable5.T_nafLookupTable5 = ({} : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable5.T_nafLookupTable5);
        @:check2 _aTable.fromP3(a);
        var _aNaf = @:check2r _a._nonAdjacentForm((5u32 : stdgo.GoUInt))?.__copy__();
        var _bNaf = @:check2r _b._nonAdjacentForm((8u32 : stdgo.GoUInt))?.__copy__();
        var _i = (255 : stdgo.GoInt);
        {
            var _j = (_i : stdgo.GoInt);
            while ((_j >= (0 : stdgo.GoInt) : Bool)) {
                if (((_aNaf[(_j : stdgo.GoInt)] != (0 : stdgo.GoInt8)) || (_bNaf[(_j : stdgo.GoInt)] != (0 : stdgo.GoInt8)) : Bool)) {
                    break;
                };
                _j--;
            };
        };
        var _multA = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>);
        var _multB = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>);
        var _tmp1 = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>);
        var _tmp2 = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2>);
        @:check2r _tmp2.zero();
        while ((_i >= (0 : stdgo.GoInt) : Bool)) {
            @:check2r _tmp1.double(_tmp2);
if ((_aNaf[(_i : stdgo.GoInt)] > (0 : stdgo.GoInt8) : Bool)) {
                @:check2r _v._fromP1xP1(_tmp1);
                @:check2 _aTable.selectInto(_multA, _aNaf[(_i : stdgo.GoInt)]);
                @:check2r _tmp1.add(_v, _multA);
            } else if ((_aNaf[(_i : stdgo.GoInt)] < (0 : stdgo.GoInt8) : Bool)) {
                @:check2r _v._fromP1xP1(_tmp1);
                @:check2 _aTable.selectInto(_multA, -_aNaf[(_i : stdgo.GoInt)]);
                @:check2r _tmp1.sub(_v, _multA);
            };
if ((_bNaf[(_i : stdgo.GoInt)] > (0 : stdgo.GoInt8) : Bool)) {
                @:check2r _v._fromP1xP1(_tmp1);
                @:check2r _basepointNafTable.selectInto(_multB, _bNaf[(_i : stdgo.GoInt)]);
                @:check2r _tmp1.addAffine(_v, _multB);
            } else if ((_bNaf[(_i : stdgo.GoInt)] < (0 : stdgo.GoInt8) : Bool)) {
                @:check2r _v._fromP1xP1(_tmp1);
                @:check2r _basepointNafTable.selectInto(_multB, -_bNaf[(_i : stdgo.GoInt)]);
                @:check2r _tmp1.subAffine(_v, _multB);
            };
@:check2r _tmp2.fromP1xP1(_tmp1);
            _i--;
        };
        @:check2r _v._fromP2(_tmp2);
        return _v;
    }
    @:keep
    @:tdfield
    static public function scalarMult( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = _v;
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__checkinitialized._checkInitialized(_q);
        var _table:stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projlookuptable.T_projLookupTable = ({} : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projlookuptable.T_projLookupTable);
        @:check2 _table.fromP3(_q);
        var _digits = @:check2r _x._signedRadix16()?.__copy__();
        var _multiple = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>);
        var _tmp1 = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>);
        var _tmp2 = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2>);
        @:check2 _table.selectInto(_multiple, _digits[(63 : stdgo.GoInt)]);
        @:check2r _v.set(stdgo._internal.crypto.internal.edwards25519.Edwards25519_newidentitypoint.newIdentityPoint());
        @:check2r _tmp1.add(_v, _multiple);
        {
            var _i = (62 : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                @:check2r _tmp2.fromP1xP1(_tmp1);
@:check2r _tmp1.double(_tmp2);
@:check2r _tmp2.fromP1xP1(_tmp1);
@:check2r _tmp1.double(_tmp2);
@:check2r _tmp2.fromP1xP1(_tmp1);
@:check2r _tmp1.double(_tmp2);
@:check2r _tmp2.fromP1xP1(_tmp1);
@:check2r _tmp1.double(_tmp2);
@:check2r _v._fromP1xP1(_tmp1);
@:check2 _table.selectInto(_multiple, _digits[(_i : stdgo.GoInt)]);
@:check2r _tmp1.add(_v, _multiple);
                _i--;
            };
        };
        @:check2r _v._fromP1xP1(_tmp1);
        return _v;
    }
    @:keep
    @:tdfield
    static public function scalarBaseMult( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = _v;
        var _basepointTable = stdgo._internal.crypto.internal.edwards25519.Edwards25519__basepointtable._basepointTable();
        var _digits = @:check2r _x._signedRadix16()?.__copy__();
        var _multiple = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>);
        var _tmp1 = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>);
        var _tmp2 = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2>);
        @:check2r _v.set(stdgo._internal.crypto.internal.edwards25519.Edwards25519_newidentitypoint.newIdentityPoint());
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (64 : stdgo.GoInt) : Bool)) {
                @:check2 _basepointTable[(_i / (2 : stdgo.GoInt) : stdgo.GoInt)].selectInto(_multiple, _digits[(_i : stdgo.GoInt)]);
@:check2r _tmp1.addAffine(_v, _multiple);
@:check2r _v._fromP1xP1(_tmp1);
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        @:check2r _tmp2.fromP3(_v);
        @:check2r _tmp1.double(_tmp2);
        @:check2r _tmp2.fromP1xP1(_tmp1);
        @:check2r _tmp1.double(_tmp2);
        @:check2r _tmp2.fromP1xP1(_tmp1);
        @:check2r _tmp1.double(_tmp2);
        @:check2r _tmp2.fromP1xP1(_tmp1);
        @:check2r _tmp1.double(_tmp2);
        @:check2r _v._fromP1xP1(_tmp1);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (64 : stdgo.GoInt) : Bool)) {
                @:check2 _basepointTable[(_i / (2 : stdgo.GoInt) : stdgo.GoInt)].selectInto(_multiple, _digits[(_i : stdgo.GoInt)]);
@:check2r _tmp1.addAffine(_v, _multiple);
@:check2r _v._fromP1xP1(_tmp1);
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        return _v;
    }
    @:keep
    @:tdfield
    static public function equal( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _u:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):stdgo.GoInt {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = _v;
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__checkinitialized._checkInitialized(_v, _u);
        var __0:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), __1:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), __2:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), __3:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
var _t4 = __3, _t3 = __2, _t2 = __1, _t1 = __0;
        @:check2 _t1.multiply((stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _u ?? throw "null pointer dereference")._z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t2.multiply((stdgo.Go.setRef((@:checkr _u ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference")._z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t3.multiply((stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference")._y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _u ?? throw "null pointer dereference")._z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t4.multiply((stdgo.Go.setRef((@:checkr _u ?? throw "null pointer dereference")._y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference")._z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        return (@:check2 _t1.equal((stdgo.Go.setRef(_t2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>)) & @:check2 _t3.equal((stdgo.Go.setRef(_t4) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>)) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function negate( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = _v;
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__checkinitialized._checkInitialized(_p);
        @:check2 (@:checkr _v ?? throw "null pointer dereference")._x.negate((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference")._y.set((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference")._z.set((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference")._t.negate((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        return _v;
    }
    @:keep
    @:tdfield
    static public function subtract( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = _v;
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__checkinitialized._checkInitialized(_p, _q);
        var _qCached = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>).fromP3(_q);
        var _result = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>).sub(_p, _qCached);
        return @:check2r _v._fromP1xP1(_result);
    }
    @:keep
    @:tdfield
    static public function add( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = _v;
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__checkinitialized._checkInitialized(_p, _q);
        var _qCached = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>).fromP3(_q);
        var _result = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>).add(_p, _qCached);
        return @:check2r _v._fromP1xP1(_result);
    }
    @:keep
    @:tdfield
    static public function _fromP2( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = _v;
        @:check2 (@:checkr _v ?? throw "null pointer dereference")._x.multiply((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference")._y.multiply((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference")._z.square((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference")._t.multiply((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        return _v;
    }
    @:keep
    @:tdfield
    static public function _fromP1xP1( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = _v;
        @:check2 (@:checkr _v ?? throw "null pointer dereference")._x.multiply((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference")._y.multiply((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference")._z.multiply((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference")._t.multiply((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        return _v;
    }
    @:keep
    @:tdfield
    static public function setBytes( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _x:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>; var _1 : stdgo.Error; } {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = _v;
        var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).setBytes(_x), _y:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("edwards25519: invalid point encoding length" : stdgo.GoString)) };
        };
        var _y2 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).square(_y);
        var _u = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).subtract(_y2, stdgo._internal.crypto.internal.edwards25519.Edwards25519__feone._feOne);
        var _vv = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).multiply(_y2, stdgo._internal.crypto.internal.edwards25519.Edwards25519__d._d);
        _vv = @:check2r _vv.add(_vv, stdgo._internal.crypto.internal.edwards25519.Edwards25519__feone._feOne);
        var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).sqrtRatio(_u, _vv), _xx:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = __tmp__._0, _wasSquare:stdgo.GoInt = __tmp__._1;
        if (_wasSquare == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("edwards25519: invalid point encoding" : stdgo.GoString)) };
        };
        var _xxNeg = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).negate(_xx);
        _xx = @:check2r _xx.select(_xxNeg, _xx, ((_x[(31 : stdgo.GoInt)] >> (7i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt));
        @:check2 (@:checkr _v ?? throw "null pointer dereference")._x.set(_xx);
        @:check2 (@:checkr _v ?? throw "null pointer dereference")._y.set(_y);
        @:check2 (@:checkr _v ?? throw "null pointer dereference")._z.one();
        @:check2 (@:checkr _v ?? throw "null pointer dereference")._t.multiply(_xx, _y);
        return { _0 : _v, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _bytes( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _buf:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = _v;
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__checkinitialized._checkInitialized(_v);
        var __0:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), __1:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), __2:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
var _y = __2, _x = __1, _zInv = __0;
        @:check2 _zInv.invert((stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference")._z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _x.multiply((stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_zInv) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _y.multiply((stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference")._y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_zInv) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        var _out = stdgo._internal.crypto.internal.edwards25519.Edwards25519__copyfieldelement._copyFieldElement(_buf, (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        _out[(31 : stdgo.GoInt)] = (_out[(31 : stdgo.GoInt)] | (((@:check2 _x.isNegative() << (7i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        return _out;
    }
    @:keep
    @:tdfield
    static public function bytes( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = _v;
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32).__setNumber32__();
        return @:check2r _v._bytes((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
    }
    @:keep
    @:tdfield
    static public function set( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _u:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = _v;
        {
            var __tmp__ = (_u : stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point)?.__copy__();
            var x = (_v : stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point);
            x.__282 = __tmp__?.__282;
            x._x = __tmp__?._x;
            x._y = __tmp__?._y;
            x._z = __tmp__?._z;
            x._t = __tmp__?._t;
        };
        return _v;
    }
}

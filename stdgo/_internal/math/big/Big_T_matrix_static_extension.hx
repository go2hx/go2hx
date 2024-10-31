package stdgo._internal.math.big;
@:keep @:allow(stdgo._internal.math.big.Big.T_matrix_asInterface) class T_matrix_static_extension {
    @:keep
    static public function string( _a:stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix> = _a;
        var _s = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _a._n : Bool)) {
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < _a._m : Bool)) {
                        _s = (_s + (stdgo._internal.fmt.Fmt_sprintf.sprintf(("\t%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a._at(_i, _j))))).__copy__() : stdgo.GoString);
                        _j++;
                    };
                };
_s = (_s + (("\n" : stdgo.GoString)).__copy__() : stdgo.GoString);
                _i++;
            };
        };
        return _s?.__copy__();
    }
    @:keep
    static public function _eql( _a:stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix>, _b:stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix>):Bool {
        @:recv var _a:stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix> = _a;
        if (((_a._n != _b._n) || (_a._m != _b._m) : Bool)) {
            return false;
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _a._n : Bool)) {
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < _a._m : Bool)) {
                        if (_a._at(_i, _j).cmp(_b._at(_i, _j)) != ((0 : stdgo.GoInt))) {
                            return false;
                        };
                        _j++;
                    };
                };
                _i++;
            };
        };
        return true;
    }
    @:keep
    static public function _mul( _a:stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix>, _b:stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix>):stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix> {
        @:recv var _a:stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix> = _a;
        if (_a._m != (_b._n)) {
            throw stdgo.Go.toInterface(("illegal matrix multiply" : stdgo.GoString));
        };
        var _c = stdgo._internal.math.big.Big__newMatrix._newMatrix(_a._n, _b._m);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _c._n : Bool)) {
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < _c._m : Bool)) {
                        var _x = stdgo._internal.math.big.Big_newRat.newRat((0i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
{
                            var _k = (0 : stdgo.GoInt);
                            while ((_k < _a._m : Bool)) {
                                _x.add(_x, (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).mul(_a._at(_i, _k), _b._at(_k, _j)));
                                _k++;
                            };
                        };
_c._set(_i, _j, _x);
                        _j++;
                    };
                };
                _i++;
            };
        };
        return _c;
    }
    @:keep
    static public function _set( _a:stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix>, _i:stdgo.GoInt, _j:stdgo.GoInt, _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix> = _a;
        if (!((((((0 : stdgo.GoInt) <= _i : Bool) && (_i < _a._n : Bool) : Bool) && ((0 : stdgo.GoInt) <= _j : Bool) : Bool) && (_j < _a._m : Bool) : Bool))) {
            throw stdgo.Go.toInterface(("index out of range" : stdgo.GoString));
        };
        _a._a[((_i * _a._m : stdgo.GoInt) + _j : stdgo.GoInt)] = _x;
    }
    @:keep
    static public function _at( _a:stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix>, _i:stdgo.GoInt, _j:stdgo.GoInt):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> {
        @:recv var _a:stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix> = _a;
        if (!((((((0 : stdgo.GoInt) <= _i : Bool) && (_i < _a._n : Bool) : Bool) && ((0 : stdgo.GoInt) <= _j : Bool) : Bool) && (_j < _a._m : Bool) : Bool))) {
            throw stdgo.Go.toInterface(("index out of range" : stdgo.GoString));
        };
        return _a._a[((_i * _a._m : stdgo.GoInt) + _j : stdgo.GoInt)];
    }
}

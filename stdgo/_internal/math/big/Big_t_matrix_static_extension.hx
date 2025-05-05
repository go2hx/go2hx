package stdgo._internal.math.big;
@:keep @:allow(stdgo._internal.math.big.Big.T_matrix_asInterface) class T_matrix_static_extension {
    @:keep
    @:tdfield
    static public function string( _a:stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix> = _a;
        var _s = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L127"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _a ?? throw "null pointer dereference")._n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L128"
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < (@:checkr _a ?? throw "null pointer dereference")._m : Bool)) {
                        _s = (_s + (stdgo._internal.fmt.Fmt_sprintf.sprintf((("\t%s" : stdgo.GoString) : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a._at(_i, _j))))).__copy__() : stdgo.GoString);
                        _j++;
                    };
                };
_s = (_s + (("\n" : stdgo.GoString)).__copy__() : stdgo.GoString);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L133"
        return _s?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _eql( _a:stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix>, _b:stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix>):Bool {
        @:recv var _a:stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix> = _a;
        //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L112"
        if ((((@:checkr _a ?? throw "null pointer dereference")._n != (@:checkr _b ?? throw "null pointer dereference")._n) || ((@:checkr _a ?? throw "null pointer dereference")._m != (@:checkr _b ?? throw "null pointer dereference")._m) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L113"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L115"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _a ?? throw "null pointer dereference")._n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L116"
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < (@:checkr _a ?? throw "null pointer dereference")._m : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L117"
                        if (_a._at(_i, _j).cmp(_b._at(_i, _j)) != ((0 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L118"
                            return false;
                        };
                        _j++;
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L122"
        return true;
    }
    @:keep
    @:tdfield
    static public function _mul( _a:stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix>, _b:stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix>):stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix> {
        @:recv var _a:stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix> = _a;
        //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L95"
        if ((@:checkr _a ?? throw "null pointer dereference")._m != ((@:checkr _b ?? throw "null pointer dereference")._n)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L96"
            throw stdgo.Go.toInterface(("illegal matrix multiply" : stdgo.GoString));
        };
        var _c = stdgo._internal.math.big.Big__newmatrix._newMatrix((@:checkr _a ?? throw "null pointer dereference")._n, (@:checkr _b ?? throw "null pointer dereference")._m);
        //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L99"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _c ?? throw "null pointer dereference")._n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L100"
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < (@:checkr _c ?? throw "null pointer dereference")._m : Bool)) {
                        var _x = stdgo._internal.math.big.Big_newrat.newRat((0i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
//"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L102"
                        {
                            var _k = (0 : stdgo.GoInt);
                            while ((_k < (@:checkr _a ?? throw "null pointer dereference")._m : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L103"
                                _x.add(_x, (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).mul(_a._at(_i, _k), _b._at(_k, _j)));
                                _k++;
                            };
                        };
//"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L105"
                        _c._set(_i, _j, _x);
                        _j++;
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L108"
        return _c;
    }
    @:keep
    @:tdfield
    static public function _set( _a:stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix>, _i:stdgo.GoInt, _j:stdgo.GoInt, _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix> = _a;
        //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L29"
        if (!((((((0 : stdgo.GoInt) <= _i : Bool) && (_i < (@:checkr _a ?? throw "null pointer dereference")._n : Bool) : Bool) && ((0 : stdgo.GoInt) <= _j : Bool) : Bool) && (_j < (@:checkr _a ?? throw "null pointer dereference")._m : Bool) : Bool))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L30"
            throw stdgo.Go.toInterface(("index out of range" : stdgo.GoString));
        };
        (@:checkr _a ?? throw "null pointer dereference")._a[((_i * (@:checkr _a ?? throw "null pointer dereference")._m : stdgo.GoInt) + _j : stdgo.GoInt)] = _x;
    }
    @:keep
    @:tdfield
    static public function _at( _a:stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix>, _i:stdgo.GoInt, _j:stdgo.GoInt):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _a:stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix> = _a;
        //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L22"
        if (!((((((0 : stdgo.GoInt) <= _i : Bool) && (_i < (@:checkr _a ?? throw "null pointer dereference")._n : Bool) : Bool) && ((0 : stdgo.GoInt) <= _j : Bool) : Bool) && (_j < (@:checkr _a ?? throw "null pointer dereference")._m : Bool) : Bool))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L23"
            throw stdgo.Go.toInterface(("index out of range" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L25"
        return (@:checkr _a ?? throw "null pointer dereference")._a[((_i * (@:checkr _a ?? throw "null pointer dereference")._m : stdgo.GoInt) + _j : stdgo.GoInt)];
    }
}

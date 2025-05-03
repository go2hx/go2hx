package stdgo._internal.math.big;
function testFloatZeroValue(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _x:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L38"
        {
            var _s = (_x.text((102 : stdgo.GoUInt8), (1 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
            if (_s != (("0.0" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L39"
                _t.errorf(("zero value = %s; want 0.0" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L43"
        {
            var _prec = (_x.prec() : stdgo.GoUInt);
            if (_prec != ((0u32 : stdgo.GoUInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L44"
                _t.errorf(("prec = %d; want 0" : stdgo.GoString), stdgo.Go.toInterface(_prec));
            };
        };
        var _make = function(_x:stdgo.GoInt):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
            var _f:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L50"
            if (_x != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L51"
                _f.setInt64((_x : stdgo.GoInt64));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L54"
            return (stdgo.Go.setRef(_f) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L56"
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_t__struct_10.T__struct_10>(15, 15, ...[
({ _z : (0 : stdgo.GoInt), _x : (0 : stdgo.GoInt), _y : (0 : stdgo.GoInt), _want : (0 : stdgo.GoInt), _opname : (43 : stdgo.GoInt32), _op : stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.add } : stdgo._internal.math.big.Big_t__struct_10.T__struct_10),
({ _z : (0 : stdgo.GoInt), _x : (1 : stdgo.GoInt), _y : (2 : stdgo.GoInt), _want : (3 : stdgo.GoInt), _opname : (43 : stdgo.GoInt32), _op : stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.add } : stdgo._internal.math.big.Big_t__struct_10.T__struct_10),
({ _z : (1 : stdgo.GoInt), _x : (2 : stdgo.GoInt), _y : (0 : stdgo.GoInt), _want : (2 : stdgo.GoInt), _opname : (43 : stdgo.GoInt32), _op : stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.add } : stdgo._internal.math.big.Big_t__struct_10.T__struct_10),
({ _z : (2 : stdgo.GoInt), _x : (0 : stdgo.GoInt), _y : (1 : stdgo.GoInt), _want : (1 : stdgo.GoInt), _opname : (43 : stdgo.GoInt32), _op : stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.add } : stdgo._internal.math.big.Big_t__struct_10.T__struct_10),
({ _z : (0 : stdgo.GoInt), _x : (0 : stdgo.GoInt), _y : (0 : stdgo.GoInt), _want : (0 : stdgo.GoInt), _opname : (45 : stdgo.GoInt32), _op : stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.sub } : stdgo._internal.math.big.Big_t__struct_10.T__struct_10),
({ _z : (0 : stdgo.GoInt), _x : (1 : stdgo.GoInt), _y : (2 : stdgo.GoInt), _want : (-1 : stdgo.GoInt), _opname : (45 : stdgo.GoInt32), _op : stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.sub } : stdgo._internal.math.big.Big_t__struct_10.T__struct_10),
({ _z : (1 : stdgo.GoInt), _x : (2 : stdgo.GoInt), _y : (0 : stdgo.GoInt), _want : (2 : stdgo.GoInt), _opname : (45 : stdgo.GoInt32), _op : stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.sub } : stdgo._internal.math.big.Big_t__struct_10.T__struct_10),
({ _z : (2 : stdgo.GoInt), _x : (0 : stdgo.GoInt), _y : (1 : stdgo.GoInt), _want : (-1 : stdgo.GoInt), _opname : (45 : stdgo.GoInt32), _op : stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.sub } : stdgo._internal.math.big.Big_t__struct_10.T__struct_10),
({ _z : (0 : stdgo.GoInt), _x : (0 : stdgo.GoInt), _y : (0 : stdgo.GoInt), _want : (0 : stdgo.GoInt), _opname : (42 : stdgo.GoInt32), _op : stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.mul } : stdgo._internal.math.big.Big_t__struct_10.T__struct_10),
({ _z : (0 : stdgo.GoInt), _x : (1 : stdgo.GoInt), _y : (2 : stdgo.GoInt), _want : (2 : stdgo.GoInt), _opname : (42 : stdgo.GoInt32), _op : stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.mul } : stdgo._internal.math.big.Big_t__struct_10.T__struct_10),
({ _z : (1 : stdgo.GoInt), _x : (2 : stdgo.GoInt), _y : (0 : stdgo.GoInt), _want : (0 : stdgo.GoInt), _opname : (42 : stdgo.GoInt32), _op : stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.mul } : stdgo._internal.math.big.Big_t__struct_10.T__struct_10),
({ _z : (2 : stdgo.GoInt), _x : (0 : stdgo.GoInt), _y : (1 : stdgo.GoInt), _want : (0 : stdgo.GoInt), _opname : (42 : stdgo.GoInt32), _op : stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.mul } : stdgo._internal.math.big.Big_t__struct_10.T__struct_10),
({ _z : (0 : stdgo.GoInt), _x : (2 : stdgo.GoInt), _y : (1 : stdgo.GoInt), _want : (2 : stdgo.GoInt), _opname : (47 : stdgo.GoInt32), _op : stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.quo } : stdgo._internal.math.big.Big_t__struct_10.T__struct_10),
({ _z : (1 : stdgo.GoInt), _x : (2 : stdgo.GoInt), _y : (0 : stdgo.GoInt), _want : (0 : stdgo.GoInt), _opname : (47 : stdgo.GoInt32), _op : stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.quo } : stdgo._internal.math.big.Big_t__struct_10.T__struct_10),
({ _z : (2 : stdgo.GoInt), _x : (0 : stdgo.GoInt), _y : (1 : stdgo.GoInt), _want : (0 : stdgo.GoInt), _opname : (47 : stdgo.GoInt32), _op : stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.quo } : stdgo._internal.math.big.Big_t__struct_10.T__struct_10)].concat([for (i in 15 ... (15 > 15 ? 15 : 15 : stdgo.GoInt).toBasic()) ({ _z : (0 : stdgo.GoInt), _x : (0 : stdgo.GoInt), _y : (0 : stdgo.GoInt), _want : (0 : stdgo.GoInt), _opname : (0 : stdgo.GoInt32), _op : null } : stdgo._internal.math.big.Big_t__struct_10.T__struct_10)])) : stdgo.Slice<stdgo._internal.math.big.Big_t__struct_10.T__struct_10>)) {
            var _z = _make(_test._z);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L82"
            _test._op(_z, _make(_test._x), _make(_test._y));
            var _got = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L84"
            if (!_z.isInf()) {
                _got = (_z._int64() : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L87"
            if (_got != (_test._want)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L88"
                _t.errorf(("%d %c %d = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_test._opname), stdgo.Go.toInterface(_test._y), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
            };
        };
    }

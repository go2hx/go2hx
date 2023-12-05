package stdgo.go.constant_test;
import stdgo.go.constant.Constant;
function example_complexNumbers():Void {
        var _ar:stdgo.go.constant.Constant.Value = stdgo.go.constant.Constant.makeFloat64((2.3 : stdgo.StdGoTypes.GoFloat64));
        var _ai:stdgo.go.constant.Constant.Value = stdgo.go.constant.Constant.makeImag(stdgo.go.constant.Constant.makeInt64((5i64 : stdgo.StdGoTypes.GoInt64)));
        var _a:stdgo.go.constant.Constant.Value = stdgo.go.constant.Constant.binaryOp(_ar, (12 : stdgo.go.token.Token.Token), _ai);
        var _b:stdgo.go.constant.Constant.Value = stdgo.go.constant.Constant.makeUint64((11i64 : stdgo.StdGoTypes.GoUInt64));
        var _c:stdgo.go.constant.Constant.Value = stdgo.go.constant.Constant.binaryOp(_a, (14 : stdgo.go.token.Token.Token), _b);
        var __tmp__ = stdgo.go.constant.Constant.float64Val(stdgo.go.constant.Constant.real(_c)), ar:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _exact:Bool = __tmp__._1;
        if (!_exact) {
            stdgo.fmt.Fmt.printf(("Could not represent real part %s exactly as float64\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.go.constant.Constant.real(_c)));
        };
        var __tmp__ = stdgo.go.constant.Constant.float64Val(stdgo.go.constant.Constant.imag(_c)), ai:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _exact:Bool = __tmp__._1;
        if (!_exact) {
            stdgo.fmt.Fmt.printf(("Could not represent imaginary part %s as exactly as float64\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.go.constant.Constant.imag(_c)));
        };
        var c:stdgo.StdGoTypes.GoComplex128 = new stdgo.StdGoTypes.GoComplex128(ar, ai);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("literal" : stdgo.GoString)), stdgo.Go.toInterface(((25.3f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 55f64))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("go/constant" : stdgo.GoString)), stdgo.Go.toInterface(_c));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("complex128" : stdgo.GoString)), stdgo.Go.toInterface(c));
    }
function exampleBinaryOp():Void {
        var _a:stdgo.go.constant.Constant.Value = stdgo.go.constant.Constant.makeUint64((11i64 : stdgo.StdGoTypes.GoUInt64));
        var _b:stdgo.go.constant.Constant.Value = stdgo.go.constant.Constant.makeFloat64((0.5 : stdgo.StdGoTypes.GoFloat64));
        var _c:stdgo.go.constant.Constant.Value = stdgo.go.constant.Constant.binaryOp(_a, (15 : stdgo.go.token.Token.Token), _b);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_c));
    }
function exampleUnaryOp():Void {
        var _vs = (new stdgo.Slice<stdgo.go.constant.Constant.Value>(3, 3, stdgo.go.constant.Constant.makeBool(true), stdgo.go.constant.Constant.makeFloat64((2.7 : stdgo.StdGoTypes.GoFloat64)), stdgo.go.constant.Constant.makeUint64((42i64 : stdgo.StdGoTypes.GoUInt64))) : stdgo.Slice<stdgo.go.constant.Constant.Value>);
        for (_i => _v in _vs) {
            {
                final __value__ = _v.kind();
                if (__value__ == ((1 : stdgo.go.constant.Constant.Kind))) {
                    _vs[(_i : stdgo.StdGoTypes.GoInt)] = stdgo.go.constant.Constant.unaryOp((43 : stdgo.go.token.Token.Token), _v, (0u32 : stdgo.StdGoTypes.GoUInt));
                } else if (__value__ == ((4 : stdgo.go.constant.Constant.Kind))) {
                    _vs[(_i : stdgo.StdGoTypes.GoInt)] = stdgo.go.constant.Constant.unaryOp((13 : stdgo.go.token.Token.Token), _v, (0u32 : stdgo.StdGoTypes.GoUInt));
                } else if (__value__ == ((3 : stdgo.go.constant.Constant.Kind))) {
                    _vs[(_i : stdgo.StdGoTypes.GoInt)] = stdgo.go.constant.Constant.unaryOp((19 : stdgo.go.token.Token.Token), _v, (16u32 : stdgo.StdGoTypes.GoUInt));
                };
            };
        };
        for (__0 => _v in _vs) {
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_v));
        };
    }
function exampleCompare():Void {
        var _vs = (new stdgo.Slice<stdgo.go.constant.Constant.Value>(6, 6, stdgo.go.constant.Constant.makeString(("Z" : stdgo.GoString)), stdgo.go.constant.Constant.makeString(("bacon" : stdgo.GoString)), stdgo.go.constant.Constant.makeString(("go" : stdgo.GoString)), stdgo.go.constant.Constant.makeString(("Frame" : stdgo.GoString)), stdgo.go.constant.Constant.makeString(("defer" : stdgo.GoString)), stdgo.go.constant.Constant.makeFromLiteral(("\"a\"" : stdgo.GoString), (9 : stdgo.go.token.Token.Token), (0u32 : stdgo.StdGoTypes.GoUInt))) : stdgo.Slice<stdgo.go.constant.Constant.Value>);
        stdgo.sort.Sort.slice(stdgo.Go.toInterface(_vs), function(_i:stdgo.StdGoTypes.GoInt, _j:stdgo.StdGoTypes.GoInt):Bool {
            return stdgo.go.constant.Constant.compare(_vs[(_i : stdgo.StdGoTypes.GoInt)], (45 : stdgo.go.token.Token.Token), _vs[(_j : stdgo.StdGoTypes.GoInt)]);
        });
        for (__0 => _v in _vs) {
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.go.constant.Constant.stringVal(_v)));
        };
    }
function exampleSign():Void {
        var _zero:stdgo.go.constant.Constant.Value = stdgo.go.constant.Constant.makeInt64((0i64 : stdgo.StdGoTypes.GoInt64));
        var _one:stdgo.go.constant.Constant.Value = stdgo.go.constant.Constant.makeInt64((1i64 : stdgo.StdGoTypes.GoInt64));
        var _negOne:stdgo.go.constant.Constant.Value = stdgo.go.constant.Constant.makeInt64((-1i64 : stdgo.StdGoTypes.GoInt64));
        var _mkComplex:(stdgo.go.constant.Constant.Value, stdgo.go.constant.Constant.Value) -> stdgo.go.constant.Constant.Value = function(_a:stdgo.go.constant.Constant.Value, _b:stdgo.go.constant.Constant.Value):stdgo.go.constant.Constant.Value {
            _b = stdgo.go.constant.Constant.makeImag(_b);
            return stdgo.go.constant.Constant.binaryOp(_a, (12 : stdgo.go.token.Token.Token), _b);
        };
        var _vs = (new stdgo.Slice<stdgo.go.constant.Constant.Value>(
10,
10,
_negOne,
_mkComplex(_zero, _negOne),
_mkComplex(_one, _negOne),
_mkComplex(_negOne, _one),
_mkComplex(_negOne, _negOne),
_zero,
_mkComplex(_zero, _zero),
_one,
_mkComplex(_zero, _one),
_mkComplex(_one, _one)) : stdgo.Slice<stdgo.go.constant.Constant.Value>);
        for (__0 => _v in _vs) {
            stdgo.fmt.Fmt.printf(("% d %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.go.constant.Constant.sign(_v)), stdgo.Go.toInterface(_v));
        };
    }
function exampleVal():Void {
        var _maxint:stdgo.go.constant.Constant.Value = stdgo.go.constant.Constant.makeInt64((9223372036854775807i64 : stdgo.StdGoTypes.GoInt64));
        stdgo.fmt.Fmt.printf(("%v\n" : stdgo.GoString), stdgo.go.constant.Constant.val(_maxint));
        var _e:stdgo.go.constant.Constant.Value = stdgo.go.constant.Constant.makeFloat64((2.718281828459045 : stdgo.StdGoTypes.GoFloat64));
        stdgo.fmt.Fmt.printf(("%v\n" : stdgo.GoString), stdgo.go.constant.Constant.val(_e));
        var _b:stdgo.go.constant.Constant.Value = stdgo.go.constant.Constant.makeBool(true);
        stdgo.fmt.Fmt.printf(("%v\n" : stdgo.GoString), stdgo.go.constant.Constant.val(_b));
        _b = stdgo.go.constant.Constant.make(stdgo.Go.toInterface(false));
        stdgo.fmt.Fmt.printf(("%v\n" : stdgo.GoString), stdgo.go.constant.Constant.val(_b));
    }

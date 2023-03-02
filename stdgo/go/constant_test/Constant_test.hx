package stdgo.go.constant_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
function example_complexNumbers():Void {
        var _ar:Value = stdgo.go.constant.Constant.makeFloat64((2.3 : GoFloat64));
        var _ai:Value = stdgo.go.constant.Constant.makeImag(stdgo.go.constant.Constant.makeInt64(("5" : GoInt64)));
        var _a:Value = stdgo.go.constant.Constant.binaryOp(_ar, (12 : stdgo.go.token.Token.Token), _ai);
        var _b:Value = stdgo.go.constant.Constant.makeUint64(("11" : GoUInt64));
        var _c:Value = stdgo.go.constant.Constant.binaryOp(_a, (14 : stdgo.go.token.Token.Token), _b);
        var __tmp__ = stdgo.go.constant.Constant.float64Val(stdgo.go.constant.Constant.real(_c)), ar:GoFloat64 = __tmp__._0, _exact:Bool = __tmp__._1;
        if (!_exact) {
            stdgo.fmt.Fmt.printf(("Could not represent real part %s exactly as float64\n" : GoString), Go.toInterface(stdgo.go.constant.Constant.real(_c)));
        };
        var __tmp__ = stdgo.go.constant.Constant.float64Val(stdgo.go.constant.Constant.imag(_c)), ai:GoFloat64 = __tmp__._0, _exact:Bool = __tmp__._1;
        if (!_exact) {
            stdgo.fmt.Fmt.printf(("Could not represent imaginary part %s as exactly as float64\n" : GoString), Go.toInterface(stdgo.go.constant.Constant.imag(_c)));
        };
        var c:GoComplex128 = new GoComplex128(ar, ai);
        stdgo.fmt.Fmt.println(Go.toInterface(("literal" : GoString)), Go.toInterface(((25.3 : GoFloat64) + new GoComplex128(0, 55))));
        stdgo.fmt.Fmt.println(Go.toInterface(("go/constant" : GoString)), Go.toInterface(_c));
        stdgo.fmt.Fmt.println(Go.toInterface(("complex128" : GoString)), Go.toInterface(c));
    }
function exampleBinaryOp():Void {
        var _a:Value = stdgo.go.constant.Constant.makeUint64(("11" : GoUInt64));
        var _b:Value = stdgo.go.constant.Constant.makeFloat64((0.5 : GoFloat64));
        var _c:Value = stdgo.go.constant.Constant.binaryOp(_a, (15 : stdgo.go.token.Token.Token), _b);
        stdgo.fmt.Fmt.println(Go.toInterface(_c));
    }
function exampleUnaryOp():Void {
        var _vs = (new Slice<Value>(0, 0, stdgo.go.constant.Constant.makeBool(true), stdgo.go.constant.Constant.makeFloat64((2.7 : GoFloat64)), stdgo.go.constant.Constant.makeUint64(("42" : GoUInt64))) : Slice<Value>);
        for (_i => _v in _vs) {
            {
                final __value__ = _v.kind();
                if (__value__ == ((1 : Kind))) {
                    _vs[(_i : GoInt)] = stdgo.go.constant.Constant.unaryOp((43 : stdgo.go.token.Token.Token), _v, ("0" : GoUInt));
                } else if (__value__ == ((4 : Kind))) {
                    _vs[(_i : GoInt)] = stdgo.go.constant.Constant.unaryOp((13 : stdgo.go.token.Token.Token), _v, ("0" : GoUInt));
                } else if (__value__ == ((3 : Kind))) {
                    _vs[(_i : GoInt)] = stdgo.go.constant.Constant.unaryOp((19 : stdgo.go.token.Token.Token), _v, ("16" : GoUInt));
                };
            };
        };
        for (_0 => _v in _vs) {
            stdgo.fmt.Fmt.println(Go.toInterface(_v));
        };
    }
function exampleCompare():Void {
        var _vs = (new Slice<Value>(0, 0, stdgo.go.constant.Constant.makeString(("Z" : GoString)), stdgo.go.constant.Constant.makeString(("bacon" : GoString)), stdgo.go.constant.Constant.makeString(("go" : GoString)), stdgo.go.constant.Constant.makeString(("Frame" : GoString)), stdgo.go.constant.Constant.makeString(("defer" : GoString)), stdgo.go.constant.Constant.makeFromLiteral(("\"a\"" : GoString), (9 : stdgo.go.token.Token.Token), ("0" : GoUInt))) : Slice<Value>);
        stdgo.sort.Sort.slice(Go.toInterface(_vs), function(_i:GoInt, _j:GoInt):Bool {
            return stdgo.go.constant.Constant.compare(_vs[(_i : GoInt)], (45 : stdgo.go.token.Token.Token), _vs[(_j : GoInt)]);
        });
        for (_0 => _v in _vs) {
            stdgo.fmt.Fmt.println(Go.toInterface(stdgo.go.constant.Constant.stringVal(_v)));
        };
    }
function exampleSign():Void {
        var _zero:Value = stdgo.go.constant.Constant.makeInt64(("0" : GoInt64));
        var _one:Value = stdgo.go.constant.Constant.makeInt64(("1" : GoInt64));
        var _negOne:Value = stdgo.go.constant.Constant.makeInt64(("-1" : GoInt64));
        var _mkComplex:(Value, Value) -> Value = function(_a:Value, _b:Value):Value {
            _b = stdgo.go.constant.Constant.makeImag(_b);
            return stdgo.go.constant.Constant.binaryOp(_a, (12 : stdgo.go.token.Token.Token), _b);
        };
        var _vs = (new Slice<Value>(
0,
0,
_negOne,
_mkComplex(_zero, _negOne),
_mkComplex(_one, _negOne),
_mkComplex(_negOne, _one),
_mkComplex(_negOne, _negOne),
_zero,
_mkComplex(_zero, _zero),
_one,
_mkComplex(_zero, _one),
_mkComplex(_one, _one)) : Slice<Value>);
        for (_0 => _v in _vs) {
            stdgo.fmt.Fmt.printf(("% d %s\n" : GoString), Go.toInterface(stdgo.go.constant.Constant.sign(_v)), Go.toInterface(_v));
        };
    }
function exampleVal():Void {
        var _maxint:Value = stdgo.go.constant.Constant.makeInt64(("9223372036854775807" : GoInt64));
        stdgo.fmt.Fmt.printf(("%v\n" : GoString), stdgo.go.constant.Constant.val(_maxint));
        var _e:Value = stdgo.go.constant.Constant.makeFloat64((2.718281828459045 : GoFloat64));
        stdgo.fmt.Fmt.printf(("%v\n" : GoString), stdgo.go.constant.Constant.val(_e));
        var _b:Value = stdgo.go.constant.Constant.makeBool(true);
        stdgo.fmt.Fmt.printf(("%v\n" : GoString), stdgo.go.constant.Constant.val(_b));
        _b = stdgo.go.constant.Constant.make(Go.toInterface(false));
        stdgo.fmt.Fmt.printf(("%v\n" : GoString), stdgo.go.constant.Constant.val(_b));
    }

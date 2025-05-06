package stdgo._internal.go.constant;
function testOps(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L321"
        for (__1 => _test in stdgo._internal.go.constant.Constant__optests._opTests) {
            var _a = stdgo._internal.strings.Strings_split.split(_test?.__copy__(), (" " : stdgo.GoString));
            var _i = (0 : stdgo.GoInt);
            var _x:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value), _x0:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L326"
            {
                final __value__ = (_a.length);
                if (__value__ == ((4 : stdgo.GoInt))) {} else if (__value__ == ((5 : stdgo.GoInt))) {
                    {
                        final __tmp__0 = stdgo._internal.go.constant.Constant__val._val(_a[(0 : stdgo.GoInt)]?.__copy__());
                        final __tmp__1 = stdgo._internal.go.constant.Constant__val._val(_a[(0 : stdgo.GoInt)]?.__copy__());
                        _x = @:binopAssign __tmp__0;
                        _x0 = @:binopAssign __tmp__1;
                    };
                    _i = (1 : stdgo.GoInt);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L334"
                    _t.errorf(("invalid test case: %s" : stdgo.GoString), stdgo.Go.toInterface(_test));
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L335"
                    continue;
                };
            };
            var __tmp__ = (stdgo._internal.go.constant.Constant__optab._optab != null && stdgo._internal.go.constant.Constant__optab._optab.__exists__(_a[(_i : stdgo.GoInt)]?.__copy__()) ? { _0 : stdgo._internal.go.constant.Constant__optab._optab[_a[(_i : stdgo.GoInt)]?.__copy__()], _1 : true } : { _0 : ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token), _1 : false }), _op:stdgo._internal.go.token.Token_token.Token = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L339"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L340"
                throw stdgo.Go.toInterface((("missing optab entry for " : stdgo.GoString) + _a[(_i : stdgo.GoInt)]?.__copy__() : stdgo.GoString));
            };
            var __0 = (stdgo._internal.go.constant.Constant__val._val(_a[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__()) : stdgo._internal.go.constant.Constant_value.Value), __1 = (stdgo._internal.go.constant.Constant__val._val(_a[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__()) : stdgo._internal.go.constant.Constant_value.Value);
var _y0 = __1, _y = __0;
            var _got = (stdgo._internal.go.constant.Constant__doop._doOp(_x, _op, _y) : stdgo._internal.go.constant.Constant_value.Value);
            var _want = (stdgo._internal.go.constant.Constant__val._val(_a[(_i + (3 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__()) : stdgo._internal.go.constant.Constant_value.Value);
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L347"
            if (!stdgo._internal.go.constant.Constant__eql._eql(_got, _want)) {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L348"
                _t.errorf(("%s: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L349"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L352"
            if (((_x0 != null) && !stdgo._internal.go.constant.Constant__eql._eql(_x, _x0) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L353"
                _t.errorf(("%s: x changed to %s" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_x));
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L354"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L357"
            if (!stdgo._internal.go.constant.Constant__eql._eql(_y, _y0)) {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L358"
                _t.errorf(("%s: y changed to %s" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_y));
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L359"
                continue;
            };
        };
    }

package stdgo._internal.go.constant;
function _testNumbers(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _kind:stdgo._internal.go.token.Token_token.Token, _tests:stdgo.Slice<stdgo.GoString>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L134"
        for (__1 => _test in _tests) {
            var _a = stdgo._internal.strings.Strings_split.split(_test?.__copy__(), (" = " : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L136"
            if ((_a.length) != ((2 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L137"
                _t.errorf(("invalid test case: %s" : stdgo.GoString), stdgo.Go.toInterface(_test));
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L138"
                continue;
            };
            var _x = (stdgo._internal.go.constant.Constant_makefromliteral.makeFromLiteral(_a[(0 : stdgo.GoInt)]?.__copy__(), _kind, (0u32 : stdgo.GoUInt)) : stdgo._internal.go.constant.Constant_value.Value);
            var _y:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L143"
            if (_a[(1 : stdgo.GoInt)] == (("?" : stdgo.GoString))) {
                _y = stdgo._internal.go.constant.Constant_makeunknown.makeUnknown();
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L146"
                {
                    var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_a[(1 : stdgo.GoInt)]?.__copy__(), ("/" : stdgo.GoString)), _ns:stdgo.GoString = __tmp__._0, _ds:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
                    if ((_ok && (_kind == (6 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                        var _n = (stdgo._internal.go.constant.Constant_makefromliteral.makeFromLiteral(_ns?.__copy__(), (5 : stdgo._internal.go.token.Token_token.Token), (0u32 : stdgo.GoUInt)) : stdgo._internal.go.constant.Constant_value.Value);
                        var _d = (stdgo._internal.go.constant.Constant_makefromliteral.makeFromLiteral(_ds?.__copy__(), (5 : stdgo._internal.go.token.Token_token.Token), (0u32 : stdgo.GoUInt)) : stdgo._internal.go.constant.Constant_value.Value);
                        _y = stdgo._internal.go.constant.Constant_binaryop.binaryOp(_n, (15 : stdgo._internal.go.token.Token_token.Token), _d);
                    } else {
                        _y = stdgo._internal.go.constant.Constant_makefromliteral.makeFromLiteral(_a[(1 : stdgo.GoInt)]?.__copy__(), _kind, (0u32 : stdgo.GoUInt));
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L153"
                if (_y.kind() == ((0 : stdgo._internal.go.constant.Constant_kind.Kind))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L154"
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid test case: %s %d" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(stdgo.Go.asInterface(_y.kind()))));
                };
            };
            var _xk = (_x.kind() : stdgo._internal.go.constant.Constant_kind.Kind);
            var _yk = (_y.kind() : stdgo._internal.go.constant.Constant_kind.Kind);
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L160"
            if (_xk != (_yk)) {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L161"
                _t.errorf(("%s: got kind %d != %d" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(stdgo.Go.asInterface(_xk)), stdgo.Go.toInterface(stdgo.Go.asInterface(_yk)));
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L162"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L165"
            if (_yk == ((0 : stdgo._internal.go.constant.Constant_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L166"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L169"
            if (!stdgo._internal.go.constant.Constant_compare.compare(_x, (39 : stdgo._internal.go.token.Token_token.Token), _y)) {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L170"
                _t.errorf(("%s: %s != %s" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
            };
        };
    }

package stdgo._internal.go.constant;
function testUnknown(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _u = (stdgo._internal.go.constant.Constant_makeunknown.makeUnknown() : stdgo._internal.go.constant.Constant_value.Value);
        var _values = (new stdgo.Slice<stdgo._internal.go.constant.Constant_value.Value>(8, 8, ...[_u, stdgo._internal.go.constant.Constant_makebool.makeBool(false), stdgo._internal.go.constant.Constant_makestring.makeString((stdgo.Go.str() : stdgo.GoString)?.__copy__()), stdgo._internal.go.constant.Constant_makeint64.makeInt64((1i64 : stdgo.GoInt64)), stdgo._internal.go.constant.Constant_makefromliteral.makeFromLiteral(("\'\'" : stdgo.GoString), (8 : stdgo._internal.go.token.Token_token.Token), (0u32 : stdgo.GoUInt)), stdgo._internal.go.constant.Constant_makefromliteral.makeFromLiteral(("-1234567890123456789012345678901234567890" : stdgo.GoString), (5 : stdgo._internal.go.token.Token_token.Token), (0u32 : stdgo.GoUInt)), stdgo._internal.go.constant.Constant_makefloat64.makeFloat64((1.2 : stdgo.GoFloat64)), stdgo._internal.go.constant.Constant_makeimag.makeImag(stdgo._internal.go.constant.Constant_makefloat64.makeFloat64((1.2 : stdgo.GoFloat64)))]) : stdgo.Slice<stdgo._internal.go.constant.Constant_value.Value>);
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L608"
        for (__1 => _val in _values) {
            var __0 = (_val : stdgo._internal.go.constant.Constant_value.Value), __1 = (_u : stdgo._internal.go.constant.Constant_value.Value);
var _y = __1, _x = __0;
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L610"
            for (_i => _ in (new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>).__copy__()) {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L611"
                if (_i == ((1 : stdgo.GoInt))) {
                    {
                        final __tmp__0 = _y;
                        final __tmp__1 = _x;
                        _x = @:binopAssign __tmp__0;
                        _y = @:binopAssign __tmp__1;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L614"
                {
                    var _got = (stdgo._internal.go.constant.Constant_binaryop.binaryOp(_x, (12 : stdgo._internal.go.token.Token_token.Token), _y) : stdgo._internal.go.constant.Constant_value.Value);
                    if (_got.kind() != ((0 : stdgo._internal.go.constant.Constant_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L615"
                        _t.errorf(("%s + %s: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_u));
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L617"
                {
                    var _got = (stdgo._internal.go.constant.Constant_compare.compare(_x, (39 : stdgo._internal.go.token.Token_token.Token), _y) : Bool);
                    if (_got) {
                        //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L618"
                        _t.errorf(("%s == %s: got true; want false" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
                    };
                };
            };
        };
    }

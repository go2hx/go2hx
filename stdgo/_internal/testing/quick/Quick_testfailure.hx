package stdgo._internal.testing.quick;
function testFailure(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _f = (function(_x:stdgo.GoInt):Bool {
            //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L228"
            return false;
        } : stdgo.GoInt -> Bool);
        var _err = (stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(_f), null) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L230"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L231"
            _t.errorf(("Check didn\'t return an error" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L233"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.testing.quick.Quick_checkerror.CheckError>)) : stdgo.Ref<stdgo._internal.testing.quick.Quick_checkerror.CheckError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.testing.quick.Quick_checkerror.CheckError>), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L234"
                _t.errorf(("Error was not a CheckError: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        _err = stdgo._internal.testing.quick.Quick_checkequal.checkEqual(stdgo.Go.toInterface(stdgo._internal.testing.quick.Quick__fuint._fUint), stdgo.Go.toInterface(stdgo._internal.testing.quick.Quick__fuint32._fUint32), null);
        //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L238"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L239"
            _t.errorf(("#1 CheckEqual didn\'t return an error" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L241"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.testing.quick.Quick_setuperror.SetupError)) : stdgo._internal.testing.quick.Quick_setuperror.SetupError), _1 : true };
            } catch(_) {
                { _0 : (("" : stdgo.GoString) : stdgo._internal.testing.quick.Quick_setuperror.SetupError), _1 : false };
            }, __1 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L242"
                _t.errorf(("#1 Error was not a SetupError: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        _err = stdgo._internal.testing.quick.Quick_checkequal.checkEqual(stdgo.Go.toInterface(function(_x:stdgo.GoInt, _y:stdgo.GoInt):Void {}), stdgo.Go.toInterface(function(_x:stdgo.GoInt):Void {}), null);
        //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L246"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L247"
            _t.errorf(("#2 CheckEqual didn\'t return an error" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L249"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.testing.quick.Quick_setuperror.SetupError)) : stdgo._internal.testing.quick.Quick_setuperror.SetupError), _1 : true };
            } catch(_) {
                { _0 : (("" : stdgo.GoString) : stdgo._internal.testing.quick.Quick_setuperror.SetupError), _1 : false };
            }, __2 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L250"
                _t.errorf(("#2 Error was not a SetupError: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        _err = stdgo._internal.testing.quick.Quick_checkequal.checkEqual(stdgo.Go.toInterface(function(_x:stdgo.GoInt):stdgo.GoInt {
            //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L253"
            return (0 : stdgo.GoInt);
        }), stdgo.Go.toInterface(function(_x:stdgo.GoInt):stdgo.GoInt32 {
            //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L253"
            return (0 : stdgo.GoInt32);
        }), null);
        //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L254"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L255"
            _t.errorf(("#3 CheckEqual didn\'t return an error" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L257"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.testing.quick.Quick_setuperror.SetupError)) : stdgo._internal.testing.quick.Quick_setuperror.SetupError), _1 : true };
            } catch(_) {
                { _0 : (("" : stdgo.GoString) : stdgo._internal.testing.quick.Quick_setuperror.SetupError), _1 : false };
            }, __3 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L258"
                _t.errorf(("#3 Error was not a SetupError: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }

package stdgo._internal.testing.quick;
function testFailure(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _f = (function(_x:stdgo.GoInt):Bool {
            return false;
        } : stdgo.GoInt -> Bool);
        var _err = (stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(_f), null) : stdgo.Error);
        if (_err == null) {
            @:check2r _t.errorf(("Check didn\'t return an error" : stdgo.GoString));
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.testing.quick.Quick_checkerror.CheckError>)) : stdgo.Ref<stdgo._internal.testing.quick.Quick_checkerror.CheckError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.testing.quick.Quick_checkerror.CheckError>), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                @:check2r _t.errorf(("Error was not a CheckError: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        _err = stdgo._internal.testing.quick.Quick_checkequal.checkEqual(stdgo.Go.toInterface(stdgo._internal.testing.quick.Quick__fuint._fUint), stdgo.Go.toInterface(stdgo._internal.testing.quick.Quick__fuint32._fUint32), null);
        if (_err == null) {
            @:check2r _t.errorf(("#1 CheckEqual didn\'t return an error" : stdgo.GoString));
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.testing.quick.Quick_setuperror.SetupError)) : stdgo._internal.testing.quick.Quick_setuperror.SetupError), _1 : true };
            } catch(_) {
                { _0 : (("" : stdgo.GoString) : stdgo._internal.testing.quick.Quick_setuperror.SetupError), _1 : false };
            }, __1 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                @:check2r _t.errorf(("#1 Error was not a SetupError: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        _err = stdgo._internal.testing.quick.Quick_checkequal.checkEqual(stdgo.Go.toInterface(function(_x:stdgo.GoInt, _y:stdgo.GoInt):Void {}), stdgo.Go.toInterface(function(_x:stdgo.GoInt):Void {}), null);
        if (_err == null) {
            @:check2r _t.errorf(("#2 CheckEqual didn\'t return an error" : stdgo.GoString));
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.testing.quick.Quick_setuperror.SetupError)) : stdgo._internal.testing.quick.Quick_setuperror.SetupError), _1 : true };
            } catch(_) {
                { _0 : (("" : stdgo.GoString) : stdgo._internal.testing.quick.Quick_setuperror.SetupError), _1 : false };
            }, __2 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                @:check2r _t.errorf(("#2 Error was not a SetupError: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        _err = stdgo._internal.testing.quick.Quick_checkequal.checkEqual(stdgo.Go.toInterface(function(_x:stdgo.GoInt):stdgo.GoInt {
            return (0 : stdgo.GoInt);
        }), stdgo.Go.toInterface(function(_x:stdgo.GoInt):stdgo.GoInt32 {
            return (0 : stdgo.GoInt32);
        }), null);
        if (_err == null) {
            @:check2r _t.errorf(("#3 CheckEqual didn\'t return an error" : stdgo.GoString));
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.testing.quick.Quick_setuperror.SetupError)) : stdgo._internal.testing.quick.Quick_setuperror.SetupError), _1 : true };
            } catch(_) {
                { _0 : (("" : stdgo.GoString) : stdgo._internal.testing.quick.Quick_setuperror.SetupError), _1 : false };
            }, __3 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                @:check2r _t.errorf(("#3 Error was not a SetupError: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }

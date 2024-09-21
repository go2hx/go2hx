package _internal.errors_test;
function testJoinReturnsNil(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _err = (stdgo._internal.errors.Errors_join.join() : stdgo.Error);
            if (_err != null) {
                _t.errorf(("errors.Join() = %v, want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (stdgo._internal.errors.Errors_join.join((null : stdgo.Error)) : stdgo.Error);
            if (_err != null) {
                _t.errorf(("errors.Join(nil) = %v, want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (stdgo._internal.errors.Errors_join.join((null : stdgo.Error), (null : stdgo.Error)) : stdgo.Error);
            if (_err != null) {
                _t.errorf(("errors.Join(nil, nil) = %v, want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }

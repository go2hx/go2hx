package stdgo._internal.testing.quick;
function _reportError(_property:stdgo.GoString, _err:stdgo.Error, _t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L157"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L158"
            _t.errorf(("%s: %s" : stdgo.GoString), stdgo.Go.toInterface(_property), stdgo.Go.toInterface(_err));
        };
    }

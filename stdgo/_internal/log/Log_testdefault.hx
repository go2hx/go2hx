package stdgo._internal.log;
function testDefault(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L81"
        {
            var _got = stdgo._internal.log.Log_default_.default_();
            if (_got != (stdgo._internal.log.Log__std._std)) {
                //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L82"
                _t.errorf(("Default [%p] should be std [%p]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.log.Log__std._std)));
            };
        };
    }

package stdgo._internal.log;
function testDefault(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {
            var _got = stdgo._internal.log.Log_default_.default_();
            if (_got != (stdgo._internal.log.Log__std._std)) {
                @:check2r _t.errorf(("Default [%p] should be std [%p]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.log.Log__std._std)));
            };
        };
    }

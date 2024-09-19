package _internal.errors_test;
function testErrorMethod(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _err = (stdgo._internal.errors.Errors_new_.new_(("abc" : stdgo.GoString)) : stdgo.Error);
        if (_err.error() != (("abc" : stdgo.GoString))) {
            _t.errorf(("New(\"abc\").Error() = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_err.error()), stdgo.Go.toInterface(("abc" : stdgo.GoString)));
        };
    }

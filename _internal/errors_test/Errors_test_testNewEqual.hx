package _internal.errors_test;
function testNewEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo.Go.toInterface(stdgo._internal.errors.Errors_new_.new_(("abc" : stdgo.GoString))) == (stdgo.Go.toInterface(stdgo._internal.errors.Errors_new_.new_(("abc" : stdgo.GoString))))) {
            _t.errorf(("New(\"abc\") == New(\"abc\")" : stdgo.GoString));
        };
        if (stdgo.Go.toInterface(stdgo._internal.errors.Errors_new_.new_(("abc" : stdgo.GoString))) == (stdgo.Go.toInterface(stdgo._internal.errors.Errors_new_.new_(("xyz" : stdgo.GoString))))) {
            _t.errorf(("New(\"abc\") == New(\"xyz\")" : stdgo.GoString));
        };
        var _err = (stdgo._internal.errors.Errors_new_.new_(("jkl" : stdgo.GoString)) : stdgo.Error);
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_err))) {
            _t.errorf(("err != err" : stdgo.GoString));
        };
    }

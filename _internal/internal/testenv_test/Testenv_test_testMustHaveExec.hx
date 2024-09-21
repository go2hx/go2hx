package _internal.internal.testenv_test;
function testMustHaveExec(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _hasExec = (false : Bool);
        _t.run(("MustHaveExec" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            stdgo._internal.internal.testenv.Testenv_mustHaveExec.mustHaveExec(stdgo.Go.asInterface(_t));
            _t.logf(("MustHaveExec did not skip" : stdgo.GoString));
            _hasExec = true;
        });
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("js" : stdgo.GoString)) || __value__ == (("wasip1" : stdgo.GoString))) {
                if (_hasExec) {
                    _t.errorf(("expected MustHaveExec to skip on %v" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
                };
            } else if (__value__ == (("ios" : stdgo.GoString))) {
                {
                    var _b = (stdgo._internal.internal.testenv.Testenv_builder.builder()?.__copy__() : stdgo.GoString);
                    if ((stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_b?.__copy__(), ("-corellium" : stdgo.GoString)) && !_hasExec : Bool)) {
                        _t.errorf(("expected MustHaveExec not to skip on %v" : stdgo.GoString), stdgo.Go.toInterface(_b));
                    };
                };
            } else {
                {
                    var _b = (stdgo._internal.internal.testenv.Testenv_builder.builder()?.__copy__() : stdgo.GoString);
                    if (((_b != stdgo.Go.str()) && !_hasExec : Bool)) {
                        _t.errorf(("expected MustHaveExec not to skip on %v" : stdgo.GoString), stdgo.Go.toInterface(_b));
                    };
                };
            };
        };
    }

package stdgo._internal.regexp;
function testRunOnePass(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in stdgo._internal.regexp.Regexp__onePassTests1._onePassTests1) {
            var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(_test._re?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Compile(%q): got err: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._re), stdgo.Go.toInterface(_err));
                continue;
            };
            if ((_re._onepass == null || (_re._onepass : Dynamic).__nil__)) {
                _t.errorf(("Compile(%q): got nil, want one-pass" : stdgo.GoString), stdgo.Go.toInterface(_test._re));
                continue;
            };
            if (!_re.matchString(_test._match?.__copy__())) {
                _t.errorf(("onepass %q did not match %q" : stdgo.GoString), stdgo.Go.toInterface(_test._re), stdgo.Go.toInterface(_test._match));
            };
        };
    }

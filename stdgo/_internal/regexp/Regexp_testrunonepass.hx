package stdgo._internal.regexp;
function testRunOnePass(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/onepass_test.go#L211"
        for (__0 => _test in stdgo._internal.regexp.Regexp__onepasstests1._onePassTests1) {
            var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(_test._re?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/regexp/onepass_test.go#L213"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/onepass_test.go#L214"
                _t.errorf(("Compile(%q): got err: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._re), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/regexp/onepass_test.go#L215"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/onepass_test.go#L217"
            if (({
                final value = (@:checkr _re ?? throw "null pointer dereference")._onepass;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/onepass_test.go#L218"
                _t.errorf(("Compile(%q): got nil, want one-pass" : stdgo.GoString), stdgo.Go.toInterface(_test._re));
                //"file:///home/runner/.go/go1.21.3/src/regexp/onepass_test.go#L219"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/onepass_test.go#L221"
            if (!_re.matchString(_test._match?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/onepass_test.go#L222"
                _t.errorf(("onepass %q did not match %q" : stdgo.GoString), stdgo.Go.toInterface(_test._re), stdgo.Go.toInterface(_test._match));
            };
        };
    }

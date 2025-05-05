package stdgo._internal.regexp;
function testLongest(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(("a(|b)" : stdgo.GoString)), _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L725"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L726"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L728"
        {
            var __0 = (_re.findString(("ab" : stdgo.GoString))?.__copy__() : stdgo.GoString), __1 = (("a" : stdgo.GoString) : stdgo.GoString);
var _w = __1, _g = __0;
            if (_g != (_w)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L729"
                _t.errorf(("first match was %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L731"
        _re.longest();
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L732"
        {
            var __0 = (_re.findString(("ab" : stdgo.GoString))?.__copy__() : stdgo.GoString), __1 = (("ab" : stdgo.GoString) : stdgo.GoString);
var _w = __1, _g = __0;
            if (_g != (_w)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L733"
                _t.errorf(("longest match was %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
            };
        };
    }

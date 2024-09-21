package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testScanOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("overflow|too large|out of range|not representable" : stdgo.GoString));
        for (__2 => _test in _internal.fmt_test.Fmt_test__overflowTests._overflowTests) {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscan.sscan(_test._text?.__copy__(), _test._in), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.errorf(("expected overflow scanning %q" : stdgo.GoString), stdgo.Go.toInterface(_test._text));
                continue;
            };
            if (!_re.matchString(_err.error()?.__copy__())) {
                _t.errorf(("expected overflow error scanning %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._text), stdgo.Go.toInterface(_err));
            };
        };
    }

package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testEOFAllTypes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _test in _internal.fmt_test.Fmt_test__eofTests._eofTests) {
            {
                var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(stdgo.Go.str()?.__copy__(), _test._format?.__copy__(), _test._v), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    _t.errorf(("#%d: %s %T not eof on empty string: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._format), _test._v, stdgo.Go.toInterface(_err));
                };
            };
            {
                var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(("   " : stdgo.GoString), _test._format?.__copy__(), _test._v), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    _t.errorf(("#%d: %s %T not eof on trailing blanks: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._format), _test._v, stdgo.Go.toInterface(_err));
                };
            };
        };
    }

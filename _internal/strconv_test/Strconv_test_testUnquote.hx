package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
function testUnquote(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.strconv_test.Strconv_test__unquotetests._unquotetests) {
            _internal.strconv_test.Strconv_test__testUnquote._testUnquote(_t, _tt._in?.__copy__(), _tt._out?.__copy__(), (null : stdgo.Error));
        };
        for (__1 => _tt in _internal.strconv_test.Strconv_test__quotetests._quotetests) {
            _internal.strconv_test.Strconv_test__testUnquote._testUnquote(_t, _tt._out?.__copy__(), _tt._in?.__copy__(), (null : stdgo.Error));
        };
        for (__2 => _s in _internal.strconv_test.Strconv_test__misquoted._misquoted) {
            _internal.strconv_test.Strconv_test__testUnquote._testUnquote(_t, _s?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo._internal.strconv.Strconv_errSyntax.errSyntax);
        };
    }

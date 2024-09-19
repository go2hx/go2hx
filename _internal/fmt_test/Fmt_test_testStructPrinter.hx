package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testStructPrinter(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _s:_internal.fmt_test.Fmt_test_T_testStructPrinter___localname___T_47832.T_testStructPrinter___localname___T_47832 = ({} : _internal.fmt_test.Fmt_test_T_testStructPrinter___localname___T_47832.T_testStructPrinter___localname___T_47832);
        _s._a = ("abc" : stdgo.GoString);
        _s._b = ("def" : stdgo.GoString);
        _s._c = (123 : stdgo.GoInt);
        var _tests:stdgo.Slice<_internal.fmt_test.Fmt_test_T__struct_6.T__struct_6> = (new stdgo.Slice<_internal.fmt_test.Fmt_test_T__struct_6.T__struct_6>(3, 3, ...[({ _fmt : ("%v" : stdgo.GoString), _out : ("{abc def 123}" : stdgo.GoString) } : _internal.fmt_test.Fmt_test_T__struct_6.T__struct_6), ({ _fmt : ("%+v" : stdgo.GoString), _out : ("{a:abc b:def c:123}" : stdgo.GoString) } : _internal.fmt_test.Fmt_test_T__struct_6.T__struct_6), ({ _fmt : ("%#v" : stdgo.GoString), _out : ("fmt_test.T{a:\"abc\", b:\"def\", c:123}" : stdgo.GoString) } : _internal.fmt_test.Fmt_test_T__struct_6.T__struct_6)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _fmt : ("" : stdgo.GoString), _out : ("" : stdgo.GoString) } : _internal.fmt_test.Fmt_test_T__struct_6.T__struct_6)])) : stdgo.Slice<_internal.fmt_test.Fmt_test_T__struct_6.T__struct_6>);
        for (__3 => _tt in _tests) {
            var _out = (stdgo._internal.fmt.Fmt_sprintf.sprintf(_tt._fmt?.__copy__(), stdgo.Go.toInterface(_s))?.__copy__() : stdgo.GoString);
            if (_out != (_tt._out)) {
                _t.errorf(("Sprintf(%q, s) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt._fmt), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
            };
            _out = stdgo._internal.fmt.Fmt_sprintf.sprintf(_tt._fmt?.__copy__(), stdgo.Go.toInterface((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.fmt_test.Fmt_test_T_testStructPrinter___localname___T_47832.T_testStructPrinter___localname___T_47832>)))?.__copy__();
            if (_out != ((("&" : stdgo.GoString) + _tt._out?.__copy__() : stdgo.GoString))) {
                _t.errorf(("Sprintf(%q, &s) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt._fmt), stdgo.Go.toInterface(_out), stdgo.Go.toInterface((("&" : stdgo.GoString) + _tt._out?.__copy__() : stdgo.GoString)));
            };
        };
    }

package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testScanNewlinesAreSpaces(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _b = __1, _a = __0;
        var _tests:stdgo.Slice<_internal.fmt_test.Fmt_test_T__struct_14.T__struct_14> = (new stdgo.Slice<_internal.fmt_test.Fmt_test_T__struct_14.T__struct_14>(4, 4, ...[({ _name : ("newlines" : stdgo.GoString), _text : ("1\n2\n" : stdgo.GoString), _count : (2 : stdgo.GoInt) } : _internal.fmt_test.Fmt_test_T__struct_14.T__struct_14), ({ _name : ("no final newline" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _count : (2 : stdgo.GoInt) } : _internal.fmt_test.Fmt_test_T__struct_14.T__struct_14), ({ _name : ("newlines with spaces " : stdgo.GoString), _text : ("1  \n  2  \n" : stdgo.GoString), _count : (2 : stdgo.GoInt) } : _internal.fmt_test.Fmt_test_T__struct_14.T__struct_14), ({ _name : ("no final newline with spaces" : stdgo.GoString), _text : ("1  \n  2" : stdgo.GoString), _count : (2 : stdgo.GoInt) } : _internal.fmt_test.Fmt_test_T__struct_14.T__struct_14)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _text : ("" : stdgo.GoString), _count : (0 : stdgo.GoInt) } : _internal.fmt_test.Fmt_test_T__struct_14.T__struct_14)])) : stdgo.Slice<_internal.fmt_test.Fmt_test_T__struct_14.T__struct_14>);
        for (__2 => _test in _tests) {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscan.sscan(_test._text?.__copy__(), stdgo.Go.toInterface(stdgo.Go.pointer(_a)), stdgo.Go.toInterface(stdgo.Go.pointer(_b))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_n != (_test._count)) {
                _t.errorf(("%s: expected to scan %d item(s), scanned %d" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_test._count), stdgo.Go.toInterface(_n));
            };
            if (_err != null) {
                _t.errorf(("%s: unexpected error: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_err));
            };
        };
    }

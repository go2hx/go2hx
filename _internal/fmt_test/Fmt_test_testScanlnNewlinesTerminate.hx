package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testScanlnNewlinesTerminate(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _b = __1, _a = __0;
        var _tests:stdgo.Slice<_internal.fmt_test.Fmt_test_T__struct_15.T__struct_15> = (new stdgo.Slice<_internal.fmt_test.Fmt_test_T__struct_15.T__struct_15>(4, 4, ...[({ _name : ("one line one item" : stdgo.GoString), _text : ("1\n" : stdgo.GoString), _count : (1 : stdgo.GoInt), _ok : false } : _internal.fmt_test.Fmt_test_T__struct_15.T__struct_15), ({ _name : ("one line two items with spaces " : stdgo.GoString), _text : ("   1 2    \n" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_15.T__struct_15), ({ _name : ("one line two items no newline" : stdgo.GoString), _text : ("   1 2" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_15.T__struct_15), ({ _name : ("two lines two items" : stdgo.GoString), _text : ("1\n2\n" : stdgo.GoString), _count : (1 : stdgo.GoInt), _ok : false } : _internal.fmt_test.Fmt_test_T__struct_15.T__struct_15)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _text : ("" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : false } : _internal.fmt_test.Fmt_test_T__struct_15.T__struct_15)])) : stdgo.Slice<_internal.fmt_test.Fmt_test_T__struct_15.T__struct_15>);
        for (__2 => _test in _tests) {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscanln.sscanln(_test._text?.__copy__(), stdgo.Go.toInterface(stdgo.Go.pointer(_a)), stdgo.Go.toInterface(stdgo.Go.pointer(_b))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_n != (_test._count)) {
                _t.errorf(("%s: expected to scan %d item(s), scanned %d" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_test._count), stdgo.Go.toInterface(_n));
            };
            if ((_test._ok && (_err != null) : Bool)) {
                _t.errorf(("%s: unexpected error: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_err));
            };
            if ((!_test._ok && (_err == null) : Bool)) {
                _t.errorf(("%s: expected error; got none" : stdgo.GoString), stdgo.Go.toInterface(_test._name));
            };
        };
    }

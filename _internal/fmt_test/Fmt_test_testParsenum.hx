package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testParsenum(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _testCases = (new stdgo.Slice<_internal.fmt_test.Fmt_test_T__struct_10.T__struct_10>(6, 6, ...[({ _s : ("a123" : stdgo.GoString), _start : (0 : stdgo.GoInt), _end : (4 : stdgo.GoInt), _num : (0 : stdgo.GoInt), _isnum : false, _newi : (0 : stdgo.GoInt) } : _internal.fmt_test.Fmt_test_T__struct_10.T__struct_10), ({ _s : ("1234" : stdgo.GoString), _start : (1 : stdgo.GoInt), _end : (1 : stdgo.GoInt), _num : (0 : stdgo.GoInt), _isnum : false, _newi : (1 : stdgo.GoInt) } : _internal.fmt_test.Fmt_test_T__struct_10.T__struct_10), ({ _s : ("123a" : stdgo.GoString), _start : (0 : stdgo.GoInt), _end : (4 : stdgo.GoInt), _num : (123 : stdgo.GoInt), _isnum : true, _newi : (3 : stdgo.GoInt) } : _internal.fmt_test.Fmt_test_T__struct_10.T__struct_10), ({ _s : ("12a3" : stdgo.GoString), _start : (0 : stdgo.GoInt), _end : (4 : stdgo.GoInt), _num : (12 : stdgo.GoInt), _isnum : true, _newi : (2 : stdgo.GoInt) } : _internal.fmt_test.Fmt_test_T__struct_10.T__struct_10), ({ _s : ("1234" : stdgo.GoString), _start : (0 : stdgo.GoInt), _end : (4 : stdgo.GoInt), _num : (1234 : stdgo.GoInt), _isnum : true, _newi : (4 : stdgo.GoInt) } : _internal.fmt_test.Fmt_test_T__struct_10.T__struct_10), ({ _s : ("1a234" : stdgo.GoString), _start : (1 : stdgo.GoInt), _end : (3 : stdgo.GoInt), _num : (0 : stdgo.GoInt), _isnum : false, _newi : (1 : stdgo.GoInt) } : _internal.fmt_test.Fmt_test_T__struct_10.T__struct_10)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _s : ("" : stdgo.GoString), _start : (0 : stdgo.GoInt), _end : (0 : stdgo.GoInt), _num : (0 : stdgo.GoInt), _isnum : false, _newi : (0 : stdgo.GoInt) } : _internal.fmt_test.Fmt_test_T__struct_10.T__struct_10)])) : stdgo.Slice<_internal.fmt_test.Fmt_test_T__struct_10.T__struct_10>);
        for (__3 => _tt in _testCases) {
            var __tmp__ = stdgo._internal.fmt.Fmt_parsenum.parsenum(_tt._s?.__copy__(), _tt._start, _tt._end), _num:stdgo.GoInt = __tmp__._0, _isnum:Bool = __tmp__._1, _newi:stdgo.GoInt = __tmp__._2;
            if (((_num != (_tt._num) || _isnum != (_tt._isnum) : Bool) || (_newi != _tt._newi) : Bool)) {
                _t.errorf(("parsenum(%q, %d, %d) = %d, %v, %d, want %d, %v, %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._start), stdgo.Go.toInterface(_tt._end), stdgo.Go.toInterface(_num), stdgo.Go.toInterface(_isnum), stdgo.Go.toInterface(_newi), stdgo.Go.toInterface(_tt._num), stdgo.Go.toInterface(_tt._isnum), stdgo.Go.toInterface(_tt._newi));
            };
        };
    }
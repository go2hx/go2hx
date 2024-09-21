package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testAppendInt(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = (new stdgo.Slice<_internal.time_test.Time_test_T__struct_0.T__struct_0>(29, 29, ...[
({ _in : (0 : stdgo.GoInt), _width : (0 : stdgo.GoInt), _want : ("0" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (0 : stdgo.GoInt), _width : (1 : stdgo.GoInt), _want : ("0" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (0 : stdgo.GoInt), _width : (2 : stdgo.GoInt), _want : ("00" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (0 : stdgo.GoInt), _width : (3 : stdgo.GoInt), _want : ("000" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (1 : stdgo.GoInt), _width : (0 : stdgo.GoInt), _want : ("1" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (1 : stdgo.GoInt), _width : (1 : stdgo.GoInt), _want : ("1" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (1 : stdgo.GoInt), _width : (2 : stdgo.GoInt), _want : ("01" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (1 : stdgo.GoInt), _width : (3 : stdgo.GoInt), _want : ("001" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (-1 : stdgo.GoInt), _width : (0 : stdgo.GoInt), _want : ("-1" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (-1 : stdgo.GoInt), _width : (1 : stdgo.GoInt), _want : ("-1" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (-1 : stdgo.GoInt), _width : (2 : stdgo.GoInt), _want : ("-01" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (-1 : stdgo.GoInt), _width : (3 : stdgo.GoInt), _want : ("-001" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (99 : stdgo.GoInt), _width : (2 : stdgo.GoInt), _want : ("99" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (100 : stdgo.GoInt), _width : (2 : stdgo.GoInt), _want : ("100" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (1 : stdgo.GoInt), _width : (4 : stdgo.GoInt), _want : ("0001" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (12 : stdgo.GoInt), _width : (4 : stdgo.GoInt), _want : ("0012" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (123 : stdgo.GoInt), _width : (4 : stdgo.GoInt), _want : ("0123" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (1234 : stdgo.GoInt), _width : (4 : stdgo.GoInt), _want : ("1234" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (12345 : stdgo.GoInt), _width : (4 : stdgo.GoInt), _want : ("12345" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (1 : stdgo.GoInt), _width : (5 : stdgo.GoInt), _want : ("00001" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (12 : stdgo.GoInt), _width : (5 : stdgo.GoInt), _want : ("00012" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (123 : stdgo.GoInt), _width : (5 : stdgo.GoInt), _want : ("00123" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (1234 : stdgo.GoInt), _width : (5 : stdgo.GoInt), _want : ("01234" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (12345 : stdgo.GoInt), _width : (5 : stdgo.GoInt), _want : ("12345" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (123456 : stdgo.GoInt), _width : (5 : stdgo.GoInt), _want : ("123456" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (0 : stdgo.GoInt), _width : (9 : stdgo.GoInt), _want : ("000000000" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (123 : stdgo.GoInt), _width : (9 : stdgo.GoInt), _want : ("000000123" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (123456 : stdgo.GoInt), _width : (9 : stdgo.GoInt), _want : ("000123456" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0),
({ _in : (123456789 : stdgo.GoInt), _width : (9 : stdgo.GoInt), _want : ("123456789" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0)].concat([for (i in 29 ... (29 > 29 ? 29 : 29 : stdgo.GoInt).toBasic()) ({ _in : (0 : stdgo.GoInt), _width : (0 : stdgo.GoInt), _want : ("" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_0.T__struct_0)])) : stdgo.Slice<_internal.time_test.Time_test_T__struct_0.T__struct_0>);
        var _got:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        for (__2 => _tt in _tests) {
            _got = stdgo._internal.time.Time_appendInt.appendInt((_got.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _tt._in, _tt._width);
            if ((_got : stdgo.GoString) != (_tt._want)) {
                _t.errorf(("appendInt(%d, %d) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._width), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
            };
        };
    }

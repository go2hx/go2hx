package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
var _longFractionalDigitsTests : stdgo.Slice<_internal.time_test.Time_test_T__struct_6.T__struct_6> = (new stdgo.Slice<_internal.time_test.Time_test_T__struct_6.T__struct_6>(16, 16, ...[
({ _value : ("2021-09-29T16:04:33.000000000Z" : stdgo.GoString), _want : (0 : stdgo.GoInt) } : _internal.time_test.Time_test_T__struct_6.T__struct_6),
({ _value : ("2021-09-29T16:04:33.000000001Z" : stdgo.GoString), _want : (1 : stdgo.GoInt) } : _internal.time_test.Time_test_T__struct_6.T__struct_6),
({ _value : ("2021-09-29T16:04:33.100000000Z" : stdgo.GoString), _want : (100000000 : stdgo.GoInt) } : _internal.time_test.Time_test_T__struct_6.T__struct_6),
({ _value : ("2021-09-29T16:04:33.100000001Z" : stdgo.GoString), _want : (100000001 : stdgo.GoInt) } : _internal.time_test.Time_test_T__struct_6.T__struct_6),
({ _value : ("2021-09-29T16:04:33.999999999Z" : stdgo.GoString), _want : (999999999 : stdgo.GoInt) } : _internal.time_test.Time_test_T__struct_6.T__struct_6),
({ _value : ("2021-09-29T16:04:33.012345678Z" : stdgo.GoString), _want : (12345678 : stdgo.GoInt) } : _internal.time_test.Time_test_T__struct_6.T__struct_6),
({ _value : ("2021-09-29T16:04:33.0000000000Z" : stdgo.GoString), _want : (0 : stdgo.GoInt) } : _internal.time_test.Time_test_T__struct_6.T__struct_6),
({ _value : ("2021-09-29T16:04:33.0000000001Z" : stdgo.GoString), _want : (0 : stdgo.GoInt) } : _internal.time_test.Time_test_T__struct_6.T__struct_6),
({ _value : ("2021-09-29T16:04:33.1000000000Z" : stdgo.GoString), _want : (100000000 : stdgo.GoInt) } : _internal.time_test.Time_test_T__struct_6.T__struct_6),
({ _value : ("2021-09-29T16:04:33.1000000009Z" : stdgo.GoString), _want : (100000000 : stdgo.GoInt) } : _internal.time_test.Time_test_T__struct_6.T__struct_6),
({ _value : ("2021-09-29T16:04:33.9999999999Z" : stdgo.GoString), _want : (999999999 : stdgo.GoInt) } : _internal.time_test.Time_test_T__struct_6.T__struct_6),
({ _value : ("2021-09-29T16:04:33.0123456789Z" : stdgo.GoString), _want : (12345678 : stdgo.GoInt) } : _internal.time_test.Time_test_T__struct_6.T__struct_6),
({ _value : ("2021-09-29T16:04:33.10000000000Z" : stdgo.GoString), _want : (100000000 : stdgo.GoInt) } : _internal.time_test.Time_test_T__struct_6.T__struct_6),
({ _value : ("2021-09-29T16:04:33.00123456789Z" : stdgo.GoString), _want : (1234567 : stdgo.GoInt) } : _internal.time_test.Time_test_T__struct_6.T__struct_6),
({ _value : ("2021-09-29T16:04:33.000123456789Z" : stdgo.GoString), _want : (123456 : stdgo.GoInt) } : _internal.time_test.Time_test_T__struct_6.T__struct_6),
({ _value : ("2021-09-29T16:04:33.9999999999999999Z" : stdgo.GoString), _want : (999999999 : stdgo.GoInt) } : _internal.time_test.Time_test_T__struct_6.T__struct_6)].concat([for (i in 16 ... (16 > 16 ? 16 : 16 : stdgo.GoInt).toBasic()) ({ _value : ("" : stdgo.GoString), _want : (0 : stdgo.GoInt) } : _internal.time_test.Time_test_T__struct_6.T__struct_6)])) : stdgo.Slice<_internal.time_test.Time_test_T__struct_6.T__struct_6>);

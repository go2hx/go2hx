package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
var _durationTruncateTests : stdgo.Slice<_internal.time_test.Time_test_T__struct_25.T__struct_25> = (new stdgo.Slice<_internal.time_test.Time_test_T__struct_25.T__struct_25>(12, 12, ...[
({ _d : (0i64 : stdgo._internal.time.Time_Duration.Duration), _m : (1000000000i64 : stdgo._internal.time.Time_Duration.Duration), _want : (0i64 : stdgo._internal.time.Time_Duration.Duration) } : _internal.time_test.Time_test_T__struct_25.T__struct_25),
({ _d : (60000000000i64 : stdgo._internal.time.Time_Duration.Duration), _m : (-7000000000i64 : stdgo._internal.time.Time_Duration.Duration), _want : (60000000000i64 : stdgo._internal.time.Time_Duration.Duration) } : _internal.time_test.Time_test_T__struct_25.T__struct_25),
({ _d : (60000000000i64 : stdgo._internal.time.Time_Duration.Duration), _m : (0i64 : stdgo._internal.time.Time_Duration.Duration), _want : (60000000000i64 : stdgo._internal.time.Time_Duration.Duration) } : _internal.time_test.Time_test_T__struct_25.T__struct_25),
({ _d : (60000000000i64 : stdgo._internal.time.Time_Duration.Duration), _m : (1i64 : stdgo._internal.time.Time_Duration.Duration), _want : (60000000000i64 : stdgo._internal.time.Time_Duration.Duration) } : _internal.time_test.Time_test_T__struct_25.T__struct_25),
({ _d : (70000000000i64 : stdgo._internal.time.Time_Duration.Duration), _m : (10000000000i64 : stdgo._internal.time.Time_Duration.Duration), _want : (70000000000i64 : stdgo._internal.time.Time_Duration.Duration) } : _internal.time_test.Time_test_T__struct_25.T__struct_25),
({ _d : (130000000000i64 : stdgo._internal.time.Time_Duration.Duration), _m : (60000000000i64 : stdgo._internal.time.Time_Duration.Duration), _want : (120000000000i64 : stdgo._internal.time.Time_Duration.Duration) } : _internal.time_test.Time_test_T__struct_25.T__struct_25),
({ _d : (610000000000i64 : stdgo._internal.time.Time_Duration.Duration), _m : (180000000000i64 : stdgo._internal.time.Time_Duration.Duration), _want : (540000000000i64 : stdgo._internal.time.Time_Duration.Duration) } : _internal.time_test.Time_test_T__struct_25.T__struct_25),
({ _d : (70000000000i64 : stdgo._internal.time.Time_Duration.Duration), _m : (70000000001i64 : stdgo._internal.time.Time_Duration.Duration), _want : (0i64 : stdgo._internal.time.Time_Duration.Duration) } : _internal.time_test.Time_test_T__struct_25.T__struct_25),
({ _d : (70000000000i64 : stdgo._internal.time.Time_Duration.Duration), _m : (3600000000000i64 : stdgo._internal.time.Time_Duration.Duration), _want : (0i64 : stdgo._internal.time.Time_Duration.Duration) } : _internal.time_test.Time_test_T__struct_25.T__struct_25),
({ _d : (-60000000000i64 : stdgo._internal.time.Time_Duration.Duration), _m : (1000000000i64 : stdgo._internal.time.Time_Duration.Duration), _want : (-60000000000i64 : stdgo._internal.time.Time_Duration.Duration) } : _internal.time_test.Time_test_T__struct_25.T__struct_25),
({ _d : (-600000000000i64 : stdgo._internal.time.Time_Duration.Duration), _m : (180000000000i64 : stdgo._internal.time.Time_Duration.Duration), _want : (-540000000000i64 : stdgo._internal.time.Time_Duration.Duration) } : _internal.time_test.Time_test_T__struct_25.T__struct_25),
({ _d : (-600000000000i64 : stdgo._internal.time.Time_Duration.Duration), _m : (3600000000000i64 : stdgo._internal.time.Time_Duration.Duration), _want : (0i64 : stdgo._internal.time.Time_Duration.Duration) } : _internal.time_test.Time_test_T__struct_25.T__struct_25)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({ _d : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration), _m : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration), _want : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration) } : _internal.time_test.Time_test_T__struct_25.T__struct_25)])) : stdgo.Slice<_internal.time_test.Time_test_T__struct_25.T__struct_25>);

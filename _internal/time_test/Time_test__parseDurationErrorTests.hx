package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
var _parseDurationErrorTests : stdgo.Slice<_internal.time_test.Time_test_T__struct_20.T__struct_20> = (new stdgo.Slice<_internal.time_test.Time_test_T__struct_20.T__struct_20>(21, 21, ...[
({ _in : stdgo.Go.str()?.__copy__(), _expect : ("\"\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_20.T__struct_20),
({ _in : ("3" : stdgo.GoString), _expect : ("\"3\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_20.T__struct_20),
({ _in : ("-" : stdgo.GoString), _expect : ("\"-\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_20.T__struct_20),
({ _in : ("s" : stdgo.GoString), _expect : ("\"s\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_20.T__struct_20),
({ _in : ("." : stdgo.GoString), _expect : ("\".\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_20.T__struct_20),
({ _in : ("-." : stdgo.GoString), _expect : ("\"-.\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_20.T__struct_20),
({ _in : (".s" : stdgo.GoString), _expect : ("\".s\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_20.T__struct_20),
({ _in : ("+.s" : stdgo.GoString), _expect : ("\"+.s\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_20.T__struct_20),
({ _in : ("1d" : stdgo.GoString), _expect : ("\"1d\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_20.T__struct_20),
({ _in : stdgo.Go.str(133, 133)?.__copy__(), _expect : ("\"\\x85\\x85\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_20.T__struct_20),
({ _in : stdgo.Go.str(255, "ff")?.__copy__(), _expect : ("\"\\xffff\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_20.T__struct_20),
({ _in : stdgo.Go.str("hello ", 255, "ff world")?.__copy__(), _expect : ("\"hello \\xffff world\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_20.T__struct_20),
({ _in : ("�" : stdgo.GoString), _expect : ("\"\\xef\\xbf\\xbd\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_20.T__struct_20),
({ _in : ("� hello � world" : stdgo.GoString), _expect : ("\"\\xef\\xbf\\xbd hello \\xef\\xbf\\xbd world\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_20.T__struct_20),
({ _in : ("9223372036854775810ns" : stdgo.GoString), _expect : ("\"9223372036854775810ns\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_20.T__struct_20),
({ _in : ("9223372036854775808ns" : stdgo.GoString), _expect : ("\"9223372036854775808ns\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_20.T__struct_20),
({ _in : ("-9223372036854775809ns" : stdgo.GoString), _expect : ("\"-9223372036854775809ns\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_20.T__struct_20),
({ _in : ("9223372036854776us" : stdgo.GoString), _expect : ("\"9223372036854776us\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_20.T__struct_20),
({ _in : ("3000000h" : stdgo.GoString), _expect : ("\"3000000h\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_20.T__struct_20),
({ _in : ("9223372036854775.808us" : stdgo.GoString), _expect : ("\"9223372036854775.808us\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_20.T__struct_20),
({ _in : ("9223372036854ms775us808ns" : stdgo.GoString), _expect : ("\"9223372036854ms775us808ns\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_20.T__struct_20)].concat([for (i in 21 ... (21 > 21 ? 21 : 21 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _expect : ("" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_20.T__struct_20)])) : stdgo.Slice<_internal.time_test.Time_test_T__struct_20.T__struct_20>);

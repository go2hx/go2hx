package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
var _dayOutOfRangeTests : stdgo.Slice<_internal.time_test.Time_test_T__struct_2.T__struct_2> = (new stdgo.Slice<_internal.time_test.Time_test_T__struct_2.T__struct_2>(27, 27, ...[
({ _date : ("Thu Jan 99 21:00:57 2010" : stdgo.GoString), _ok : false } : _internal.time_test.Time_test_T__struct_2.T__struct_2),
({ _date : ("Thu Jan 31 21:00:57 2010" : stdgo.GoString), _ok : true } : _internal.time_test.Time_test_T__struct_2.T__struct_2),
({ _date : ("Thu Jan 32 21:00:57 2010" : stdgo.GoString), _ok : false } : _internal.time_test.Time_test_T__struct_2.T__struct_2),
({ _date : ("Thu Feb 28 21:00:57 2012" : stdgo.GoString), _ok : true } : _internal.time_test.Time_test_T__struct_2.T__struct_2),
({ _date : ("Thu Feb 29 21:00:57 2012" : stdgo.GoString), _ok : true } : _internal.time_test.Time_test_T__struct_2.T__struct_2),
({ _date : ("Thu Feb 29 21:00:57 2010" : stdgo.GoString), _ok : false } : _internal.time_test.Time_test_T__struct_2.T__struct_2),
({ _date : ("Thu Mar 31 21:00:57 2010" : stdgo.GoString), _ok : true } : _internal.time_test.Time_test_T__struct_2.T__struct_2),
({ _date : ("Thu Mar 32 21:00:57 2010" : stdgo.GoString), _ok : false } : _internal.time_test.Time_test_T__struct_2.T__struct_2),
({ _date : ("Thu Apr 30 21:00:57 2010" : stdgo.GoString), _ok : true } : _internal.time_test.Time_test_T__struct_2.T__struct_2),
({ _date : ("Thu Apr 31 21:00:57 2010" : stdgo.GoString), _ok : false } : _internal.time_test.Time_test_T__struct_2.T__struct_2),
({ _date : ("Thu May 31 21:00:57 2010" : stdgo.GoString), _ok : true } : _internal.time_test.Time_test_T__struct_2.T__struct_2),
({ _date : ("Thu May 32 21:00:57 2010" : stdgo.GoString), _ok : false } : _internal.time_test.Time_test_T__struct_2.T__struct_2),
({ _date : ("Thu Jun 30 21:00:57 2010" : stdgo.GoString), _ok : true } : _internal.time_test.Time_test_T__struct_2.T__struct_2),
({ _date : ("Thu Jun 31 21:00:57 2010" : stdgo.GoString), _ok : false } : _internal.time_test.Time_test_T__struct_2.T__struct_2),
({ _date : ("Thu Jul 31 21:00:57 2010" : stdgo.GoString), _ok : true } : _internal.time_test.Time_test_T__struct_2.T__struct_2),
({ _date : ("Thu Jul 32 21:00:57 2010" : stdgo.GoString), _ok : false } : _internal.time_test.Time_test_T__struct_2.T__struct_2),
({ _date : ("Thu Aug 31 21:00:57 2010" : stdgo.GoString), _ok : true } : _internal.time_test.Time_test_T__struct_2.T__struct_2),
({ _date : ("Thu Aug 32 21:00:57 2010" : stdgo.GoString), _ok : false } : _internal.time_test.Time_test_T__struct_2.T__struct_2),
({ _date : ("Thu Sep 30 21:00:57 2010" : stdgo.GoString), _ok : true } : _internal.time_test.Time_test_T__struct_2.T__struct_2),
({ _date : ("Thu Sep 31 21:00:57 2010" : stdgo.GoString), _ok : false } : _internal.time_test.Time_test_T__struct_2.T__struct_2),
({ _date : ("Thu Oct 31 21:00:57 2010" : stdgo.GoString), _ok : true } : _internal.time_test.Time_test_T__struct_2.T__struct_2),
({ _date : ("Thu Oct 32 21:00:57 2010" : stdgo.GoString), _ok : false } : _internal.time_test.Time_test_T__struct_2.T__struct_2),
({ _date : ("Thu Nov 30 21:00:57 2010" : stdgo.GoString), _ok : true } : _internal.time_test.Time_test_T__struct_2.T__struct_2),
({ _date : ("Thu Nov 31 21:00:57 2010" : stdgo.GoString), _ok : false } : _internal.time_test.Time_test_T__struct_2.T__struct_2),
({ _date : ("Thu Dec 31 21:00:57 2010" : stdgo.GoString), _ok : true } : _internal.time_test.Time_test_T__struct_2.T__struct_2),
({ _date : ("Thu Dec 32 21:00:57 2010" : stdgo.GoString), _ok : false } : _internal.time_test.Time_test_T__struct_2.T__struct_2),
({ _date : ("Thu Dec 00 21:00:57 2010" : stdgo.GoString), _ok : false } : _internal.time_test.Time_test_T__struct_2.T__struct_2)].concat([for (i in 27 ... (27 > 27 ? 27 : 27 : stdgo.GoInt).toBasic()) ({ _date : ("" : stdgo.GoString), _ok : false } : _internal.time_test.Time_test_T__struct_2.T__struct_2)])) : stdgo.Slice<_internal.time_test.Time_test_T__struct_2.T__struct_2>);

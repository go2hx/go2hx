package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.log.Log;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
var _truncateWriterTests : stdgo.Slice<stdgo._internal.testing.iotest.Iotest_T__struct_1.T__struct_1> = (new stdgo.Slice<stdgo._internal.testing.iotest.Iotest_T__struct_1.T__struct_1>(4, 4, ...[({ _in : ("hello" : stdgo.GoString), _want : stdgo.Go.str()?.__copy__(), _trunc : (-1i64 : stdgo.GoInt64), _n : (5 : stdgo.GoInt) } : stdgo._internal.testing.iotest.Iotest_T__struct_1.T__struct_1), ({ _in : ("world" : stdgo.GoString), _want : stdgo.Go.str()?.__copy__(), _trunc : (0i64 : stdgo.GoInt64), _n : (5 : stdgo.GoInt) } : stdgo._internal.testing.iotest.Iotest_T__struct_1.T__struct_1), ({ _in : ("abcde" : stdgo.GoString), _want : ("abc" : stdgo.GoString), _trunc : (3i64 : stdgo.GoInt64), _n : (5 : stdgo.GoInt) } : stdgo._internal.testing.iotest.Iotest_T__struct_1.T__struct_1), ({ _in : ("edcba" : stdgo.GoString), _want : ("edcba" : stdgo.GoString), _trunc : (7i64 : stdgo.GoInt64), _n : (5 : stdgo.GoInt) } : stdgo._internal.testing.iotest.Iotest_T__struct_1.T__struct_1)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _want : ("" : stdgo.GoString), _trunc : (0 : stdgo.GoInt64), _n : (0 : stdgo.GoInt) } : stdgo._internal.testing.iotest.Iotest_T__struct_1.T__struct_1)])) : stdgo.Slice<stdgo._internal.testing.iotest.Iotest_T__struct_1.T__struct_1>);

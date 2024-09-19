package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
var _flagtests : stdgo.Slice<_internal.fmt_test.Fmt_test_T__struct_5.T__struct_5> = (new stdgo.Slice<_internal.fmt_test.Fmt_test_T__struct_5.T__struct_5>(12, 12, ...[
({ _in : ("%a" : stdgo.GoString), _out : ("[%a]" : stdgo.GoString) } : _internal.fmt_test.Fmt_test_T__struct_5.T__struct_5),
({ _in : ("%-a" : stdgo.GoString), _out : ("[%-a]" : stdgo.GoString) } : _internal.fmt_test.Fmt_test_T__struct_5.T__struct_5),
({ _in : ("%+a" : stdgo.GoString), _out : ("[%+a]" : stdgo.GoString) } : _internal.fmt_test.Fmt_test_T__struct_5.T__struct_5),
({ _in : ("%#a" : stdgo.GoString), _out : ("[%#a]" : stdgo.GoString) } : _internal.fmt_test.Fmt_test_T__struct_5.T__struct_5),
({ _in : ("% a" : stdgo.GoString), _out : ("[% a]" : stdgo.GoString) } : _internal.fmt_test.Fmt_test_T__struct_5.T__struct_5),
({ _in : ("%0a" : stdgo.GoString), _out : ("[%0a]" : stdgo.GoString) } : _internal.fmt_test.Fmt_test_T__struct_5.T__struct_5),
({ _in : ("%1.2a" : stdgo.GoString), _out : ("[%1.2a]" : stdgo.GoString) } : _internal.fmt_test.Fmt_test_T__struct_5.T__struct_5),
({ _in : ("%-1.2a" : stdgo.GoString), _out : ("[%-1.2a]" : stdgo.GoString) } : _internal.fmt_test.Fmt_test_T__struct_5.T__struct_5),
({ _in : ("%+1.2a" : stdgo.GoString), _out : ("[%+1.2a]" : stdgo.GoString) } : _internal.fmt_test.Fmt_test_T__struct_5.T__struct_5),
({ _in : ("%-+1.2a" : stdgo.GoString), _out : ("[%+-1.2a]" : stdgo.GoString) } : _internal.fmt_test.Fmt_test_T__struct_5.T__struct_5),
({ _in : ("%-+1.2abc" : stdgo.GoString), _out : ("[%+-1.2a]bc" : stdgo.GoString) } : _internal.fmt_test.Fmt_test_T__struct_5.T__struct_5),
({ _in : ("%-1.2abc" : stdgo.GoString), _out : ("[%-1.2a]bc" : stdgo.GoString) } : _internal.fmt_test.Fmt_test_T__struct_5.T__struct_5)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _out : ("" : stdgo.GoString) } : _internal.fmt_test.Fmt_test_T__struct_5.T__struct_5)])) : stdgo.Slice<_internal.fmt_test.Fmt_test_T__struct_5.T__struct_5>);

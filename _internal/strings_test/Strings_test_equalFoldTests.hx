package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
var equalFoldTests : stdgo.Slice<_internal.strings_test.Strings_test_T__struct_24.T__struct_24> = (new stdgo.Slice<_internal.strings_test.Strings_test_T__struct_24.T__struct_24>(13, 13, ...[
({ _s : ("abc" : stdgo.GoString), _t : ("abc" : stdgo.GoString), _out : true } : _internal.strings_test.Strings_test_T__struct_24.T__struct_24),
({ _s : ("ABcd" : stdgo.GoString), _t : ("ABcd" : stdgo.GoString), _out : true } : _internal.strings_test.Strings_test_T__struct_24.T__struct_24),
({ _s : ("123abc" : stdgo.GoString), _t : ("123ABC" : stdgo.GoString), _out : true } : _internal.strings_test.Strings_test_T__struct_24.T__struct_24),
({ _s : ("αβδ" : stdgo.GoString), _t : ("ΑΒΔ" : stdgo.GoString), _out : true } : _internal.strings_test.Strings_test_T__struct_24.T__struct_24),
({ _s : ("abc" : stdgo.GoString), _t : ("xyz" : stdgo.GoString), _out : false } : _internal.strings_test.Strings_test_T__struct_24.T__struct_24),
({ _s : ("abc" : stdgo.GoString), _t : ("XYZ" : stdgo.GoString), _out : false } : _internal.strings_test.Strings_test_T__struct_24.T__struct_24),
({ _s : ("abcdefghijk" : stdgo.GoString), _t : ("abcdefghijX" : stdgo.GoString), _out : false } : _internal.strings_test.Strings_test_T__struct_24.T__struct_24),
({ _s : ("abcdefghijk" : stdgo.GoString), _t : ("abcdefghijK" : stdgo.GoString), _out : true } : _internal.strings_test.Strings_test_T__struct_24.T__struct_24),
({ _s : ("abcdefghijK" : stdgo.GoString), _t : ("abcdefghijK" : stdgo.GoString), _out : true } : _internal.strings_test.Strings_test_T__struct_24.T__struct_24),
({ _s : ("abcdefghijkz" : stdgo.GoString), _t : ("abcdefghijKy" : stdgo.GoString), _out : false } : _internal.strings_test.Strings_test_T__struct_24.T__struct_24),
({ _s : ("abcdefghijKz" : stdgo.GoString), _t : ("abcdefghijKy" : stdgo.GoString), _out : false } : _internal.strings_test.Strings_test_T__struct_24.T__struct_24),
({ _s : ("1" : stdgo.GoString), _t : ("2" : stdgo.GoString), _out : false } : _internal.strings_test.Strings_test_T__struct_24.T__struct_24),
({ _s : ("utf-8" : stdgo.GoString), _t : ("US-ASCII" : stdgo.GoString), _out : false } : _internal.strings_test.Strings_test_T__struct_24.T__struct_24)].concat([for (i in 13 ... (13 > 13 ? 13 : 13 : stdgo.GoInt).toBasic()) ({ _s : ("" : stdgo.GoString), _t : ("" : stdgo.GoString), _out : false } : _internal.strings_test.Strings_test_T__struct_24.T__struct_24)])) : stdgo.Slice<_internal.strings_test.Strings_test_T__struct_24.T__struct_24>);

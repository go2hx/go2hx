package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
var equalFoldTests : stdgo.Slice<_internal.bytes_test.Bytes_test_T__struct_6.T__struct_6> = (new stdgo.Slice<_internal.bytes_test.Bytes_test_T__struct_6.T__struct_6>(11, 11, ...[
({ _s : ("abc" : stdgo.GoString), _t : ("abc" : stdgo.GoString), _out : true } : _internal.bytes_test.Bytes_test_T__struct_6.T__struct_6),
({ _s : ("ABcd" : stdgo.GoString), _t : ("ABcd" : stdgo.GoString), _out : true } : _internal.bytes_test.Bytes_test_T__struct_6.T__struct_6),
({ _s : ("123abc" : stdgo.GoString), _t : ("123ABC" : stdgo.GoString), _out : true } : _internal.bytes_test.Bytes_test_T__struct_6.T__struct_6),
({ _s : ("αβδ" : stdgo.GoString), _t : ("ΑΒΔ" : stdgo.GoString), _out : true } : _internal.bytes_test.Bytes_test_T__struct_6.T__struct_6),
({ _s : ("abc" : stdgo.GoString), _t : ("xyz" : stdgo.GoString), _out : false } : _internal.bytes_test.Bytes_test_T__struct_6.T__struct_6),
({ _s : ("abc" : stdgo.GoString), _t : ("XYZ" : stdgo.GoString), _out : false } : _internal.bytes_test.Bytes_test_T__struct_6.T__struct_6),
({ _s : ("abcdefghijk" : stdgo.GoString), _t : ("abcdefghijX" : stdgo.GoString), _out : false } : _internal.bytes_test.Bytes_test_T__struct_6.T__struct_6),
({ _s : ("abcdefghijk" : stdgo.GoString), _t : ("abcdefghijK" : stdgo.GoString), _out : true } : _internal.bytes_test.Bytes_test_T__struct_6.T__struct_6),
({ _s : ("abcdefghijK" : stdgo.GoString), _t : ("abcdefghijK" : stdgo.GoString), _out : true } : _internal.bytes_test.Bytes_test_T__struct_6.T__struct_6),
({ _s : ("abcdefghijkz" : stdgo.GoString), _t : ("abcdefghijKy" : stdgo.GoString), _out : false } : _internal.bytes_test.Bytes_test_T__struct_6.T__struct_6),
({ _s : ("abcdefghijKz" : stdgo.GoString), _t : ("abcdefghijKy" : stdgo.GoString), _out : false } : _internal.bytes_test.Bytes_test_T__struct_6.T__struct_6)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({ _s : ("" : stdgo.GoString), _t : ("" : stdgo.GoString), _out : false } : _internal.bytes_test.Bytes_test_T__struct_6.T__struct_6)])) : stdgo.Slice<_internal.bytes_test.Bytes_test_T__struct_6.T__struct_6>);

package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
var containsRuneTests : stdgo.Slice<_internal.bytes_test.Bytes_test_T__struct_12.T__struct_12> = (new stdgo.Slice<_internal.bytes_test.Bytes_test_T__struct_12.T__struct_12>(8, 8, ...[({ _b : (stdgo.Go.str() : stdgo.Slice<stdgo.GoUInt8>), _r : (97 : stdgo.GoInt32), _expected : false } : _internal.bytes_test.Bytes_test_T__struct_12.T__struct_12), ({ _b : (("a" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _r : (97 : stdgo.GoInt32), _expected : true } : _internal.bytes_test.Bytes_test_T__struct_12.T__struct_12), ({ _b : (("aaa" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _r : (97 : stdgo.GoInt32), _expected : true } : _internal.bytes_test.Bytes_test_T__struct_12.T__struct_12), ({ _b : (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _r : (121 : stdgo.GoInt32), _expected : false } : _internal.bytes_test.Bytes_test_T__struct_12.T__struct_12), ({ _b : (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _r : (99 : stdgo.GoInt32), _expected : true } : _internal.bytes_test.Bytes_test_T__struct_12.T__struct_12), ({ _b : (("a☺b☻c☹d" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _r : (120 : stdgo.GoInt32), _expected : false } : _internal.bytes_test.Bytes_test_T__struct_12.T__struct_12), ({ _b : (("a☺b☻c☹d" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _r : (9787 : stdgo.GoInt32), _expected : true } : _internal.bytes_test.Bytes_test_T__struct_12.T__struct_12), ({ _b : (("aRegExp*" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _r : (42 : stdgo.GoInt32), _expected : true } : _internal.bytes_test.Bytes_test_T__struct_12.T__struct_12)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({ _b : (null : stdgo.Slice<stdgo.GoUInt8>), _r : (0 : stdgo.GoInt32), _expected : false } : _internal.bytes_test.Bytes_test_T__struct_12.T__struct_12)])) : stdgo.Slice<_internal.bytes_test.Bytes_test_T__struct_12.T__struct_12>);
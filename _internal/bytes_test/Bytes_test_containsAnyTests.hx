package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
var containsAnyTests : stdgo.Slice<_internal.bytes_test.Bytes_test_T__struct_11.T__struct_11> = (new stdgo.Slice<_internal.bytes_test.Bytes_test_T__struct_11.T__struct_11>(11, 11, ...[
({ _b : (stdgo.Go.str() : stdgo.Slice<stdgo.GoUInt8>), _substr : stdgo.Go.str()?.__copy__(), _expected : false } : _internal.bytes_test.Bytes_test_T__struct_11.T__struct_11),
({ _b : (stdgo.Go.str() : stdgo.Slice<stdgo.GoUInt8>), _substr : ("a" : stdgo.GoString), _expected : false } : _internal.bytes_test.Bytes_test_T__struct_11.T__struct_11),
({ _b : (stdgo.Go.str() : stdgo.Slice<stdgo.GoUInt8>), _substr : ("abc" : stdgo.GoString), _expected : false } : _internal.bytes_test.Bytes_test_T__struct_11.T__struct_11),
({ _b : (("a" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _substr : stdgo.Go.str()?.__copy__(), _expected : false } : _internal.bytes_test.Bytes_test_T__struct_11.T__struct_11),
({ _b : (("a" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _substr : ("a" : stdgo.GoString), _expected : true } : _internal.bytes_test.Bytes_test_T__struct_11.T__struct_11),
({ _b : (("aaa" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _substr : ("a" : stdgo.GoString), _expected : true } : _internal.bytes_test.Bytes_test_T__struct_11.T__struct_11),
({ _b : (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _substr : ("xyz" : stdgo.GoString), _expected : false } : _internal.bytes_test.Bytes_test_T__struct_11.T__struct_11),
({ _b : (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _substr : ("xcz" : stdgo.GoString), _expected : true } : _internal.bytes_test.Bytes_test_T__struct_11.T__struct_11),
({ _b : (("a☺b☻c☹d" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _substr : ("uvw☻xyz" : stdgo.GoString), _expected : true } : _internal.bytes_test.Bytes_test_T__struct_11.T__struct_11),
({ _b : (("aRegExp*" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _substr : (".(|)*+?^$[]" : stdgo.GoString), _expected : true } : _internal.bytes_test.Bytes_test_T__struct_11.T__struct_11),
({ _b : (((_internal.bytes_test.Bytes_test__dots._dots + _internal.bytes_test.Bytes_test__dots._dots?.__copy__() : stdgo.GoString) + _internal.bytes_test.Bytes_test__dots._dots?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _substr : (" " : stdgo.GoString), _expected : false } : _internal.bytes_test.Bytes_test_T__struct_11.T__struct_11)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({ _b : (null : stdgo.Slice<stdgo.GoUInt8>), _substr : ("" : stdgo.GoString), _expected : false } : _internal.bytes_test.Bytes_test_T__struct_11.T__struct_11)])) : stdgo.Slice<_internal.bytes_test.Bytes_test_T__struct_11.T__struct_11>);

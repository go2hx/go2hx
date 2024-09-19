package _internal.unicode.utf16_test;
import stdgo._internal.unicode.utf16.Utf16;
var _surrogateTests : stdgo.Slice<_internal.unicode.utf16_test.Utf16_test_T__struct_1.T__struct_1> = (new stdgo.Slice<_internal.unicode.utf16_test.Utf16_test_T__struct_1.T__struct_1>(11, 11, ...[
({ _r : (122 : stdgo.GoInt32), _want : false } : _internal.unicode.utf16_test.Utf16_test_T__struct_1.T__struct_1),
({ _r : (27700 : stdgo.GoInt32), _want : false } : _internal.unicode.utf16_test.Utf16_test_T__struct_1.T__struct_1),
({ _r : (65279 : stdgo.GoInt32), _want : false } : _internal.unicode.utf16_test.Utf16_test_T__struct_1.T__struct_1),
({ _r : (65536 : stdgo.GoInt32), _want : false } : _internal.unicode.utf16_test.Utf16_test_T__struct_1.T__struct_1),
({ _r : (119070 : stdgo.GoInt32), _want : false } : _internal.unicode.utf16_test.Utf16_test_T__struct_1.T__struct_1),
({ _r : (1114109 : stdgo.GoInt32), _want : false } : _internal.unicode.utf16_test.Utf16_test_T__struct_1.T__struct_1),
({ _r : (55295 : stdgo.GoInt32), _want : false } : _internal.unicode.utf16_test.Utf16_test_T__struct_1.T__struct_1),
({ _r : (55296 : stdgo.GoInt32), _want : true } : _internal.unicode.utf16_test.Utf16_test_T__struct_1.T__struct_1),
({ _r : (56320 : stdgo.GoInt32), _want : true } : _internal.unicode.utf16_test.Utf16_test_T__struct_1.T__struct_1),
({ _r : (57344 : stdgo.GoInt32), _want : false } : _internal.unicode.utf16_test.Utf16_test_T__struct_1.T__struct_1),
({ _r : (57343 : stdgo.GoInt32), _want : true } : _internal.unicode.utf16_test.Utf16_test_T__struct_1.T__struct_1)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({ _r : (0 : stdgo.GoInt32), _want : false } : _internal.unicode.utf16_test.Utf16_test_T__struct_1.T__struct_1)])) : stdgo.Slice<_internal.unicode.utf16_test.Utf16_test_T__struct_1.T__struct_1>);

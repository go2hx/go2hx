package stdgo._internal.text.scanner;
function testIssue30320(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L882"
        for (__0 => _test in (new stdgo.Slice<stdgo._internal.text.scanner.Scanner_t__struct_1.T__struct_1>(6, 6, ...[({ _in : ("foo01.bar31.xx-0-1-1-0" : stdgo.GoString), _want : ("01 31 0 1 1 0" : stdgo.GoString), _mode : (8u32 : stdgo.GoUInt) } : stdgo._internal.text.scanner.Scanner_t__struct_1.T__struct_1), ({ _in : ("foo0/12/0/5.67" : stdgo.GoString), _want : ("0 12 0 5 67" : stdgo.GoString), _mode : (8u32 : stdgo.GoUInt) } : stdgo._internal.text.scanner.Scanner_t__struct_1.T__struct_1), ({ _in : ("xxx1e0yyy" : stdgo.GoString), _want : ("1 0" : stdgo.GoString), _mode : (8u32 : stdgo.GoUInt) } : stdgo._internal.text.scanner.Scanner_t__struct_1.T__struct_1), ({ _in : ("1_2" : stdgo.GoString), _want : ("1_2" : stdgo.GoString), _mode : (8u32 : stdgo.GoUInt) } : stdgo._internal.text.scanner.Scanner_t__struct_1.T__struct_1), ({ _in : ("xxx1.0yyy2e3ee" : stdgo.GoString), _want : ("1 0 2 3" : stdgo.GoString), _mode : (8u32 : stdgo.GoUInt) } : stdgo._internal.text.scanner.Scanner_t__struct_1.T__struct_1), ({ _in : ("xxx1.0yyy2e3ee" : stdgo.GoString), _want : ("1.0 2e3" : stdgo.GoString), _mode : (16u32 : stdgo.GoUInt) } : stdgo._internal.text.scanner.Scanner_t__struct_1.T__struct_1)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _want : ("" : stdgo.GoString), _mode : (0 : stdgo.GoUInt) } : stdgo._internal.text.scanner.Scanner_t__struct_1.T__struct_1)])) : stdgo.Slice<stdgo._internal.text.scanner.Scanner_t__struct_1.T__struct_1>)) {
            var _got = (stdgo._internal.text.scanner.Scanner__extractints._extractInts(_test._in?.__copy__(), _test._mode)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L894"
            if (_got != (_test._want)) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L895"
                _t.errorf(("%q: got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
            };
        };
    }

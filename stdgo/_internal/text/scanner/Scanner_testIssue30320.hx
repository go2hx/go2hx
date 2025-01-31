package stdgo._internal.text.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.unicode.Unicode;
function testIssue30320(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in (new stdgo.Slice<stdgo._internal.text.scanner.Scanner_T__struct_1.T__struct_1>(6, 6, ...[({ _in : ("foo01.bar31.xx-0-1-1-0" : stdgo.GoString), _want : ("01 31 0 1 1 0" : stdgo.GoString), _mode : (8u32 : stdgo.GoUInt) } : stdgo._internal.text.scanner.Scanner_T__struct_1.T__struct_1), ({ _in : ("foo0/12/0/5.67" : stdgo.GoString), _want : ("0 12 0 5 67" : stdgo.GoString), _mode : (8u32 : stdgo.GoUInt) } : stdgo._internal.text.scanner.Scanner_T__struct_1.T__struct_1), ({ _in : ("xxx1e0yyy" : stdgo.GoString), _want : ("1 0" : stdgo.GoString), _mode : (8u32 : stdgo.GoUInt) } : stdgo._internal.text.scanner.Scanner_T__struct_1.T__struct_1), ({ _in : ("1_2" : stdgo.GoString), _want : ("1_2" : stdgo.GoString), _mode : (8u32 : stdgo.GoUInt) } : stdgo._internal.text.scanner.Scanner_T__struct_1.T__struct_1), ({ _in : ("xxx1.0yyy2e3ee" : stdgo.GoString), _want : ("1 0 2 3" : stdgo.GoString), _mode : (8u32 : stdgo.GoUInt) } : stdgo._internal.text.scanner.Scanner_T__struct_1.T__struct_1), ({ _in : ("xxx1.0yyy2e3ee" : stdgo.GoString), _want : ("1.0 2e3" : stdgo.GoString), _mode : (16u32 : stdgo.GoUInt) } : stdgo._internal.text.scanner.Scanner_T__struct_1.T__struct_1)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _want : ("" : stdgo.GoString), _mode : (0 : stdgo.GoUInt) } : stdgo._internal.text.scanner.Scanner_T__struct_1.T__struct_1)])) : stdgo.Slice<stdgo._internal.text.scanner.Scanner_T__struct_1.T__struct_1>)) {
            var _got = (stdgo._internal.text.scanner.Scanner__extractInts._extractInts(_test._in?.__copy__(), _test._mode)?.__copy__() : stdgo.GoString);
            if (_got != (_test._want)) {
                @:check2r _t.errorf(("%q: got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
            };
        };
    }

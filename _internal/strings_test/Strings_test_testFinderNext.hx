package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testFinderNext(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _testCases = (new stdgo.Slice<_internal.strings_test.Strings_test_T__struct_8.T__struct_8>(15, 15, ...[
({ _pat : stdgo.Go.str()?.__copy__(), _text : stdgo.Go.str()?.__copy__(), _index : (0 : stdgo.GoInt) } : _internal.strings_test.Strings_test_T__struct_8.T__struct_8),
({ _pat : stdgo.Go.str()?.__copy__(), _text : ("abc" : stdgo.GoString), _index : (0 : stdgo.GoInt) } : _internal.strings_test.Strings_test_T__struct_8.T__struct_8),
({ _pat : ("abc" : stdgo.GoString), _text : stdgo.Go.str()?.__copy__(), _index : (-1 : stdgo.GoInt) } : _internal.strings_test.Strings_test_T__struct_8.T__struct_8),
({ _pat : ("abc" : stdgo.GoString), _text : ("abc" : stdgo.GoString), _index : (0 : stdgo.GoInt) } : _internal.strings_test.Strings_test_T__struct_8.T__struct_8),
({ _pat : ("d" : stdgo.GoString), _text : ("abcdefg" : stdgo.GoString), _index : (3 : stdgo.GoInt) } : _internal.strings_test.Strings_test_T__struct_8.T__struct_8),
({ _pat : ("nan" : stdgo.GoString), _text : ("banana" : stdgo.GoString), _index : (2 : stdgo.GoInt) } : _internal.strings_test.Strings_test_T__struct_8.T__struct_8),
({ _pat : ("pan" : stdgo.GoString), _text : ("anpanman" : stdgo.GoString), _index : (2 : stdgo.GoInt) } : _internal.strings_test.Strings_test_T__struct_8.T__struct_8),
({ _pat : ("nnaaman" : stdgo.GoString), _text : ("anpanmanam" : stdgo.GoString), _index : (-1 : stdgo.GoInt) } : _internal.strings_test.Strings_test_T__struct_8.T__struct_8),
({ _pat : ("abcd" : stdgo.GoString), _text : ("abc" : stdgo.GoString), _index : (-1 : stdgo.GoInt) } : _internal.strings_test.Strings_test_T__struct_8.T__struct_8),
({ _pat : ("abcd" : stdgo.GoString), _text : ("bcd" : stdgo.GoString), _index : (-1 : stdgo.GoInt) } : _internal.strings_test.Strings_test_T__struct_8.T__struct_8),
({ _pat : ("bcd" : stdgo.GoString), _text : ("abcd" : stdgo.GoString), _index : (1 : stdgo.GoInt) } : _internal.strings_test.Strings_test_T__struct_8.T__struct_8),
({ _pat : ("abc" : stdgo.GoString), _text : ("acca" : stdgo.GoString), _index : (-1 : stdgo.GoInt) } : _internal.strings_test.Strings_test_T__struct_8.T__struct_8),
({ _pat : ("aa" : stdgo.GoString), _text : ("aaa" : stdgo.GoString), _index : (0 : stdgo.GoInt) } : _internal.strings_test.Strings_test_T__struct_8.T__struct_8),
({ _pat : ("baa" : stdgo.GoString), _text : ("aaaaa" : stdgo.GoString), _index : (-1 : stdgo.GoInt) } : _internal.strings_test.Strings_test_T__struct_8.T__struct_8),
({ _pat : ("at that" : stdgo.GoString), _text : ("which finally halts.  at that point" : stdgo.GoString), _index : (22 : stdgo.GoInt) } : _internal.strings_test.Strings_test_T__struct_8.T__struct_8)].concat([for (i in 15 ... (15 > 15 ? 15 : 15 : stdgo.GoInt).toBasic()) ({ _pat : ("" : stdgo.GoString), _text : ("" : stdgo.GoString), _index : (0 : stdgo.GoInt) } : _internal.strings_test.Strings_test_T__struct_8.T__struct_8)])) : stdgo.Slice<_internal.strings_test.Strings_test_T__struct_8.T__struct_8>);
        for (__0 => _tc in _testCases) {
            var _got = (stdgo._internal.strings.Strings_stringFind.stringFind(_tc._pat?.__copy__(), _tc._text?.__copy__()) : stdgo.GoInt);
            var _want = (_tc._index : stdgo.GoInt);
            if (_got != (_want)) {
                _t.errorf(("stringFind(%q, %q) got %d, want %d\n" : stdgo.GoString), stdgo.Go.toInterface(_tc._pat), stdgo.Go.toInterface(_tc._text), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }

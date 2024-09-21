package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testFinderCreation(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _testCases = (new stdgo.Slice<_internal.strings_test.Strings_test_T__struct_9.T__struct_9>(4, 4, ...[({ _pattern : ("abc" : stdgo.GoString), _bad : {
            var s:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(256, 256, ...[for (i in 0 ... 256) 0]);
            s[97] = (2 : stdgo.GoInt);
            s[98] = (1 : stdgo.GoInt);
            s[99] = (3 : stdgo.GoInt);
            s;
        }, _suf : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(5 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : _internal.strings_test.Strings_test_T__struct_9.T__struct_9), ({ _pattern : ("mississi" : stdgo.GoString), _bad : {
            var s:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(256, 256, ...[for (i in 0 ... 256) 0]);
            s[105] = (3 : stdgo.GoInt);
            s[109] = (7 : stdgo.GoInt);
            s[115] = (1 : stdgo.GoInt);
            s;
        }, _suf : (new stdgo.Slice<stdgo.GoInt>(8, 8, ...[(15 : stdgo.GoInt), (14 : stdgo.GoInt), (13 : stdgo.GoInt), (7 : stdgo.GoInt), (11 : stdgo.GoInt), (10 : stdgo.GoInt), (7 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : _internal.strings_test.Strings_test_T__struct_9.T__struct_9), ({ _pattern : ("abcxxxabc" : stdgo.GoString), _bad : {
            var s:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(256, 256, ...[for (i in 0 ... 256) 0]);
            s[97] = (2 : stdgo.GoInt);
            s[98] = (1 : stdgo.GoInt);
            s[99] = (6 : stdgo.GoInt);
            s[120] = (3 : stdgo.GoInt);
            s;
        }, _suf : (new stdgo.Slice<stdgo.GoInt>(9, 9, ...[(14 : stdgo.GoInt), (13 : stdgo.GoInt), (12 : stdgo.GoInt), (11 : stdgo.GoInt), (10 : stdgo.GoInt), (9 : stdgo.GoInt), (11 : stdgo.GoInt), (10 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : _internal.strings_test.Strings_test_T__struct_9.T__struct_9), ({ _pattern : ("abyxcdeyx" : stdgo.GoString), _bad : {
            var s:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(256, 256, ...[for (i in 0 ... 256) 0]);
            s[97] = (8 : stdgo.GoInt);
            s[98] = (7 : stdgo.GoInt);
            s[99] = (4 : stdgo.GoInt);
            s[100] = (3 : stdgo.GoInt);
            s[101] = (2 : stdgo.GoInt);
            s[121] = (1 : stdgo.GoInt);
            s[120] = (5 : stdgo.GoInt);
            s;
        }, _suf : (new stdgo.Slice<stdgo.GoInt>(9, 9, ...[(17 : stdgo.GoInt), (16 : stdgo.GoInt), (15 : stdgo.GoInt), (14 : stdgo.GoInt), (13 : stdgo.GoInt), (12 : stdgo.GoInt), (7 : stdgo.GoInt), (10 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : _internal.strings_test.Strings_test_T__struct_9.T__struct_9)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _pattern : ("" : stdgo.GoString), _bad : new stdgo.GoArray<stdgo.GoInt>(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoInt)]), _suf : (null : stdgo.Slice<stdgo.GoInt>) } : _internal.strings_test.Strings_test_T__struct_9.T__struct_9)])) : stdgo.Slice<_internal.strings_test.Strings_test_T__struct_9.T__struct_9>);
        for (__0 => _tc in _testCases) {
            var __tmp__ = stdgo._internal.strings.Strings_dumpTables.dumpTables(_tc._pattern?.__copy__()), _bad:stdgo.Slice<stdgo.GoInt> = __tmp__._0, _good:stdgo.Slice<stdgo.GoInt> = __tmp__._1;
            for (_i => _got in _bad) {
                var _want = (_tc._bad[(_i : stdgo.GoInt)] : stdgo.GoInt);
                if (_want == ((0 : stdgo.GoInt))) {
                    _want = (_tc._pattern.length);
                };
                if (_got != (_want)) {
                    _t.errorf(("boyerMoore(%q) bad[\'%c\']: got %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_good), stdgo.Go.toInterface(_tc._suf))) {
                _t.errorf(("boyerMoore(%q) got %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_good), stdgo.Go.toInterface(_tc._suf));
            };
        };
    }

package _internal.unicode_test;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
function testSpecialCaseNoMapping(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _noChangeForCapitalA:stdgo._internal.unicode.Unicode_CaseRange.CaseRange = (new stdgo._internal.unicode.Unicode_CaseRange.CaseRange((65u32 : stdgo.GoUInt32), (65u32 : stdgo.GoUInt32), (new stdgo.GoArray<stdgo.GoInt32>(3, 3, ...[(0 : stdgo.GoInt32), (0 : stdgo.GoInt32), (0 : stdgo.GoInt32)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt32>)?.__copy__()) : stdgo._internal.unicode.Unicode_CaseRange.CaseRange);
        var _got = (stdgo._internal.strings.Strings_toLowerSpecial.toLowerSpecial(((new stdgo.Slice<stdgo._internal.unicode.Unicode_CaseRange.CaseRange>(1, 1, ...[_noChangeForCapitalA?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.unicode.Unicode_CaseRange.CaseRange)])) : stdgo.Slice<stdgo._internal.unicode.Unicode_CaseRange.CaseRange>) : stdgo._internal.unicode.Unicode_SpecialCase.SpecialCase), ("ABC" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _want = ("Abc" : stdgo.GoString);
        if (_got != (_want)) {
            _t.errorf(("got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }

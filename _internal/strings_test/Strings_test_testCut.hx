package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testCut(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.strings_test.Strings_test__cutTests._cutTests) {
            {
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_tt._s?.__copy__(), _tt._sep?.__copy__()), _before:stdgo.GoString = __tmp__._0, _after:stdgo.GoString = __tmp__._1, _found:Bool = __tmp__._2;
                if (((_before != (_tt._before) || _after != (_tt._after) : Bool) || (_found != _tt._found) : Bool)) {
                    _t.errorf(("Cut(%q, %q) = %q, %q, %v, want %q, %q, %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_before), stdgo.Go.toInterface(_after), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._before), stdgo.Go.toInterface(_tt._after), stdgo.Go.toInterface(_tt._found));
                };
            };
        };
    }

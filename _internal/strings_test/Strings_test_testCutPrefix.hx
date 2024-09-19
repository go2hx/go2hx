package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testCutPrefix(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.strings_test.Strings_test__cutPrefixTests._cutPrefixTests) {
            {
                var __tmp__ = stdgo._internal.strings.Strings_cutPrefix.cutPrefix(_tt._s?.__copy__(), _tt._sep?.__copy__()), _after:stdgo.GoString = __tmp__._0, _found:Bool = __tmp__._1;
                if (((_after != _tt._after) || (_found != _tt._found) : Bool)) {
                    _t.errorf(("CutPrefix(%q, %q) = %q, %v, want %q, %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_after), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._after), stdgo.Go.toInterface(_tt._found));
                };
            };
        };
    }

package stdgo._internal.slices;
import stdgo._internal.math.Math;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.strings.Strings;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.testing.Testing;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
function testStructSorts(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _ss = (stdgo._internal.slices.Slices__makeRandomStructs._makeRandomStructs((200 : stdgo.GoInt)) : stdgo._internal.slices.Slices_T_myStructs.T_myStructs);
        var _ss2 = (new stdgo.Slice<stdgo.Ref<stdgo._internal.slices.Slices_T_myStruct.T_myStruct>>((_ss.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.slices.Slices_T_myStruct.T_myStruct>>);
        for (_i => _ in _ss) {
            _ss2[(_i : stdgo.GoInt)] = (stdgo.Go.setRef(({ _n : (@:checkr _ss[(_i : stdgo.GoInt)] ?? throw "null pointer dereference")._n } : stdgo._internal.slices.Slices_T_myStruct.T_myStruct)) : stdgo.Ref<stdgo._internal.slices.Slices_T_myStruct.T_myStruct>);
        };
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_ss));
        stdgo._internal.slices.Slices_sortFunc.sortFunc(_ss2, function(_a:stdgo.Ref<stdgo._internal.slices.Slices_T_myStruct.T_myStruct>, _b:stdgo.Ref<stdgo._internal.slices.Slices_T_myStruct.T_myStruct>):stdgo.GoInt {
            return ((@:checkr _a ?? throw "null pointer dereference")._n - (@:checkr _b ?? throw "null pointer dereference")._n : stdgo.GoInt);
        });
        for (_i => _ in _ss) {
            if (stdgo.Go.toInterface((_ss[(_i : stdgo.GoInt)] : stdgo._internal.slices.Slices_T_myStruct.T_myStruct)) != stdgo.Go.toInterface((_ss2[(_i : stdgo.GoInt)] : stdgo._internal.slices.Slices_T_myStruct.T_myStruct))) {
                @:check2r _t.fatalf(("ints2 mismatch at %d; %v != %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((_ss[(_i : stdgo.GoInt)] : stdgo._internal.slices.Slices_T_myStruct.T_myStruct))), stdgo.Go.toInterface(stdgo.Go.asInterface((_ss2[(_i : stdgo.GoInt)] : stdgo._internal.slices.Slices_T_myStruct.T_myStruct))));
            };
        };
    }

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
function testStringSorts(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _ss = stdgo._internal.slices.Slices__makeRandomStrings._makeRandomStrings((200 : stdgo.GoInt));
        var _ss2 = stdgo._internal.slices.Slices_clone.clone(_ss);
        stdgo._internal.sort.Sort_strings.strings(_ss);
        stdgo._internal.slices.Slices_sort.sort(_ss2);
        for (_i => _ in _ss) {
            if (_ss[(_i : stdgo.GoInt)] != (_ss2[(_i : stdgo.GoInt)])) {
                @:check2r _t.fatalf(("ss2 mismatch at %d; %s != %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_ss[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_ss2[(_i : stdgo.GoInt)]));
            };
        };
    }

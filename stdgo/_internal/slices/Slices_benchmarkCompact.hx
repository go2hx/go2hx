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
function benchmarkCompact(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        for (__0 => _c in stdgo._internal.slices.Slices__compactTests._compactTests) {
            @:check2r _b.run(_c._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _ss = (new stdgo.Slice<stdgo.GoInt>((0 : stdgo.GoInt).toBasic(), (64 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                {
                    var _k = (0 : stdgo.GoInt);
                    while ((_k < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        _ss = (_ss.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
_ss = (_ss.__append__(...(_c._s : Array<stdgo.GoInt>)));
var __blank__ = stdgo._internal.slices.Slices_compact.compact(_ss);
                        _k++;
                    };
                };
            });
        };
    }

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
function benchmarkBinarySearchFloats(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        for (__0 => _size in (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(16 : stdgo.GoInt), (32 : stdgo.GoInt), (64 : stdgo.GoInt), (128 : stdgo.GoInt), (512 : stdgo.GoInt), (1024 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            @:check2r _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("Size%d" : stdgo.GoString), stdgo.Go.toInterface(_size))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _floats = (new stdgo.Slice<stdgo.GoFloat64>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
                for (_i => _ in _floats) {
                    _floats[(_i : stdgo.GoInt)] = (_i : stdgo.GoFloat64);
                };
                var _midpoint = ((_floats.length) / (2 : stdgo.GoInt) : stdgo.GoInt);
                var _needle = (((_floats[(_midpoint : stdgo.GoInt)] + _floats[(_midpoint + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoFloat64)) / (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                @:check2r _b.resetTimer();
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        stdgo._internal.slices.Slices_binarySearch.binarySearch(_floats, _needle);
                        _i++;
                    };
                };
            });
        };
    }

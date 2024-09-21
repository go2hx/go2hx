package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function exampleShuffle_slicesInUnison():Void {
        var _numbers = (("12345" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _letters = (("ABCDE" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.math.rand.Rand_shuffle.shuffle((_numbers.length), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Void {
            {
                final __tmp__0 = _numbers[(_j : stdgo.GoInt)];
                final __tmp__1 = _numbers[(_i : stdgo.GoInt)];
                final __tmp__2 = _numbers;
                final __tmp__3 = (_i : stdgo.GoInt);
                final __tmp__4 = _numbers;
                final __tmp__5 = (_j : stdgo.GoInt);
                __tmp__2[__tmp__3] = __tmp__0;
                __tmp__4[__tmp__5] = __tmp__1;
            };
            {
                final __tmp__0 = _letters[(_j : stdgo.GoInt)];
                final __tmp__1 = _letters[(_i : stdgo.GoInt)];
                final __tmp__2 = _letters;
                final __tmp__3 = (_i : stdgo.GoInt);
                final __tmp__4 = _letters;
                final __tmp__5 = (_j : stdgo.GoInt);
                __tmp__2[__tmp__3] = __tmp__0;
                __tmp__4[__tmp__5] = __tmp__1;
            };
        });
        for (_i => _ in _numbers) {
            stdgo._internal.fmt.Fmt_printf.printf(("%c: %c\n" : stdgo.GoString), stdgo.Go.toInterface(_letters[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_numbers[(_i : stdgo.GoInt)]));
        };
    }

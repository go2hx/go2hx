package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function exampleShuffle():Void {
        var _words = stdgo._internal.strings.Strings_fields.fields(("ink runs from the corners of my mouth" : stdgo.GoString));
        stdgo._internal.math.rand.Rand_shuffle.shuffle((_words.length), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Void {
            {
                final __tmp__0 = _words[(_j : stdgo.GoInt)]?.__copy__();
                final __tmp__1 = _words[(_i : stdgo.GoInt)]?.__copy__();
                final __tmp__2 = _words;
                final __tmp__3 = (_i : stdgo.GoInt);
                final __tmp__4 = _words;
                final __tmp__5 = (_j : stdgo.GoInt);
                __tmp__2[__tmp__3] = __tmp__0;
                __tmp__4[__tmp__5] = __tmp__1;
            };
        });
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_words));
    }

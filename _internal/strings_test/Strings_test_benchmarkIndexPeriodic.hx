package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function benchmarkIndexPeriodic(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _key = ("aa" : stdgo.GoString);
        for (__0 => _skip in (new stdgo.GoArray<stdgo.GoInt>(6, 6, ...[(2 : stdgo.GoInt), (4 : stdgo.GoInt), (8 : stdgo.GoInt), (16 : stdgo.GoInt), (32 : stdgo.GoInt), (64 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)) {
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("IndexPeriodic%d" : stdgo.GoString), stdgo.Go.toInterface(_skip))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _s = (stdgo._internal.strings.Strings_repeat.repeat((("a" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat((" " : stdgo.GoString), (_skip - (1 : stdgo.GoInt) : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__(), ((65536 : stdgo.GoInt) / _skip : stdgo.GoInt))?.__copy__() : stdgo.GoString);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        stdgo._internal.strings.Strings_index.index(_s?.__copy__(), _key?.__copy__());
                    });
                };
            });
        };
    }

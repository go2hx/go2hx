package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function benchmarkRepeat(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _s = ("0123456789" : stdgo.GoString);
        for (__0 => _n in (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(5 : stdgo.GoInt), (10 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            for (__1 => _c in (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (6 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%dx%d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_c))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            stdgo._internal.strings.Strings_repeat.repeat((_s.__slice__(0, _n) : stdgo.GoString)?.__copy__(), _c);
                        });
                    };
                });
            };
        };
    }

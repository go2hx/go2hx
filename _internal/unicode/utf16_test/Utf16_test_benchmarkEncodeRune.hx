package _internal.unicode.utf16_test;
import stdgo._internal.unicode.utf16.Utf16;
function benchmarkEncodeRune(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                for (__8 => _u in (new stdgo.Slice<stdgo.GoInt32>(5, 5, ...[(120016 : stdgo.GoInt32), (120017 : stdgo.GoInt32), (120018 : stdgo.GoInt32), (120019 : stdgo.GoInt32), (120020 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>)) {
                    stdgo._internal.unicode.utf16.Utf16_encodeRune.encodeRune(_u);
                };
            });
        };
    }

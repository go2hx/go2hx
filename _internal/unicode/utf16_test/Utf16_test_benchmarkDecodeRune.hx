package _internal.unicode.utf16_test;
import stdgo._internal.unicode.utf16.Utf16;
function benchmarkDecodeRune(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _rs = (new stdgo.Slice<stdgo.GoInt32>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        for (_i => _u in (new stdgo.Slice<stdgo.GoInt32>(5, 5, ...[(120016 : stdgo.GoInt32), (120017 : stdgo.GoInt32), (120018 : stdgo.GoInt32), (120019 : stdgo.GoInt32), (120020 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>)) {
            {
                var __tmp__ = stdgo._internal.unicode.utf16.Utf16_encodeRune.encodeRune(_u);
                _rs[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] = __tmp__._0;
                _rs[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] = __tmp__._1;
            };
        };
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (5 : stdgo.GoInt) : Bool), _j++, {
                        stdgo._internal.unicode.utf16.Utf16_decodeRune.decodeRune(_rs[((2 : stdgo.GoInt) * _j : stdgo.GoInt)], _rs[(((2 : stdgo.GoInt) * _j : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]);
                    });
                };
            });
        };
    }

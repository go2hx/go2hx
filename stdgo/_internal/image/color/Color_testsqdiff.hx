package stdgo._internal.image.color;
function testSqDiff(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _orig = (function(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):stdgo.GoUInt32 {
            var _d:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
            if ((_x > _y : Bool)) {
                _d = (_x - _y : stdgo.GoUInt32);
            } else {
                _d = (_y - _x : stdgo.GoUInt32);
            };
            return (((_d * _d : stdgo.GoUInt32)) >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
        } : (stdgo.GoUInt32, stdgo.GoUInt32) -> stdgo.GoUInt32);
        var _testCases = (new stdgo.Slice<stdgo.GoUInt32>(12, 12, ...[
(0u32 : stdgo.GoUInt32),
(1u32 : stdgo.GoUInt32),
(2u32 : stdgo.GoUInt32),
(65533u32 : stdgo.GoUInt32),
(65534u32 : stdgo.GoUInt32),
(65535u32 : stdgo.GoUInt32),
(65536u32 : stdgo.GoUInt32),
(65537u32 : stdgo.GoUInt32),
(65538u32 : stdgo.GoUInt32),
(-3u32 : stdgo.GoUInt32),
(-2u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        for (__0 => _x in _testCases) {
            for (__1 => _y in _testCases) {
                {
                    var __0 = (stdgo._internal.image.color.Color__sqdiff._sqDiff(_x, _y) : stdgo.GoUInt32), __1 = (_orig(_x, _y) : stdgo.GoUInt32);
var _want = __1, _got = __0;
                    if (_got != (_want)) {
                        @:check2r _t.fatalf(("sqDiff(%#x, %#x): got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
            };
        };
        {
            var _err = (stdgo._internal.testing.quick.Quick_checkequal.checkEqual(stdgo.Go.toInterface(_orig), stdgo.Go.toInterface(stdgo._internal.image.color.Color__sqdiff._sqDiff), (stdgo.Go.setRef(({ maxCountScale : (10 : stdgo.GoFloat64) } : stdgo._internal.testing.quick.Quick_config.Config)) : stdgo.Ref<stdgo._internal.testing.quick.Quick_config.Config>)) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }

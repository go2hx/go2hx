package stdgo._internal.image.draw;
function testSqDiff(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _orig = (function(_x:stdgo.GoInt32, _y:stdgo.GoInt32):stdgo.GoUInt32 {
            var _d:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L776"
            if ((_x > _y : Bool)) {
                _d = ((_x - _y : stdgo.GoInt32) : stdgo.GoUInt32);
            } else {
                _d = ((_y - _x : stdgo.GoInt32) : stdgo.GoUInt32);
            };
            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L781"
            return (((_d * _d : stdgo.GoUInt32)) >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
        } : (stdgo.GoInt32, stdgo.GoInt32) -> stdgo.GoUInt32);
        var _testCases = (new stdgo.Slice<stdgo.GoInt32>(15, 15, ...[
(0 : stdgo.GoInt32),
(1 : stdgo.GoInt32),
(2 : stdgo.GoInt32),
(65533 : stdgo.GoInt32),
(65534 : stdgo.GoInt32),
(65535 : stdgo.GoInt32),
(65536 : stdgo.GoInt32),
(65537 : stdgo.GoInt32),
(65538 : stdgo.GoInt32),
(2147483645 : stdgo.GoInt32),
(2147483646 : stdgo.GoInt32),
(2147483647 : stdgo.GoInt32),
(-2147483645 : stdgo.GoInt32),
(-2147483646 : stdgo.GoInt32),
(-2147483648 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L800"
        for (__0 => _x in _testCases) {
            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L801"
            for (__1 => _y in _testCases) {
                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L802"
                {
                    var __0 = (stdgo._internal.image.draw.Draw__sqdiff._sqDiff(_x, _y) : stdgo.GoUInt32), __1 = (_orig(_x, _y) : stdgo.GoUInt32);
var _want = __1, _got = __0;
                    if (_got != (_want)) {
                        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L803"
                        _t.fatalf(("sqDiff(%#x, %#x): got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L807"
        {
            var _err = (stdgo._internal.testing.quick.Quick_checkequal.checkEqual(stdgo.Go.toInterface(_orig), stdgo.Go.toInterface(stdgo._internal.image.draw.Draw__sqdiff._sqDiff), (stdgo.Go.setRef(({ maxCountScale : (10 : stdgo.GoFloat64) } : stdgo._internal.testing.quick.Quick_config.Config)) : stdgo.Ref<stdgo._internal.testing.quick.Quick_config.Config>)) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L808"
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }

package stdgo._internal.image.draw;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.image.draw.Draw_floydsteinberg.floydSteinberg, __tmp__1 = stdgo._internal.image.draw.Draw__palette._palette, __tmp__2 = stdgo._internal.image.draw.Draw__cliptests._clipTests, __tmp__3 = stdgo._internal.image.draw.Draw__drawtests._drawTests;
            var _p:stdgo.AnyInterface = stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowestrgba.T_slowestRGBA>)));
            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L88"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_p : stdgo._internal.image.draw.Draw_rgba64image.RGBA64Image)) : stdgo._internal.image.draw.Draw_rgba64image.RGBA64Image), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.image.draw.Draw_rgba64image.RGBA64Image), _1 : false };
                }, __0 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L89"
                    throw stdgo.Go.toInterface(("slowestRGBA should not be an RGBA64Image" : stdgo.GoString));
                };
            };
            var _p:stdgo.AnyInterface = stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowerrgba.T_slowerRGBA>)));
            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L177"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_p : stdgo._internal.image.draw.Draw_rgba64image.RGBA64Image)) : stdgo._internal.image.draw.Draw_rgba64image.RGBA64Image), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.image.draw.Draw_rgba64image.RGBA64Image), _1 : false };
                }, __0 = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L178"
                    throw stdgo.Go.toInterface(("slowerRGBA should be an RGBA64Image" : stdgo.GoString));
                };
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

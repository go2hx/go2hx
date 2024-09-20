package _internal.image.color_dot_test;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.image.color_dot_test.Color_dot_test__tests._tests, _internal.image.color_dot_test.Color_dot_test__benchmarks._benchmarks, _internal.image.color_dot_test.Color_dot_test__fuzzTargets._fuzzTargets, _internal.image.color_dot_test.Color_dot_test__examples._examples);
        Sys.exit(_m.run());
    }
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.image.color.Color_rgbamodel.rgbamodel, __tmp__1 = stdgo._internal.image.color.Color_rgba64model.rgba64model, __tmp__2 = stdgo._internal.image.color.Color_nrgbamodel.nrgbamodel, __tmp__3 = stdgo._internal.image.color.Color_nrgba64model.nrgba64model, __tmp__4 = stdgo._internal.image.color.Color_alphaModel.alphaModel, __tmp__5 = stdgo._internal.image.color.Color_alpha16Model.alpha16Model, __tmp__6 = stdgo._internal.image.color.Color_grayModel.grayModel, __tmp__7 = stdgo._internal.image.color.Color_gray16Model.gray16Model, __tmp__8 = stdgo._internal.image.color.Color_black.black, __tmp__9 = stdgo._internal.image.color.Color_white.white, __tmp__10 = stdgo._internal.image.color.Color_transparent.transparent, __tmp__11 = stdgo._internal.image.color.Color_opaque.opaque, __tmp__12 = stdgo._internal.image.color.Color_ycbCrModel.ycbCrModel, __tmp__13 = stdgo._internal.image.color.Color_nycbCrAModel.nycbCrAModel, __tmp__14 = stdgo._internal.image.color.Color_cmykmodel.cmykmodel;
            var __tmp__0 = _internal.image.color_dot_test.Color_dot_test__tests._tests, __tmp__1 = _internal.image.color_dot_test.Color_dot_test__benchmarks._benchmarks, __tmp__2 = _internal.image.color_dot_test.Color_dot_test__fuzzTargets._fuzzTargets, __tmp__3 = _internal.image.color_dot_test.Color_dot_test__examples._examples;
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("image/color" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

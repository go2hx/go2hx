package stdgo._internal.image.draw;
function benchmarkPalettedRGBA(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        stdgo._internal.image.draw.Draw__bench._bench(_b, stdgo.Go.asInterface(stdgo._internal.image.draw.Draw__palette._palette), stdgo._internal.image.color.Color_rgbamodel.rGBAModel, (null : stdgo._internal.image.color.Color_model.Model), (1 : stdgo._internal.image.draw.Draw_op.Op));
    }

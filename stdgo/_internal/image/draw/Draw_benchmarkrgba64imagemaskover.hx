package stdgo._internal.image.draw;
function benchmarkRGBA64ImageMaskOver(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        stdgo._internal.image.draw.Draw__bench._bench(_b, stdgo._internal.image.color.Color_rgbamodel.rGBAModel, stdgo._internal.image.color.Color_rgba64model.rGBA64Model, stdgo._internal.image.color.Color_alphamodel.alphaModel, (0 : stdgo._internal.image.draw.Draw_op.Op));
    }

package stdgo._internal.image;
@:keep @:allow(stdgo._internal.image.Image.YCbCrSubsampleRatio_asInterface) class YCbCrSubsampleRatio_static_extension {
    @:keep
    @:tdfield
    static public function string( _s:stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio):stdgo.GoString {
        @:recv var _s:stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio = _s;
        //"file:///home/runner/.go/go1.21.3/src/image/ycbcr.go#L24"
        {
            final __value__ = _s;
            if (__value__ == ((0 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio))) {
                //"file:///home/runner/.go/go1.21.3/src/image/ycbcr.go#L26"
                return ("YCbCrSubsampleRatio444" : stdgo.GoString);
            } else if (__value__ == ((1 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio))) {
                //"file:///home/runner/.go/go1.21.3/src/image/ycbcr.go#L28"
                return ("YCbCrSubsampleRatio422" : stdgo.GoString);
            } else if (__value__ == ((2 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio))) {
                //"file:///home/runner/.go/go1.21.3/src/image/ycbcr.go#L30"
                return ("YCbCrSubsampleRatio420" : stdgo.GoString);
            } else if (__value__ == ((3 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio))) {
                //"file:///home/runner/.go/go1.21.3/src/image/ycbcr.go#L32"
                return ("YCbCrSubsampleRatio440" : stdgo.GoString);
            } else if (__value__ == ((4 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio))) {
                //"file:///home/runner/.go/go1.21.3/src/image/ycbcr.go#L34"
                return ("YCbCrSubsampleRatio411" : stdgo.GoString);
            } else if (__value__ == ((5 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio))) {
                //"file:///home/runner/.go/go1.21.3/src/image/ycbcr.go#L36"
                return ("YCbCrSubsampleRatio410" : stdgo.GoString);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/ycbcr.go#L38"
        return ("YCbCrSubsampleRatioUnknown" : stdgo.GoString);
    }
}

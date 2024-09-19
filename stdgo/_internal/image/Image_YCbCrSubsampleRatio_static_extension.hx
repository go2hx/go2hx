package stdgo._internal.image;
@:keep @:allow(stdgo._internal.image.Image.YCbCrSubsampleRatio_asInterface) class YCbCrSubsampleRatio_static_extension {
    @:keep
    static public function string( _s:stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio):stdgo.GoString {
        @:recv var _s:stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio = _s;
        {
            final __value__ = _s;
            if (__value__ == ((0 : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio))) {
                return ("YCbCrSubsampleRatio444" : stdgo.GoString);
            } else if (__value__ == ((1 : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio))) {
                return ("YCbCrSubsampleRatio422" : stdgo.GoString);
            } else if (__value__ == ((2 : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio))) {
                return ("YCbCrSubsampleRatio420" : stdgo.GoString);
            } else if (__value__ == ((3 : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio))) {
                return ("YCbCrSubsampleRatio440" : stdgo.GoString);
            } else if (__value__ == ((4 : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio))) {
                return ("YCbCrSubsampleRatio411" : stdgo.GoString);
            } else if (__value__ == ((5 : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio))) {
                return ("YCbCrSubsampleRatio410" : stdgo.GoString);
            };
        };
        return ("YCbCrSubsampleRatioUnknown" : stdgo.GoString);
    }
}

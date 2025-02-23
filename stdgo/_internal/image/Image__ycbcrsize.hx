package stdgo._internal.image;
function _yCbCrSize(_r:stdgo._internal.image.Image_rectangle.Rectangle, _subsampleRatio:stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.GoInt; } {
        var _w = (0 : stdgo.GoInt), _h = (0 : stdgo.GoInt), _cw = (0 : stdgo.GoInt), _ch = (0 : stdgo.GoInt);
        {
            final __tmp__0 = _r.dx();
            final __tmp__1 = _r.dy();
            _w = __tmp__0;
            _h = __tmp__1;
        };
        {
            final __value__ = _subsampleRatio;
            if (__value__ == ((1 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio))) {
                _cw = ((((_r.max.x + (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) - (_r.min.x / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
                _ch = _h;
            } else if (__value__ == ((2 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio))) {
                _cw = ((((_r.max.x + (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) - (_r.min.x / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
                _ch = ((((_r.max.y + (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) - (_r.min.y / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            } else if (__value__ == ((3 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio))) {
                _cw = _w;
                _ch = ((((_r.max.y + (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) - (_r.min.y / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            } else if (__value__ == ((4 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio))) {
                _cw = ((((_r.max.x + (3 : stdgo.GoInt) : stdgo.GoInt)) / (4 : stdgo.GoInt) : stdgo.GoInt) - (_r.min.x / (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
                _ch = _h;
            } else if (__value__ == ((5 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio))) {
                _cw = ((((_r.max.x + (3 : stdgo.GoInt) : stdgo.GoInt)) / (4 : stdgo.GoInt) : stdgo.GoInt) - (_r.min.x / (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
                _ch = ((((_r.max.y + (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) - (_r.min.y / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _cw = _w;
                _ch = _h;
            };
        };
        return { _0 : _w, _1 : _h, _2 : _cw, _3 : _ch };
    }

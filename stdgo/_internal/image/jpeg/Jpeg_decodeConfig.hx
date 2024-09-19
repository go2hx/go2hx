package stdgo._internal.image.jpeg;
function decodeConfig(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo._internal.image.Image_Config.Config; var _1 : stdgo.Error; } {
        var _d:stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder = ({} : stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder);
        {
            var __tmp__ = _d._decode(_r, true), __0:stdgo._internal.image.Image_Image.Image = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (new stdgo._internal.image.Image_Config.Config() : stdgo._internal.image.Image_Config.Config), _1 : _err };
            };
        };
        {
            final __value__ = _d._nComp;
            if (__value__ == ((1 : stdgo.GoInt))) {
                return { _0 : ({ colorModel : stdgo._internal.image.color.Color_grayModel.grayModel, width : _d._width, height : _d._height } : stdgo._internal.image.Image_Config.Config), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                var _cm = (stdgo._internal.image.color.Color_ycbCrModel.ycbCrModel : stdgo._internal.image.color.Color_Model.Model);
                if (_d._isRGB()) {
                    _cm = stdgo._internal.image.color.Color_rgbamodel.rgbamodel;
                };
                return { _0 : ({ colorModel : _cm, width : _d._width, height : _d._height } : stdgo._internal.image.Image_Config.Config), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((4 : stdgo.GoInt))) {
                return { _0 : ({ colorModel : stdgo._internal.image.color.Color_cmykmodel.cmykmodel, width : _d._width, height : _d._height } : stdgo._internal.image.Image_Config.Config), _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : (new stdgo._internal.image.Image_Config.Config() : stdgo._internal.image.Image_Config.Config), _1 : stdgo.Go.asInterface((("missing SOF marker" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError)) };
    }

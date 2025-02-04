package stdgo._internal.image.jpeg;
function decodeConfig(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo._internal.image.Image_config.Config; var _1 : stdgo.Error; } {
        var _d:stdgo._internal.image.jpeg.Jpeg_t_decoder.T_decoder = ({} : stdgo._internal.image.jpeg.Jpeg_t_decoder.T_decoder);
        {
            var __tmp__ = @:check2 _d._decode(_r, true), __0:stdgo._internal.image.Image_image.Image = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (new stdgo._internal.image.Image_config.Config() : stdgo._internal.image.Image_config.Config), _1 : _err };
            };
        };
        {
            final __value__ = _d._nComp;
            if (__value__ == ((1 : stdgo.GoInt))) {
                return { _0 : ({ colorModel : stdgo._internal.image.color.Color_graymodel.grayModel, width : _d._width, height : _d._height } : stdgo._internal.image.Image_config.Config), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                var _cm = (stdgo._internal.image.color.Color_ycbcrmodel.yCbCrModel : stdgo._internal.image.color.Color_model.Model);
                if (@:check2 _d._isRGB()) {
                    _cm = stdgo._internal.image.color.Color_rgbamodel.rGBAModel;
                };
                return { _0 : ({ colorModel : _cm, width : _d._width, height : _d._height } : stdgo._internal.image.Image_config.Config), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((4 : stdgo.GoInt))) {
                return { _0 : ({ colorModel : stdgo._internal.image.color.Color_cmykmodel.cMYKModel, width : _d._width, height : _d._height } : stdgo._internal.image.Image_config.Config), _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : (new stdgo._internal.image.Image_config.Config() : stdgo._internal.image.Image_config.Config), _1 : stdgo.Go.asInterface((("missing SOF marker" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_formaterror.FormatError)) };
    }

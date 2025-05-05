package stdgo._internal.image.jpeg;
function decodeConfig(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo._internal.image.Image_config.Config; var _1 : stdgo.Error; } {
        var _d:stdgo._internal.image.jpeg.Jpeg_t_decoder.T_decoder = ({} : stdgo._internal.image.jpeg.Jpeg_t_decoder.T_decoder);
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/reader.go#L780"
        {
            var __tmp__ = _d._decode(_r, true), __0:stdgo._internal.image.Image_image.Image = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/image/jpeg/reader.go#L781"
                return { _0 : (new stdgo._internal.image.Image_config.Config() : stdgo._internal.image.Image_config.Config), _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/reader.go#L783"
        {
            final __value__ = _d._nComp;
            if (__value__ == ((1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/image/jpeg/reader.go#L785"
                return { _0 : ({ colorModel : stdgo._internal.image.color.Color_graymodel.grayModel, width : _d._width, height : _d._height } : stdgo._internal.image.Image_config.Config), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                var _cm = (stdgo._internal.image.color.Color_ycbcrmodel.yCbCrModel : stdgo._internal.image.color.Color_model.Model);
                //"file:///home/runner/.go/go1.21.3/src/image/jpeg/reader.go#L792"
                if (_d._isRGB()) {
                    _cm = stdgo._internal.image.color.Color_rgbamodel.rGBAModel;
                };
                //"file:///home/runner/.go/go1.21.3/src/image/jpeg/reader.go#L795"
                return { _0 : ({ colorModel : _cm, width : _d._width, height : _d._height } : stdgo._internal.image.Image_config.Config), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((4 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/image/jpeg/reader.go#L801"
                return { _0 : ({ colorModel : stdgo._internal.image.color.Color_cmykmodel.cMYKModel, width : _d._width, height : _d._height } : stdgo._internal.image.Image_config.Config), _1 : (null : stdgo.Error) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/reader.go#L807"
        return { _0 : (new stdgo._internal.image.Image_config.Config() : stdgo._internal.image.Image_config.Config), _1 : stdgo.Go.asInterface((("missing SOF marker" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_formaterror.FormatError)) };
    }

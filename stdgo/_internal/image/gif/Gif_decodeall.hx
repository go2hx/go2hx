package stdgo._internal.image.gif;
function decodeAll(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.image.gif.Gif_gif.GIF>; var _1 : stdgo.Error; } {
        var _d:stdgo._internal.image.gif.Gif_t_decoder.T_decoder = ({} : stdgo._internal.image.gif.Gif_t_decoder.T_decoder);
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L607"
        {
            var _err = (_d._decode(_r, false, true) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L608"
                return { _0 : null, _1 : _err };
            };
        };
        var _gif = (stdgo.Go.setRef(({ image : _d._image, loopCount : _d._loopCount, delay : _d._delay, disposal : _d._disposal, config : ({ colorModel : stdgo.Go.asInterface(_d._globalColorTable), width : _d._width, height : _d._height } : stdgo._internal.image.Image_config.Config), backgroundIndex : _d._backgroundIndex } : stdgo._internal.image.gif.Gif_gif.GIF)) : stdgo.Ref<stdgo._internal.image.gif.Gif_gif.GIF>);
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L622"
        return { _0 : _gif, _1 : (null : stdgo.Error) };
    }

package stdgo._internal.image.gif;
function decodeAll(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.image.gif.Gif_GIF.GIF>; var _1 : stdgo.Error; } {
        var _d:stdgo._internal.image.gif.Gif_T_decoder.T_decoder = ({} : stdgo._internal.image.gif.Gif_T_decoder.T_decoder);
        {
            var _err = (@:check2 _d._decode(_r, false, true) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var _gif = (stdgo.Go.setRef(({ image : _d._image, loopCount : _d._loopCount, delay : _d._delay, disposal : _d._disposal, config : ({ colorModel : stdgo.Go.asInterface(_d._globalColorTable), width : _d._width, height : _d._height } : stdgo._internal.image.Image_Config.Config), backgroundIndex : _d._backgroundIndex } : stdgo._internal.image.gif.Gif_GIF.GIF)) : stdgo.Ref<stdgo._internal.image.gif.Gif_GIF.GIF>);
        return { _0 : _gif, _1 : (null : stdgo.Error) };
    }

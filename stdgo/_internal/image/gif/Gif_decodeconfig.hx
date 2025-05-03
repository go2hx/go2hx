package stdgo._internal.image.gif;
function decodeConfig(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo._internal.image.Image_config.Config; var _1 : stdgo.Error; } {
        var _d:stdgo._internal.image.gif.Gif_t_decoder.T_decoder = ({} : stdgo._internal.image.gif.Gif_t_decoder.T_decoder);
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L629"
        {
            var _err = (_d._decode(_r, true, false) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L630"
                return { _0 : (new stdgo._internal.image.Image_config.Config() : stdgo._internal.image.Image_config.Config), _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L632"
        return { _0 : ({ colorModel : stdgo.Go.asInterface(_d._globalColorTable), width : _d._width, height : _d._height } : stdgo._internal.image.Image_config.Config), _1 : (null : stdgo.Error) };
    }

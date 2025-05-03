package stdgo._internal.image.gif;
function decode(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo._internal.image.Image_image.Image; var _1 : stdgo.Error; } {
        var _d:stdgo._internal.image.gif.Gif_t_decoder.T_decoder = ({} : stdgo._internal.image.gif.Gif_t_decoder.T_decoder);
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L567"
        {
            var _err = (_d._decode(_r, false, false) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L568"
                return { _0 : (null : stdgo._internal.image.Image_image.Image), _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L570"
        return { _0 : stdgo.Go.asInterface(_d._image[(0 : stdgo.GoInt)]), _1 : (null : stdgo.Error) };
    }

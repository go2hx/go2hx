package stdgo._internal.image.gif;
function decode(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo._internal.image.Image_Image.Image; var _1 : stdgo.Error; } {
        var _d:stdgo._internal.image.gif.Gif_T_decoder.T_decoder = ({} : stdgo._internal.image.gif.Gif_T_decoder.T_decoder);
        {
            var _err = (_d._decode(_r, false, false) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo._internal.image.Image_Image.Image), _1 : _err };
            };
        };
        return { _0 : stdgo.Go.asInterface(_d._image[(0 : stdgo.GoInt)]), _1 : (null : stdgo.Error) };
    }
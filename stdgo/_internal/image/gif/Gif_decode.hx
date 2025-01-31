package stdgo._internal.image.gif;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.image.Image;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.image.draw.Draw;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.compress.lzw.Lzw;
import stdgo._internal.bytes.Bytes;
function decode(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo._internal.image.Image_Image.Image; var _1 : stdgo.Error; } {
        var _d:stdgo._internal.image.gif.Gif_T_decoder.T_decoder = ({} : stdgo._internal.image.gif.Gif_T_decoder.T_decoder);
        {
            var _err = (@:check2 _d._decode(_r, false, false) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo._internal.image.Image_Image.Image), _1 : _err };
            };
        };
        return { _0 : stdgo.Go.asInterface(_d._image[(0 : stdgo.GoInt)]), _1 : (null : stdgo.Error) };
    }

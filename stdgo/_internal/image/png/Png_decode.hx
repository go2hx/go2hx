package stdgo._internal.image.png;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.io.Io;
import stdgo._internal.image.color.Color;
import stdgo._internal.image.Image;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
function decode(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo._internal.image.Image_Image.Image; var _1 : stdgo.Error; } {
        var _d = (stdgo.Go.setRef(({ _r : _r, _crc : stdgo._internal.hash.crc32.Crc32_newIEEE.newIEEE() } : stdgo._internal.image.png.Png_T_decoder.T_decoder)) : stdgo.Ref<stdgo._internal.image.png.Png_T_decoder.T_decoder>);
        {
            var _err = (@:check2r _d._checkHeader() : stdgo.Error);
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
                    _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                };
                return { _0 : (null : stdgo._internal.image.Image_Image.Image), _1 : _err };
            };
        };
        while ((@:checkr _d ?? throw "null pointer dereference")._stage != ((5 : stdgo.GoInt))) {
            {
                var _err = (@:check2r _d._parseChunk(false) : stdgo.Error);
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
                        _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                    };
                    return { _0 : (null : stdgo._internal.image.Image_Image.Image), _1 : _err };
                };
            };
        };
        return { _0 : (@:checkr _d ?? throw "null pointer dereference")._img, _1 : (null : stdgo.Error) };
    }

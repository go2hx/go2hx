package stdgo._internal.image.png;
function decode(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo._internal.image.Image_image.Image; var _1 : stdgo.Error; } {
        var _d = (stdgo.Go.setRef(({ _r : _r, _crc : stdgo._internal.hash.crc32.Crc32_newieee.newIEEE() } : stdgo._internal.image.png.Png_t_decoder.T_decoder)) : stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>);
        {
            var _err = (@:check2r _d._checkHeader() : stdgo.Error);
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                };
                return { _0 : (null : stdgo._internal.image.Image_image.Image), _1 : _err };
            };
        };
        while ((@:checkr _d ?? throw "null pointer dereference")._stage != ((5 : stdgo.GoInt))) {
            {
                var _err = (@:check2r _d._parseChunk(false) : stdgo.Error);
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                    };
                    return { _0 : (null : stdgo._internal.image.Image_image.Image), _1 : _err };
                };
            };
        };
        return { _0 : (@:checkr _d ?? throw "null pointer dereference")._img, _1 : (null : stdgo.Error) };
    }

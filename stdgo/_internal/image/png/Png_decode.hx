package stdgo._internal.image.png;
function decode(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo._internal.image.Image_Image.Image; var _1 : stdgo.Error; } {
        var _d = (stdgo.Go.setRef(({ _r : _r, _crc : stdgo._internal.hash.crc32.Crc32_newIEEE.newIEEE() } : stdgo._internal.image.png.Png_T_decoder.T_decoder)) : stdgo.Ref<stdgo._internal.image.png.Png_T_decoder.T_decoder>);
        {
            var _err = (_d._checkHeader() : stdgo.Error);
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                };
                return { _0 : (null : stdgo._internal.image.Image_Image.Image), _1 : _err };
            };
        };
        while (_d._stage != ((5 : stdgo.GoInt))) {
            {
                var _err = (_d._parseChunk(false) : stdgo.Error);
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                        _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                    };
                    return { _0 : (null : stdgo._internal.image.Image_Image.Image), _1 : _err };
                };
            };
        };
        return { _0 : _d._img, _1 : (null : stdgo.Error) };
    }
package stdgo._internal.image.png;
function decode(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo._internal.image.Image_image.Image; var _1 : stdgo.Error; } {
        var _d = (stdgo.Go.setRef(({ _r : _r, _crc : stdgo._internal.hash.crc32.Crc32_newieee.newIEEE() } : stdgo._internal.image.png.Png_t_decoder.T_decoder)) : stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>);
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L981"
        {
            var _err = (_d._checkHeader() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L982"
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                };
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L985"
                return { _0 : (null : stdgo._internal.image.Image_image.Image), _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L987"
        while ((@:checkr _d ?? throw "null pointer dereference")._stage != ((5 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L988"
            {
                var _err = (_d._parseChunk(false) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L989"
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L992"
                    return { _0 : (null : stdgo._internal.image.Image_image.Image), _1 : _err };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L995"
        return { _0 : (@:checkr _d ?? throw "null pointer dereference")._img, _1 : (null : stdgo.Error) };
    }

package stdgo._internal.image.png;
function decodeConfig(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo._internal.image.Image_config.Config; var _1 : stdgo.Error; } {
        var _d = (stdgo.Go.setRef(({ _r : _r, _crc : stdgo._internal.hash.crc32.Crc32_newieee.newIEEE() } : stdgo._internal.image.png.Png_t_decoder.T_decoder)) : stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>);
        {
            var _err = (@:check2r _d._checkHeader() : stdgo.Error);
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                };
                return { _0 : (new stdgo._internal.image.Image_config.Config() : stdgo._internal.image.Image_config.Config), _1 : _err };
            };
        };
        while (true) {
            {
                var _err = (@:check2r _d._parseChunk(true) : stdgo.Error);
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                    };
                    return { _0 : (new stdgo._internal.image.Image_config.Config() : stdgo._internal.image.Image_config.Config), _1 : _err };
                };
            };
            if (stdgo._internal.image.png.Png__cbpaletted._cbPaletted((@:checkr _d ?? throw "null pointer dereference")._cb)) {
                if (((@:checkr _d ?? throw "null pointer dereference")._stage >= (3 : stdgo.GoInt) : Bool)) {
                    break;
                };
            } else {
                if (((@:checkr _d ?? throw "null pointer dereference")._stage >= (1 : stdgo.GoInt) : Bool)) {
                    break;
                };
            };
        };
        var _cm:stdgo._internal.image.color.Color_model.Model = (null : stdgo._internal.image.color.Color_model.Model);
        {
            final __value__ = (@:checkr _d ?? throw "null pointer dereference")._cb;
            if (__value__ == ((1 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt)) || __value__ == ((3 : stdgo.GoInt)) || __value__ == ((4 : stdgo.GoInt))) {
                _cm = stdgo._internal.image.color.Color_graymodel.grayModel;
            } else if (__value__ == ((5 : stdgo.GoInt))) {
                _cm = stdgo._internal.image.color.Color_nrgbamodel.nRGBAModel;
            } else if (__value__ == ((6 : stdgo.GoInt))) {
                _cm = stdgo._internal.image.color.Color_rgbamodel.rGBAModel;
            } else if (__value__ == ((7 : stdgo.GoInt)) || __value__ == ((8 : stdgo.GoInt)) || __value__ == ((9 : stdgo.GoInt)) || __value__ == ((10 : stdgo.GoInt))) {
                _cm = stdgo.Go.asInterface((@:checkr _d ?? throw "null pointer dereference")._palette);
            } else if (__value__ == ((11 : stdgo.GoInt))) {
                _cm = stdgo._internal.image.color.Color_nrgbamodel.nRGBAModel;
            } else if (__value__ == ((12 : stdgo.GoInt))) {
                _cm = stdgo._internal.image.color.Color_gray16model.gray16Model;
            } else if (__value__ == ((13 : stdgo.GoInt))) {
                _cm = stdgo._internal.image.color.Color_nrgba64model.nRGBA64Model;
            } else if (__value__ == ((14 : stdgo.GoInt))) {
                _cm = stdgo._internal.image.color.Color_rgba64model.rGBA64Model;
            } else if (__value__ == ((15 : stdgo.GoInt))) {
                _cm = stdgo._internal.image.color.Color_nrgba64model.nRGBA64Model;
            };
        };
        return { _0 : ({ colorModel : _cm, width : (@:checkr _d ?? throw "null pointer dereference")._width, height : (@:checkr _d ?? throw "null pointer dereference")._height } : stdgo._internal.image.Image_config.Config), _1 : (null : stdgo.Error) };
    }

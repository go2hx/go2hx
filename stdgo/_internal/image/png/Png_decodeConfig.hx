package stdgo._internal.image.png;
function decodeConfig(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo._internal.image.Image_Config.Config; var _1 : stdgo.Error; } {
        var _d = (stdgo.Go.setRef(({ _r : _r, _crc : stdgo._internal.hash.crc32.Crc32_newIEEE.newIEEE() } : stdgo._internal.image.png.Png_T_decoder.T_decoder)) : stdgo.Ref<stdgo._internal.image.png.Png_T_decoder.T_decoder>);
        {
            var _err = (@:check2r _d._checkHeader() : stdgo.Error);
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
                    _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                };
                return { _0 : (new stdgo._internal.image.Image_Config.Config() : stdgo._internal.image.Image_Config.Config), _1 : _err };
            };
        };
        while (true) {
            {
                var _err = (@:check2r _d._parseChunk(true) : stdgo.Error);
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
                        _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                    };
                    return { _0 : (new stdgo._internal.image.Image_Config.Config() : stdgo._internal.image.Image_Config.Config), _1 : _err };
                };
            };
            if (stdgo._internal.image.png.Png__cbPaletted._cbPaletted((@:checkr _d ?? throw "null pointer dereference")._cb)) {
                if (((@:checkr _d ?? throw "null pointer dereference")._stage >= (3 : stdgo.GoInt) : Bool)) {
                    break;
                };
            } else {
                if (((@:checkr _d ?? throw "null pointer dereference")._stage >= (1 : stdgo.GoInt) : Bool)) {
                    break;
                };
            };
        };
        var _cm:stdgo._internal.image.color.Color_Model.Model = (null : stdgo._internal.image.color.Color_Model.Model);
        {
            final __value__ = (@:checkr _d ?? throw "null pointer dereference")._cb;
            if (__value__ == ((1 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt)) || __value__ == ((3 : stdgo.GoInt)) || __value__ == ((4 : stdgo.GoInt))) {
                _cm = stdgo._internal.image.color.Color_grayModel.grayModel;
            } else if (__value__ == ((5 : stdgo.GoInt))) {
                _cm = stdgo._internal.image.color.Color_nRGBAModel.nRGBAModel;
            } else if (__value__ == ((6 : stdgo.GoInt))) {
                _cm = stdgo._internal.image.color.Color_rGBAModel.rGBAModel;
            } else if (__value__ == ((7 : stdgo.GoInt)) || __value__ == ((8 : stdgo.GoInt)) || __value__ == ((9 : stdgo.GoInt)) || __value__ == ((10 : stdgo.GoInt))) {
                _cm = stdgo.Go.asInterface((@:checkr _d ?? throw "null pointer dereference")._palette);
            } else if (__value__ == ((11 : stdgo.GoInt))) {
                _cm = stdgo._internal.image.color.Color_nRGBAModel.nRGBAModel;
            } else if (__value__ == ((12 : stdgo.GoInt))) {
                _cm = stdgo._internal.image.color.Color_gray16Model.gray16Model;
            } else if (__value__ == ((13 : stdgo.GoInt))) {
                _cm = stdgo._internal.image.color.Color_nRGBA64Model.nRGBA64Model;
            } else if (__value__ == ((14 : stdgo.GoInt))) {
                _cm = stdgo._internal.image.color.Color_rGBA64Model.rGBA64Model;
            } else if (__value__ == ((15 : stdgo.GoInt))) {
                _cm = stdgo._internal.image.color.Color_nRGBA64Model.nRGBA64Model;
            };
        };
        return { _0 : ({ colorModel : _cm, width : (@:checkr _d ?? throw "null pointer dereference")._width, height : (@:checkr _d ?? throw "null pointer dereference")._height } : stdgo._internal.image.Image_Config.Config), _1 : (null : stdgo.Error) };
    }

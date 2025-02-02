package stdgo._internal.image;
function decodeConfig(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo._internal.image.Image_Config.Config; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _rr = (stdgo._internal.image.Image__asReader._asReader(_r) : stdgo._internal.image.Image_T_reader.T_reader);
        var _f = (stdgo._internal.image.Image__sniff._sniff(_rr)?.__copy__() : stdgo._internal.image.Image_T_format.T_format);
        if (_f._decodeConfig == null) {
            return { _0 : (new stdgo._internal.image.Image_Config.Config() : stdgo._internal.image.Image_Config.Config), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo._internal.image.Image_errFormat.errFormat };
        };
        var __tmp__ = _f._decodeConfig(_rr), _c:stdgo._internal.image.Image_Config.Config = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _c?.__copy__(), _1 : _f._name?.__copy__(), _2 : _err };
    }

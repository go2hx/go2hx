package stdgo._internal.image;
function decodeConfig(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo._internal.image.Image_config.Config; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _rr = (stdgo._internal.image.Image__asreader._asReader(_r) : stdgo._internal.image.Image_t_reader.T_reader);
        var _f = (stdgo._internal.image.Image__sniff._sniff(_rr)?.__copy__() : stdgo._internal.image.Image_t_format.T_format);
        //"file:///home/runner/.go/go1.21.3/src/image/format.go#L104"
        if (_f._decodeConfig == null) {
            //"file:///home/runner/.go/go1.21.3/src/image/format.go#L105"
            return { _0 : (new stdgo._internal.image.Image_config.Config() : stdgo._internal.image.Image_config.Config), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : stdgo._internal.image.Image_errformat.errFormat };
        };
        var __tmp__ = _f._decodeConfig(_rr), _c:stdgo._internal.image.Image_config.Config = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/image/format.go#L108"
        return { _0 : _c?.__copy__(), _1 : _f._name?.__copy__(), _2 : _err };
    }

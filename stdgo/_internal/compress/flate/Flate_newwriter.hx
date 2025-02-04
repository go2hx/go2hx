package stdgo._internal.compress.flate;
function newWriter(_w:stdgo._internal.io.Io_writer.Writer, _level:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>; var _1 : stdgo.Error; } {
        var _dw:stdgo._internal.compress.flate.Flate_writer.Writer = ({} : stdgo._internal.compress.flate.Flate_writer.Writer);
        {
            var _err = (@:check2 _dw._d._init(_w, _level) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : (stdgo.Go.setRef(_dw) : stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>), _1 : (null : stdgo.Error) };
    }

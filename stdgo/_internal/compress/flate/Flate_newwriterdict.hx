package stdgo._internal.compress.flate;
function newWriterDict(_w:stdgo._internal.io.Io_writer.Writer, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>; var _1 : stdgo.Error; } {
        var _dw = (stdgo.Go.setRef((new stdgo._internal.compress.flate.Flate_t_dictwriter.T_dictWriter(_w) : stdgo._internal.compress.flate.Flate_t_dictwriter.T_dictWriter)) : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictwriter.T_dictWriter>);
        var __tmp__ = stdgo._internal.compress.flate.Flate_newwriter.newWriter(stdgo.Go.asInterface(_dw), _level), _zw:stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        @:check2 (@:checkr _zw ?? throw "null pointer dereference")._d._fillWindow(_dict);
        (@:checkr _zw ?? throw "null pointer dereference")._dict = ((@:checkr _zw ?? throw "null pointer dereference")._dict.__append__(...(_dict : Array<stdgo.GoUInt8>)));
        return { _0 : _zw, _1 : _err };
    }

package stdgo._internal.fmt;
function fprintf(_w:stdgo._internal.io.Io_Writer.Writer, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _p = stdgo._internal.fmt.Fmt__newPrinter._newPrinter();
        _p._doPrintf(_format?.__copy__(), _a);
        {
            var __tmp__ = _w.write(_p._buf);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _p._free();
        return { _0 : _n, _1 : _err };
    }

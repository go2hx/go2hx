package stdgo._internal.fmt;
function fprint(_w:stdgo._internal.io.Io_writer.Writer, _a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _p = stdgo._internal.fmt.Fmt__newprinter._newPrinter();
        @:check2r _p._doPrint(_a);
        {
            var __tmp__ = _w.write((@:checkr _p ?? throw "null pointer dereference")._buf);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        @:check2r _p._free();
        return { _0 : _n, _1 : _err };
    }

package stdgo._internal.fmt;
import stdgo._internal.errors.Errors;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.io.Io;
import stdgo._internal.internal.fmtsort.Fmtsort;
import stdgo._internal.math.Math;
function fprint(_w:stdgo._internal.io.Io_Writer.Writer, _a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _p = stdgo._internal.fmt.Fmt__newPrinter._newPrinter();
        @:check2r _p._doPrint(_a);
        {
            var __tmp__ = _w.write((@:checkr _p ?? throw "null pointer dereference")._buf);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        @:check2r _p._free();
        return { _0 : _n, _1 : _err };
    }

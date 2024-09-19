package stdgo._internal.fmt;
function sprintln(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _p = stdgo._internal.fmt.Fmt__newPrinter._newPrinter();
        _p._doPrintln(_a);
        var _s = ((_p._buf : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _p._free();
        return _s?.__copy__();
    }

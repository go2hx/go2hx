package stdgo._internal.fmt;
function appendf(_b:stdgo.Slice<stdgo.GoUInt8>, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoUInt8> {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _p = stdgo._internal.fmt.Fmt__newPrinter._newPrinter();
        _p._doPrintf(_format?.__copy__(), _a);
        _b = (_b.__append__(...(_p._buf : Array<stdgo.GoUInt8>)));
        _p._free();
        return _b;
    }
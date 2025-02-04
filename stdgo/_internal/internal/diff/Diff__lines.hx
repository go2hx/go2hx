package stdgo._internal.internal.diff;
function _lines(_x:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoString> {
        var _l = stdgo._internal.strings.Strings_splitafter.splitAfter((_x : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString));
        if (_l[((_l.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((stdgo.Go.str() : stdgo.GoString))) {
            _l = (_l.__slice__(0, ((_l.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        } else {
            _l[((_l.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_l[((_l.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] + (("\n\\ No newline at end of file\n" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        return _l;
    }

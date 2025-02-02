package stdgo._internal.strings;
function compare(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt {
        if (_a == (_b)) {
            return (0 : stdgo.GoInt);
        };
        if ((_a < _b : Bool)) {
            return (-1 : stdgo.GoInt);
        };
        return (1 : stdgo.GoInt);
    }

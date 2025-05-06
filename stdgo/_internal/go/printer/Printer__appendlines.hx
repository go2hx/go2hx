package stdgo._internal.go.printer;
function _appendLines(_x:stdgo.Slice<stdgo.GoUInt8>, _y:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L139"
        if (((((_y.length) > (0 : stdgo.GoInt) : Bool) && stdgo._internal.go.printer.Printer__isnl._isNL(_y[(0 : stdgo.GoInt)]) : Bool) && (((_x.length == (0 : stdgo.GoInt)) || ((((_x.length) >= (2 : stdgo.GoInt) : Bool) && stdgo._internal.go.printer.Printer__isnl._isNL(_x[((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.go.printer.Printer__isnl._isNL(_x[((_x.length) - (2 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) : Bool)) {
            _y = (_y.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/gobuild.go#L143"
        return (_x.__append__(...(_y : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
    }

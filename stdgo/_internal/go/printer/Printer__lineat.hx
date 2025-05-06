package stdgo._internal.go.printer;
function _lineAt(_text:stdgo.Slice<stdgo.GoUInt8>, _offs:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        var _i = (_offs : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L85"
        while (((_i < (_text.length) : Bool) && (_text[(_i : stdgo.GoInt)] != (10 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L86"
            _i++;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L88"
        return (_text.__slice__(_offs, _i) : stdgo.Slice<stdgo.GoUInt8>);
    }

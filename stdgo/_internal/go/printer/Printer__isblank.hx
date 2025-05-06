package stdgo._internal.go.printer;
function _isBlank(_s:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L475"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L476"
                if ((_s[(_i : stdgo.GoInt)] > (32 : stdgo.GoUInt8) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L477"
                    return false;
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L480"
        return true;
    }

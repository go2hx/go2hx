package stdgo._internal.go.printer;
function _mayCombine(_prev:stdgo._internal.go.token.Token_token.Token, _next:stdgo.GoUInt8):Bool {
        var _b = false;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L871"
        {
            final __value__ = _prev;
            if (__value__ == ((5 : stdgo._internal.go.token.Token_token.Token))) {
                _b = _next == ((46 : stdgo.GoUInt8));
            } else if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                _b = _next == ((43 : stdgo.GoUInt8));
            } else if (__value__ == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                _b = _next == ((45 : stdgo.GoUInt8));
            } else if (__value__ == ((15 : stdgo._internal.go.token.Token_token.Token))) {
                _b = _next == ((42 : stdgo.GoUInt8));
            } else if (__value__ == ((40 : stdgo._internal.go.token.Token_token.Token))) {
                _b = ((_next == (45 : stdgo.GoUInt8)) || (_next == (60 : stdgo.GoUInt8)) : Bool);
            } else if (__value__ == ((17 : stdgo._internal.go.token.Token_token.Token))) {
                _b = ((_next == (38 : stdgo.GoUInt8)) || (_next == (94 : stdgo.GoUInt8)) : Bool);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L885"
        return _b;
    }

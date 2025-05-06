package stdgo._internal.go.printer;
function _allStars(_text:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/printer/comment.go#L143"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_text.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/comment.go#L144"
                if (_text[(_i : stdgo.GoInt)] == ((10 : stdgo.GoUInt8))) {
                    var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/comment.go#L146"
                    while (((_j < (_text.length) : Bool) && (((_text[(_j : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) || (_text[(_j : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/comment.go#L147"
                        _j++;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/comment.go#L149"
                    if (((_j < (_text.length) : Bool) && (_text[(_j : stdgo.GoInt)] != (42 : stdgo.GoUInt8)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/comment.go#L150"
                        return false;
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/comment.go#L154"
        return true;
    }

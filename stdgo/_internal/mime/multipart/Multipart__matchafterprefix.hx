package stdgo._internal.mime.multipart;
function _matchAfterPrefix(_buf:stdgo.Slice<stdgo.GoUInt8>, _prefix:stdgo.Slice<stdgo.GoUInt8>, _readErr:stdgo.Error):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L296"
        if ((_buf.length) == ((_prefix.length))) {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L297"
            if (_readErr != null) {
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L298"
                return (1 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L300"
            return (0 : stdgo.GoInt);
        };
        var _c = (_buf[(_prefix.length : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L304"
        if ((((_c == ((32 : stdgo.GoUInt8)) || _c == ((9 : stdgo.GoUInt8)) : Bool) || _c == ((13 : stdgo.GoUInt8)) : Bool) || (_c == (10 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L305"
            return (1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L309"
        if (_c == ((45 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L310"
            if ((_buf.length) == (((_prefix.length) + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L311"
                if (_readErr != null) {
                    //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L313"
                    return (-1 : stdgo.GoInt);
                };
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L315"
                return (0 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L317"
            if (_buf[((_prefix.length) + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L318"
                return (1 : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L322"
        return (-1 : stdgo.GoInt);
    }

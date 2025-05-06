package stdgo._internal.go.doc.comment;
function _wrapPenalty(_s:stdgo.GoString):stdgo.GoInt64 {
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L332"
        {
            final __value__ = _s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
            if (__value__ == ((46 : stdgo.GoUInt8)) || __value__ == ((44 : stdgo.GoUInt8)) || __value__ == ((58 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L334"
                return (0i64 : stdgo.GoInt64);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L336"
        return (64i64 : stdgo.GoInt64);
    }

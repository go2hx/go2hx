package stdgo._internal.mime.quotedprintable;
function _isWhitespace(_b:stdgo.GoUInt8):Bool {
        //"file:///home/runner/.go/go1.21.3/src/mime/quotedprintable/writer.go#L171"
        return ((_b == (32 : stdgo.GoUInt8)) || (_b == (9 : stdgo.GoUInt8)) : Bool);
    }

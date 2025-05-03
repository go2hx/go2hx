package stdgo._internal.mime;
function _isTokenChar(_r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/mime/grammar.go#L22"
        return (((_r > (32 : stdgo.GoInt32) : Bool) && (_r < (127 : stdgo.GoInt32) : Bool) : Bool) && !stdgo._internal.mime.Mime__istspecial._isTSpecial(_r) : Bool);
    }

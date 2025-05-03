package stdgo._internal.html.template;
function _isHex(_c:stdgo.GoUInt8):Bool {
        //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L105"
        return (((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (102 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || (((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (70 : stdgo.GoUInt8) : Bool) : Bool) : Bool);
    }

package stdgo._internal.html.template;
function _asciiAlphaNum(_c:stdgo.GoUInt8):Bool {
        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L598"
        return (stdgo._internal.html.template.Template__asciialpha._asciiAlpha(_c) || (((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool);
    }

package stdgo._internal.text.template.parse;
function _isSpace(_r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L672"
        return (((_r == ((32 : stdgo.GoInt32)) || _r == ((9 : stdgo.GoInt32)) : Bool) || _r == ((13 : stdgo.GoInt32)) : Bool) || (_r == (10 : stdgo.GoInt32)) : Bool);
    }

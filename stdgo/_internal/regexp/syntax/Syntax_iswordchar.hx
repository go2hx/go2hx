package stdgo._internal.regexp.syntax;
function isWordChar(_r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog.go#L111"
        return ((((((97 : stdgo.GoInt32) <= _r : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool) || (((65 : stdgo.GoInt32) <= _r : Bool) && (_r <= (90 : stdgo.GoInt32) : Bool) : Bool) : Bool) || (((48 : stdgo.GoInt32) <= _r : Bool) && (_r <= (57 : stdgo.GoInt32) : Bool) : Bool) : Bool) || (_r == (95 : stdgo.GoInt32)) : Bool);
    }

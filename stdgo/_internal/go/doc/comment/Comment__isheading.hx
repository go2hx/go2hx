package stdgo._internal.go.doc.comment;
function _isHeading(_line:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L626"
        return (((((_line.length) >= (2 : stdgo.GoInt) : Bool) && _line[(0 : stdgo.GoInt)] == ((35 : stdgo.GoUInt8)) : Bool) && (((_line[(1 : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) || (_line[(1 : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) : Bool) && (stdgo._internal.strings.Strings_trimspace.trimSpace(_line?.__copy__()) != ("#" : stdgo.GoString)) : Bool);
    }

package stdgo._internal.go.doc;
function isPredeclared(_s:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L951"
        return (((stdgo._internal.go.doc.Doc__predeclaredtypes._predeclaredTypes[_s] ?? false) || (stdgo._internal.go.doc.Doc__predeclaredfuncs._predeclaredFuncs[_s] ?? false) : Bool) || (stdgo._internal.go.doc.Doc__predeclaredconstants._predeclaredConstants[_s] ?? false) : Bool);
    }

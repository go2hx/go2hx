package stdgo._internal.go.doc.comment;
function _validImportPathElem(_elem:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1234"
        if (((_elem == ((stdgo.Go.str() : stdgo.GoString)) || _elem[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || (_elem[((_elem.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1235"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1237"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_elem.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1238"
                if (!stdgo._internal.go.doc.comment.Comment__importpathok._importPathOK(_elem[(_i : stdgo.GoInt)])) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1239"
                    return false;
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1242"
        return true;
    }

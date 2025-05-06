package stdgo._internal.go.doc.comment;
function _validImportPath(_path:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1206"
        if (!stdgo._internal.unicode.utf8.Utf8_validstring.validString(_path?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1207"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1209"
        if (_path == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1210"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1212"
        if (_path[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1213"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1215"
        if (stdgo._internal.strings.Strings_contains.contains(_path?.__copy__(), ("//" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1216"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1218"
        if (_path[((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1219"
            return false;
        };
        var _elemStart = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1222"
        for (_i => _r in _path) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1223"
            if (_r == ((47 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1224"
                if (!stdgo._internal.go.doc.comment.Comment__validimportpathelem._validImportPathElem((_path.__slice__(_elemStart, _i) : stdgo.GoString)?.__copy__())) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1225"
                    return false;
                };
                _elemStart = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1230"
        return stdgo._internal.go.doc.comment.Comment__validimportpathelem._validImportPathElem((_path.__slice__(_elemStart) : stdgo.GoString)?.__copy__());
    }

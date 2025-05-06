package stdgo._internal.go.doc.comment;
function _isScheme(_s:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1062"
        {
            final __value__ = _s;
            if (__value__ == (("file" : stdgo.GoString)) || __value__ == (("ftp" : stdgo.GoString)) || __value__ == (("gopher" : stdgo.GoString)) || __value__ == (("http" : stdgo.GoString)) || __value__ == (("https" : stdgo.GoString)) || __value__ == (("mailto" : stdgo.GoString)) || __value__ == (("nntp" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1070"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1072"
        return false;
    }

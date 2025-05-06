package stdgo._internal.go.doc.comment;
function _isStdPkg(_path:stdgo.GoString):Bool {
        var _i = (stdgo._internal.sort.Sort_search.search((stdgo._internal.go.doc.comment.Comment__stdpkgs._stdPkgs.length), function(_i:stdgo.GoInt):Bool {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L265"
            return (stdgo._internal.go.doc.comment.Comment__stdpkgs._stdPkgs[(_i : stdgo.GoInt)] >= _path : Bool);
        }) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L266"
        return ((_i < (stdgo._internal.go.doc.comment.Comment__stdpkgs._stdPkgs.length) : Bool) && (stdgo._internal.go.doc.comment.Comment__stdpkgs._stdPkgs[(_i : stdgo.GoInt)] == _path) : Bool);
    }

package stdgo._internal.go.doc.comment;
@:keep @:allow(stdgo._internal.go.doc.comment.Comment.DocLink_asInterface) class DocLink_static_extension {
    @:keep
    @:tdfield
    static public function defaultURL( _l:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>, _baseURL:stdgo.GoString):stdgo.GoString {
        @:recv var _l:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink> = _l;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L98"
        if ((@:checkr _l ?? throw "null pointer dereference").importPath != ((stdgo.Go.str() : stdgo.GoString))) {
            var _slash = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L100"
            if (stdgo._internal.strings.Strings_hassuffix.hasSuffix(_baseURL?.__copy__(), ("/" : stdgo.GoString))) {
                _slash = ("/" : stdgo.GoString);
            } else {
                _baseURL = (_baseURL + (("/" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L105"
            if ((@:checkr _l ?? throw "null pointer dereference").name == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L107"
                return ((_baseURL + (@:checkr _l ?? throw "null pointer dereference").importPath?.__copy__() : stdgo.GoString) + _slash?.__copy__() : stdgo.GoString)?.__copy__();
            } else if ((@:checkr _l ?? throw "null pointer dereference").recv != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L109"
                return ((((((_baseURL + (@:checkr _l ?? throw "null pointer dereference").importPath?.__copy__() : stdgo.GoString) + _slash?.__copy__() : stdgo.GoString) + ("#" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _l ?? throw "null pointer dereference").recv?.__copy__() : stdgo.GoString) + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _l ?? throw "null pointer dereference").name?.__copy__() : stdgo.GoString)?.__copy__();
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L111"
                return ((((_baseURL + (@:checkr _l ?? throw "null pointer dereference").importPath?.__copy__() : stdgo.GoString) + _slash?.__copy__() : stdgo.GoString) + ("#" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _l ?? throw "null pointer dereference").name?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L114"
        if ((@:checkr _l ?? throw "null pointer dereference").recv != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L115"
            return (((("#" : stdgo.GoString) + (@:checkr _l ?? throw "null pointer dereference").recv?.__copy__() : stdgo.GoString) + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _l ?? throw "null pointer dereference").name?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L117"
        return (("#" : stdgo.GoString) + (@:checkr _l ?? throw "null pointer dereference").name?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _text( _:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink> = _;
    }
}

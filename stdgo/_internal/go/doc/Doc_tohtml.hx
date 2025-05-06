package stdgo._internal.go.doc;
function toHTML(_w:stdgo._internal.io.Io_writer.Writer, _text:stdgo.GoString, _words:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):Void {
        var _p = (stdgo.Go.setRef(({} : stdgo._internal.go.doc.Doc_package.Package)) : stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>).parser();
        (@:checkr _p ?? throw "null pointer dereference").words = _words;
        var _d = _p.parse(_text?.__copy__());
        var _pr = (stdgo.Go.setRef(({} : stdgo._internal.go.doc.comment.Comment_printer.Printer)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment.go#L37"
        _w.write(_pr.hTML(_d));
    }

package stdgo._internal.go.doc;
function toText(_w:stdgo._internal.io.Io_writer.Writer, _text:stdgo.GoString, _prefix:stdgo.GoString, _codePrefix:stdgo.GoString, _width:stdgo.GoInt):Void {
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.go.doc.Doc_package.Package)) : stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>).parser().parse(_text?.__copy__());
        var _pr = (stdgo.Go.setRef(({ textPrefix : _prefix?.__copy__(), textCodePrefix : _codePrefix?.__copy__(), textWidth : _width } : stdgo._internal.go.doc.comment.Comment_printer.Printer)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment.go#L70"
        _w.write(_pr.text(_d));
    }

package stdgo._internal.go.doc.comment;
@:structInit @:using(stdgo._internal.go.doc.comment.Comment_t_htmlprinter_static_extension.T_htmlPrinter_static_extension) class T_htmlPrinter {
    @:embedded
    public var printer : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer> = (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>);
    public var _tight : Bool = false;
    public function new(?printer:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>, ?_tight:Bool) {
        if (printer != null) this.printer = printer;
        if (_tight != null) this._tight = _tight;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var comment(get, never) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc> -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    public function get_comment():stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc> -> stdgo.Slice<stdgo.GoUInt8> return @:check32 this.printer.comment;
    public var hTML(get, never) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc> -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    public function get_hTML():stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc> -> stdgo.Slice<stdgo.GoUInt8> return @:check32 this.printer.hTML;
    public var markdown(get, never) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc> -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    public function get_markdown():stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc> -> stdgo.Slice<stdgo.GoUInt8> return @:check32 this.printer.markdown;
    public var text(get, never) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc> -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    public function get_text():stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc> -> stdgo.Slice<stdgo.GoUInt8> return @:check32 this.printer.text;
    public var _docLinkURL(get, never) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink> -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get__docLinkURL():stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink> -> stdgo.GoString return @:check32 this.printer._docLinkURL;
    public var _headingID(get, never) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading> -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get__headingID():stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading> -> stdgo.GoString return @:check32 this.printer._headingID;
    public var _headingLevel(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get__headingLevel():() -> stdgo.GoInt return @:check32 this.printer._headingLevel;
    public function __copy__() {
        return new T_htmlPrinter(printer, _tight);
    }
}

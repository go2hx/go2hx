package stdgo._internal.go.doc.comment;
@:structInit @:using(stdgo._internal.go.doc.comment.Comment_t_mdprinter_static_extension.T_mdPrinter_static_extension) class T_mdPrinter {
    @:embedded
    public var printer : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer> = (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>);
    public var _headingPrefix : stdgo.GoString = "";
    public var _raw : stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
    public function new(?printer:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>, ?_headingPrefix:stdgo.GoString, ?_raw:stdgo._internal.bytes.Bytes_buffer.Buffer) {
        if (printer != null) this.printer = printer;
        if (_headingPrefix != null) this._headingPrefix = _headingPrefix;
        if (_raw != null) this._raw = _raw;
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
        return new T_mdPrinter(printer, _headingPrefix, _raw);
    }
}

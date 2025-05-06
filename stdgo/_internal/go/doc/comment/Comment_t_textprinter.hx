package stdgo._internal.go.doc.comment;
@:structInit @:using(stdgo._internal.go.doc.comment.Comment_t_textprinter_static_extension.T_textPrinter_static_extension) class T_textPrinter {
    @:embedded
    public var printer : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer> = (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>);
    public var _long : stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
    public var _prefix : stdgo.GoString = "";
    public var _codePrefix : stdgo.GoString = "";
    public var _width : stdgo.GoInt = 0;
    public function new(?printer:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>, ?_long:stdgo._internal.strings.Strings_builder.Builder, ?_prefix:stdgo.GoString, ?_codePrefix:stdgo.GoString, ?_width:stdgo.GoInt) {
        if (printer != null) this.printer = printer;
        if (_long != null) this._long = _long;
        if (_prefix != null) this._prefix = _prefix;
        if (_codePrefix != null) this._codePrefix = _codePrefix;
        if (_width != null) this._width = _width;
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
        return new T_textPrinter(printer, _long, _prefix, _codePrefix, _width);
    }
}

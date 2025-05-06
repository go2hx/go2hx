package stdgo._internal.go.doc.comment;
@:structInit @:using(stdgo._internal.go.doc.comment.Comment_printer_static_extension.Printer_static_extension) class Printer {
    public var headingLevel : stdgo.GoInt = 0;
    public var headingID : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading> -> stdgo.GoString = null;
    public var docLinkURL : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink> -> stdgo.GoString = null;
    public var docLinkBaseURL : stdgo.GoString = "";
    public var textPrefix : stdgo.GoString = "";
    public var textCodePrefix : stdgo.GoString = "";
    public var textWidth : stdgo.GoInt = 0;
    public function new(?headingLevel:stdgo.GoInt, ?headingID:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading> -> stdgo.GoString, ?docLinkURL:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink> -> stdgo.GoString, ?docLinkBaseURL:stdgo.GoString, ?textPrefix:stdgo.GoString, ?textCodePrefix:stdgo.GoString, ?textWidth:stdgo.GoInt) {
        if (headingLevel != null) this.headingLevel = headingLevel;
        if (headingID != null) this.headingID = headingID;
        if (docLinkURL != null) this.docLinkURL = docLinkURL;
        if (docLinkBaseURL != null) this.docLinkBaseURL = docLinkBaseURL;
        if (textPrefix != null) this.textPrefix = textPrefix;
        if (textCodePrefix != null) this.textCodePrefix = textCodePrefix;
        if (textWidth != null) this.textWidth = textWidth;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Printer(headingLevel, headingID, docLinkURL, docLinkBaseURL, textPrefix, textCodePrefix, textWidth);
    }
}

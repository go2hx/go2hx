package stdgo._internal.go.doc.comment;
@:structInit @:using(stdgo._internal.go.doc.comment.Comment_t_parsedoc_static_extension.T_parseDoc_static_extension) class T_parseDoc {
    @:embedded
    public var parser : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_parser.Parser> = (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_parser.Parser>);
    @:embedded
    public var doc : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc> = (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>);
    public var _links : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>>);
    public var _lines : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _lookupSym : (stdgo.GoString, stdgo.GoString) -> Bool = null;
    public function new(?parser:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_parser.Parser>, ?doc:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>, ?_links:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>>, ?_lines:stdgo.Slice<stdgo.GoString>, ?_lookupSym:(stdgo.GoString, stdgo.GoString) -> Bool) {
        if (parser != null) this.parser = parser;
        if (doc != null) this.doc = doc;
        if (_links != null) this._links = _links;
        if (_lines != null) this._lines = _lines;
        if (_lookupSym != null) this._lookupSym = _lookupSym;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var parse(get, never) : stdgo.GoString -> stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>;
    @:embedded
    @:embeddededffieldsffun
    public function get_parse():stdgo.GoString -> stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc> return @:check32 this.parser.parse;
    public function __copy__() {
        return new T_parseDoc(parser, doc, _links, _lines, _lookupSym);
    }
}

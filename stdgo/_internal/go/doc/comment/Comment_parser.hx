package stdgo._internal.go.doc.comment;
@:structInit @:using(stdgo._internal.go.doc.comment.Comment_parser_static_extension.Parser_static_extension) class Parser {
    public var words : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public var lookupPackage : stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : Bool; } = null;
    public var lookupSym : (stdgo.GoString, stdgo.GoString) -> Bool = null;
    public function new(?words:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?lookupPackage:stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : Bool; }, ?lookupSym:(stdgo.GoString, stdgo.GoString) -> Bool) {
        if (words != null) this.words = words;
        if (lookupPackage != null) this.lookupPackage = lookupPackage;
        if (lookupSym != null) this.lookupSym = lookupSym;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Parser(words, lookupPackage, lookupSym);
    }
}

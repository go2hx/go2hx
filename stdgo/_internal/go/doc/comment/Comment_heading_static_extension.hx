package stdgo._internal.go.doc.comment;
@:keep @:allow(stdgo._internal.go.doc.comment.Comment.Heading_asInterface) class Heading_static_extension {
    @:keep
    @:tdfield
    static public function defaultID( _h:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>):stdgo.GoString {
        @:recv var _h:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading> = _h;
        var _out:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var _p:stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter = ({} : stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L132"
        _p._oneLongLine((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), (@:checkr _h ?? throw "null pointer dereference").text);
        var _s = (stdgo._internal.strings.Strings_trimspace.trimSpace((_out.string() : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L134"
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L135"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L137"
        _out.reset();
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L138"
        _out.writeString(("hdr-" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L139"
        for (__1 => _r in _s) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L140"
            if (((_r < (128 : stdgo.GoInt32) : Bool) && stdgo._internal.go.doc.comment.Comment__isidentascii._isIdentASCII((_r : stdgo.GoUInt8)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L141"
                _out.writeByte((_r : stdgo.GoUInt8));
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L143"
                _out.writeByte((95 : stdgo.GoUInt8));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L146"
        return (_out.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _block( _:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading> = _;
    }
}

package stdgo._internal.go.doc.comment;
@:keep @:allow(stdgo._internal.go.doc.comment.Comment.Printer_asInterface) class Printer_static_extension {
    @:keep
    @:tdfield
    static public function text( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>, _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer> = _p;
        var _tp = (stdgo.Go.setRef(({ printer : _p, _prefix : (@:checkr _p ?? throw "null pointer dereference").textPrefix?.__copy__(), _codePrefix : (@:checkr _p ?? throw "null pointer dereference").textCodePrefix?.__copy__(), _width : (@:checkr _p ?? throw "null pointer dereference").textWidth } : stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter>);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L33"
        if ((@:checkr _tp ?? throw "null pointer dereference")._codePrefix == ((stdgo.Go.str() : stdgo.GoString))) {
            (@:checkr _tp ?? throw "null pointer dereference")._codePrefix = ((@:checkr _p ?? throw "null pointer dereference").textPrefix + ("\t" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L36"
        if ((@:checkr _tp ?? throw "null pointer dereference")._width == ((0 : stdgo.GoInt))) {
            (@:checkr _tp ?? throw "null pointer dereference")._width = ((80 : stdgo.GoInt) - stdgo._internal.unicode.utf8.Utf8_runecountinstring.runeCountInString((@:checkr _tp ?? throw "null pointer dereference")._prefix?.__copy__()) : stdgo.GoInt);
        };
        var _out:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L41"
        for (_i => _x in (@:checkr _d ?? throw "null pointer dereference").content) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L42"
            if (((_i > (0 : stdgo.GoInt) : Bool) && stdgo._internal.go.doc.comment.Comment__blankbefore._blankBefore(_x) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L43"
                _out.writeString((@:checkr _tp ?? throw "null pointer dereference")._prefix?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L44"
                stdgo._internal.go.doc.comment.Comment__writenl._writeNL((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L46"
            _tp._block((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _x);
        };
        var _anyUsed = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L49"
        for (__1 => _def in (@:checkr _d ?? throw "null pointer dereference").links) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L50"
            if ((@:checkr _def ?? throw "null pointer dereference").used) {
                _anyUsed = true;
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L52"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L55"
        if (_anyUsed) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L56"
            stdgo._internal.go.doc.comment.Comment__writenl._writeNL((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>));
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L57"
            for (__2 => _def in (@:checkr _d ?? throw "null pointer dereference").links) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L58"
                if ((@:checkr _def ?? throw "null pointer dereference").used) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L59"
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("[%s]: %s\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _def ?? throw "null pointer dereference").text), stdgo.Go.toInterface((@:checkr _def ?? throw "null pointer dereference").uRL));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L63"
        return _out.bytes();
    }
    @:keep
    @:tdfield
    static public function comment( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>, _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer> = _p;
        var _cp = (stdgo.Go.setRef(({ printer : _p } : stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter>);
        var _out:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L158"
        for (_i => _x in (@:checkr _d ?? throw "null pointer dereference").content) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L159"
            if (((_i > (0 : stdgo.GoInt) : Bool) && stdgo._internal.go.doc.comment.Comment__blankbefore._blankBefore(_x) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L160"
                _out.writeString(("\n" : stdgo.GoString));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L162"
            _cp._block((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _x);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L170"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (2 : stdgo.GoInt) : Bool)) {
                var _used = (_i == ((0 : stdgo.GoInt)) : Bool);
var _first = (true : Bool);
//"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L173"
                for (__1 => _def in (@:checkr _d ?? throw "null pointer dereference").links) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L174"
                    if ((@:checkr _def ?? throw "null pointer dereference").used == (_used)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L175"
                        if (_first) {
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L176"
                            _out.writeString(("\n" : stdgo.GoString));
                            _first = false;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L179"
                        _out.writeString(("[" : stdgo.GoString));
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L180"
                        _out.writeString((@:checkr _def ?? throw "null pointer dereference").text?.__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L181"
                        _out.writeString(("]: " : stdgo.GoString));
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L182"
                        _out.writeString((@:checkr _def ?? throw "null pointer dereference").uRL?.__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L183"
                        _out.writeString(("\n" : stdgo.GoString));
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L188"
        return _out.bytes();
    }
    @:keep
    @:tdfield
    static public function _docLinkURL( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>, _link:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L73"
        if ((@:checkr _p ?? throw "null pointer dereference").docLinkURL != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L74"
            return (@:checkr _p ?? throw "null pointer dereference").docLinkURL(_link)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L76"
        return _link.defaultURL((@:checkr _p ?? throw "null pointer dereference").docLinkBaseURL?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _headingID( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>, _h:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L66"
        if ((@:checkr _p ?? throw "null pointer dereference").headingID == null) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L67"
            return _h.defaultID()?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L69"
        return (@:checkr _p ?? throw "null pointer dereference").headingID(_h)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _headingLevel( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L59"
        if (((@:checkr _p ?? throw "null pointer dereference").headingLevel <= (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L60"
            return (3 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L62"
        return (@:checkr _p ?? throw "null pointer dereference").headingLevel;
    }
    @:keep
    @:tdfield
    static public function markdown( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>, _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer> = _p;
        var _mp = (stdgo.Go.setRef(({ printer : _p, _headingPrefix : (stdgo._internal.strings.Strings_repeat.repeat(("#" : stdgo.GoString), _p._headingLevel()) + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter>);
        var _out:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/markdown.go#L29"
        for (_i => _x in (@:checkr _d ?? throw "null pointer dereference").content) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/markdown.go#L30"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/markdown.go#L31"
                _out.writeByte((10 : stdgo.GoUInt8));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/markdown.go#L33"
            _mp._block((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _x);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/markdown.go#L35"
        return _out.bytes();
    }
    @:keep
    @:tdfield
    static public function hTML( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>, _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer> = _p;
        var _hp = (stdgo.Go.setRef(({ printer : _p } : stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter>);
        var _out:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L24"
        for (__1 => _x in (@:checkr _d ?? throw "null pointer dereference").content) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L25"
            _hp._block((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _x);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L27"
        return _out.bytes();
    }
}

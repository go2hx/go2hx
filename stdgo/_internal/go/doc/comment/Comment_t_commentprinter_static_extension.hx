package stdgo._internal.go.doc.comment;
@:keep @:allow(stdgo._internal.go.doc.comment.Comment.T_commentPrinter_asInterface) class T_commentPrinter_static_extension {
    @:keep
    @:tdfield
    static public function _indent( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter>, _out:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _indent:stdgo.GoString, _s:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L279"
        while (_s != ((stdgo.Go.str() : stdgo.GoString))) {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_s?.__copy__(), ("\n" : stdgo.GoString)), _line:stdgo.GoString = __tmp__._0, _rest:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L281"
            _out.writeString(_line?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L282"
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L283"
                _out.writeString(("\n" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L284"
                _out.writeString(_indent?.__copy__());
            };
            _s = _rest?.__copy__();
        };
    }
    @:keep
    @:tdfield
    static public function _text( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter>, _out:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _indent:stdgo.GoString, _x:stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L254"
        for (__1 => _t in _x) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L255"
            {
                final __type__ = _t;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.doc.comment.Comment_plain.Plain))) {
                    var _t:stdgo._internal.go.doc.comment.Comment_plain.Plain = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_plain.Plain) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_plain.Plain) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_plain.Plain) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L257"
                    _p._indent(_out, _indent?.__copy__(), (_t : stdgo.GoString)?.__copy__());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.doc.comment.Comment_italic.Italic))) {
                    var _t:stdgo._internal.go.doc.comment.Comment_italic.Italic = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_italic.Italic) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_italic.Italic) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_italic.Italic) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L259"
                    _p._indent(_out, _indent?.__copy__(), (_t : stdgo.GoString)?.__copy__());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L261"
                    if ((@:checkr _t ?? throw "null pointer dereference").auto) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L262"
                        _p._text(_out, _indent?.__copy__(), (@:checkr _t ?? throw "null pointer dereference").text);
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L264"
                        _out.writeString(("[" : stdgo.GoString));
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L265"
                        _p._text(_out, _indent?.__copy__(), (@:checkr _t ?? throw "null pointer dereference").text);
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L266"
                        _out.writeString(("]" : stdgo.GoString));
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L269"
                    _out.writeString(("[" : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L270"
                    _p._text(_out, _indent?.__copy__(), (@:checkr _t ?? throw "null pointer dereference").text);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L271"
                    _out.writeString(("]" : stdgo.GoString));
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _block( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter>, _out:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _x:stdgo._internal.go.doc.comment.Comment_block.Block):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L202"
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>))) {
                var _x:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L207"
                _p._text(_out, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (@:checkr _x ?? throw "null pointer dereference").text);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L208"
                _out.writeString(("\n" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>))) {
                var _x:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L211"
                _out.writeString(("# " : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L212"
                _p._text(_out, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (@:checkr _x ?? throw "null pointer dereference").text);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L213"
                _out.writeString(("\n" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code>))) {
                var _x:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code>) : __type__.__underlying__().value);
                var _md = ((@:checkr _x ?? throw "null pointer dereference").text?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L217"
                while (_md != ((stdgo.Go.str() : stdgo.GoString))) {
                    var _line:stdgo.GoString = ("" : stdgo.GoString);
                    {
                        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_md?.__copy__(), ("\n" : stdgo.GoString));
                        _line = @:tmpset0 __tmp__._0?.__copy__();
                        _md = @:tmpset0 __tmp__._1?.__copy__();
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L220"
                    if (_line != ((stdgo.Go.str() : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L221"
                        _out.writeString(("\t" : stdgo.GoString));
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L222"
                        _out.writeString(_line?.__copy__());
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L224"
                    _out.writeString(("\n" : stdgo.GoString));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>))) {
                var _x:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>) : __type__.__underlying__().value);
                var _loose = (_x.blankBetween() : Bool);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L229"
                for (_i => _item in (@:checkr _x ?? throw "null pointer dereference").items) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L230"
                    if (((_i > (0 : stdgo.GoInt) : Bool) && _loose : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L231"
                        _out.writeString(("\n" : stdgo.GoString));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L233"
                    _out.writeString((" " : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L234"
                    if ((@:checkr _item ?? throw "null pointer dereference").number == ((stdgo.Go.str() : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L235"
                        _out.writeString((" - " : stdgo.GoString));
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L237"
                        _out.writeString((@:checkr _item ?? throw "null pointer dereference").number?.__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L238"
                        _out.writeString((". " : stdgo.GoString));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L240"
                    for (_i => _blk in (@:checkr _item ?? throw "null pointer dereference").content) {
                        {};
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L242"
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L243"
                            _out.writeString(("\n    " : stdgo.GoString));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L245"
                        _p._text(_out, ("    " : stdgo.GoString), (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_blk) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>) ?? throw "null pointer dereference").text);
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L246"
                        _out.writeString(("\n" : stdgo.GoString));
                    };
                };
            } else {
                var _x:stdgo._internal.go.doc.comment.Comment_block.Block = __type__ == null ? (null : stdgo._internal.go.doc.comment.Comment_block.Block) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/print.go#L204"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_out), ("?%T" : stdgo.GoString), stdgo.Go.toInterface(_x));
            };
        };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _headingLevel( __self__:stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter):stdgo.GoInt return @:_5 __self__._headingLevel();
    @:embedded
    @:embeddededffieldsffun
    public static function _headingID( __self__:stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>):stdgo.GoString return @:_5 __self__._headingID(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _docLinkURL( __self__:stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>):stdgo.GoString return @:_5 __self__._docLinkURL(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function text( __self__:stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.text(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function markdown( __self__:stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.markdown(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function hTML( __self__:stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.hTML(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function comment( __self__:stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.comment(_0);
}

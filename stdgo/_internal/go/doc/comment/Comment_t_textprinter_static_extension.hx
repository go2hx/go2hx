package stdgo._internal.go.doc.comment;
@:keep @:allow(stdgo._internal.go.doc.comment.Comment.T_textPrinter_asInterface) class T_textPrinter_static_extension {
    @:keep
    @:tdfield
    static public function _oneLongLine( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter>, _out:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _x:stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L167"
        for (__1 => _t in _x) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L168"
            {
                final __type__ = _t;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.doc.comment.Comment_plain.Plain))) {
                    var _t:stdgo._internal.go.doc.comment.Comment_plain.Plain = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_plain.Plain) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_plain.Plain) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_plain.Plain) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L170"
                    _out.writeString((_t : stdgo.GoString)?.__copy__());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.doc.comment.Comment_italic.Italic))) {
                    var _t:stdgo._internal.go.doc.comment.Comment_italic.Italic = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_italic.Italic) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_italic.Italic) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_italic.Italic) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L172"
                    _out.writeString((_t : stdgo.GoString)?.__copy__());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L174"
                    _p._oneLongLine(_out, (@:checkr _t ?? throw "null pointer dereference").text);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L176"
                    _p._oneLongLine(_out, (@:checkr _t ?? throw "null pointer dereference").text);
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _text( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter>, _out:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _indent:stdgo.GoString, _x:stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L138"
        _p._oneLongLine((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._long) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), _x);
        var _words = stdgo._internal.strings.Strings_fields.fields(((@:checkr _p ?? throw "null pointer dereference")._long.string() : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L140"
        (@:checkr _p ?? throw "null pointer dereference")._long.reset();
        var _seq:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L143"
        if ((((@:checkr _p ?? throw "null pointer dereference")._width < (0 : stdgo.GoInt) : Bool) || (_words.length == (0 : stdgo.GoInt)) : Bool)) {
            _seq = (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(0 : stdgo.GoInt), (_words.length)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        } else {
            _seq = stdgo._internal.go.doc.comment.Comment__wrap._wrap(_words, ((@:checkr _p ?? throw "null pointer dereference")._width - stdgo._internal.unicode.utf8.Utf8_runecountinstring.runeCountInString(_indent?.__copy__()) : stdgo.GoInt));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L148"
        {
            var _i = (0 : stdgo.GoInt);
            while (((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_seq.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L149"
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L150"
                    _out.writeString((@:checkr _p ?? throw "null pointer dereference")._prefix.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L151"
                    _out.writeString(_indent.__copy__());
                };
//"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L153"
                for (_j => _w in (_words.__slice__(_seq[(_i : stdgo.GoInt)], _seq[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoString>)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L154"
                    if ((_j > (0 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L155"
                        _out.writeString((" " : stdgo.GoString));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L157"
                    _out.writeString(_w?.__copy__());
                };
//"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L159"
                stdgo._internal.go.doc.comment.Comment__writenl._writeNL(_out);
                _i++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _block( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter>, _out:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _x:stdgo._internal.go.doc.comment.Comment_block.Block):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L83"
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>))) {
                var _x:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L88"
                _out.writeString((@:checkr _p ?? throw "null pointer dereference")._prefix?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L89"
                _p._text(_out, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (@:checkr _x ?? throw "null pointer dereference").text);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>))) {
                var _x:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L92"
                _out.writeString((@:checkr _p ?? throw "null pointer dereference")._prefix?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L93"
                _out.writeString(("# " : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L94"
                _p._text(_out, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (@:checkr _x ?? throw "null pointer dereference").text);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code>))) {
                var _x:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code>) : __type__.__underlying__().value);
                var _text = ((@:checkr _x ?? throw "null pointer dereference").text?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L98"
                while (_text != ((stdgo.Go.str() : stdgo.GoString))) {
                    var _line:stdgo.GoString = ("" : stdgo.GoString);
                    {
                        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_text?.__copy__(), ("\n" : stdgo.GoString));
                        _line = @:tmpset0 __tmp__._0?.__copy__();
                        _text = @:tmpset0 __tmp__._1?.__copy__();
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L101"
                    if (_line != ((stdgo.Go.str() : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L102"
                        _out.writeString((@:checkr _p ?? throw "null pointer dereference")._codePrefix?.__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L103"
                        _out.writeString(_line?.__copy__());
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L105"
                    stdgo._internal.go.doc.comment.Comment__writenl._writeNL(_out);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>))) {
                var _x:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>) : __type__.__underlying__().value);
                var _loose = (_x.blankBetween() : Bool);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L110"
                for (_i => _item in (@:checkr _x ?? throw "null pointer dereference").items) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L111"
                    if (((_i > (0 : stdgo.GoInt) : Bool) && _loose : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L112"
                        _out.writeString((@:checkr _p ?? throw "null pointer dereference")._prefix?.__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L113"
                        stdgo._internal.go.doc.comment.Comment__writenl._writeNL(_out);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L115"
                    _out.writeString((@:checkr _p ?? throw "null pointer dereference")._prefix?.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L116"
                    _out.writeString((" " : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L117"
                    if ((@:checkr _item ?? throw "null pointer dereference").number == ((stdgo.Go.str() : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L118"
                        _out.writeString((" - " : stdgo.GoString));
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L120"
                        _out.writeString((@:checkr _item ?? throw "null pointer dereference").number?.__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L121"
                        _out.writeString((". " : stdgo.GoString));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L123"
                    for (_i => _blk in (@:checkr _item ?? throw "null pointer dereference").content) {
                        {};
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L125"
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L126"
                            stdgo._internal.go.doc.comment.Comment__writenl._writeNL(_out);
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L127"
                            _out.writeString((@:checkr _p ?? throw "null pointer dereference")._prefix?.__copy__());
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L128"
                            _out.writeString(("    " : stdgo.GoString));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L130"
                        _p._text(_out, ("    " : stdgo.GoString), (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_blk) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>) ?? throw "null pointer dereference").text);
                    };
                };
            } else {
                var _x:stdgo._internal.go.doc.comment.Comment_block.Block = __type__ == null ? (null : stdgo._internal.go.doc.comment.Comment_block.Block) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L85"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_out), ("?%T\n" : stdgo.GoString), stdgo.Go.toInterface(_x));
            };
        };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _headingLevel( __self__:stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter):stdgo.GoInt return @:_5 __self__._headingLevel();
    @:embedded
    @:embeddededffieldsffun
    public static function _headingID( __self__:stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>):stdgo.GoString return @:_5 __self__._headingID(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _docLinkURL( __self__:stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>):stdgo.GoString return @:_5 __self__._docLinkURL(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function text( __self__:stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.text(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function markdown( __self__:stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.markdown(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function hTML( __self__:stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.hTML(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function comment( __self__:stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.comment(_0);
}

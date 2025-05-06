package stdgo._internal.go.doc.comment;
@:keep @:allow(stdgo._internal.go.doc.comment.Comment.T_htmlPrinter_asInterface) class T_htmlPrinter_static_extension {
    @:keep
    @:tdfield
    static public function _escape( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter>, _out:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _s:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter> = _p;
        var _start = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L144"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L145"
                {
                    final __value__ = _s[(_i : stdgo.GoInt)];
                    if (__value__ == ((60 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L147"
                        _out.writeString((_s.__slice__(_start, _i) : stdgo.GoString).__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L148"
                        _out.writeString(("&lt;" : stdgo.GoString));
                        _start = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    } else if (__value__ == ((38 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L151"
                        _out.writeString((_s.__slice__(_start, _i) : stdgo.GoString).__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L152"
                        _out.writeString(("&amp;" : stdgo.GoString));
                        _start = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L155"
                        _out.writeString((_s.__slice__(_start, _i) : stdgo.GoString).__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L156"
                        _out.writeString(("&quot;" : stdgo.GoString));
                        _start = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    } else if (__value__ == ((39 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L159"
                        _out.writeString((_s.__slice__(_start, _i) : stdgo.GoString).__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L160"
                        _out.writeString(("&apos;" : stdgo.GoString));
                        _start = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    } else if (__value__ == ((62 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L163"
                        _out.writeString((_s.__slice__(_start, _i) : stdgo.GoString).__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L164"
                        _out.writeString(("&gt;" : stdgo.GoString));
                        _start = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L168"
        _out.writeString((_s.__slice__(_start) : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _text( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter>, _out:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _x:stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L110"
        for (__1 => _t in _x) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L111"
            {
                final __type__ = _t;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.doc.comment.Comment_plain.Plain))) {
                    var _t:stdgo._internal.go.doc.comment.Comment_plain.Plain = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_plain.Plain) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_plain.Plain) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_plain.Plain) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L113"
                    _p._escape(_out, (_t : stdgo.GoString)?.__copy__());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.doc.comment.Comment_italic.Italic))) {
                    var _t:stdgo._internal.go.doc.comment.Comment_italic.Italic = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_italic.Italic) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_italic.Italic) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_italic.Italic) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L115"
                    _out.writeString(("<i>" : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L116"
                    _p._escape(_out, (_t : stdgo.GoString)?.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L117"
                    _out.writeString(("</i>" : stdgo.GoString));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L119"
                    _out.writeString(("<a href=\"" : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L120"
                    _p._escape(_out, (@:checkr _t ?? throw "null pointer dereference").uRL?.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L121"
                    _out.writeString(("\">" : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L122"
                    _p._text(_out, (@:checkr _t ?? throw "null pointer dereference").text);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L123"
                    _out.writeString(("</a>" : stdgo.GoString));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>) : __type__.__underlying__().value);
                    var _url = (_p._docLinkURL(_t)?.__copy__() : stdgo.GoString);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L126"
                    if (_url != ((stdgo.Go.str() : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L127"
                        _out.writeString(("<a href=\"" : stdgo.GoString));
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L128"
                        _p._escape(_out, _url?.__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L129"
                        _out.writeString(("\">" : stdgo.GoString));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L131"
                    _p._text(_out, (@:checkr _t ?? throw "null pointer dereference").text);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L132"
                    if (_url != ((stdgo.Go.str() : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L133"
                        _out.writeString(("</a>" : stdgo.GoString));
                    };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _block( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter>, _out:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _x:stdgo._internal.go.doc.comment.Comment_block.Block):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L32"
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>))) {
                var _x:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L37"
                if (!(@:checkr _p ?? throw "null pointer dereference")._tight) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L38"
                    _out.writeString(("<p>" : stdgo.GoString));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L40"
                _p._text(_out, (@:checkr _x ?? throw "null pointer dereference").text);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L41"
                _out.writeString(("\n" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>))) {
                var _x:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L44"
                _out.writeString(("<h" : stdgo.GoString));
                var _h = (stdgo._internal.strconv.Strconv_itoa.itoa(_p._headingLevel())?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L46"
                _out.writeString(_h?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L47"
                {
                    var _id = (_p._headingID(_x)?.__copy__() : stdgo.GoString);
                    if (_id != ((stdgo.Go.str() : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L48"
                        _out.writeString((" id=\"" : stdgo.GoString));
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L49"
                        _p._escape(_out, _id?.__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L50"
                        _out.writeString(("\"" : stdgo.GoString));
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L52"
                _out.writeString((">" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L53"
                _p._text(_out, (@:checkr _x ?? throw "null pointer dereference").text);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L54"
                _out.writeString(("</h" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L55"
                _out.writeString(_h?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L56"
                _out.writeString((">\n" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code>))) {
                var _x:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L59"
                _out.writeString(("<pre>" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L60"
                _p._escape(_out, (@:checkr _x ?? throw "null pointer dereference").text?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L61"
                _out.writeString(("</pre>\n" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>))) {
                var _x:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>) : __type__.__underlying__().value);
                var _kind = (("ol>\n" : stdgo.GoString) : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L65"
                if ((@:checkr (@:checkr _x ?? throw "null pointer dereference").items[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").number == ((stdgo.Go.str() : stdgo.GoString))) {
                    _kind = ("ul>\n" : stdgo.GoString);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L68"
                _out.writeString(("<" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L69"
                _out.writeString(_kind?.__copy__());
                var _next = (("1" : stdgo.GoString) : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L71"
                for (__1 => _item in (@:checkr _x ?? throw "null pointer dereference").items) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L72"
                    _out.writeString(("<li" : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L73"
                    {
                        var _n = ((@:checkr _item ?? throw "null pointer dereference").number?.__copy__() : stdgo.GoString);
                        if (_n != ((stdgo.Go.str() : stdgo.GoString))) {
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L74"
                            if (_n != (_next)) {
                                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L75"
                                _out.writeString((" value=\"" : stdgo.GoString));
                                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L76"
                                _out.writeString(_n?.__copy__());
                                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L77"
                                _out.writeString(("\"" : stdgo.GoString));
                                _next = _n?.__copy__();
                            };
                            _next = stdgo._internal.go.doc.comment.Comment__inc._inc(_next?.__copy__())?.__copy__();
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L82"
                    _out.writeString((">" : stdgo.GoString));
                    (@:checkr _p ?? throw "null pointer dereference")._tight = !_x.blankBetween();
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L84"
                    for (__2 => _blk in (@:checkr _item ?? throw "null pointer dereference").content) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L85"
                        _p._block(_out, _blk);
                    };
                    (@:checkr _p ?? throw "null pointer dereference")._tight = false;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L89"
                _out.writeString(("</" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L90"
                _out.writeString(_kind?.__copy__());
            } else {
                var _x:stdgo._internal.go.doc.comment.Comment_block.Block = __type__ == null ? (null : stdgo._internal.go.doc.comment.Comment_block.Block) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L34"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_out), ("?%T" : stdgo.GoString), stdgo.Go.toInterface(_x));
            };
        };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _headingLevel( __self__:stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter):stdgo.GoInt return @:_5 __self__._headingLevel();
    @:embedded
    @:embeddededffieldsffun
    public static function _headingID( __self__:stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>):stdgo.GoString return @:_5 __self__._headingID(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _docLinkURL( __self__:stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>):stdgo.GoString return @:_5 __self__._docLinkURL(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function text( __self__:stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.text(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function markdown( __self__:stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.markdown(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function hTML( __self__:stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.hTML(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function comment( __self__:stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.comment(_0);
}

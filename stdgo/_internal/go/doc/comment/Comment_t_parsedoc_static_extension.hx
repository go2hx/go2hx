package stdgo._internal.go.doc.comment;
@:keep @:allow(stdgo._internal.go.doc.comment.Comment.T_parseDoc_asInterface) class T_parseDoc_static_extension {
    @:keep
    @:tdfield
    static public function _parseText( _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>, _out:stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>, _s:stdgo.GoString, _autoLink:Bool):stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text> {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc> = _d;
        var _w:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var _wrote = (0 : stdgo.GoInt);
        var _writeUntil = (function(_i:stdgo.GoInt):Void {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L902"
            _w.writeString((_s.__slice__(_wrote, _i) : stdgo.GoString)?.__copy__());
            _wrote = _i;
        } : stdgo.GoInt -> Void);
        var _flush = (function(_i:stdgo.GoInt):Void {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L906"
            _writeUntil(_i);
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L907"
            if ((_w.len() > (0 : stdgo.GoInt) : Bool)) {
                _out = (_out.__append__(stdgo.Go.asInterface(((_w.string() : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_plain.Plain))) : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L909"
                _w.reset();
            };
        } : stdgo.GoInt -> Void);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L912"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _t = ((_s.__slice__(_i) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L914"
                if (_autoLink) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L915"
                    {
                        var __tmp__ = stdgo._internal.go.doc.comment.Comment__autourl._autoURL(_t?.__copy__()), _url:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L916"
                            _flush(_i);
                            _out = (_out.__append__(stdgo.Go.asInterface((stdgo.Go.setRef(({ auto : true, text : (new stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>(1, 1, ...[stdgo.Go.asInterface((_url : stdgo._internal.go.doc.comment.Comment_plain.Plain))]) : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>), uRL : _url?.__copy__() } : stdgo._internal.go.doc.comment.Comment_link.Link)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>))) : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>);
                            _i = (_i + ((_url.length)) : stdgo.GoInt);
                            _wrote = _i;
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L925"
                            continue;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L927"
                    {
                        var __tmp__ = stdgo._internal.go.doc.comment.Comment__ident._ident(_t?.__copy__()), _id:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            var __tmp__ = ((@:checkr _d ?? throw "null pointer dereference").parser.words != null && (@:checkr _d ?? throw "null pointer dereference").parser.words.__exists__(_id?.__copy__()) ? { _0 : (@:checkr _d ?? throw "null pointer dereference").parser.words[_id?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _url:stdgo.GoString = __tmp__._0, _italics:Bool = __tmp__._1;
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L929"
                            if (!_italics) {
                                _i = (_i + ((_id.length)) : stdgo.GoInt);
                                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L931"
                                continue;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L933"
                            _flush(_i);
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L934"
                            if (_url == ((stdgo.Go.str() : stdgo.GoString))) {
                                _out = (_out.__append__(stdgo.Go.asInterface((_id : stdgo._internal.go.doc.comment.Comment_italic.Italic))) : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>);
                            } else {
                                _out = (_out.__append__(stdgo.Go.asInterface((stdgo.Go.setRef(({ auto : true, text : (new stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>(1, 1, ...[stdgo.Go.asInterface((_id : stdgo._internal.go.doc.comment.Comment_italic.Italic))]) : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>), uRL : _url?.__copy__() } : stdgo._internal.go.doc.comment.Comment_link.Link)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>))) : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>);
                            };
                            _i = (_i + ((_id.length)) : stdgo.GoInt);
                            _wrote = _i;
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L941"
                            continue;
                        };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L944"
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_t?.__copy__(), ("``" : stdgo.GoString))) {
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L946"
                            if ((((_t.length) >= (3 : stdgo.GoInt) : Bool) && (_t[(2 : stdgo.GoInt)] == (96 : stdgo.GoUInt8)) : Bool)) {
                                _i = (_i + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L949"
                                while (((_i < (_t.length) : Bool) && (_t[(_i : stdgo.GoInt)] == (96 : stdgo.GoUInt8)) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L950"
                                    _i++;
                                };
                                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L952"
                                break;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L954"
                            _writeUntil(_i);
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L955"
                            _w.writeRune((8220 : stdgo.GoInt32));
                            _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                            _wrote = _i;
                            break;
                        } else if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_t?.__copy__(), ("\'\'" : stdgo.GoString))) {
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L959"
                            _writeUntil(_i);
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L960"
                            _w.writeRune((8221 : stdgo.GoInt32));
                            _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                            _wrote = _i;
                            break;
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L964"
                            _i++;
                        };
                        break;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L967"
        _flush((_s.length));
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L968"
        return _out;
    }
    @:keep
    @:tdfield
    static public function _docLink( _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>, _text:stdgo.GoString, _before:stdgo.GoString, _after:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc> = _d;
        var _link = (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>), _ok = false;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L842"
        if (_before != ((stdgo.Go.str() : stdgo.GoString))) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodelastruneinstring.decodeLastRuneInString(_before?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L844"
            if ((((!stdgo._internal.unicode.Unicode_ispunct.isPunct(_r) && _r != ((32 : stdgo.GoInt32)) : Bool) && _r != ((9 : stdgo.GoInt32)) : Bool) && (_r != (10 : stdgo.GoInt32)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L845"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>; var _1 : Bool; } = { _0 : null, _1 : false };
                    _link = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L848"
        if (_after != ((stdgo.Go.str() : stdgo.GoString))) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_after?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L850"
            if ((((!stdgo._internal.unicode.Unicode_ispunct.isPunct(_r) && _r != ((32 : stdgo.GoInt32)) : Bool) && _r != ((9 : stdgo.GoInt32)) : Bool) && (_r != (10 : stdgo.GoInt32)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L851"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>; var _1 : Bool; } = { _0 : null, _1 : false };
                    _link = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
        };
        _text = stdgo._internal.strings.Strings_trimprefix.trimPrefix(_text?.__copy__(), ("*" : stdgo.GoString))?.__copy__();
        var __tmp__ = stdgo._internal.go.doc.comment.Comment__splitdocname._splitDocName(_text?.__copy__()), _pkg:stdgo.GoString = __tmp__._0, _name:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
        var _recv:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L857"
        if (_ok) {
            {
                var __tmp__ = stdgo._internal.go.doc.comment.Comment__splitdocname._splitDocName(_pkg?.__copy__());
                _pkg = @:tmpset0 __tmp__._0?.__copy__();
                _recv = @:tmpset0 __tmp__._1?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L860"
        if (_pkg != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L861"
            {
                {
                    var __tmp__ = _d._lookupPkg(_pkg?.__copy__());
                    _pkg = @:tmpset0 __tmp__._0?.__copy__();
                    _ok = @:tmpset0 __tmp__._1;
                };
                if (!_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L862"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>; var _1 : Bool; } = { _0 : null, _1 : false };
                        _link = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        } else {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L865"
            {
                _ok = (@:checkr _d ?? throw "null pointer dereference")._lookupSym(_recv?.__copy__(), _name?.__copy__());
                if (!_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L866"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>; var _1 : Bool; } = { _0 : null, _1 : false };
                        _link = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        _link = (stdgo.Go.setRef(({ importPath : _pkg?.__copy__(), recv : _recv?.__copy__(), name : _name?.__copy__() } : stdgo._internal.go.doc.comment.Comment_doclink.DocLink)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L874"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>; var _1 : Bool; } = { _0 : _link, _1 : true };
            _link = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _parseLinkedText( _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>, _text:stdgo.GoString):stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text> {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc> = _d;
        var _out:stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text> = (null : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>);
        var _wrote = (0 : stdgo.GoInt);
        var _flush = (function(_i:stdgo.GoInt):Void {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L790"
            if ((_wrote < _i : Bool)) {
                _out = _d._parseText(_out, (_text.__slice__(_wrote, _i) : stdgo.GoString)?.__copy__(), true);
                _wrote = _i;
            };
        } : stdgo.GoInt -> Void);
        var _start = (-1 : stdgo.GoInt);
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L798"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_text.length) : Bool)) {
                var _c = (_text[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L800"
                if (((_c == (10 : stdgo.GoUInt8)) || (_c == (9 : stdgo.GoUInt8)) : Bool)) {
                    _c = (32 : stdgo.GoUInt8);
                };
//"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L803"
                {
                    final __value__ = _c;
                    if (__value__ == ((91 : stdgo.GoUInt8))) {
                        _start = _i;
                    } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L807"
                        if ((_start >= (0 : stdgo.GoInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L808"
                            {
                                var __tmp__ = ((@:checkr _d ?? throw "null pointer dereference")._links != null && (@:checkr _d ?? throw "null pointer dereference")._links.__exists__((_buf : stdgo.GoString).__copy__()) ? { _0 : (@:checkr _d ?? throw "null pointer dereference")._links[(_buf : stdgo.GoString).__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>), _1 : false }), _def:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef> = __tmp__._0, _ok:Bool = __tmp__._1;
                                if (_ok) {
                                    (@:checkr _def ?? throw "null pointer dereference").used = true;
                                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L810"
                                    _flush(_start);
                                    _out = (_out.__append__(stdgo.Go.asInterface((stdgo.Go.setRef(({ text : _d._parseText((null : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>), (_text.__slice__((_start + (1 : stdgo.GoInt) : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), false), uRL : (@:checkr _def ?? throw "null pointer dereference").uRL.__copy__() } : stdgo._internal.go.doc.comment.Comment_link.Link)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>))) : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>);
                                    _wrote = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                                } else {
                                    var __tmp__ = _d._docLink((_text.__slice__((_start + (1 : stdgo.GoInt) : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), (_text.__slice__(0, _start) : stdgo.GoString).__copy__(), (_text.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__()), _link:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink> = __tmp__._0, _ok:Bool = __tmp__._1;
                                    if (_ok) {
                                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L817"
                                        _flush(_start);
                                        (@:checkr _link ?? throw "null pointer dereference").text = _d._parseText((null : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>), (_text.__slice__((_start + (1 : stdgo.GoInt) : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), false);
                                        _out = (_out.__append__(stdgo.Go.asInterface(_link)) : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>);
                                        _wrote = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                                    };
                                };
                            };
                        };
                        _start = (-1 : stdgo.GoInt);
                        _buf = (_buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L826"
                if (((_start >= (0 : stdgo.GoInt) : Bool) && (_i != _start) : Bool)) {
                    _buf = (_buf.__append__(_c) : stdgo.Slice<stdgo.GoUInt8>);
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L831"
        _flush((_text.length));
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L832"
        return _out;
    }
    @:keep
    @:tdfield
    static public function _list( _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>, _lines:stdgo.Slice<stdgo.GoString>, _forceBlankBefore:Bool):stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List> {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc> = _d;
        var __tmp__ = stdgo._internal.go.doc.comment.Comment__listmarker._listMarker(_lines[(0 : stdgo.GoInt)]?.__copy__()), _num:stdgo.GoString = __tmp__._0, __1:stdgo.GoString = __tmp__._1, __2:Bool = __tmp__._2;
        var _list:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List> = (stdgo.Go.setRef(({ forceBlankBefore : _forceBlankBefore } : stdgo._internal.go.doc.comment.Comment_list.List)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>), _item:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_listitem.ListItem> = (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_listitem.ListItem>), _text:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _flush = (function():Void {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L706"
            if (({
                final value = _item;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L707"
                {
                    var _para = (_d._paragraph(_text) : stdgo._internal.go.doc.comment.Comment_block.Block);
                    if (_para != null) {
                        (@:checkr _item ?? throw "null pointer dereference").content = ((@:checkr _item ?? throw "null pointer dereference").content.__append__(_para) : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_block.Block>);
                    };
                };
            };
            _text = (null : stdgo.Slice<stdgo.GoString>);
        } : () -> Void);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L714"
        for (__3 => _line in _lines) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L715"
            {
                var __tmp__ = stdgo._internal.go.doc.comment.Comment__listmarker._listMarker(_line?.__copy__()), _n:stdgo.GoString = __tmp__._0, _after:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
                if ((_ok && ((_n != (stdgo.Go.str() : stdgo.GoString)) == (_num != (stdgo.Go.str() : stdgo.GoString))) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L717"
                    _flush();
                    _item = (stdgo.Go.setRef(({ number : _n?.__copy__() } : stdgo._internal.go.doc.comment.Comment_listitem.ListItem)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_listitem.ListItem>);
                    (@:checkr _list ?? throw "null pointer dereference").items = ((@:checkr _list ?? throw "null pointer dereference").items.__append__(_item) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.comment.Comment_listitem.ListItem>>);
                    _line = _after?.__copy__();
                };
            };
            _line = stdgo._internal.strings.Strings_trimspace.trimSpace(_line?.__copy__())?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L724"
            if (_line == ((stdgo.Go.str() : stdgo.GoString))) {
                (@:checkr _list ?? throw "null pointer dereference").forceBlankBetween = true;
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L726"
                _flush();
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L727"
                continue;
            };
            _text = (_text.__append__(stdgo._internal.strings.Strings_trimspace.trimSpace(_line?.__copy__())?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L731"
        _flush();
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L732"
        return _list;
    }
    @:keep
    @:tdfield
    static public function _paragraph( _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>, _lines:stdgo.Slice<stdgo.GoString>):stdgo._internal.go.doc.comment.Comment_block.Block {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc> = _d;
        var _def_11:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef> = (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>);
        var _line_10:stdgo.GoString = ("" : stdgo.GoString);
        var _iterator_3652651_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _defs_8:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>>);
        var _def_14:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef> = (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>);
        var _iterator_3652769_13:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_12:Bool = false;
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L649"
                    if ((0i64 : stdgo.GoInt) < (_lines.length)) {
                        _gotoNext = 3652751i64;
                    } else {
                        _gotoNext = 3652755i64;
                    };
                } else if (__value__ == (3652663i64)) {
                    _line_10 = _lines[(_iterator_3652651_9 : stdgo.GoInt)]?.__copy__();
                    {
                        var __tmp__ = stdgo._internal.go.doc.comment.Comment__parselink._parseLink(_line_10?.__copy__());
                        _def_11 = @:tmpset0 __tmp__._0;
                        _ok_12 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L651"
                    if (!_ok_12) {
                        _gotoNext = 3652703i64;
                    } else {
                        _gotoNext = 3652726i64;
                    };
                } else if (__value__ == (3652703i64)) {
                    _gotoNext = 3652893i64;
                } else if (__value__ == (3652726i64)) {
                    _defs_8 = (_defs_8.__append__(_def_11) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>>);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L649"
                    _iterator_3652651_9++;
                    _gotoNext = 3652752i64;
                } else if (__value__ == (3652751i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = _lines[(0i64 : stdgo.GoInt)]?.__copy__();
                        _iterator_3652651_9 = @:binopAssign __tmp__0;
                        _line_10 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3652752i64;
                } else if (__value__ == (3652752i64)) {
                    //"file://#L0"
                    if (_iterator_3652651_9 < (_lines.length)) {
                        _gotoNext = 3652663i64;
                    } else {
                        _gotoNext = 3652755i64;
                    };
                } else if (__value__ == (3652755i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L656"
                    if ((0i64 : stdgo.GoInt) < (_defs_8.length)) {
                        _gotoNext = 3652878i64;
                    } else {
                        _gotoNext = 3652882i64;
                    };
                } else if (__value__ == (3652759i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L656"
                    _iterator_3652769_13++;
                    _gotoNext = 3652879i64;
                } else if (__value__ == (3652780i64)) {
                    _def_14 = _defs_8[(_iterator_3652769_13 : stdgo.GoInt)];
                    (@:checkr _d ?? throw "null pointer dereference").doc.links = ((@:checkr _d ?? throw "null pointer dereference").doc.links.__append__(_def_14) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>>);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L658"
                    if (({
                        final value = ((@:checkr _d ?? throw "null pointer dereference")._links[(@:checkr _def_14 ?? throw "null pointer dereference").text] ?? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>));
                        (value == null || (value : Dynamic).__nil__);
                    })) {
                        _gotoNext = 3652845i64;
                    } else {
                        _gotoNext = 3652759i64;
                    };
                } else if (__value__ == (3652845i64)) {
                    (@:checkr _d ?? throw "null pointer dereference")._links[(@:checkr _def_14 ?? throw "null pointer dereference").text] = _def_14;
                    _gotoNext = 3652759i64;
                } else if (__value__ == (3652878i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = _defs_8[(0i64 : stdgo.GoInt)];
                        _iterator_3652769_13 = @:binopAssign __tmp__0;
                        _def_14 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3652879i64;
                } else if (__value__ == (3652879i64)) {
                    //"file://#L0"
                    if (_iterator_3652769_13 < (_defs_8.length)) {
                        _gotoNext = 3652780i64;
                    } else {
                        _gotoNext = 3652882i64;
                    };
                } else if (__value__ == (3652882i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L662"
                    return (null : stdgo._internal.go.doc.comment.Comment_block.Block);
                    _gotoNext = 3652893i64;
                } else if (__value__ == (3652893i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L665"
                    return stdgo.Go.asInterface((stdgo.Go.setRef(({ text : (new stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>(1, 1, ...[stdgo.Go.asInterface((stdgo._internal.strings.Strings_join.join(_lines, ("\n" : stdgo.GoString)) : stdgo._internal.go.doc.comment.Comment_plain.Plain))]) : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>) } : stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>));
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _code( _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>, _lines:stdgo.Slice<stdgo.GoString>):stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code> {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc> = _d;
        var _body = stdgo._internal.go.doc.comment.Comment__unindent._unindent(_lines);
        _body = (_body.__append__((stdgo.Go.str() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L641"
        return (stdgo.Go.setRef(({ text : stdgo._internal.strings.Strings_join.join(_body, ("\n" : stdgo.GoString))?.__copy__() } : stdgo._internal.go.doc.comment.Comment_code.Code)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code>);
    }
    @:keep
    @:tdfield
    static public function _heading( _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>, _line:stdgo.GoString):stdgo._internal.go.doc.comment.Comment_block.Block {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc> = _d;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L634"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ text : (new stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>(1, 1, ...[stdgo.Go.asInterface((stdgo._internal.strings.Strings_trimspace.trimSpace((_line.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.go.doc.comment.Comment_plain.Plain))]) : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>) } : stdgo._internal.go.doc.comment.Comment_heading.Heading)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>));
    }
    @:keep
    @:tdfield
    static public function _oldHeading( _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>, _line:stdgo.GoString):stdgo._internal.go.doc.comment.Comment_block.Block {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc> = _d;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L621"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ text : (new stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>(1, 1, ...[stdgo.Go.asInterface((stdgo._internal.strings.Strings_trimspace.trimSpace(_line?.__copy__()) : stdgo._internal.go.doc.comment.Comment_plain.Plain))]) : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>) } : stdgo._internal.go.doc.comment.Comment_heading.Heading)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>));
    }
    @:keep
    @:tdfield
    static public function _lookupPkg( _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>, _pkg:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc> = _d;
        var _importPath = ("" : stdgo.GoString), _ok = false;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L247"
        if (stdgo._internal.strings.Strings_contains.contains(_pkg?.__copy__(), ("/" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L248"
            if (stdgo._internal.go.doc.comment.Comment__validimportpath._validImportPath(_pkg?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L249"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : _pkg?.__copy__(), _1 : true };
                    _importPath = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L251"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                _importPath = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L253"
        if ((@:checkr _d ?? throw "null pointer dereference").parser.lookupPackage != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L255"
            {
                var __tmp__ = (@:checkr _d ?? throw "null pointer dereference").parser.lookupPackage(_pkg?.__copy__()), _path:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L256"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : _path?.__copy__(), _1 : true };
                        _importPath = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L259"
        return stdgo._internal.go.doc.comment.Comment_defaultlookuppackage.defaultLookupPackage(_pkg?.__copy__());
    }
    @:embedded
    @:embeddededffieldsffun
    public static function parse( __self__:stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc, _0:stdgo.GoString):stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc> return @:_5 __self__.parse(_0);
}

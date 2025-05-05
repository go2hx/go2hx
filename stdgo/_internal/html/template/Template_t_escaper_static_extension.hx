package stdgo._internal.html.template;
@:keep @:allow(stdgo._internal.html.template.Template.T_escaper_asInterface) class T_escaper_static_extension {
    @:keep
    @:tdfield
    static public function _arbitraryTemplate( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>):stdgo.Ref<stdgo._internal.html.template.Template_template.Template> {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L963"
        for (__6 => _t in (@:checkr (@:checkr _e ?? throw "null pointer dereference")._ns ?? throw "null pointer dereference")._set) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L964"
            return _t;
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L966"
        throw stdgo.Go.toInterface(("no templates in name space" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _template( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.Template_template.Template> {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        var _t = _e._arbitraryTemplate()._text.lookup(_name?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L954"
        if (({
            final value = _t;
            (value == null || (value : Dynamic).__nil__);
        })) {
            _t = ((@:checkr _e ?? throw "null pointer dereference")._derived[_name] ?? (null : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>));
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L957"
        return _t;
    }
    @:keep
    @:tdfield
    static public function _commit( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L921"
        for (_name => _ in (@:checkr _e ?? throw "null pointer dereference")._output) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L922"
            _e._template(_name?.__copy__()).funcs(stdgo._internal.html.template.Template__funcmap._funcMap);
        };
        var _tmpl = _e._arbitraryTemplate();
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L927"
        for (__6 => _t in (@:checkr _e ?? throw "null pointer dereference")._derived) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L928"
            {
                var __tmp__ = (@:checkr _tmpl ?? throw "null pointer dereference")._text.addParseTree(_t.name()?.__copy__(), (@:checkr _t ?? throw "null pointer dereference").tree), __39:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L929"
                    throw stdgo.Go.toInterface(("error adding derived template" : stdgo.GoString));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L932"
        for (_n => _s in (@:checkr _e ?? throw "null pointer dereference")._actionNodeEdits) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L933"
            stdgo._internal.html.template.Template__ensurepipelinecontains._ensurePipelineContains((@:checkr _n ?? throw "null pointer dereference").pipe, _s);
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L935"
        for (_n => _name in (@:checkr _e ?? throw "null pointer dereference")._templateNodeEdits) {
            (@:checkr _n ?? throw "null pointer dereference").name = _name?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L938"
        for (_n => _s in (@:checkr _e ?? throw "null pointer dereference")._textNodeEdits) {
            (@:checkr _n ?? throw "null pointer dereference").text = _s;
        };
        (@:checkr _e ?? throw "null pointer dereference")._called = (({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
        (@:checkr _e ?? throw "null pointer dereference")._actionNodeEdits = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>, stdgo.Slice<stdgo.GoString>>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>, stdgo.Slice<stdgo.GoString>>);
        (@:checkr _e ?? throw "null pointer dereference")._templateNodeEdits = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>, stdgo.GoString>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>, stdgo.GoString>);
        (@:checkr _e ?? throw "null pointer dereference")._textNodeEdits = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>, stdgo.Slice<stdgo.GoUInt8>>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>, stdgo.Slice<stdgo.GoUInt8>>);
    }
    @:keep
    @:tdfield
    static public function _editTextNode( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>, _text:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L912"
        {
            var __tmp__ = ((@:checkr _e ?? throw "null pointer dereference")._textNodeEdits != null && (@:checkr _e ?? throw "null pointer dereference")._textNodeEdits.__exists__(_n) ? { _0 : (@:checkr _e ?? throw "null pointer dereference")._textNodeEdits[_n], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : false }), __6:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L913"
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("node %s shared between templates" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_n))));
            };
        };
        (@:checkr _e ?? throw "null pointer dereference")._textNodeEdits[_n] = _text;
    }
    @:keep
    @:tdfield
    static public function _editTemplateNode( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>, _callee:stdgo.GoString):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L904"
        {
            var __tmp__ = ((@:checkr _e ?? throw "null pointer dereference")._templateNodeEdits != null && (@:checkr _e ?? throw "null pointer dereference")._templateNodeEdits.__exists__(_n) ? { _0 : (@:checkr _e ?? throw "null pointer dereference")._templateNodeEdits[_n], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), __6:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L905"
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("node %s shared between templates" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_n))));
            };
        };
        (@:checkr _e ?? throw "null pointer dereference")._templateNodeEdits[_n] = _callee?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _editActionNode( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>, _cmds:stdgo.Slice<stdgo.GoString>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L896"
        {
            var __tmp__ = ((@:checkr _e ?? throw "null pointer dereference")._actionNodeEdits != null && (@:checkr _e ?? throw "null pointer dereference")._actionNodeEdits.__exists__(_n) ? { _0 : (@:checkr _e ?? throw "null pointer dereference")._actionNodeEdits[_n], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __6:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L897"
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("node %s shared between templates" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_n))));
            };
        };
        (@:checkr _e ?? throw "null pointer dereference")._actionNodeEdits[_n] = _cmds;
    }
    @:keep
    @:tdfield
    static public function _escapeText( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_t_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>):stdgo._internal.html.template.Template_t_context.T_context {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        var __0 = (@:checkr _n ?? throw "null pointer dereference").text, __1 = (0 : stdgo.GoInt), __2 = (0 : stdgo.GoInt), __3 = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
var _b = __3, _i = __2, _written = __1, _s = __0;
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L758"
        while (_i != ((_s.length))) {
            var __tmp__ = stdgo._internal.html.template.Template__contextaftertext._contextAfterText(_c?.__copy__(), (_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)), _c1:stdgo._internal.html.template.Template_t_context.T_context = __tmp__._0, _nread:stdgo.GoInt = __tmp__._1;
            var _i1 = (_i + _nread : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L761"
            if (((_c._state == (0 : stdgo._internal.html.template.Template_t_state.T_state)) || (_c._state == (6 : stdgo._internal.html.template.Template_t_state.T_state)) : Bool)) {
                var _end = (_i1 : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L763"
                if (_c1._state != (_c._state)) {
                    //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L764"
                    {
                        var _j = (_end - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j >= _i : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L765"
                            if (_s[(_j : stdgo.GoInt)] == ((60 : stdgo.GoUInt8))) {
                                _end = _j;
                                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L767"
                                break;
                            };
                            _j--;
                        };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L771"
                {
                    var _j = (_i : stdgo.GoInt);
                    while ((_j < _end : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L772"
                        if (((_s[(_j : stdgo.GoInt)] == (60 : stdgo.GoUInt8)) && !stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(stdgo._internal.bytes.Bytes_toupper.toUpper((_s.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>)), stdgo._internal.html.template.Template__doctypebytes._doctypeBytes) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L773"
                            _b.write((_s.__slice__(_written, _j) : stdgo.Slice<stdgo.GoUInt8>));
                            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L774"
                            _b.writeString(("&lt;" : stdgo.GoString));
                            _written = (_j + (1 : stdgo.GoInt) : stdgo.GoInt);
                        };
                        _j++;
                    };
                };
            } else if ((stdgo._internal.html.template.Template__iscomment._isComment(_c._state) && (_c._delim == (0 : stdgo._internal.html.template.Template_t_delim.T_delim)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L779"
                {
                    final __value__ = _c._state;
                    if (__value__ == ((15 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L788"
                        if (stdgo._internal.bytes.Bytes_containsany.containsAny((_s.__slice__(_written, _i1) : stdgo.Slice<stdgo.GoUInt8>), ("\n\r\u2028\u2029" : stdgo.GoString))) {
                            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L789"
                            _b.writeByte((10 : stdgo.GoUInt8));
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L791"
                            _b.writeByte((32 : stdgo.GoUInt8));
                        };
                    } else if (__value__ == ((25 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L794"
                        _b.writeByte((32 : stdgo.GoUInt8));
                    };
                };
                _written = _i1;
            };
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L798"
            if (((_c._state != (_c1._state) && stdgo._internal.html.template.Template__iscomment._isComment(_c1._state) : Bool) && (_c1._delim == (0 : stdgo._internal.html.template.Template_t_delim.T_delim)) : Bool)) {
                var _cs = (_i1 - (2 : stdgo.GoInt) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L801"
                if (((_c1._state == (5 : stdgo._internal.html.template.Template_t_state.T_state)) || (_c1._state == (17 : stdgo._internal.html.template.Template_t_state.T_state)) : Bool)) {
                    _cs = (_cs - ((2 : stdgo.GoInt)) : stdgo.GoInt);
                } else if (_c1._state == ((18 : stdgo._internal.html.template.Template_t_state.T_state))) {
                    _cs = (_cs - ((1 : stdgo.GoInt)) : stdgo.GoInt);
                };
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L808"
                _b.write((_s.__slice__(_written, _cs) : stdgo.Slice<stdgo.GoUInt8>));
                _written = _i1;
            };
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L811"
            if ((stdgo._internal.html.template.Template__isinscriptliteral._isInScriptLiteral(_c._state) && stdgo._internal.html.template.Template__containsspecialscripttag._containsSpecialScriptTag((_s.__slice__(_i, _i1) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L812"
                _b.write((_s.__slice__(_written, _i) : stdgo.Slice<stdgo.GoUInt8>));
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L813"
                _b.write(stdgo._internal.html.template.Template__escapespecialscripttags._escapeSpecialScriptTags((_s.__slice__(_i, _i1) : stdgo.Slice<stdgo.GoUInt8>)));
                _written = _i1;
            };
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L816"
            if (((_i == _i1) && (_c._state == _c1._state) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L817"
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("infinite loop from %v to %v on %q..%q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_c)), stdgo.Go.toInterface(stdgo.Go.asInterface(_c1)), stdgo.Go.toInterface((_s.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>))));
            };
            {
                final __tmp__0 = _c1?.__copy__();
                final __tmp__1 = _i1;
                _c = @:binopAssign __tmp__0;
                _i = @:binopAssign __tmp__1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L822"
        if (((_written != (0 : stdgo.GoInt)) && (_c._state != (27 : stdgo._internal.html.template.Template_t_state.T_state)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L823"
            if ((!stdgo._internal.html.template.Template__iscomment._isComment(_c._state) || (_c._delim != (0 : stdgo._internal.html.template.Template_t_delim.T_delim)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L824"
                _b.write(((@:checkr _n ?? throw "null pointer dereference").text.__slice__(_written) : stdgo.Slice<stdgo.GoUInt8>));
            };
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L826"
            _e._editTextNode(_n, _b.bytes());
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L828"
        return _c?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _escapeTemplateBody( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_t_context.T_context, _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>):{ var _0 : stdgo._internal.html.template.Template_t_context.T_context; var _1 : Bool; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        var _filter = function(_e1:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _c1:stdgo._internal.html.template.Template_t_context.T_context):Bool {
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L699"
            if (_c1._state == ((27 : stdgo._internal.html.template.Template_t_state.T_state))) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L701"
                return false;
            };
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L703"
            if (!((@:checkr _e1 ?? throw "null pointer dereference")._called[_t.name()] ?? false)) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L706"
                return true;
            };
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L709"
            return _c._eq(_c1?.__copy__());
        };
        (@:checkr _e ?? throw "null pointer dereference")._output[_t.name()] = _c?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L716"
        return _e._escapeListConditionally(_c?.__copy__(), (@:checkr (@:checkr _t ?? throw "null pointer dereference").tree ?? throw "null pointer dereference").root, _filter);
    }
    @:keep
    @:tdfield
    static public function _computeOutCtx( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_t_context.T_context, _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>):stdgo._internal.html.template.Template_t_context.T_context {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        var __tmp__ = _e._escapeTemplateBody(_c?.__copy__(), _t), _c1:stdgo._internal.html.template.Template_t_context.T_context = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L678"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L680"
            {
                var __tmp__ = _e._escapeTemplateBody(_c1?.__copy__(), _t), _c2:stdgo._internal.html.template.Template_t_context.T_context = __tmp__._0, _ok2:Bool = __tmp__._1;
                if (_ok2) {
                    {
                        final __tmp__0 = _c2?.__copy__();
                        final __tmp__1 = true;
                        _c1 = @:binopAssign __tmp__0;
                        _ok = @:binopAssign __tmp__1;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L685"
        if ((!_ok && (_c1._state != (27 : stdgo._internal.html.template.Template_t_state.T_state)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L686"
            return ({ _state : (27 : stdgo._internal.html.template.Template_t_state.T_state), _err : stdgo._internal.html.template.Template__errorf._errorf((6 : stdgo._internal.html.template.Template_errorcode.ErrorCode), stdgo.Go.asInterface((@:checkr (@:checkr _t ?? throw "null pointer dereference").tree ?? throw "null pointer dereference").root), (0 : stdgo.GoInt), ("cannot compute output context for template %s" : stdgo.GoString), stdgo.Go.toInterface(_t.name())) } : stdgo._internal.html.template.Template_t_context.T_context);
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L691"
        return _c1?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _escapeTree( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_t_context.T_context, _node:stdgo._internal.text.template.parse.Parse_node.Node, _name:stdgo.GoString, _line:stdgo.GoInt):{ var _0 : stdgo._internal.html.template.Template_t_context.T_context; var _1 : stdgo.GoString; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        var _dname = (_c._mangle(_name?.__copy__())?.__copy__() : stdgo.GoString);
        (@:checkr _e ?? throw "null pointer dereference")._called[_dname] = true;
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L640"
        {
            var __tmp__ = ((@:checkr _e ?? throw "null pointer dereference")._output != null && (@:checkr _e ?? throw "null pointer dereference")._output.__exists__(_dname?.__copy__()) ? { _0 : (@:checkr _e ?? throw "null pointer dereference")._output[_dname?.__copy__()], _1 : true } : { _0 : ({} : stdgo._internal.html.template.Template_t_context.T_context), _1 : false }), _out:stdgo._internal.html.template.Template_t_context.T_context = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L642"
                return { _0 : _out?.__copy__(), _1 : _dname?.__copy__() };
            };
        };
        var _t = _e._template(_name?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L645"
        if (({
            final value = _t;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L648"
            if (({
                final value = ((@:checkr (@:checkr _e ?? throw "null pointer dereference")._ns ?? throw "null pointer dereference")._set[_name] ?? (null : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>));
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L649"
                return { _0 : ({ _state : (27 : stdgo._internal.html.template.Template_t_state.T_state), _err : stdgo._internal.html.template.Template__errorf._errorf((5 : stdgo._internal.html.template.Template_errorcode.ErrorCode), _node, _line, ("%q is an incomplete or empty template" : stdgo.GoString), stdgo.Go.toInterface(_name)) } : stdgo._internal.html.template.Template_t_context.T_context), _1 : _dname?.__copy__() };
            };
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L654"
            return { _0 : ({ _state : (27 : stdgo._internal.html.template.Template_t_state.T_state), _err : stdgo._internal.html.template.Template__errorf._errorf((5 : stdgo._internal.html.template.Template_errorcode.ErrorCode), _node, _line, ("no such template %q" : stdgo.GoString), stdgo.Go.toInterface(_name)) } : stdgo._internal.html.template.Template_t_context.T_context), _1 : _dname?.__copy__() };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L659"
        if (_dname != (_name)) {
            var _dt = _e._template(_dname?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L663"
            if (({
                final value = _dt;
                (value == null || (value : Dynamic).__nil__);
            })) {
                _dt = stdgo._internal.text.template.Template_new_.new_(_dname?.__copy__());
                (@:checkr _dt ?? throw "null pointer dereference").tree = (stdgo.Go.setRef(({ name : _dname?.__copy__(), root : (@:checkr _t ?? throw "null pointer dereference").tree.root.copyList() } : stdgo._internal.text.template.parse.Parse_tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
                (@:checkr _e ?? throw "null pointer dereference")._derived[_dname] = _dt;
            };
            _t = _dt;
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L670"
        return { _0 : _e._computeOutCtx(_c?.__copy__(), _t)?.__copy__(), _1 : _dname?.__copy__() };
    }
    @:keep
    @:tdfield
    static public function _escapeTemplate( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_t_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>):stdgo._internal.html.template.Template_t_context.T_context {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        var __tmp__ = _e._escapeTree(_c?.__copy__(), stdgo.Go.asInterface(_n), (@:checkr _n ?? throw "null pointer dereference").name?.__copy__(), (@:checkr _n ?? throw "null pointer dereference").line), _c:stdgo._internal.html.template.Template_t_context.T_context = __tmp__._0, _name:stdgo.GoString = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L627"
        if (_name != ((@:checkr _n ?? throw "null pointer dereference").name)) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L628"
            _e._editTemplateNode(_n, _name?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L630"
        return _c?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _escapeListConditionally( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_t_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>, _filter:(stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, stdgo._internal.html.template.Template_t_context.T_context) -> Bool):{ var _0 : stdgo._internal.html.template.Template_t_context.T_context; var _1 : Bool; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        var _e1 = (stdgo._internal.html.template.Template__makeescaper._makeEscaper((@:checkr _e ?? throw "null pointer dereference")._ns)?.__copy__() : stdgo._internal.html.template.Template_t_escaper.T_escaper);
        _e1._rangeContext = (@:checkr _e ?? throw "null pointer dereference")._rangeContext;
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L595"
        for (_k => _v in (@:checkr _e ?? throw "null pointer dereference")._output) {
            _e1._output[_k] = _v?.__copy__();
        };
        _c = _e1._escapeList(_c?.__copy__(), _n)?.__copy__();
        var _ok = ((_filter != null) && _filter((stdgo.Go.setRef(_e1) : stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>), _c?.__copy__()) : Bool);
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L600"
        if (_ok) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L602"
            for (_k => _v in _e1._output) {
                (@:checkr _e ?? throw "null pointer dereference")._output[_k] = _v?.__copy__();
            };
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L605"
            for (_k => _v in _e1._derived) {
                (@:checkr _e ?? throw "null pointer dereference")._derived[_k] = _v;
            };
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L608"
            for (_k => _v in _e1._called) {
                (@:checkr _e ?? throw "null pointer dereference")._called[_k] = _v;
            };
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L611"
            for (_k => _v in _e1._actionNodeEdits) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L612"
                _e._editActionNode(_k, _v);
            };
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L614"
            for (_k => _v in _e1._templateNodeEdits) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L615"
                _e._editTemplateNode(_k, _v?.__copy__());
            };
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L617"
            for (_k => _v in _e1._textNodeEdits) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L618"
                _e._editTextNode(_k, _v);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L621"
        return { _0 : _c?.__copy__(), _1 : _ok };
    }
    @:keep
    @:tdfield
    static public function _escapeList( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_t_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>):stdgo._internal.html.template.Template_t_context.T_context {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L575"
        if (({
            final value = _n;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L576"
            return _c?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L578"
        for (__6 => _m in (@:checkr _n ?? throw "null pointer dereference").nodes) {
            _c = _e._escape(_c?.__copy__(), _m)?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L580"
            if (_c._state == ((28 : stdgo._internal.html.template.Template_t_state.T_state))) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L581"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L584"
        return _c?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _escapeBranch( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_t_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_branchnode.BranchNode>, _nodeName:stdgo.GoString):stdgo._internal.html.template.Template_t_context.T_context {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L512"
        if (_nodeName == (("range" : stdgo.GoString))) {
            (@:checkr _e ?? throw "null pointer dereference")._rangeContext = (stdgo.Go.setRef(({ _outer : (@:checkr _e ?? throw "null pointer dereference")._rangeContext } : stdgo._internal.html.template.Template_t_rangecontext.T_rangeContext)) : stdgo.Ref<stdgo._internal.html.template.Template_t_rangecontext.T_rangeContext>);
        };
        var _c0 = (_e._escapeList(_c?.__copy__(), (@:checkr _n ?? throw "null pointer dereference").list)?.__copy__() : stdgo._internal.html.template.Template_t_context.T_context);
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L516"
        if (_nodeName == (("range" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L517"
            if (_c0._state != ((27 : stdgo._internal.html.template.Template_t_state.T_state))) {
                _c0 = stdgo._internal.html.template.Template__joinrange._joinRange(_c0?.__copy__(), (@:checkr _e ?? throw "null pointer dereference")._rangeContext)?.__copy__();
            };
            (@:checkr _e ?? throw "null pointer dereference")._rangeContext = (@:checkr (@:checkr _e ?? throw "null pointer dereference")._rangeContext ?? throw "null pointer dereference")._outer;
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L521"
            if (_c0._state == ((27 : stdgo._internal.html.template.Template_t_state.T_state))) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L522"
                return _c0?.__copy__();
            };
            (@:checkr _e ?? throw "null pointer dereference")._rangeContext = (stdgo.Go.setRef(({ _outer : (@:checkr _e ?? throw "null pointer dereference")._rangeContext } : stdgo._internal.html.template.Template_t_rangecontext.T_rangeContext)) : stdgo.Ref<stdgo._internal.html.template.Template_t_rangecontext.T_rangeContext>);
            var __tmp__ = _e._escapeListConditionally(_c0?.__copy__(), (@:checkr _n ?? throw "null pointer dereference").list, null), _c1:stdgo._internal.html.template.Template_t_context.T_context = __tmp__._0, __6:Bool = __tmp__._1;
            _c0 = stdgo._internal.html.template.Template__join._join(_c0?.__copy__(), _c1?.__copy__(), stdgo.Go.asInterface(_n), _nodeName?.__copy__())?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L531"
            if (_c0._state == ((27 : stdgo._internal.html.template.Template_t_state.T_state))) {
                (@:checkr _e ?? throw "null pointer dereference")._rangeContext = (@:checkr (@:checkr _e ?? throw "null pointer dereference")._rangeContext ?? throw "null pointer dereference")._outer;
                (@:checkr _c0._err ?? throw "null pointer dereference").line = (@:checkr _n ?? throw "null pointer dereference").line;
                (@:checkr _c0._err ?? throw "null pointer dereference").description = (("on range loop re-entry: " : stdgo.GoString) + (@:checkr _c0._err ?? throw "null pointer dereference").description?.__copy__() : stdgo.GoString)?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L538"
                return _c0?.__copy__();
            };
            _c0 = stdgo._internal.html.template.Template__joinrange._joinRange(_c0?.__copy__(), (@:checkr _e ?? throw "null pointer dereference")._rangeContext)?.__copy__();
            (@:checkr _e ?? throw "null pointer dereference")._rangeContext = (@:checkr (@:checkr _e ?? throw "null pointer dereference")._rangeContext ?? throw "null pointer dereference")._outer;
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L542"
            if (_c0._state == ((27 : stdgo._internal.html.template.Template_t_state.T_state))) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L543"
                return _c0?.__copy__();
            };
        };
        var _c1 = (_e._escapeList(_c?.__copy__(), (@:checkr _n ?? throw "null pointer dereference").elseList)?.__copy__() : stdgo._internal.html.template.Template_t_context.T_context);
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L547"
        return stdgo._internal.html.template.Template__join._join(_c0?.__copy__(), _c1?.__copy__(), stdgo.Go.asInterface(_n), _nodeName?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _escapeAction( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_t_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>):stdgo._internal.html.template.Template_t_context.T_context {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L169"
        if (((@:checkr (@:checkr _n ?? throw "null pointer dereference").pipe ?? throw "null pointer dereference").decl.length) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L171"
            return _c?.__copy__();
        };
        _c = stdgo._internal.html.template.Template__nudge._nudge(_c?.__copy__())?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L175"
        for (_pos => _idNode in (@:checkr (@:checkr _n ?? throw "null pointer dereference").pipe ?? throw "null pointer dereference").cmds) {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _idNode ?? throw "null pointer dereference").args[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>), _1 : false };
            }, _node = __tmp__._0, _ok = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L177"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L185"
                continue;
            };
            var _ident = ((@:checkr _node ?? throw "null pointer dereference").ident?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L188"
            {
                var __tmp__ = (stdgo._internal.html.template.Template__predefinedescapers._predefinedEscapers != null && stdgo._internal.html.template.Template__predefinedescapers._predefinedEscapers.__exists__(_ident?.__copy__()) ? { _0 : stdgo._internal.html.template.Template__predefinedescapers._predefinedEscapers[_ident?.__copy__()], _1 : true } : { _0 : false, _1 : false }), __6:Bool = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L189"
                    if (((_pos < (((@:checkr (@:checkr _n ?? throw "null pointer dereference").pipe ?? throw "null pointer dereference").cmds.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool) || ((_c._state == ((7 : stdgo._internal.html.template.Template_t_state.T_state)) && _c._delim == ((3 : stdgo._internal.html.template.Template_t_delim.T_delim)) : Bool) && _ident == (("html" : stdgo.GoString)) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L191"
                        return ({ _state : (27 : stdgo._internal.html.template.Template_t_state.T_state), _err : stdgo._internal.html.template.Template__errorf._errorf((11 : stdgo._internal.html.template.Template_errorcode.ErrorCode), stdgo.Go.asInterface(_n), (@:checkr _n ?? throw "null pointer dereference").line, ("predefined escaper %q disallowed in template" : stdgo.GoString), stdgo.Go.toInterface(_ident)) } : stdgo._internal.html.template.Template_t_context.T_context);
                    };
                };
            };
        };
        var _s = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (3 : stdgo.GoInt)).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L199"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _c._state;
                    if (__value__ == ((27 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L201"
                        return _c?.__copy__();
                        break;
                    } else if (__value__ == ((8 : stdgo._internal.html.template.Template_t_state.T_state)) || __value__ == ((20 : stdgo._internal.html.template.Template_t_state.T_state)) || __value__ == ((21 : stdgo._internal.html.template.Template_t_state.T_state)) || __value__ == ((22 : stdgo._internal.html.template.Template_t_state.T_state)) || __value__ == ((23 : stdgo._internal.html.template.Template_t_state.T_state)) || __value__ == ((24 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L203"
                        {
                            var __switchIndex__ = -1;
                            var __run__ = true;
                            while (__run__) {
                                __run__ = false;
                                {
                                    final __value__ = _c._urlPart;
                                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (0 : stdgo._internal.html.template.Template_t_urlpart.T_urlPart)))) {
                                        _s = (_s.__append__(("_html_template_urlfilter" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
                                        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L206"
                                        @:fallthrough {
                                            __switchIndex__ = 1;
                                            __run__ = true;
                                            continue;
                                        };
                                        break;
                                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (1 : stdgo._internal.html.template.Template_t_urlpart.T_urlPart)))) {
                                        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L208"
                                        {
                                            final __value__ = _c._state;
                                            if (__value__ == ((20 : stdgo._internal.html.template.Template_t_state.T_state)) || __value__ == ((21 : stdgo._internal.html.template.Template_t_state.T_state))) {
                                                _s = (_s.__append__(("_html_template_cssescaper" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
                                            } else {
                                                _s = (_s.__append__(("_html_template_urlnormalizer" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
                                            };
                                        };
                                        break;
                                        break;
                                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo._internal.html.template.Template_t_urlpart.T_urlPart)))) {
                                        _s = (_s.__append__(("_html_template_urlescaper" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
                                        break;
                                        break;
                                    } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == (3 : stdgo._internal.html.template.Template_t_urlpart.T_urlPart)))) {
                                        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L217"
                                        return ({ _state : (27 : stdgo._internal.html.template.Template_t_state.T_state), _err : stdgo._internal.html.template.Template__errorf._errorf((1 : stdgo._internal.html.template.Template_errorcode.ErrorCode), stdgo.Go.asInterface(_n), (@:checkr _n ?? throw "null pointer dereference").line, ("%s appears in an ambiguous context within a URL" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_n))) } : stdgo._internal.html.template.Template_t_context.T_context);
                                        break;
                                        break;
                                    } else {
                                        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L222"
                                        throw stdgo.Go.toInterface((_c._urlPart.string() : stdgo.GoString));
                                        break;
                                    };
                                };
                                break;
                            };
                        };
                        break;
                    } else if (__value__ == ((10 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        _s = (_s.__append__(("_html_template_jsvalescaper" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
                        _c._jsCtx = (1 : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx);
                        break;
                    } else if (__value__ == ((11 : stdgo._internal.html.template.Template_t_state.T_state)) || __value__ == ((12 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        _s = (_s.__append__(("_html_template_jsstrescaper" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
                        break;
                    } else if (__value__ == ((13 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L231"
                        if (stdgo._internal.html.template.Template__debugallowactionjstmpl._debugAllowActionJSTmpl.value() == (("1" : stdgo.GoString))) {
                            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L232"
                            stdgo._internal.html.template.Template__debugallowactionjstmpl._debugAllowActionJSTmpl.incNonDefault();
                            _s = (_s.__append__(("_html_template_jsstrescaper" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L235"
                            return ({ _state : (27 : stdgo._internal.html.template.Template_t_state.T_state), _err : stdgo._internal.html.template.Template__errorf._errorf((12 : stdgo._internal.html.template.Template_errorcode.ErrorCode), stdgo.Go.asInterface(_n), (@:checkr _n ?? throw "null pointer dereference").line, ("%s appears in a JS template literal" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_n))) } : stdgo._internal.html.template.Template_t_context.T_context);
                        };
                        break;
                    } else if (__value__ == ((14 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        _s = (_s.__append__(("_html_template_jsregexpescaper" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
                        break;
                    } else if (__value__ == ((19 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        _s = (_s.__append__(("_html_template_cssvaluefilter" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
                        break;
                    } else if (__value__ == ((0 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        _s = (_s.__append__(("_html_template_htmlescaper" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
                        break;
                    } else if (__value__ == ((6 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        _s = (_s.__append__(("_html_template_rcdataescaper" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
                        break;
                    } else if (__value__ == ((7 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        break;
                    } else if (__value__ == ((2 : stdgo._internal.html.template.Template_t_state.T_state)) || __value__ == ((1 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        _c._state = (2 : stdgo._internal.html.template.Template_t_state.T_state);
                        _s = (_s.__append__(("_html_template_htmlnamefilter" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
                        break;
                    } else if (__value__ == ((9 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        _s = (_s.__append__(("_html_template_srcsetescaper" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
                        break;
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L256"
                        if (stdgo._internal.html.template.Template__iscomment._isComment(_c._state)) {
                            _s = (_s.__append__(("_html_template_commentescaper" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L259"
                            throw stdgo.Go.toInterface((("unexpected state " : stdgo.GoString) + (_c._state.string() : stdgo.GoString)?.__copy__() : stdgo.GoString));
                        };
                    };
                };
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L262"
        {
            final __value__ = _c._delim;
            if (__value__ == ((0 : stdgo._internal.html.template.Template_t_delim.T_delim))) {} else if (__value__ == ((3 : stdgo._internal.html.template.Template_t_delim.T_delim))) {
                _s = (_s.__append__(("_html_template_nospaceescaper" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
            } else {
                _s = (_s.__append__(("_html_template_attrescaper" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L270"
        _e._editActionNode(_n, _s);
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L271"
        return _c?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _escape( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_t_context.T_context, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.html.template.Template_t_context.T_context {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L136"
        {
            final __type__ = _n;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L138"
                return _e._escapeAction(_c?.__copy__(), _n)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>) : __type__.__underlying__().value);
                _c._n = stdgo.Go.asInterface(_n);
                (@:checkr (@:checkr _e ?? throw "null pointer dereference")._rangeContext ?? throw "null pointer dereference")._breaks = ((@:checkr (@:checkr _e ?? throw "null pointer dereference")._rangeContext ?? throw "null pointer dereference")._breaks.__append__(_c?.__copy__()) : stdgo.Slice<stdgo._internal.html.template.Template_t_context.T_context>);
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L142"
                return ({ _state : (28 : stdgo._internal.html.template.Template_t_state.T_state) } : stdgo._internal.html.template.Template_t_context.T_context);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L144"
                return _c?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>) : __type__.__underlying__().value);
                _c._n = stdgo.Go.asInterface(_n);
                (@:checkr (@:checkr _e ?? throw "null pointer dereference")._rangeContext ?? throw "null pointer dereference")._continues = ((@:checkr (@:checkr _e ?? throw "null pointer dereference")._rangeContext ?? throw "null pointer dereference")._breaks.__append__(_c?.__copy__()) : stdgo.Slice<stdgo._internal.html.template.Template_t_context.T_context>);
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L148"
                return ({ _state : (28 : stdgo._internal.html.template.Template_t_state.T_state) } : stdgo._internal.html.template.Template_t_context.T_context);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L150"
                return _e._escapeBranch(_c?.__copy__(), (stdgo.Go.setRef((@:checkr _n ?? throw "null pointer dereference").branchNode) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_branchnode.BranchNode>), ("if" : stdgo.GoString))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L152"
                return _e._escapeList(_c?.__copy__(), _n)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L154"
                return _e._escapeBranch(_c?.__copy__(), (stdgo.Go.setRef((@:checkr _n ?? throw "null pointer dereference").branchNode) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_branchnode.BranchNode>), ("range" : stdgo.GoString))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L156"
                return _e._escapeTemplate(_c?.__copy__(), _n)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L158"
                return _e._escapeText(_c?.__copy__(), _n)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L160"
                return _e._escapeBranch(_c?.__copy__(), (stdgo.Go.setRef((@:checkr _n ?? throw "null pointer dereference").branchNode) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_branchnode.BranchNode>), ("with" : stdgo.GoString))?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L162"
        throw stdgo.Go.toInterface(((("escaping " : stdgo.GoString) + (_n.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (" is unimplemented" : stdgo.GoString)?.__copy__() : stdgo.GoString));
    }
}

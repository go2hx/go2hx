package stdgo._internal.html.template;
@:keep @:allow(stdgo._internal.html.template.Template.T_escaper_asInterface) class T_escaper_static_extension {
    @:keep
    @:tdfield
    static public function _arbitraryTemplate( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>):stdgo.Ref<stdgo._internal.html.template.Template_template.Template> {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        for (__6 => _t in (@:checkr (@:checkr _e ?? throw "null pointer dereference")._ns ?? throw "null pointer dereference")._set) {
            return _t;
        };
        throw stdgo.Go.toInterface(("no templates in name space" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _template( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.Template_template.Template> {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        var _t = @:check2r @:check2r _e._arbitraryTemplate()._text.lookup(_name?.__copy__());
        if ((_t == null || (_t : Dynamic).__nil__)) {
            _t = ((@:checkr _e ?? throw "null pointer dereference")._derived[_name] ?? (null : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>));
        };
        return _t;
    }
    @:keep
    @:tdfield
    static public function _commit( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        for (_name => _ in (@:checkr _e ?? throw "null pointer dereference")._output) {
            @:check2r @:check2r _e._template(_name?.__copy__()).funcs(stdgo._internal.html.template.Template__funcmap._funcMap);
        };
        var _tmpl = @:check2r _e._arbitraryTemplate();
        for (__6 => _t in (@:checkr _e ?? throw "null pointer dereference")._derived) {
            {
                var __tmp__ = @:check2r (@:checkr _tmpl ?? throw "null pointer dereference")._text.addParseTree(@:check2r _t.name()?.__copy__(), (@:checkr _t ?? throw "null pointer dereference").tree), __39:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    throw stdgo.Go.toInterface(("error adding derived template" : stdgo.GoString));
                };
            };
        };
        for (_n => _s in (@:checkr _e ?? throw "null pointer dereference")._actionNodeEdits) {
            stdgo._internal.html.template.Template__ensurepipelinecontains._ensurePipelineContains((@:checkr _n ?? throw "null pointer dereference").pipe, _s);
        };
        for (_n => _name in (@:checkr _e ?? throw "null pointer dereference")._templateNodeEdits) {
            (@:checkr _n ?? throw "null pointer dereference").name = _name?.__copy__();
        };
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
        {
            var __tmp__ = ((@:checkr _e ?? throw "null pointer dereference")._textNodeEdits != null && (@:checkr _e ?? throw "null pointer dereference")._textNodeEdits.__exists__(_n) ? { _0 : (@:checkr _e ?? throw "null pointer dereference")._textNodeEdits[_n], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : false }), __6:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("node %s shared between templates" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_n))));
            };
        };
        (@:checkr _e ?? throw "null pointer dereference")._textNodeEdits[_n] = _text;
    }
    @:keep
    @:tdfield
    static public function _editTemplateNode( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>, _callee:stdgo.GoString):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        {
            var __tmp__ = ((@:checkr _e ?? throw "null pointer dereference")._templateNodeEdits != null && (@:checkr _e ?? throw "null pointer dereference")._templateNodeEdits.__exists__(_n) ? { _0 : (@:checkr _e ?? throw "null pointer dereference")._templateNodeEdits[_n], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), __6:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("node %s shared between templates" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_n))));
            };
        };
        (@:checkr _e ?? throw "null pointer dereference")._templateNodeEdits[_n] = _callee?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _editActionNode( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>, _cmds:stdgo.Slice<stdgo.GoString>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        {
            var __tmp__ = ((@:checkr _e ?? throw "null pointer dereference")._actionNodeEdits != null && (@:checkr _e ?? throw "null pointer dereference")._actionNodeEdits.__exists__(_n) ? { _0 : (@:checkr _e ?? throw "null pointer dereference")._actionNodeEdits[_n], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __6:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
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
        while (_i != ((_s.length))) {
            var __tmp__ = stdgo._internal.html.template.Template__contextaftertext._contextAfterText(_c?.__copy__(), (_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)), _c1:stdgo._internal.html.template.Template_t_context.T_context = __tmp__._0, _nread:stdgo.GoInt = __tmp__._1;
            var _i1 = (_i + _nread : stdgo.GoInt);
            if (((_c._state == (0 : stdgo._internal.html.template.Template_t_state.T_state)) || (_c._state == (6 : stdgo._internal.html.template.Template_t_state.T_state)) : Bool)) {
                var _end = (_i1 : stdgo.GoInt);
                if (_c1._state != (_c._state)) {
                    {
                        var _j = (_end - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j >= _i : Bool)) {
                            if (_s[(_j : stdgo.GoInt)] == ((60 : stdgo.GoUInt8))) {
                                _end = _j;
                                break;
                            };
                            _j--;
                        };
                    };
                };
                {
                    var _j = (_i : stdgo.GoInt);
                    while ((_j < _end : Bool)) {
                        if (((_s[(_j : stdgo.GoInt)] == (60 : stdgo.GoUInt8)) && !stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(stdgo._internal.bytes.Bytes_toupper.toUpper((_s.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>)), stdgo._internal.html.template.Template__doctypebytes._doctypeBytes) : Bool)) {
                            @:check2r _b.write((_s.__slice__(_written, _j) : stdgo.Slice<stdgo.GoUInt8>));
                            @:check2r _b.writeString(("&lt;" : stdgo.GoString));
                            _written = (_j + (1 : stdgo.GoInt) : stdgo.GoInt);
                        };
                        _j++;
                    };
                };
            } else if ((stdgo._internal.html.template.Template__iscomment._isComment(_c._state) && (_c._delim == (0 : stdgo._internal.html.template.Template_t_delim.T_delim)) : Bool)) {
                {
                    final __value__ = _c._state;
                    if (__value__ == ((15 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        if (stdgo._internal.bytes.Bytes_containsany.containsAny((_s.__slice__(_written, _i1) : stdgo.Slice<stdgo.GoUInt8>), ("\n\r\u2028\u2029" : stdgo.GoString))) {
                            @:check2r _b.writeByte((10 : stdgo.GoUInt8));
                        } else {
                            @:check2r _b.writeByte((32 : stdgo.GoUInt8));
                        };
                    } else if (__value__ == ((25 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        @:check2r _b.writeByte((32 : stdgo.GoUInt8));
                    };
                };
                _written = _i1;
            };
            if (((_c._state != (_c1._state) && stdgo._internal.html.template.Template__iscomment._isComment(_c1._state) : Bool) && (_c1._delim == (0 : stdgo._internal.html.template.Template_t_delim.T_delim)) : Bool)) {
                var _cs = (_i1 - (2 : stdgo.GoInt) : stdgo.GoInt);
                if (((_c1._state == (5 : stdgo._internal.html.template.Template_t_state.T_state)) || (_c1._state == (17 : stdgo._internal.html.template.Template_t_state.T_state)) : Bool)) {
                    _cs = (_cs - ((2 : stdgo.GoInt)) : stdgo.GoInt);
                } else if (_c1._state == ((18 : stdgo._internal.html.template.Template_t_state.T_state))) {
                    _cs = (_cs - ((1 : stdgo.GoInt)) : stdgo.GoInt);
                };
                @:check2r _b.write((_s.__slice__(_written, _cs) : stdgo.Slice<stdgo.GoUInt8>));
                _written = _i1;
            };
            if ((stdgo._internal.html.template.Template__isinscriptliteral._isInScriptLiteral(_c._state) && stdgo._internal.html.template.Template__containsspecialscripttag._containsSpecialScriptTag((_s.__slice__(_i, _i1) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
                @:check2r _b.write((_s.__slice__(_written, _i) : stdgo.Slice<stdgo.GoUInt8>));
                @:check2r _b.write(stdgo._internal.html.template.Template__escapespecialscripttags._escapeSpecialScriptTags((_s.__slice__(_i, _i1) : stdgo.Slice<stdgo.GoUInt8>)));
                _written = _i1;
            };
            if (((_i == _i1) && (_c._state == _c1._state) : Bool)) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("infinite loop from %v to %v on %q..%q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_c)), stdgo.Go.toInterface(stdgo.Go.asInterface(_c1)), stdgo.Go.toInterface((_s.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>))));
            };
            {
                final __tmp__0 = _c1?.__copy__();
                final __tmp__1 = _i1;
                _c = __tmp__0;
                _i = __tmp__1;
            };
        };
        if (((_written != (0 : stdgo.GoInt)) && (_c._state != (27 : stdgo._internal.html.template.Template_t_state.T_state)) : Bool)) {
            if ((!stdgo._internal.html.template.Template__iscomment._isComment(_c._state) || (_c._delim != (0 : stdgo._internal.html.template.Template_t_delim.T_delim)) : Bool)) {
                @:check2r _b.write(((@:checkr _n ?? throw "null pointer dereference").text.__slice__(_written) : stdgo.Slice<stdgo.GoUInt8>));
            };
            @:check2r _e._editTextNode(_n, @:check2r _b.bytes());
        };
        return _c?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _escapeTemplateBody( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_t_context.T_context, _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>):{ var _0 : stdgo._internal.html.template.Template_t_context.T_context; var _1 : Bool; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        var _filter = function(_e1:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _c1:stdgo._internal.html.template.Template_t_context.T_context):Bool {
            if (_c1._state == ((27 : stdgo._internal.html.template.Template_t_state.T_state))) {
                return false;
            };
            if (!((@:checkr _e1 ?? throw "null pointer dereference")._called[@:check2r _t.name()] ?? false)) {
                return true;
            };
            return _c._eq(_c1?.__copy__());
        };
        (@:checkr _e ?? throw "null pointer dereference")._output[@:check2r _t.name()] = _c?.__copy__();
        return @:check2r _e._escapeListConditionally(_c?.__copy__(), (@:checkr (@:checkr _t ?? throw "null pointer dereference").tree ?? throw "null pointer dereference").root, _filter);
    }
    @:keep
    @:tdfield
    static public function _computeOutCtx( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_t_context.T_context, _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>):stdgo._internal.html.template.Template_t_context.T_context {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        var __tmp__ = @:check2r _e._escapeTemplateBody(_c?.__copy__(), _t), _c1:stdgo._internal.html.template.Template_t_context.T_context = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            {
                var __tmp__ = @:check2r _e._escapeTemplateBody(_c1?.__copy__(), _t), _c2:stdgo._internal.html.template.Template_t_context.T_context = __tmp__._0, _ok2:Bool = __tmp__._1;
                if (_ok2) {
                    {
                        final __tmp__0 = _c2?.__copy__();
                        final __tmp__1 = true;
                        _c1 = __tmp__0;
                        _ok = __tmp__1;
                    };
                };
            };
        };
        if ((!_ok && (_c1._state != (27 : stdgo._internal.html.template.Template_t_state.T_state)) : Bool)) {
            return ({ _state : (27 : stdgo._internal.html.template.Template_t_state.T_state), _err : stdgo._internal.html.template.Template__errorf._errorf((6 : stdgo._internal.html.template.Template_errorcode.ErrorCode), stdgo.Go.asInterface((@:checkr (@:checkr _t ?? throw "null pointer dereference").tree ?? throw "null pointer dereference").root), (0 : stdgo.GoInt), ("cannot compute output context for template %s" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _t.name())) } : stdgo._internal.html.template.Template_t_context.T_context);
        };
        return _c1?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _escapeTree( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_t_context.T_context, _node:stdgo._internal.text.template.parse.Parse_node.Node, _name:stdgo.GoString, _line:stdgo.GoInt):{ var _0 : stdgo._internal.html.template.Template_t_context.T_context; var _1 : stdgo.GoString; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        var _dname = (_c._mangle(_name?.__copy__())?.__copy__() : stdgo.GoString);
        (@:checkr _e ?? throw "null pointer dereference")._called[_dname] = true;
        {
            var __tmp__ = ((@:checkr _e ?? throw "null pointer dereference")._output != null && (@:checkr _e ?? throw "null pointer dereference")._output.__exists__(_dname?.__copy__()) ? { _0 : (@:checkr _e ?? throw "null pointer dereference")._output[_dname?.__copy__()], _1 : true } : { _0 : ({} : stdgo._internal.html.template.Template_t_context.T_context), _1 : false }), _out:stdgo._internal.html.template.Template_t_context.T_context = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return { _0 : _out?.__copy__(), _1 : _dname?.__copy__() };
            };
        };
        var _t = @:check2r _e._template(_name?.__copy__());
        if ((_t == null || (_t : Dynamic).__nil__)) {
            if ((((@:checkr (@:checkr _e ?? throw "null pointer dereference")._ns ?? throw "null pointer dereference")._set[_name] ?? (null : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>)) != null && (((@:checkr (@:checkr _e ?? throw "null pointer dereference")._ns ?? throw "null pointer dereference")._set[_name] ?? (null : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>) : Dynamic).__nil__ == null || !((@:checkr (@:checkr _e ?? throw "null pointer dereference")._ns ?? throw "null pointer dereference")._set[_name] ?? (null : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>) : Dynamic).__nil__))) {
                return { _0 : ({ _state : (27 : stdgo._internal.html.template.Template_t_state.T_state), _err : stdgo._internal.html.template.Template__errorf._errorf((5 : stdgo._internal.html.template.Template_errorcode.ErrorCode), _node, _line, ("%q is an incomplete or empty template" : stdgo.GoString), stdgo.Go.toInterface(_name)) } : stdgo._internal.html.template.Template_t_context.T_context), _1 : _dname?.__copy__() };
            };
            return { _0 : ({ _state : (27 : stdgo._internal.html.template.Template_t_state.T_state), _err : stdgo._internal.html.template.Template__errorf._errorf((5 : stdgo._internal.html.template.Template_errorcode.ErrorCode), _node, _line, ("no such template %q" : stdgo.GoString), stdgo.Go.toInterface(_name)) } : stdgo._internal.html.template.Template_t_context.T_context), _1 : _dname?.__copy__() };
        };
        if (_dname != (_name)) {
            var _dt = @:check2r _e._template(_dname?.__copy__());
            if ((_dt == null || (_dt : Dynamic).__nil__)) {
                _dt = stdgo._internal.text.template.Template_new_.new_(_dname?.__copy__());
                (@:checkr _dt ?? throw "null pointer dereference").tree = (stdgo.Go.setRef(({ name : _dname?.__copy__(), root : @:check2r (@:checkr _t ?? throw "null pointer dereference").tree.root.copyList() } : stdgo._internal.text.template.parse.Parse_tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
                (@:checkr _e ?? throw "null pointer dereference")._derived[_dname] = _dt;
            };
            _t = _dt;
        };
        return { _0 : @:check2r _e._computeOutCtx(_c?.__copy__(), _t)?.__copy__(), _1 : _dname?.__copy__() };
    }
    @:keep
    @:tdfield
    static public function _escapeTemplate( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_t_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>):stdgo._internal.html.template.Template_t_context.T_context {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        var __tmp__ = @:check2r _e._escapeTree(_c?.__copy__(), stdgo.Go.asInterface(_n), (@:checkr _n ?? throw "null pointer dereference").name?.__copy__(), (@:checkr _n ?? throw "null pointer dereference").line), _c:stdgo._internal.html.template.Template_t_context.T_context = __tmp__._0, _name:stdgo.GoString = __tmp__._1;
        if (_name != ((@:checkr _n ?? throw "null pointer dereference").name)) {
            @:check2r _e._editTemplateNode(_n, _name?.__copy__());
        };
        return _c?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _escapeListConditionally( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_t_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>, _filter:(stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, stdgo._internal.html.template.Template_t_context.T_context) -> Bool):{ var _0 : stdgo._internal.html.template.Template_t_context.T_context; var _1 : Bool; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        var _e1 = (stdgo._internal.html.template.Template__makeescaper._makeEscaper((@:checkr _e ?? throw "null pointer dereference")._ns)?.__copy__() : stdgo._internal.html.template.Template_t_escaper.T_escaper);
        _e1._rangeContext = (@:checkr _e ?? throw "null pointer dereference")._rangeContext;
        for (_k => _v in (@:checkr _e ?? throw "null pointer dereference")._output) {
            _e1._output[_k] = _v?.__copy__();
        };
        _c = @:check2 _e1._escapeList(_c?.__copy__(), _n)?.__copy__();
        var _ok = ((_filter != null) && _filter((stdgo.Go.setRef(_e1) : stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>), _c?.__copy__()) : Bool);
        if (_ok) {
            for (_k => _v in _e1._output) {
                (@:checkr _e ?? throw "null pointer dereference")._output[_k] = _v?.__copy__();
            };
            for (_k => _v in _e1._derived) {
                (@:checkr _e ?? throw "null pointer dereference")._derived[_k] = _v;
            };
            for (_k => _v in _e1._called) {
                (@:checkr _e ?? throw "null pointer dereference")._called[_k] = _v;
            };
            for (_k => _v in _e1._actionNodeEdits) {
                @:check2r _e._editActionNode(_k, _v);
            };
            for (_k => _v in _e1._templateNodeEdits) {
                @:check2r _e._editTemplateNode(_k, _v?.__copy__());
            };
            for (_k => _v in _e1._textNodeEdits) {
                @:check2r _e._editTextNode(_k, _v);
            };
        };
        return { _0 : _c?.__copy__(), _1 : _ok };
    }
    @:keep
    @:tdfield
    static public function _escapeList( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_t_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>):stdgo._internal.html.template.Template_t_context.T_context {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        if ((_n == null || (_n : Dynamic).__nil__)) {
            return _c?.__copy__();
        };
        for (__6 => _m in (@:checkr _n ?? throw "null pointer dereference").nodes) {
            _c = @:check2r _e._escape(_c?.__copy__(), _m)?.__copy__();
            if (_c._state == ((28 : stdgo._internal.html.template.Template_t_state.T_state))) {
                break;
            };
        };
        return _c?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _escapeBranch( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_t_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_branchnode.BranchNode>, _nodeName:stdgo.GoString):stdgo._internal.html.template.Template_t_context.T_context {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        if (_nodeName == (("range" : stdgo.GoString))) {
            (@:checkr _e ?? throw "null pointer dereference")._rangeContext = (stdgo.Go.setRef(({ _outer : (@:checkr _e ?? throw "null pointer dereference")._rangeContext } : stdgo._internal.html.template.Template_t_rangecontext.T_rangeContext)) : stdgo.Ref<stdgo._internal.html.template.Template_t_rangecontext.T_rangeContext>);
        };
        var _c0 = (@:check2r _e._escapeList(_c?.__copy__(), (@:checkr _n ?? throw "null pointer dereference").list)?.__copy__() : stdgo._internal.html.template.Template_t_context.T_context);
        if (_nodeName == (("range" : stdgo.GoString))) {
            if (_c0._state != ((27 : stdgo._internal.html.template.Template_t_state.T_state))) {
                _c0 = stdgo._internal.html.template.Template__joinrange._joinRange(_c0?.__copy__(), (@:checkr _e ?? throw "null pointer dereference")._rangeContext)?.__copy__();
            };
            (@:checkr _e ?? throw "null pointer dereference")._rangeContext = (@:checkr (@:checkr _e ?? throw "null pointer dereference")._rangeContext ?? throw "null pointer dereference")._outer;
            if (_c0._state == ((27 : stdgo._internal.html.template.Template_t_state.T_state))) {
                return _c0?.__copy__();
            };
            (@:checkr _e ?? throw "null pointer dereference")._rangeContext = (stdgo.Go.setRef(({ _outer : (@:checkr _e ?? throw "null pointer dereference")._rangeContext } : stdgo._internal.html.template.Template_t_rangecontext.T_rangeContext)) : stdgo.Ref<stdgo._internal.html.template.Template_t_rangecontext.T_rangeContext>);
            var __tmp__ = @:check2r _e._escapeListConditionally(_c0?.__copy__(), (@:checkr _n ?? throw "null pointer dereference").list, null), _c1:stdgo._internal.html.template.Template_t_context.T_context = __tmp__._0, __6:Bool = __tmp__._1;
            _c0 = stdgo._internal.html.template.Template__join._join(_c0?.__copy__(), _c1?.__copy__(), stdgo.Go.asInterface(_n), _nodeName?.__copy__())?.__copy__();
            if (_c0._state == ((27 : stdgo._internal.html.template.Template_t_state.T_state))) {
                (@:checkr _e ?? throw "null pointer dereference")._rangeContext = (@:checkr (@:checkr _e ?? throw "null pointer dereference")._rangeContext ?? throw "null pointer dereference")._outer;
                (@:checkr _c0._err ?? throw "null pointer dereference").line = (@:checkr _n ?? throw "null pointer dereference").line;
                (@:checkr _c0._err ?? throw "null pointer dereference").description = (("on range loop re-entry: " : stdgo.GoString) + (@:checkr _c0._err ?? throw "null pointer dereference").description?.__copy__() : stdgo.GoString)?.__copy__();
                return _c0?.__copy__();
            };
            _c0 = stdgo._internal.html.template.Template__joinrange._joinRange(_c0?.__copy__(), (@:checkr _e ?? throw "null pointer dereference")._rangeContext)?.__copy__();
            (@:checkr _e ?? throw "null pointer dereference")._rangeContext = (@:checkr (@:checkr _e ?? throw "null pointer dereference")._rangeContext ?? throw "null pointer dereference")._outer;
            if (_c0._state == ((27 : stdgo._internal.html.template.Template_t_state.T_state))) {
                return _c0?.__copy__();
            };
        };
        var _c1 = (@:check2r _e._escapeList(_c?.__copy__(), (@:checkr _n ?? throw "null pointer dereference").elseList)?.__copy__() : stdgo._internal.html.template.Template_t_context.T_context);
        return stdgo._internal.html.template.Template__join._join(_c0?.__copy__(), _c1?.__copy__(), stdgo.Go.asInterface(_n), _nodeName?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _escapeAction( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_t_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>):stdgo._internal.html.template.Template_t_context.T_context {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        if (((@:checkr (@:checkr _n ?? throw "null pointer dereference").pipe ?? throw "null pointer dereference").decl.length) != ((0 : stdgo.GoInt))) {
            return _c?.__copy__();
        };
        _c = stdgo._internal.html.template.Template__nudge._nudge(_c?.__copy__())?.__copy__();
        for (_pos => _idNode in (@:checkr (@:checkr _n ?? throw "null pointer dereference").pipe ?? throw "null pointer dereference").cmds) {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _idNode ?? throw "null pointer dereference").args[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>), _1 : false };
            }, _node = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                continue;
            };
            var _ident = ((@:checkr _node ?? throw "null pointer dereference").ident?.__copy__() : stdgo.GoString);
            {
                var __tmp__ = (stdgo._internal.html.template.Template__predefinedescapers._predefinedEscapers != null && stdgo._internal.html.template.Template__predefinedescapers._predefinedEscapers.__exists__(_ident?.__copy__()) ? { _0 : stdgo._internal.html.template.Template__predefinedescapers._predefinedEscapers[_ident?.__copy__()], _1 : true } : { _0 : false, _1 : false }), __6:Bool = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    if (((_pos < (((@:checkr (@:checkr _n ?? throw "null pointer dereference").pipe ?? throw "null pointer dereference").cmds.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool) || ((_c._state == ((7 : stdgo._internal.html.template.Template_t_state.T_state)) && _c._delim == ((3 : stdgo._internal.html.template.Template_t_delim.T_delim)) : Bool) && _ident == (("html" : stdgo.GoString)) : Bool) : Bool)) {
                        return ({ _state : (27 : stdgo._internal.html.template.Template_t_state.T_state), _err : stdgo._internal.html.template.Template__errorf._errorf((11 : stdgo._internal.html.template.Template_errorcode.ErrorCode), stdgo.Go.asInterface(_n), (@:checkr _n ?? throw "null pointer dereference").line, ("predefined escaper %q disallowed in template" : stdgo.GoString), stdgo.Go.toInterface(_ident)) } : stdgo._internal.html.template.Template_t_context.T_context);
                    };
                };
            };
        };
        var _s = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (3 : stdgo.GoInt)).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _c._state;
                    if (__value__ == ((27 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        return _c?.__copy__();
                        break;
                    } else if (__value__ == ((8 : stdgo._internal.html.template.Template_t_state.T_state)) || __value__ == ((20 : stdgo._internal.html.template.Template_t_state.T_state)) || __value__ == ((21 : stdgo._internal.html.template.Template_t_state.T_state)) || __value__ == ((22 : stdgo._internal.html.template.Template_t_state.T_state)) || __value__ == ((23 : stdgo._internal.html.template.Template_t_state.T_state)) || __value__ == ((24 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        {
                            var __switchIndex__ = -1;
                            var __run__ = true;
                            while (__run__) {
                                __run__ = false;
                                {
                                    final __value__ = _c._urlPart;
                                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (0 : stdgo._internal.html.template.Template_t_urlpart.T_urlPart)))) {
                                        _s = (_s.__append__((("_html_template_urlfilter" : stdgo.GoString) : stdgo.GoString)));
                                        @:fallthrough {
                                            __switchIndex__ = 1;
                                            __run__ = true;
                                            continue;
                                        };
                                        break;
                                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (1 : stdgo._internal.html.template.Template_t_urlpart.T_urlPart)))) {
                                        {
                                            final __value__ = _c._state;
                                            if (__value__ == ((20 : stdgo._internal.html.template.Template_t_state.T_state)) || __value__ == ((21 : stdgo._internal.html.template.Template_t_state.T_state))) {
                                                _s = (_s.__append__((("_html_template_cssescaper" : stdgo.GoString) : stdgo.GoString)));
                                            } else {
                                                _s = (_s.__append__((("_html_template_urlnormalizer" : stdgo.GoString) : stdgo.GoString)));
                                            };
                                        };
                                        break;
                                        break;
                                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo._internal.html.template.Template_t_urlpart.T_urlPart)))) {
                                        _s = (_s.__append__((("_html_template_urlescaper" : stdgo.GoString) : stdgo.GoString)));
                                        break;
                                        break;
                                    } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == (3 : stdgo._internal.html.template.Template_t_urlpart.T_urlPart)))) {
                                        return ({ _state : (27 : stdgo._internal.html.template.Template_t_state.T_state), _err : stdgo._internal.html.template.Template__errorf._errorf((1 : stdgo._internal.html.template.Template_errorcode.ErrorCode), stdgo.Go.asInterface(_n), (@:checkr _n ?? throw "null pointer dereference").line, ("%s appears in an ambiguous context within a URL" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_n))) } : stdgo._internal.html.template.Template_t_context.T_context);
                                        break;
                                        break;
                                    } else {
                                        throw stdgo.Go.toInterface((_c._urlPart.string() : stdgo.GoString));
                                        break;
                                    };
                                };
                                break;
                            };
                        };
                        break;
                    } else if (__value__ == ((10 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        _s = (_s.__append__((("_html_template_jsvalescaper" : stdgo.GoString) : stdgo.GoString)));
                        _c._jsCtx = (1 : stdgo._internal.html.template.Template_t_jsctx.T_jsCtx);
                        break;
                    } else if (__value__ == ((11 : stdgo._internal.html.template.Template_t_state.T_state)) || __value__ == ((12 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        _s = (_s.__append__((("_html_template_jsstrescaper" : stdgo.GoString) : stdgo.GoString)));
                        break;
                    } else if (__value__ == ((13 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        if (@:check2r stdgo._internal.html.template.Template__debugallowactionjstmpl._debugAllowActionJSTmpl.value() == (("1" : stdgo.GoString))) {
                            @:check2r stdgo._internal.html.template.Template__debugallowactionjstmpl._debugAllowActionJSTmpl.incNonDefault();
                            _s = (_s.__append__((("_html_template_jsstrescaper" : stdgo.GoString) : stdgo.GoString)));
                        } else {
                            return ({ _state : (27 : stdgo._internal.html.template.Template_t_state.T_state), _err : stdgo._internal.html.template.Template__errorf._errorf((12 : stdgo._internal.html.template.Template_errorcode.ErrorCode), stdgo.Go.asInterface(_n), (@:checkr _n ?? throw "null pointer dereference").line, ("%s appears in a JS template literal" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_n))) } : stdgo._internal.html.template.Template_t_context.T_context);
                        };
                        break;
                    } else if (__value__ == ((14 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        _s = (_s.__append__((("_html_template_jsregexpescaper" : stdgo.GoString) : stdgo.GoString)));
                        break;
                    } else if (__value__ == ((19 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        _s = (_s.__append__((("_html_template_cssvaluefilter" : stdgo.GoString) : stdgo.GoString)));
                        break;
                    } else if (__value__ == ((0 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        _s = (_s.__append__((("_html_template_htmlescaper" : stdgo.GoString) : stdgo.GoString)));
                        break;
                    } else if (__value__ == ((6 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        _s = (_s.__append__((("_html_template_rcdataescaper" : stdgo.GoString) : stdgo.GoString)));
                        break;
                    } else if (__value__ == ((7 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        break;
                    } else if (__value__ == ((2 : stdgo._internal.html.template.Template_t_state.T_state)) || __value__ == ((1 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        _c._state = (2 : stdgo._internal.html.template.Template_t_state.T_state);
                        _s = (_s.__append__((("_html_template_htmlnamefilter" : stdgo.GoString) : stdgo.GoString)));
                        break;
                    } else if (__value__ == ((9 : stdgo._internal.html.template.Template_t_state.T_state))) {
                        _s = (_s.__append__((("_html_template_srcsetescaper" : stdgo.GoString) : stdgo.GoString)));
                        break;
                    } else {
                        if (stdgo._internal.html.template.Template__iscomment._isComment(_c._state)) {
                            _s = (_s.__append__((("_html_template_commentescaper" : stdgo.GoString) : stdgo.GoString)));
                        } else {
                            throw stdgo.Go.toInterface((("unexpected state " : stdgo.GoString) + (_c._state.string() : stdgo.GoString)?.__copy__() : stdgo.GoString));
                        };
                    };
                };
                break;
            };
        };
        {
            final __value__ = _c._delim;
            if (__value__ == ((0 : stdgo._internal.html.template.Template_t_delim.T_delim))) {} else if (__value__ == ((3 : stdgo._internal.html.template.Template_t_delim.T_delim))) {
                _s = (_s.__append__((("_html_template_nospaceescaper" : stdgo.GoString) : stdgo.GoString)));
            } else {
                _s = (_s.__append__((("_html_template_attrescaper" : stdgo.GoString) : stdgo.GoString)));
            };
        };
        @:check2r _e._editActionNode(_n, _s);
        return _c?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _escape( _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_t_context.T_context, _n:stdgo._internal.text.template.parse.Parse_node.Node):stdgo._internal.html.template.Template_t_context.T_context {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_t_escaper.T_escaper> = _e;
        {
            final __type__ = _n;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode>) : __type__.__underlying__().value;
                return @:check2r _e._escapeAction(_c?.__copy__(), _n)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>) : __type__.__underlying__().value;
                _c._n = stdgo.Go.asInterface(_n);
                (@:checkr (@:checkr _e ?? throw "null pointer dereference")._rangeContext ?? throw "null pointer dereference")._breaks = ((@:checkr (@:checkr _e ?? throw "null pointer dereference")._rangeContext ?? throw "null pointer dereference")._breaks.__append__(_c?.__copy__()));
                return ({ _state : (28 : stdgo._internal.html.template.Template_t_state.T_state) } : stdgo._internal.html.template.Template_t_context.T_context);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode>) : __type__.__underlying__().value;
                return _c?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>) : __type__.__underlying__().value;
                _c._n = stdgo.Go.asInterface(_n);
                (@:checkr (@:checkr _e ?? throw "null pointer dereference")._rangeContext ?? throw "null pointer dereference")._continues = ((@:checkr (@:checkr _e ?? throw "null pointer dereference")._rangeContext ?? throw "null pointer dereference")._breaks.__append__(_c?.__copy__()));
                return ({ _state : (28 : stdgo._internal.html.template.Template_t_state.T_state) } : stdgo._internal.html.template.Template_t_context.T_context);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode>) : __type__.__underlying__().value;
                return @:check2r _e._escapeBranch(_c?.__copy__(), (stdgo.Go.setRef((@:checkr _n ?? throw "null pointer dereference").branchNode) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_branchnode.BranchNode>), ("if" : stdgo.GoString))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>) : __type__.__underlying__().value;
                return @:check2r _e._escapeList(_c?.__copy__(), _n)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode>) : __type__.__underlying__().value;
                return @:check2r _e._escapeBranch(_c?.__copy__(), (stdgo.Go.setRef((@:checkr _n ?? throw "null pointer dereference").branchNode) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_branchnode.BranchNode>), ("range" : stdgo.GoString))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>) : __type__.__underlying__().value;
                return @:check2r _e._escapeTemplate(_c?.__copy__(), _n)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode>) : __type__.__underlying__().value;
                return @:check2r _e._escapeText(_c?.__copy__(), _n)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode>) : __type__.__underlying__().value;
                return @:check2r _e._escapeBranch(_c?.__copy__(), (stdgo.Go.setRef((@:checkr _n ?? throw "null pointer dereference").branchNode) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_branchnode.BranchNode>), ("with" : stdgo.GoString))?.__copy__();
            };
        };
        throw stdgo.Go.toInterface(((("escaping " : stdgo.GoString) + (_n.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (" is unimplemented" : stdgo.GoString)?.__copy__() : stdgo.GoString));
    }
}

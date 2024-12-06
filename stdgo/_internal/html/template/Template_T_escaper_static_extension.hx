package stdgo._internal.html.template;
@:keep @:allow(stdgo._internal.html.template.Template.T_escaper_asInterface) class T_escaper_static_extension {
    @:keep
    static public function _arbitraryTemplate( _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>):stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper> = _e;
        for (__6 => _t in _e._ns._set) {
            return _t;
        };
        throw stdgo.Go.toInterface(("no templates in name space" : stdgo.GoString));
    }
    @:keep
    static public function _template( _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper> = _e;
        var _t = _e._arbitraryTemplate()._text.lookup(_name?.__copy__());
        if ((_t == null || (_t : Dynamic).__nil__)) {
            _t = (_e._derived[_name] ?? (null : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>));
        };
        return _t;
    }
    @:keep
    static public function _commit( _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper> = _e;
        for (_name => _ in _e._output) {
            _e._template(_name?.__copy__()).funcs(stdgo._internal.html.template.Template__funcMap._funcMap);
        };
        var _tmpl = _e._arbitraryTemplate();
        for (__6 => _t in _e._derived) {
            {
                var __tmp__ = _tmpl._text.addParseTree(_t.name()?.__copy__(), _t.tree), __39:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    throw stdgo.Go.toInterface(("error adding derived template" : stdgo.GoString));
                };
            };
        };
        for (_n => _s in _e._actionNodeEdits) {
            stdgo._internal.html.template.Template__ensurePipelineContains._ensurePipelineContains(_n.pipe, _s);
        };
        for (_n => _name in _e._templateNodeEdits) {
            _n.name = _name?.__copy__();
        };
        for (_n => _s in _e._textNodeEdits) {
            _n.text = _s;
        };
        _e._called = ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>);
        _e._actionNodeEdits = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>, stdgo.Slice<stdgo.GoString>>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>, stdgo.Slice<stdgo.GoString>>);
        _e._templateNodeEdits = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>, stdgo.GoString>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>, stdgo.GoString>);
        _e._textNodeEdits = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>, stdgo.Slice<stdgo.GoUInt8>>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>, stdgo.Slice<stdgo.GoUInt8>>);
    }
    @:keep
    static public function _editTextNode( _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>, _text:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper> = _e;
        {
            var __tmp__ = (_e._textNodeEdits != null && _e._textNodeEdits.exists(_n) ? { _0 : _e._textNodeEdits[_n], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : false }), __6:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("node %s shared between templates" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_n))));
            };
        };
        _e._textNodeEdits[_n] = _text;
    }
    @:keep
    static public function _editTemplateNode( _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>, _callee:stdgo.GoString):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper> = _e;
        {
            var __tmp__ = (_e._templateNodeEdits != null && _e._templateNodeEdits.exists(_n) ? { _0 : _e._templateNodeEdits[_n], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), __6:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("node %s shared between templates" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_n))));
            };
        };
        _e._templateNodeEdits[_n] = _callee?.__copy__();
    }
    @:keep
    static public function _editActionNode( _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>, _cmds:stdgo.Slice<stdgo.GoString>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper> = _e;
        {
            var __tmp__ = (_e._actionNodeEdits != null && _e._actionNodeEdits.exists(_n) ? { _0 : _e._actionNodeEdits[_n], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __6:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("node %s shared between templates" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_n))));
            };
        };
        _e._actionNodeEdits[_n] = _cmds;
    }
    @:keep
    static public function _escapeText( _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_T_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>):stdgo._internal.html.template.Template_T_context.T_context {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper> = _e;
        var __0 = _n.text, __1 = (0 : stdgo.GoInt), __2 = (0 : stdgo.GoInt), __3 = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
var _b = __3, _i = __2, _written = __1, _s = __0;
        while (_i != ((_s.length))) {
            var __tmp__ = stdgo._internal.html.template.Template__contextAfterText._contextAfterText(_c?.__copy__(), (_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)), _c1:stdgo._internal.html.template.Template_T_context.T_context = __tmp__._0, _nread:stdgo.GoInt = __tmp__._1;
            var _i1 = (_i + _nread : stdgo.GoInt);
            if (((_c._state == (0 : stdgo._internal.html.template.Template_T_state.T_state)) || (_c._state == (6 : stdgo._internal.html.template.Template_T_state.T_state)) : Bool)) {
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
                        if (((_s[(_j : stdgo.GoInt)] == (60 : stdgo.GoUInt8)) && !stdgo._internal.bytes.Bytes_hasPrefix.hasPrefix(stdgo._internal.bytes.Bytes_toUpper.toUpper((_s.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>)), stdgo._internal.html.template.Template__doctypeBytes._doctypeBytes) : Bool)) {
                            _b.write((_s.__slice__(_written, _j) : stdgo.Slice<stdgo.GoUInt8>));
                            _b.writeString(("&lt;" : stdgo.GoString));
                            _written = (_j + (1 : stdgo.GoInt) : stdgo.GoInt);
                        };
                        _j++;
                    };
                };
            } else if ((stdgo._internal.html.template.Template__isComment._isComment(_c._state) && (_c._delim == (0 : stdgo._internal.html.template.Template_T_delim.T_delim)) : Bool)) {
                {
                    final __value__ = _c._state;
                    if (__value__ == ((15 : stdgo._internal.html.template.Template_T_state.T_state))) {
                        if (stdgo._internal.bytes.Bytes_containsAny.containsAny((_s.__slice__(_written, _i1) : stdgo.Slice<stdgo.GoUInt8>), ("\n\r\u2028\u2029" : stdgo.GoString))) {
                            _b.writeByte((10 : stdgo.GoUInt8));
                        } else {
                            _b.writeByte((32 : stdgo.GoUInt8));
                        };
                    } else if (__value__ == ((25 : stdgo._internal.html.template.Template_T_state.T_state))) {
                        _b.writeByte((32 : stdgo.GoUInt8));
                    };
                };
                _written = _i1;
            };
            if (((_c._state != (_c1._state) && stdgo._internal.html.template.Template__isComment._isComment(_c1._state) : Bool) && (_c1._delim == (0 : stdgo._internal.html.template.Template_T_delim.T_delim)) : Bool)) {
                var _cs = (_i1 - (2 : stdgo.GoInt) : stdgo.GoInt);
                if (((_c1._state == (5 : stdgo._internal.html.template.Template_T_state.T_state)) || (_c1._state == (17 : stdgo._internal.html.template.Template_T_state.T_state)) : Bool)) {
                    _cs = (_cs - ((2 : stdgo.GoInt)) : stdgo.GoInt);
                } else if (_c1._state == ((18 : stdgo._internal.html.template.Template_T_state.T_state))) {
                    _cs = (_cs - ((1 : stdgo.GoInt)) : stdgo.GoInt);
                };
                _b.write((_s.__slice__(_written, _cs) : stdgo.Slice<stdgo.GoUInt8>));
                _written = _i1;
            };
            if ((stdgo._internal.html.template.Template__isInScriptLiteral._isInScriptLiteral(_c._state) && stdgo._internal.html.template.Template__containsSpecialScriptTag._containsSpecialScriptTag((_s.__slice__(_i, _i1) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
                _b.write((_s.__slice__(_written, _i) : stdgo.Slice<stdgo.GoUInt8>));
                _b.write(stdgo._internal.html.template.Template__escapeSpecialScriptTags._escapeSpecialScriptTags((_s.__slice__(_i, _i1) : stdgo.Slice<stdgo.GoUInt8>)));
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
        if (((_written != (0 : stdgo.GoInt)) && (_c._state != (27 : stdgo._internal.html.template.Template_T_state.T_state)) : Bool)) {
            if ((!stdgo._internal.html.template.Template__isComment._isComment(_c._state) || (_c._delim != (0 : stdgo._internal.html.template.Template_T_delim.T_delim)) : Bool)) {
                _b.write((_n.text.__slice__(_written) : stdgo.Slice<stdgo.GoUInt8>));
            };
            _e._editTextNode(_n, _b.bytes());
        };
        return _c?.__copy__();
    }
    @:keep
    static public function _escapeTemplateBody( _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_T_context.T_context, _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>):{ var _0 : stdgo._internal.html.template.Template_T_context.T_context; var _1 : Bool; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper> = _e;
        var _filter = function(_e1:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>, _c1:stdgo._internal.html.template.Template_T_context.T_context):Bool {
            if (_c1._state == ((27 : stdgo._internal.html.template.Template_T_state.T_state))) {
                return false;
            };
            if (!(_e1._called[_t.name()] ?? false)) {
                return true;
            };
            return _c._eq(_c1?.__copy__());
        };
        _e._output[_t.name()] = _c?.__copy__();
        return _e._escapeListConditionally(_c?.__copy__(), _t.tree.root, _filter);
    }
    @:keep
    static public function _computeOutCtx( _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_T_context.T_context, _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>):stdgo._internal.html.template.Template_T_context.T_context {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper> = _e;
        var __tmp__ = _e._escapeTemplateBody(_c?.__copy__(), _t), _c1:stdgo._internal.html.template.Template_T_context.T_context = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            {
                var __tmp__ = _e._escapeTemplateBody(_c1?.__copy__(), _t), _c2:stdgo._internal.html.template.Template_T_context.T_context = __tmp__._0, _ok2:Bool = __tmp__._1;
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
        if ((!_ok && (_c1._state != (27 : stdgo._internal.html.template.Template_T_state.T_state)) : Bool)) {
            return ({ _state : (27 : stdgo._internal.html.template.Template_T_state.T_state), _err : stdgo._internal.html.template.Template__errorf._errorf((6 : stdgo._internal.html.template.Template_ErrorCode.ErrorCode), stdgo.Go.asInterface(_t.tree.root), (0 : stdgo.GoInt), ("cannot compute output context for template %s" : stdgo.GoString), stdgo.Go.toInterface(_t.name())) } : stdgo._internal.html.template.Template_T_context.T_context);
        };
        return _c1?.__copy__();
    }
    @:keep
    static public function _escapeTree( _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_T_context.T_context, _node:stdgo._internal.text.template.parse.Parse_Node.Node, _name:stdgo.GoString, _line:stdgo.GoInt):{ var _0 : stdgo._internal.html.template.Template_T_context.T_context; var _1 : stdgo.GoString; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper> = _e;
        var _dname = (_c._mangle(_name?.__copy__())?.__copy__() : stdgo.GoString);
        _e._called[_dname] = true;
        {
            var __tmp__ = (_e._output != null && _e._output.exists(_dname?.__copy__()) ? { _0 : _e._output[_dname?.__copy__()], _1 : true } : { _0 : ({} : stdgo._internal.html.template.Template_T_context.T_context), _1 : false }), _out:stdgo._internal.html.template.Template_T_context.T_context = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return { _0 : _out?.__copy__(), _1 : _dname?.__copy__() };
            };
        };
        var _t = _e._template(_name?.__copy__());
        if ((_t == null || (_t : Dynamic).__nil__)) {
            if (((_e._ns._set[_name] ?? (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>)) != null && ((_e._ns._set[_name] ?? (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>) : Dynamic).__nil__ == null || !(_e._ns._set[_name] ?? (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>) : Dynamic).__nil__))) {
                return { _0 : ({ _state : (27 : stdgo._internal.html.template.Template_T_state.T_state), _err : stdgo._internal.html.template.Template__errorf._errorf((5 : stdgo._internal.html.template.Template_ErrorCode.ErrorCode), _node, _line, ("%q is an incomplete or empty template" : stdgo.GoString), stdgo.Go.toInterface(_name)) } : stdgo._internal.html.template.Template_T_context.T_context), _1 : _dname?.__copy__() };
            };
            return { _0 : ({ _state : (27 : stdgo._internal.html.template.Template_T_state.T_state), _err : stdgo._internal.html.template.Template__errorf._errorf((5 : stdgo._internal.html.template.Template_ErrorCode.ErrorCode), _node, _line, ("no such template %q" : stdgo.GoString), stdgo.Go.toInterface(_name)) } : stdgo._internal.html.template.Template_T_context.T_context), _1 : _dname?.__copy__() };
        };
        if (_dname != (_name)) {
            var _dt = _e._template(_dname?.__copy__());
            if ((_dt == null || (_dt : Dynamic).__nil__)) {
                _dt = stdgo._internal.text.template.Template_new_.new_(_dname?.__copy__());
                _dt.tree = (stdgo.Go.setRef(({ name : _dname?.__copy__(), root : _t.tree.root.copyList() } : stdgo._internal.text.template.parse.Parse_Tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
                _e._derived[_dname] = _dt;
            };
            _t = _dt;
        };
        return { _0 : _e._computeOutCtx(_c?.__copy__(), _t)?.__copy__(), _1 : _dname?.__copy__() };
    }
    @:keep
    static public function _escapeTemplate( _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_T_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>):stdgo._internal.html.template.Template_T_context.T_context {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper> = _e;
        var __tmp__ = _e._escapeTree(_c?.__copy__(), stdgo.Go.asInterface(_n), _n.name?.__copy__(), _n.line), _c:stdgo._internal.html.template.Template_T_context.T_context = __tmp__._0, _name:stdgo.GoString = __tmp__._1;
        if (_name != (_n.name)) {
            _e._editTemplateNode(_n, _name?.__copy__());
        };
        return _c?.__copy__();
    }
    @:keep
    static public function _escapeListConditionally( _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_T_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>, _filter:(stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>, stdgo._internal.html.template.Template_T_context.T_context) -> Bool):{ var _0 : stdgo._internal.html.template.Template_T_context.T_context; var _1 : Bool; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper> = _e;
        var _e1 = (stdgo._internal.html.template.Template__makeEscaper._makeEscaper(_e._ns)?.__copy__() : stdgo._internal.html.template.Template_T_escaper.T_escaper);
        _e1._rangeContext = _e._rangeContext;
        for (_k => _v in _e._output) {
            _e1._output[_k] = _v?.__copy__();
        };
        _c = _e1._escapeList(_c?.__copy__(), _n)?.__copy__();
        var _ok = ((_filter != null) && _filter((stdgo.Go.setRef(_e1) : stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>), _c?.__copy__()) : Bool);
        if (_ok) {
            for (_k => _v in _e1._output) {
                _e._output[_k] = _v?.__copy__();
            };
            for (_k => _v in _e1._derived) {
                _e._derived[_k] = _v;
            };
            for (_k => _v in _e1._called) {
                _e._called[_k] = _v;
            };
            for (_k => _v in _e1._actionNodeEdits) {
                _e._editActionNode(_k, _v);
            };
            for (_k => _v in _e1._templateNodeEdits) {
                _e._editTemplateNode(_k, _v?.__copy__());
            };
            for (_k => _v in _e1._textNodeEdits) {
                _e._editTextNode(_k, _v);
            };
        };
        return { _0 : _c?.__copy__(), _1 : _ok };
    }
    @:keep
    static public function _escapeList( _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_T_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>):stdgo._internal.html.template.Template_T_context.T_context {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper> = _e;
        if ((_n == null || (_n : Dynamic).__nil__)) {
            return _c?.__copy__();
        };
        for (__6 => _m in _n.nodes) {
            _c = _e._escape(_c?.__copy__(), _m)?.__copy__();
            if (_c._state == ((28 : stdgo._internal.html.template.Template_T_state.T_state))) {
                break;
            };
        };
        return _c?.__copy__();
    }
    @:keep
    static public function _escapeBranch( _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_T_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode>, _nodeName:stdgo.GoString):stdgo._internal.html.template.Template_T_context.T_context {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper> = _e;
        if (_nodeName == (("range" : stdgo.GoString))) {
            _e._rangeContext = (stdgo.Go.setRef(({ _outer : _e._rangeContext } : stdgo._internal.html.template.Template_T_rangeContext.T_rangeContext)) : stdgo.Ref<stdgo._internal.html.template.Template_T_rangeContext.T_rangeContext>);
        };
        var _c0 = (_e._escapeList(_c?.__copy__(), _n.list)?.__copy__() : stdgo._internal.html.template.Template_T_context.T_context);
        if (_nodeName == (("range" : stdgo.GoString))) {
            if (_c0._state != ((27 : stdgo._internal.html.template.Template_T_state.T_state))) {
                _c0 = stdgo._internal.html.template.Template__joinRange._joinRange(_c0?.__copy__(), _e._rangeContext)?.__copy__();
            };
            _e._rangeContext = _e._rangeContext._outer;
            if (_c0._state == ((27 : stdgo._internal.html.template.Template_T_state.T_state))) {
                return _c0?.__copy__();
            };
            _e._rangeContext = (stdgo.Go.setRef(({ _outer : _e._rangeContext } : stdgo._internal.html.template.Template_T_rangeContext.T_rangeContext)) : stdgo.Ref<stdgo._internal.html.template.Template_T_rangeContext.T_rangeContext>);
            var __tmp__ = _e._escapeListConditionally(_c0?.__copy__(), _n.list, null), _c1:stdgo._internal.html.template.Template_T_context.T_context = __tmp__._0, __6:Bool = __tmp__._1;
            _c0 = stdgo._internal.html.template.Template__join._join(_c0?.__copy__(), _c1?.__copy__(), stdgo.Go.asInterface(_n), _nodeName?.__copy__())?.__copy__();
            if (_c0._state == ((27 : stdgo._internal.html.template.Template_T_state.T_state))) {
                _e._rangeContext = _e._rangeContext._outer;
                _c0._err.line = _n.line;
                _c0._err.description = (("on range loop re-entry: " : stdgo.GoString) + _c0._err.description?.__copy__() : stdgo.GoString)?.__copy__();
                return _c0?.__copy__();
            };
            _c0 = stdgo._internal.html.template.Template__joinRange._joinRange(_c0?.__copy__(), _e._rangeContext)?.__copy__();
            _e._rangeContext = _e._rangeContext._outer;
            if (_c0._state == ((27 : stdgo._internal.html.template.Template_T_state.T_state))) {
                return _c0?.__copy__();
            };
        };
        var _c1 = (_e._escapeList(_c?.__copy__(), _n.elseList)?.__copy__() : stdgo._internal.html.template.Template_T_context.T_context);
        return stdgo._internal.html.template.Template__join._join(_c0?.__copy__(), _c1?.__copy__(), stdgo.Go.asInterface(_n), _nodeName?.__copy__())?.__copy__();
    }
    @:keep
    static public function _escapeAction( _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_T_context.T_context, _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>):stdgo._internal.html.template.Template_T_context.T_context {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper> = _e;
        if ((_n.pipe.decl.length) != ((0 : stdgo.GoInt))) {
            return _c?.__copy__();
        };
        _c = stdgo._internal.html.template.Template__nudge._nudge(_c?.__copy__())?.__copy__();
        for (_pos => _idNode in _n.pipe.cmds) {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_idNode.args[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>), _1 : false };
            }, _node = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                continue;
            };
            var _ident = (_node.ident?.__copy__() : stdgo.GoString);
            {
                var __tmp__ = (stdgo._internal.html.template.Template__predefinedEscapers._predefinedEscapers != null && stdgo._internal.html.template.Template__predefinedEscapers._predefinedEscapers.exists(_ident?.__copy__()) ? { _0 : stdgo._internal.html.template.Template__predefinedEscapers._predefinedEscapers[_ident?.__copy__()], _1 : true } : { _0 : false, _1 : false }), __6:Bool = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    if (((_pos < ((_n.pipe.cmds.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool) || ((_c._state == ((7 : stdgo._internal.html.template.Template_T_state.T_state)) && _c._delim == ((3 : stdgo._internal.html.template.Template_T_delim.T_delim)) : Bool) && _ident == (("html" : stdgo.GoString)) : Bool) : Bool)) {
                        return ({ _state : (27 : stdgo._internal.html.template.Template_T_state.T_state), _err : stdgo._internal.html.template.Template__errorf._errorf((11 : stdgo._internal.html.template.Template_ErrorCode.ErrorCode), stdgo.Go.asInterface(_n), _n.line, ("predefined escaper %q disallowed in template" : stdgo.GoString), stdgo.Go.toInterface(_ident)) } : stdgo._internal.html.template.Template_T_context.T_context);
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
                    if (__value__ == ((27 : stdgo._internal.html.template.Template_T_state.T_state))) {
                        return _c?.__copy__();
                        break;
                    } else if (__value__ == ((8 : stdgo._internal.html.template.Template_T_state.T_state)) || __value__ == ((20 : stdgo._internal.html.template.Template_T_state.T_state)) || __value__ == ((21 : stdgo._internal.html.template.Template_T_state.T_state)) || __value__ == ((22 : stdgo._internal.html.template.Template_T_state.T_state)) || __value__ == ((23 : stdgo._internal.html.template.Template_T_state.T_state)) || __value__ == ((24 : stdgo._internal.html.template.Template_T_state.T_state))) {
                        {
                            var __switchIndex__ = -1;
                            var __run__ = true;
                            while (__run__) {
                                __run__ = false;
                                {
                                    final __value__ = _c._urlPart;
                                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (0 : stdgo._internal.html.template.Template_T_urlPart.T_urlPart)))) {
                                        _s = (_s.__append__(("_html_template_urlfilter" : stdgo.GoString)));
                                        @:fallthrough {
                                            __switchIndex__ = 1;
                                            __run__ = true;
                                            continue;
                                        };
                                        break;
                                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (1 : stdgo._internal.html.template.Template_T_urlPart.T_urlPart)))) {
                                        {
                                            final __value__ = _c._state;
                                            if (__value__ == ((20 : stdgo._internal.html.template.Template_T_state.T_state)) || __value__ == ((21 : stdgo._internal.html.template.Template_T_state.T_state))) {
                                                _s = (_s.__append__(("_html_template_cssescaper" : stdgo.GoString)));
                                            } else {
                                                _s = (_s.__append__(("_html_template_urlnormalizer" : stdgo.GoString)));
                                            };
                                        };
                                        break;
                                        break;
                                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo._internal.html.template.Template_T_urlPart.T_urlPart)))) {
                                        _s = (_s.__append__(("_html_template_urlescaper" : stdgo.GoString)));
                                        break;
                                        break;
                                    } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == (3 : stdgo._internal.html.template.Template_T_urlPart.T_urlPart)))) {
                                        return ({ _state : (27 : stdgo._internal.html.template.Template_T_state.T_state), _err : stdgo._internal.html.template.Template__errorf._errorf((1 : stdgo._internal.html.template.Template_ErrorCode.ErrorCode), stdgo.Go.asInterface(_n), _n.line, ("%s appears in an ambiguous context within a URL" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_n))) } : stdgo._internal.html.template.Template_T_context.T_context);
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
                    } else if (__value__ == ((10 : stdgo._internal.html.template.Template_T_state.T_state))) {
                        _s = (_s.__append__(("_html_template_jsvalescaper" : stdgo.GoString)));
                        _c._jsCtx = (1 : stdgo._internal.html.template.Template_T_jsCtx.T_jsCtx);
                        break;
                    } else if (__value__ == ((11 : stdgo._internal.html.template.Template_T_state.T_state)) || __value__ == ((12 : stdgo._internal.html.template.Template_T_state.T_state))) {
                        _s = (_s.__append__(("_html_template_jsstrescaper" : stdgo.GoString)));
                        break;
                    } else if (__value__ == ((13 : stdgo._internal.html.template.Template_T_state.T_state))) {
                        if (stdgo._internal.html.template.Template__debugAllowActionJSTmpl._debugAllowActionJSTmpl.value() == (("1" : stdgo.GoString))) {
                            stdgo._internal.html.template.Template__debugAllowActionJSTmpl._debugAllowActionJSTmpl.incNonDefault();
                            _s = (_s.__append__(("_html_template_jsstrescaper" : stdgo.GoString)));
                        } else {
                            return ({ _state : (27 : stdgo._internal.html.template.Template_T_state.T_state), _err : stdgo._internal.html.template.Template__errorf._errorf((12 : stdgo._internal.html.template.Template_ErrorCode.ErrorCode), stdgo.Go.asInterface(_n), _n.line, ("%s appears in a JS template literal" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_n))) } : stdgo._internal.html.template.Template_T_context.T_context);
                        };
                        break;
                    } else if (__value__ == ((14 : stdgo._internal.html.template.Template_T_state.T_state))) {
                        _s = (_s.__append__(("_html_template_jsregexpescaper" : stdgo.GoString)));
                        break;
                    } else if (__value__ == ((19 : stdgo._internal.html.template.Template_T_state.T_state))) {
                        _s = (_s.__append__(("_html_template_cssvaluefilter" : stdgo.GoString)));
                        break;
                    } else if (__value__ == ((0 : stdgo._internal.html.template.Template_T_state.T_state))) {
                        _s = (_s.__append__(("_html_template_htmlescaper" : stdgo.GoString)));
                        break;
                    } else if (__value__ == ((6 : stdgo._internal.html.template.Template_T_state.T_state))) {
                        _s = (_s.__append__(("_html_template_rcdataescaper" : stdgo.GoString)));
                        break;
                    } else if (__value__ == ((7 : stdgo._internal.html.template.Template_T_state.T_state))) {
                        break;
                    } else if (__value__ == ((2 : stdgo._internal.html.template.Template_T_state.T_state)) || __value__ == ((1 : stdgo._internal.html.template.Template_T_state.T_state))) {
                        _c._state = (2 : stdgo._internal.html.template.Template_T_state.T_state);
                        _s = (_s.__append__(("_html_template_htmlnamefilter" : stdgo.GoString)));
                        break;
                    } else if (__value__ == ((9 : stdgo._internal.html.template.Template_T_state.T_state))) {
                        _s = (_s.__append__(("_html_template_srcsetescaper" : stdgo.GoString)));
                        break;
                    } else {
                        if (stdgo._internal.html.template.Template__isComment._isComment(_c._state)) {
                            _s = (_s.__append__(("_html_template_commentescaper" : stdgo.GoString)));
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
            if (__value__ == ((0 : stdgo._internal.html.template.Template_T_delim.T_delim))) {} else if (__value__ == ((3 : stdgo._internal.html.template.Template_T_delim.T_delim))) {
                _s = (_s.__append__(("_html_template_nospaceescaper" : stdgo.GoString)));
            } else {
                _s = (_s.__append__(("_html_template_attrescaper" : stdgo.GoString)));
            };
        };
        _e._editActionNode(_n, _s);
        return _c?.__copy__();
    }
    @:keep
    static public function _escape( _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper>, _c:stdgo._internal.html.template.Template_T_context.T_context, _n:stdgo._internal.text.template.parse.Parse_Node.Node):stdgo._internal.html.template.Template_T_context.T_context {
        @:recv var _e:stdgo.Ref<stdgo._internal.html.template.Template_T_escaper.T_escaper> = _e;
        {
            final __type__ = _n;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>) : __type__.__underlying__().value;
                return _e._escapeAction(_c?.__copy__(), _n)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode>) : __type__.__underlying__().value;
                _c._n = stdgo.Go.asInterface(_n);
                _e._rangeContext._breaks = (_e._rangeContext._breaks.__append__(_c?.__copy__()));
                return ({ _state : (28 : stdgo._internal.html.template.Template_T_state.T_state) } : stdgo._internal.html.template.Template_T_context.T_context);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode>) : __type__.__underlying__().value;
                return _c?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode>) : __type__.__underlying__().value;
                _c._n = stdgo.Go.asInterface(_n);
                _e._rangeContext._continues = (_e._rangeContext._breaks.__append__(_c?.__copy__()));
                return ({ _state : (28 : stdgo._internal.html.template.Template_T_state.T_state) } : stdgo._internal.html.template.Template_T_context.T_context);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IfNode.IfNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_IfNode.IfNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IfNode.IfNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IfNode.IfNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IfNode.IfNode>) : __type__.__underlying__().value;
                return _e._escapeBranch(_c?.__copy__(), (stdgo.Go.setRef(_n.branchNode) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode>), ("if" : stdgo.GoString))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>) : __type__.__underlying__().value;
                return _e._escapeList(_c?.__copy__(), _n)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode>) : __type__.__underlying__().value;
                return _e._escapeBranch(_c?.__copy__(), (stdgo.Go.setRef(_n.branchNode) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode>), ("range" : stdgo.GoString))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>) : __type__.__underlying__().value;
                return _e._escapeTemplate(_c?.__copy__(), _n)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>) : __type__.__underlying__().value;
                return _e._escapeText(_c?.__copy__(), _n)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.text.template.parse.Parse_WithNode.WithNode>))) {
                var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_WithNode.WithNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_WithNode.WithNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_WithNode.WithNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_WithNode.WithNode>) : __type__.__underlying__().value;
                return _e._escapeBranch(_c?.__copy__(), (stdgo.Go.setRef(_n.branchNode) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode>), ("with" : stdgo.GoString))?.__copy__();
            };
        };
        throw stdgo.Go.toInterface(((("escaping " : stdgo.GoString) + (_n.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (" is unimplemented" : stdgo.GoString)?.__copy__() : stdgo.GoString));
    }
}

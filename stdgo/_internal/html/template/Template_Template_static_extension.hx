package stdgo._internal.html.template;
@:keep @:allow(stdgo._internal.html.template.Template.Template_asInterface) class Template_static_extension {
    @:keep
    static public function parseFS( _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>, _fs:stdgo._internal.io.fs.Fs_FS.FS, _patterns:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } {
        var _patterns = new stdgo.Slice<stdgo.GoString>(_patterns.length, 0, ..._patterns);
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = _t;
        return stdgo._internal.html.template.Template__parseFS._parseFS(_t, _fs, _patterns);
    }
    @:keep
    static public function parseGlob( _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>, _pattern:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = _t;
        return stdgo._internal.html.template.Template__parseGlob._parseGlob(_t, _pattern?.__copy__());
    }
    @:keep
    static public function parseFiles( _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>, _filenames:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } {
        var _filenames = new stdgo.Slice<stdgo.GoString>(_filenames.length, 0, ..._filenames);
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = _t;
        return stdgo._internal.html.template.Template__parseFiles._parseFiles(_t, stdgo._internal.html.template.Template__readFileOS._readFileOS, ...(_filenames : Array<stdgo.GoString>));
    }
    @:keep
    static public function lookup( _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t._nameSpace._mu.lock();
            __deferstack__.unshift(() -> _t._nameSpace._mu.unlock());
            {
                final __ret__:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = (_t._nameSpace._set[_name] ?? (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>));
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function delims( _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>, _left:stdgo.GoString, _right:stdgo.GoString):stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = _t;
        _t._text.delims(_left?.__copy__(), _right?.__copy__());
        return _t;
    }
    @:keep
    static public function funcs( _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>, _funcMap:stdgo._internal.text.template.Template_FuncMap.FuncMap):stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = _t;
        _t._text.funcs((_funcMap : stdgo._internal.text.template.Template_FuncMap.FuncMap));
        return _t;
    }
    @:keep
    static public function name( _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = _t;
        return _t._text.name()?.__copy__();
    }
    @:keep
    static public function _new( _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = _t;
        var _tmpl = (stdgo.Go.setRef((new stdgo._internal.html.template.Template_Template.Template((null : stdgo.Error), _t._text.new_(_name?.__copy__()), null, _t._nameSpace) : stdgo._internal.html.template.Template_Template.Template)) : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
        {
            var __tmp__ = (_tmpl._nameSpace._set != null && _tmpl._nameSpace._set.exists(_name?.__copy__()) ? { _0 : _tmpl._nameSpace._set[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>), _1 : false }), _existing:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                var _emptyTmpl = stdgo._internal.html.template.Template_new_.new_(_existing.name()?.__copy__());
                {
                    var __tmp__ = (_emptyTmpl : stdgo._internal.html.template.Template_Template.Template)?.__copy__();
                    (_existing : stdgo._internal.html.template.Template_Template.Template)._escapeErr = __tmp__._escapeErr;
                    (_existing : stdgo._internal.html.template.Template_Template.Template)._text = __tmp__._text;
                    (_existing : stdgo._internal.html.template.Template_Template.Template).tree = __tmp__.tree;
                    (_existing : stdgo._internal.html.template.Template_Template.Template)._nameSpace = __tmp__._nameSpace;
                };
            };
        };
        _tmpl._nameSpace._set[_name] = _tmpl;
        return _tmpl;
    }
    @:keep
    static public function new_( _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t._nameSpace._mu.lock();
            __deferstack__.unshift(() -> _t._nameSpace._mu.unlock());
            {
                final __ret__:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = _t._new(_name?.__copy__());
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function clone( _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t._nameSpace._mu.lock();
            __deferstack__.unshift(() -> _t._nameSpace._mu.unlock());
            if (_t._escapeErr != null) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("html/template: cannot Clone %q after it has executed" : stdgo.GoString), stdgo.Go.toInterface(_t.name())) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var __tmp__ = _t._text.clone(), _textClone:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _ns = (stdgo.Go.setRef(({ _set : ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>>) } : stdgo._internal.html.template.Template_T_nameSpace.T_nameSpace)) : stdgo.Ref<stdgo._internal.html.template.Template_T_nameSpace.T_nameSpace>);
            _ns._esc = stdgo._internal.html.template.Template__makeEscaper._makeEscaper(_ns)?.__copy__();
            var _ret = (stdgo.Go.setRef((new stdgo._internal.html.template.Template_Template.Template((null : stdgo.Error), _textClone, _textClone.tree, _ns) : stdgo._internal.html.template.Template_Template.Template)) : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
            _ret._nameSpace._set[_ret.name()] = _ret;
            for (__78 => _x in _textClone.templates()) {
                var _name = (_x.name()?.__copy__() : stdgo.GoString);
                var _src = (_t._nameSpace._set[_name] ?? (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>));
                if (((_src == null || (_src : Dynamic).__nil__) || (_src._escapeErr != null) : Bool)) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("html/template: cannot Clone %q after it has executed" : stdgo.GoString), stdgo.Go.toInterface(_t.name())) };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                _x.tree = _x.tree.copy();
                _ret._nameSpace._set[_name] = (stdgo.Go.setRef((new stdgo._internal.html.template.Template_Template.Template((null : stdgo.Error), _x, _x.tree, _ret._nameSpace) : stdgo._internal.html.template.Template_Template.Template)) : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } = { _0 : (_ret._nameSpace._set[_ret.name()] ?? (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>)), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function addParseTree( _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>, _name:stdgo.GoString, _tree:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _err = (_t._checkCanParse() : stdgo.Error);
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            _t._nameSpace._mu.lock();
            __deferstack__.unshift(() -> _t._nameSpace._mu.unlock());
            var __tmp__ = _t._text.addParseTree(_name?.__copy__(), _tree), _text:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _ret = (stdgo.Go.setRef((new stdgo._internal.html.template.Template_Template.Template((null : stdgo.Error), _text, _text.tree, _t._nameSpace) : stdgo._internal.html.template.Template_Template.Template)) : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>);
            _t._nameSpace._set[_name] = _ret;
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } = { _0 : _ret, _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function parse( _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>, _text:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _err = (_t._checkCanParse() : stdgo.Error);
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            var __tmp__ = _t._text.parse(_text?.__copy__()), _ret:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            _t._nameSpace._mu.lock();
            __deferstack__.unshift(() -> _t._nameSpace._mu.unlock());
            for (__54 => _v in _ret.templates()) {
                var _name = (_v.name()?.__copy__() : stdgo.GoString);
                var _tmpl = (_t._nameSpace._set[_name] ?? (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>));
                if ((_tmpl == null || (_tmpl : Dynamic).__nil__)) {
                    _tmpl = _t._new(_name?.__copy__());
                };
                _tmpl._text = _v;
                _tmpl.tree = _v.tree;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } = { _0 : _t, _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function definedTemplates( _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = _t;
        return _t._text.definedTemplates()?.__copy__();
    }
    @:keep
    static public function _lookupAndEscapeTemplate( _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>, _name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        var _tmpl = (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>), _err = (null : stdgo.Error);
        try {
            _t._nameSpace._mu.lock();
            __deferstack__.unshift(() -> _t._nameSpace._mu.unlock());
            _t._nameSpace._escaped = true;
            _tmpl = (_t._nameSpace._set[_name] ?? (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>));
            if ((_tmpl == null || (_tmpl : Dynamic).__nil__)) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } = { _0 : _tmpl = null, _1 : _err = stdgo._internal.fmt.Fmt_errorf.errorf(("html/template: %q is undefined" : stdgo.GoString), stdgo.Go.toInterface(_name)) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if (((_tmpl._escapeErr != null) && (stdgo.Go.toInterface(_tmpl._escapeErr) != stdgo.Go.toInterface(stdgo._internal.html.template.Template__escapeOK._escapeOK)) : Bool)) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } = { _0 : _tmpl = null, _1 : _err = _tmpl._escapeErr };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if (((_tmpl._text.tree == null || (_tmpl._text.tree : Dynamic).__nil__) || (_tmpl._text.tree.root == null || (_tmpl._text.tree.root : Dynamic).__nil__) : Bool)) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } = { _0 : _tmpl = null, _1 : _err = stdgo._internal.fmt.Fmt_errorf.errorf(("html/template: %q is an incomplete template" : stdgo.GoString), stdgo.Go.toInterface(_name)) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if ((_t._text.lookup(_name?.__copy__()) == null || (_t._text.lookup(_name?.__copy__()) : Dynamic).__nil__)) {
                throw stdgo.Go.toInterface(("html/template internal error: template escaping out of sync" : stdgo.GoString));
            };
            if (_tmpl._escapeErr == null) {
                _err = stdgo._internal.html.template.Template__escapeTemplate._escapeTemplate(_tmpl, stdgo.Go.asInterface(_tmpl._text.tree.root), _name?.__copy__());
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } = { _0 : _tmpl, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } = { _0 : _tmpl, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>; var _1 : stdgo.Error; } = { _0 : _tmpl, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function executeTemplate( _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>, _wr:stdgo._internal.io.Io_Writer.Writer, _name:stdgo.GoString, _data:stdgo.AnyInterface):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = _t;
        var __tmp__ = _t._lookupAndEscapeTemplate(_name?.__copy__()), _tmpl:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        return _tmpl._text.execute(_wr, _data);
    }
    @:keep
    static public function execute( _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>, _wr:stdgo._internal.io.Io_Writer.Writer, _data:stdgo.AnyInterface):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = _t;
        {
            var _err = (_t._escape() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return _t._text.execute(_wr, _data);
    }
    @:keep
    static public function _escape( _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t._nameSpace._mu.lock();
            __deferstack__.unshift(() -> _t._nameSpace._mu.unlock());
            _t._nameSpace._escaped = true;
            if (_t._escapeErr == null) {
                if ((_t.tree == null || (_t.tree : Dynamic).__nil__)) {
                    {
                        final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("template: %q is an incomplete or empty template" : stdgo.GoString), stdgo.Go.toInterface(_t.name()));
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                {
                    var _err = (stdgo._internal.html.template.Template__escapeTemplate._escapeTemplate(_t, stdgo.Go.asInterface(_t._text.tree.root), _t.name()?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return _err;
                        };
                    };
                };
            } else if (stdgo.Go.toInterface(_t._escapeErr) != (stdgo.Go.toInterface(stdgo._internal.html.template.Template__escapeOK._escapeOK))) {
                {
                    final __ret__:stdgo.Error = _t._escapeErr;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _checkCanParse( _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((_t == null || (_t : Dynamic).__nil__)) {
                return (null : stdgo.Error);
            };
            _t._nameSpace._mu.lock();
            __deferstack__.unshift(() -> _t._nameSpace._mu.unlock());
            if (_t._nameSpace._escaped) {
                {
                    final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("html/template: cannot Parse after Execute" : stdgo.GoString));
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function option( _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>, _opt:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> {
        var _opt = new stdgo.Slice<stdgo.GoString>(_opt.length, 0, ..._opt);
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = _t;
        _t._text.option(...(_opt : Array<stdgo.GoString>));
        return _t;
    }
    @:keep
    static public function templates( _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>):stdgo.Slice<stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>> {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _ns = _t._nameSpace;
            _ns._mu.lock();
            __deferstack__.unshift(() -> _ns._mu.unlock());
            var _m = (new stdgo.Slice<stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>>((0 : stdgo.GoInt).toBasic(), (_ns._set.length)) : stdgo.Slice<stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>>);
            for (__14 => _v in _ns._set) {
                _m = (_m.__append__(_v));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _m;
            };
            {
                final __ret__:stdgo.Slice<stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>>);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Slice<stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>>);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
}

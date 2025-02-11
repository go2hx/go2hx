package stdgo._internal.html.template;
@:keep @:allow(stdgo._internal.html.template.Template.Template_asInterface) class Template_static_extension {
    @:keep
    @:tdfield
    static public function parseFS( _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template>, _fs:stdgo._internal.io.fs.Fs_fs.FS, _patterns:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } {
        var _patterns = new stdgo.Slice<stdgo.GoString>(_patterns.length, 0, ..._patterns);
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template> = _t;
        return stdgo._internal.html.template.Template__parsefs._parseFS(_t, _fs, _patterns);
    }
    @:keep
    @:tdfield
    static public function parseGlob( _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template>, _pattern:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template> = _t;
        return stdgo._internal.html.template.Template__parseglob._parseGlob(_t, _pattern?.__copy__());
    }
    @:keep
    @:tdfield
    static public function parseFiles( _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template>, _filenames:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } {
        var _filenames = new stdgo.Slice<stdgo.GoString>(_filenames.length, 0, ..._filenames);
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template> = _t;
        return stdgo._internal.html.template.Template__parsefiles._parseFiles(_t, stdgo._internal.html.template.Template__readfileos._readFileOS, ...(_filenames : Array<stdgo.GoString>));
    }
    @:keep
    @:tdfield
    static public function lookup( _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.html.template.Template_template.Template> {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr (@:checkr _t ?? throw "null pointer dereference")._nameSpace ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr (@:checkr _t ?? throw "null pointer dereference")._nameSpace ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __ret__:stdgo.Ref<stdgo._internal.html.template.Template_template.Template> = ((@:checkr _t ?? throw "null pointer dereference")._nameSpace._set[_name] ?? (null : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>));
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function delims( _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template>, _left:stdgo.GoString, _right:stdgo.GoString):stdgo.Ref<stdgo._internal.html.template.Template_template.Template> {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template> = _t;
        @:check2r (@:checkr _t ?? throw "null pointer dereference")._text.delims(_left?.__copy__(), _right?.__copy__());
        return _t;
    }
    @:keep
    @:tdfield
    static public function funcs( _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template>, _funcMap:stdgo._internal.text.template.Template_funcmap.FuncMap):stdgo.Ref<stdgo._internal.html.template.Template_template.Template> {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template> = _t;
        @:check2r (@:checkr _t ?? throw "null pointer dereference")._text.funcs((_funcMap : stdgo._internal.text.template.Template_funcmap.FuncMap));
        return _t;
    }
    @:keep
    @:tdfield
    static public function name( _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template> = _t;
        return @:check2r (@:checkr _t ?? throw "null pointer dereference")._text.name()?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _new_( _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.html.template.Template_template.Template> {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template> = _t;
        var _tmpl = (stdgo.Go.setRef((new stdgo._internal.html.template.Template_template.Template((null : stdgo.Error), @:check2r (@:checkr _t ?? throw "null pointer dereference")._text.new_(_name?.__copy__()), null, (@:checkr _t ?? throw "null pointer dereference")._nameSpace) : stdgo._internal.html.template.Template_template.Template)) : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>);
        {
            var __tmp__ = ((@:checkr _tmpl ?? throw "null pointer dereference")._nameSpace._set != null && (@:checkr _tmpl ?? throw "null pointer dereference")._nameSpace._set.__exists__(_name?.__copy__()) ? { _0 : (@:checkr _tmpl ?? throw "null pointer dereference")._nameSpace._set[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>), _1 : false }), _existing:stdgo.Ref<stdgo._internal.html.template.Template_template.Template> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                var _emptyTmpl = stdgo._internal.html.template.Template_new_.new_(@:check2r _existing.name()?.__copy__());
                {
                    var __tmp__ = (_emptyTmpl : stdgo._internal.html.template.Template_template.Template)?.__copy__();
                    var x = (_existing : stdgo._internal.html.template.Template_template.Template);
                    x._escapeErr = __tmp__?._escapeErr;
                    x._text = __tmp__?._text;
                    x.tree = __tmp__?.tree;
                    x._nameSpace = __tmp__?._nameSpace;
                };
            };
        };
        (@:checkr _tmpl ?? throw "null pointer dereference")._nameSpace._set[_name] = _tmpl;
        return _tmpl;
    }
    @:keep
    @:tdfield
    static public function new_( _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.html.template.Template_template.Template> {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr (@:checkr _t ?? throw "null pointer dereference")._nameSpace ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr (@:checkr _t ?? throw "null pointer dereference")._nameSpace ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __ret__:stdgo.Ref<stdgo._internal.html.template.Template_template.Template> = @:check2r _t._new_(_name?.__copy__());
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function clone( _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template>):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr (@:checkr _t ?? throw "null pointer dereference")._nameSpace ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr (@:checkr _t ?? throw "null pointer dereference")._nameSpace ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _t ?? throw "null pointer dereference")._escapeErr != null) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("html/template: cannot Clone %q after it has executed" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _t.name())) };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var __tmp__ = @:check2r (@:checkr _t ?? throw "null pointer dereference")._text.clone(), _textClone:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _ns = (stdgo.Go.setRef(({ _set : (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.html.template.Template_template.Template>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.html.template.Template_template.Template>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.html.template.Template_template.Template>>) } : stdgo._internal.html.template.Template_t_namespace.T_nameSpace)) : stdgo.Ref<stdgo._internal.html.template.Template_t_namespace.T_nameSpace>);
            (@:checkr _ns ?? throw "null pointer dereference")._esc = stdgo._internal.html.template.Template__makeescaper._makeEscaper(_ns)?.__copy__();
            var _ret = (stdgo.Go.setRef((new stdgo._internal.html.template.Template_template.Template((null : stdgo.Error), _textClone, (@:checkr _textClone ?? throw "null pointer dereference").tree, _ns) : stdgo._internal.html.template.Template_template.Template)) : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>);
            (@:checkr _ret ?? throw "null pointer dereference")._nameSpace._set[@:check2r _ret.name()] = _ret;
            for (__78 => _x in @:check2r _textClone.templates()) {
                var _name = (@:check2r _x.name()?.__copy__() : stdgo.GoString);
                var _src = ((@:checkr _t ?? throw "null pointer dereference")._nameSpace._set[_name] ?? (null : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>));
                if (((_src == null || (_src : Dynamic).__nil__) || ((@:checkr _src ?? throw "null pointer dereference")._escapeErr != null) : Bool)) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("html/template: cannot Clone %q after it has executed" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _t.name())) };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                (@:checkr _x ?? throw "null pointer dereference").tree = @:check2r (@:checkr _x ?? throw "null pointer dereference").tree.copy();
                (@:checkr _ret ?? throw "null pointer dereference")._nameSpace._set[_name] = (stdgo.Go.setRef((new stdgo._internal.html.template.Template_template.Template((null : stdgo.Error), _x, (@:checkr _x ?? throw "null pointer dereference").tree, (@:checkr _ret ?? throw "null pointer dereference")._nameSpace) : stdgo._internal.html.template.Template_template.Template)) : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>);
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } = { _0 : ((@:checkr _ret ?? throw "null pointer dereference")._nameSpace._set[@:check2r _ret.name()] ?? (null : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>)), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (null : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (null : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function addParseTree( _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template>, _name:stdgo.GoString, _tree:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var _err = (@:check2r _t._checkCanParse() : stdgo.Error);
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            @:check2 (@:checkr (@:checkr _t ?? throw "null pointer dereference")._nameSpace ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr (@:checkr _t ?? throw "null pointer dereference")._nameSpace ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = @:check2r (@:checkr _t ?? throw "null pointer dereference")._text.addParseTree(_name?.__copy__(), _tree), _text:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _ret = (stdgo.Go.setRef((new stdgo._internal.html.template.Template_template.Template((null : stdgo.Error), _text, (@:checkr _text ?? throw "null pointer dereference").tree, (@:checkr _t ?? throw "null pointer dereference")._nameSpace) : stdgo._internal.html.template.Template_template.Template)) : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>);
            (@:checkr _t ?? throw "null pointer dereference")._nameSpace._set[_name] = _ret;
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } = { _0 : _ret, _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (null : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (null : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function parse( _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template>, _text:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var _err = (@:check2r _t._checkCanParse() : stdgo.Error);
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            var __tmp__ = @:check2r (@:checkr _t ?? throw "null pointer dereference")._text.parse(_text?.__copy__()), _ret:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            @:check2 (@:checkr (@:checkr _t ?? throw "null pointer dereference")._nameSpace ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr (@:checkr _t ?? throw "null pointer dereference")._nameSpace ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            for (__54 => _v in @:check2r _ret.templates()) {
                var _name = (@:check2r _v.name()?.__copy__() : stdgo.GoString);
                var _tmpl = ((@:checkr _t ?? throw "null pointer dereference")._nameSpace._set[_name] ?? (null : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>));
                if ((_tmpl == null || (_tmpl : Dynamic).__nil__)) {
                    _tmpl = @:check2r _t._new_(_name?.__copy__());
                };
                (@:checkr _tmpl ?? throw "null pointer dereference")._text = _v;
                (@:checkr _tmpl ?? throw "null pointer dereference").tree = (@:checkr _v ?? throw "null pointer dereference").tree;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } = { _0 : _t, _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (null : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (null : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function definedTemplates( _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template> = _t;
        return @:check2r (@:checkr _t ?? throw "null pointer dereference")._text.definedTemplates()?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _lookupAndEscapeTemplate( _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template>, _name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _tmpl = (null : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>), _err = (null : stdgo.Error);
        try {
            @:check2 (@:checkr (@:checkr _t ?? throw "null pointer dereference")._nameSpace ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr (@:checkr _t ?? throw "null pointer dereference")._nameSpace ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            (@:checkr (@:checkr _t ?? throw "null pointer dereference")._nameSpace ?? throw "null pointer dereference")._escaped = true;
            _tmpl = ((@:checkr _t ?? throw "null pointer dereference")._nameSpace._set[_name] ?? (null : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>));
            if ((_tmpl == null || (_tmpl : Dynamic).__nil__)) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("html/template: %q is undefined" : stdgo.GoString), stdgo.Go.toInterface(_name)) };
                        _tmpl = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if ((((@:checkr _tmpl ?? throw "null pointer dereference")._escapeErr != null) && (stdgo.Go.toInterface((@:checkr _tmpl ?? throw "null pointer dereference")._escapeErr) != stdgo.Go.toInterface(stdgo._internal.html.template.Template__escapeok._escapeOK)) : Bool)) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } = { _0 : null, _1 : (@:checkr _tmpl ?? throw "null pointer dereference")._escapeErr };
                        _tmpl = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if ((((@:checkr (@:checkr _tmpl ?? throw "null pointer dereference")._text ?? throw "null pointer dereference").tree == null || ((@:checkr (@:checkr _tmpl ?? throw "null pointer dereference")._text ?? throw "null pointer dereference").tree : Dynamic).__nil__) || ((@:checkr (@:checkr _tmpl ?? throw "null pointer dereference")._text ?? throw "null pointer dereference").tree.root == null || ((@:checkr (@:checkr _tmpl ?? throw "null pointer dereference")._text ?? throw "null pointer dereference").tree.root : Dynamic).__nil__) : Bool)) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("html/template: %q is an incomplete template" : stdgo.GoString), stdgo.Go.toInterface(_name)) };
                        _tmpl = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if ((@:check2r (@:checkr _t ?? throw "null pointer dereference")._text.lookup(_name?.__copy__()) == null || (@:check2r (@:checkr _t ?? throw "null pointer dereference")._text.lookup(_name?.__copy__()) : Dynamic).__nil__)) {
                throw stdgo.Go.toInterface(("html/template internal error: template escaping out of sync" : stdgo.GoString));
            };
            if ((@:checkr _tmpl ?? throw "null pointer dereference")._escapeErr == null) {
                _err = stdgo._internal.html.template.Template__escapetemplate._escapeTemplate(_tmpl, stdgo.Go.asInterface((@:checkr (@:checkr _tmpl ?? throw "null pointer dereference")._text ?? throw "null pointer dereference").tree.root), _name?.__copy__());
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } = {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } = { _0 : _tmpl, _1 : _err };
                    _tmpl = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : _tmpl, _1 : _err };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : _tmpl, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function executeTemplate( _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template>, _wr:stdgo._internal.io.Io_writer.Writer, _name:stdgo.GoString, _data:stdgo.AnyInterface):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template> = _t;
        var __tmp__ = @:check2r _t._lookupAndEscapeTemplate(_name?.__copy__()), _tmpl:stdgo.Ref<stdgo._internal.html.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        return @:check2r (@:checkr _tmpl ?? throw "null pointer dereference")._text.execute(_wr, _data);
    }
    @:keep
    @:tdfield
    static public function execute( _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template>, _wr:stdgo._internal.io.Io_writer.Writer, _data:stdgo.AnyInterface):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template> = _t;
        {
            var _err = (@:check2r _t._escape() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return @:check2r (@:checkr _t ?? throw "null pointer dereference")._text.execute(_wr, _data);
    }
    @:keep
    @:tdfield
    static public function _escape( _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template>):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr (@:checkr _t ?? throw "null pointer dereference")._nameSpace ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr (@:checkr _t ?? throw "null pointer dereference")._nameSpace ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            (@:checkr (@:checkr _t ?? throw "null pointer dereference")._nameSpace ?? throw "null pointer dereference")._escaped = true;
            if ((@:checkr _t ?? throw "null pointer dereference")._escapeErr == null) {
                if (((@:checkr _t ?? throw "null pointer dereference").tree == null || ((@:checkr _t ?? throw "null pointer dereference").tree : Dynamic).__nil__)) {
                    {
                        final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("template: %q is an incomplete or empty template" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _t.name()));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                {
                    var _err = (stdgo._internal.html.template.Template__escapetemplate._escapeTemplate(_t, stdgo.Go.asInterface((@:checkr (@:checkr _t ?? throw "null pointer dereference")._text ?? throw "null pointer dereference").tree.root), @:check2r _t.name()?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return _err;
                        };
                    };
                };
            } else if (stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference")._escapeErr) != (stdgo.Go.toInterface(stdgo._internal.html.template.Template__escapeok._escapeOK))) {
                {
                    final __ret__:stdgo.Error = (@:checkr _t ?? throw "null pointer dereference")._escapeErr;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Error);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _checkCanParse( _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template>):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((_t == null || (_t : Dynamic).__nil__)) {
                return (null : stdgo.Error);
            };
            @:check2 (@:checkr (@:checkr _t ?? throw "null pointer dereference")._nameSpace ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr (@:checkr _t ?? throw "null pointer dereference")._nameSpace ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr (@:checkr _t ?? throw "null pointer dereference")._nameSpace ?? throw "null pointer dereference")._escaped) {
                {
                    final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("html/template: cannot Parse after Execute" : stdgo.GoString));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Error);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function option( _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template>, _opt:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.html.template.Template_template.Template> {
        var _opt = new stdgo.Slice<stdgo.GoString>(_opt.length, 0, ..._opt);
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template> = _t;
        @:check2r (@:checkr _t ?? throw "null pointer dereference")._text.option(...(_opt : Array<stdgo.GoString>));
        return _t;
    }
    @:keep
    @:tdfield
    static public function templates( _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template>):stdgo.Slice<stdgo.Ref<stdgo._internal.html.template.Template_template.Template>> {
        @:recv var _t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _ns = (@:checkr _t ?? throw "null pointer dereference")._nameSpace;
            @:check2 (@:checkr _ns ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _ns ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _m = (new stdgo.Slice<stdgo.Ref<stdgo._internal.html.template.Template_template.Template>>((0 : stdgo.GoInt).toBasic(), ((@:checkr _ns ?? throw "null pointer dereference")._set.length)) : stdgo.Slice<stdgo.Ref<stdgo._internal.html.template.Template_template.Template>>);
            for (__14 => _v in (@:checkr _ns ?? throw "null pointer dereference")._set) {
                _m = (_m.__append__(_v));
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _m;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.html.template.Template_template.Template>>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.html.template.Template_template.Template>>);
            };
        };
    }
}

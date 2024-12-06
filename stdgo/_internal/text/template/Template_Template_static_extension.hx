package stdgo._internal.text.template;
@:keep @:allow(stdgo._internal.text.template.Template.Template_asInterface) class Template_static_extension {
    @:keep
    static public function _associate( _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>, _new:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>, _tree:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = _t;
        if (_new._common != (_t._common)) {
            throw stdgo.Go.toInterface(("internal error: associate not common" : stdgo.GoString));
        };
        {
            var _old = (_t._common._tmpl[_new._name] ?? (null : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>));
            if ((((_old != null && ((_old : Dynamic).__nil__ == null || !(_old : Dynamic).__nil__)) && stdgo._internal.text.template.Template__parse._parse.isEmptyTree(stdgo.Go.asInterface(_tree.root)) : Bool) && (_old.tree != null && ((_old.tree : Dynamic).__nil__ == null || !(_old.tree : Dynamic).__nil__)) : Bool)) {
                return false;
            };
        };
        _t._common._tmpl[_new._name] = _new;
        return true;
    }
    @:keep
    static public function parse( _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>, _text:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = _t;
        _t._init();
        _t._common._muFuncs.rlock();
        var __tmp__ = stdgo._internal.text.template.Template__parse._parse.parse(_t._name?.__copy__(), _text?.__copy__(), _t._leftDelim?.__copy__(), _t._rightDelim?.__copy__(), _t._common._parseFuncs, stdgo._internal.text.template.Template__builtins._builtins()), _trees:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _t._common._muFuncs.runlock();
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        for (_name => _tree in _trees) {
            {
                var __tmp__ = _t.addParseTree(_name?.__copy__(), _tree), __80:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
        };
        return { _0 : _t, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function lookup( _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((_t._common == null || (_t._common : Dynamic).__nil__)) {
                return null;
            };
            _t._common._muTmpl.rlock();
            __deferstack__.unshift(() -> _t._common._muTmpl.runlock());
            {
                final __ret__:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = (_t._common._tmpl[_name] ?? (null : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>));
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
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
            final __ret__:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function funcs( _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>, _funcMap:stdgo._internal.text.template.Template_FuncMap.FuncMap):stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t._init();
            _t._common._muFuncs.lock();
            __deferstack__.unshift(() -> _t._common._muFuncs.unlock());
            stdgo._internal.text.template.Template__addValueFuncs._addValueFuncs(_t._common._execFuncs, _funcMap);
            stdgo._internal.text.template.Template__addFuncs._addFuncs(_t._common._parseFuncs, _funcMap);
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _t;
            };
            {
                final __ret__:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
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
            final __ret__:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function delims( _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>, _left:stdgo.GoString, _right:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = _t;
        _t._init();
        _t._leftDelim = _left?.__copy__();
        _t._rightDelim = _right?.__copy__();
        return _t;
    }
    @:keep
    static public function templates( _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>):stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((_t._common == null || (_t._common : Dynamic).__nil__)) {
                return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>>);
            };
            _t._common._muTmpl.rlock();
            __deferstack__.unshift(() -> _t._common._muTmpl.runlock());
            var _m = (new stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>>((0 : stdgo.GoInt).toBasic(), (_t._common._tmpl.length)) : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>>);
            for (__56 => _v in _t._common._tmpl) {
                _m = (_m.__append__(_v));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _m;
            };
            {
                final __ret__:stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>>);
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
            final __ret__:stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>>);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function addParseTree( _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>, _name:stdgo.GoString, _tree:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t._init();
            _t._common._muTmpl.lock();
            __deferstack__.unshift(() -> _t._common._muTmpl.unlock());
            var _nt = _t;
            if (_name != (_t._name)) {
                _nt = _t.new_(_name?.__copy__());
            };
            if ((_t._associate(_nt, _tree) || (_nt.tree == null || (_nt.tree : Dynamic).__nil__) : Bool)) {
                _nt.tree = _tree;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>; var _1 : stdgo.Error; } = { _0 : _nt, _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>), _1 : (null : stdgo.Error) };
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
            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _copy( _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>, _c:stdgo.Ref<stdgo._internal.text.template.Template_T_common.T_common>):stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = _t;
        return (stdgo.Go.setRef(({ _name : _t._name?.__copy__(), tree : _t.tree, _common : _c, _leftDelim : _t._leftDelim?.__copy__(), _rightDelim : _t._rightDelim?.__copy__() } : stdgo._internal.text.template.Template_Template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
    }
    @:keep
    static public function clone( _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _nt = _t._copy(null);
            _nt._init();
            if ((_t._common == null || (_t._common : Dynamic).__nil__)) {
                return { _0 : _nt, _1 : (null : stdgo.Error) };
            };
            _t._common._muTmpl.rlock();
            __deferstack__.unshift(() -> _t._common._muTmpl.runlock());
            for (_k => _v in _t._common._tmpl) {
                if (_k == (_t._name)) {
                    _nt._common._tmpl[_t._name] = _nt;
                    continue;
                };
                var _tmpl = _v._copy(_nt._common);
                _nt._common._tmpl[_k] = _tmpl;
            };
            _t._common._muFuncs.rlock();
            __deferstack__.unshift(() -> _t._common._muFuncs.runlock());
            for (_k => _v in _t._common._parseFuncs) {
                _nt._common._parseFuncs[_k] = _v;
            };
            for (_k => _v in _t._common._execFuncs) {
                _nt._common._execFuncs[_k] = _v?.__copy__();
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>; var _1 : stdgo.Error; } = { _0 : _nt, _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>), _1 : (null : stdgo.Error) };
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
            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _init( _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = _t;
        if ((_t._common == null || (_t._common : Dynamic).__nil__)) {
            var _c = (stdgo.Go.setRef(({} : stdgo._internal.text.template.Template_T_common.T_common)) : stdgo.Ref<stdgo._internal.text.template.Template_T_common.T_common>);
            _c._tmpl = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>>);
            _c._parseFuncs = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>) : stdgo._internal.text.template.Template_FuncMap.FuncMap);
            _c._execFuncs = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo._internal.reflect.Reflect_Value.Value>();
                x.__defaultValue__ = () -> ({} : stdgo._internal.reflect.Reflect_Value.Value);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_Value.Value>);
            _t._common = _c;
        };
    }
    @:keep
    static public function new_( _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = _t;
        _t._init();
        var _nt = (stdgo.Go.setRef(({ _name : _name?.__copy__(), _common : _t._common, _leftDelim : _t._leftDelim?.__copy__(), _rightDelim : _t._rightDelim?.__copy__() } : stdgo._internal.text.template.Template_Template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        return _nt;
    }
    @:keep
    static public function name( _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = _t;
        return _t._name?.__copy__();
    }
    @:keep
    static public function _setOption( _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>, _opt:stdgo.GoString):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = _t;
        if (_opt == (stdgo.Go.str())) {
            throw stdgo.Go.toInterface(("empty option string" : stdgo.GoString));
        };
        {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_opt?.__copy__(), ("=" : stdgo.GoString)), _key:stdgo.GoString = __tmp__._0, _value:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                {
                    final __value__ = _key;
                    if (__value__ == (("missingkey" : stdgo.GoString))) {
                        {
                            final __value__ = _value;
                            if (__value__ == (("invalid" : stdgo.GoString)) || __value__ == (("default" : stdgo.GoString))) {
                                _t._common._option._missingKey = (0 : stdgo._internal.text.template.Template_T_missingKeyAction.T_missingKeyAction);
                                return;
                            } else if (__value__ == (("zero" : stdgo.GoString))) {
                                _t._common._option._missingKey = (1 : stdgo._internal.text.template.Template_T_missingKeyAction.T_missingKeyAction);
                                return;
                            } else if (__value__ == (("error" : stdgo.GoString))) {
                                _t._common._option._missingKey = (2 : stdgo._internal.text.template.Template_T_missingKeyAction.T_missingKeyAction);
                                return;
                            };
                        };
                    };
                };
            };
        };
        throw stdgo.Go.toInterface((("unrecognized option: " : stdgo.GoString) + _opt?.__copy__() : stdgo.GoString));
    }
    @:keep
    static public function option( _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>, _opt:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> {
        var _opt = new stdgo.Slice<stdgo.GoString>(_opt.length, 0, ..._opt);
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = _t;
        _t._init();
        for (__16 => _s in _opt) {
            _t._setOption(_s?.__copy__());
        };
        return _t;
    }
    @:keep
    static public function parseFS( _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>, _fsys:stdgo._internal.io.fs.Fs_FS.FS, _patterns:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>; var _1 : stdgo.Error; } {
        var _patterns = new stdgo.Slice<stdgo.GoString>(_patterns.length, 0, ..._patterns);
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = _t;
        _t._init();
        return stdgo._internal.text.template.Template__parseFS._parseFS(_t, _fsys, _patterns);
    }
    @:keep
    static public function parseGlob( _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>, _pattern:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = _t;
        _t._init();
        return stdgo._internal.text.template.Template__parseGlob._parseGlob(_t, _pattern?.__copy__());
    }
    @:keep
    static public function parseFiles( _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>, _filenames:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>; var _1 : stdgo.Error; } {
        var _filenames = new stdgo.Slice<stdgo.GoString>(_filenames.length, 0, ..._filenames);
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = _t;
        _t._init();
        return stdgo._internal.text.template.Template__parseFiles._parseFiles(_t, stdgo._internal.text.template.Template__readFileOS._readFileOS, ...(_filenames : Array<stdgo.GoString>));
    }
    @:keep
    static public function definedTemplates( _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((_t._common == null || (_t._common : Dynamic).__nil__)) {
                return stdgo.Go.str()?.__copy__();
            };
            var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
            var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
            var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
            var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
            var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
            _t._common._muTmpl.rlock();
            __deferstack__.unshift(() -> _t._common._muTmpl.runlock());
            for (_name => _tmpl in _t._common._tmpl) {
                if (((_tmpl.tree == null || (_tmpl.tree : Dynamic).__nil__) || (_tmpl.tree.root == null || (_tmpl.tree.root : Dynamic).__nil__) : Bool)) {
                    continue;
                };
                if (_b.len() == ((0 : stdgo.GoInt))) {
                    _b.writeString(("; defined templates are: " : stdgo.GoString));
                } else {
                    _b.writeString((", " : stdgo.GoString));
                };
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b__pointer__), ("%q" : stdgo.GoString), stdgo.Go.toInterface(_name));
            };
            {
                final __ret__:stdgo.GoString = (_b.string() : stdgo.GoString)?.__copy__();
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.GoString = ("" : stdgo.GoString);
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
            final __ret__:stdgo.GoString = ("" : stdgo.GoString);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _execute( _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>, _wr:stdgo._internal.io.Io_Writer.Writer, _data:stdgo.AnyInterface):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        var _err = (null : stdgo.Error);
        try {
            {
                var _a0 = (stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>);
                __deferstack__.unshift(() -> stdgo._internal.text.template.Template__errRecover._errRecover(_a0));
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_data : stdgo._internal.reflect.Reflect_Value.Value)) : stdgo._internal.reflect.Reflect_Value.Value), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.reflect.Reflect_Value.Value), _1 : false };
            }, _value = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _value = stdgo._internal.reflect.Reflect_valueOf.valueOf(_data)?.__copy__();
            };
            var _state = (stdgo.Go.setRef(({ _tmpl : _t, _wr : _wr, _vars : (new stdgo.Slice<stdgo._internal.text.template.Template_T_variable.T_variable>(1, 1, ...[(new stdgo._internal.text.template.Template_T_variable.T_variable(("$" : stdgo.GoString), _value?.__copy__()) : stdgo._internal.text.template.Template_T_variable.T_variable)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.text.template.Template_T_variable.T_variable)])) : stdgo.Slice<stdgo._internal.text.template.Template_T_variable.T_variable>) } : stdgo._internal.text.template.Template_T_state.T_state)) : stdgo.Ref<stdgo._internal.text.template.Template_T_state.T_state>);
            if (((_t.tree == null || (_t.tree : Dynamic).__nil__) || (_t.tree.root == null || (_t.tree.root : Dynamic).__nil__) : Bool)) {
                _state._errorf(("%q is an incomplete or empty template" : stdgo.GoString), stdgo.Go.toInterface(_t.name()));
            };
            _state._walk(_value?.__copy__(), stdgo.Go.asInterface(_t.tree.root));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _err;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _err;
        };
    }
    @:keep
    static public function execute( _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>, _wr:stdgo._internal.io.Io_Writer.Writer, _data:stdgo.AnyInterface):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = _t;
        return _t._execute(_wr, _data);
    }
    @:keep
    static public function executeTemplate( _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>, _wr:stdgo._internal.io.Io_Writer.Writer, _name:stdgo.GoString, _data:stdgo.AnyInterface):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = _t;
        var _tmpl = _t.lookup(_name?.__copy__());
        if ((_tmpl == null || (_tmpl : Dynamic).__nil__)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("template: no template %q associated with template %q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_t._name));
        };
        return _tmpl.execute(_wr, _data);
    }
    @:embedded
    public static function _withControl( __self__:stdgo._internal.text.template.Template_Template.Template):stdgo._internal.text.template.parse.Parse_Node.Node return __self__._withControl();
    @:embedded
    public static function _useVar( __self__:stdgo._internal.text.template.Template_Template.Template, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _text:stdgo.GoString):stdgo._internal.text.template.parse.Parse_Node.Node return __self__._useVar(_pos, _text);
    @:embedded
    public static function _unexpected( __self__:stdgo._internal.text.template.Template_Template.Template, _token:stdgo._internal.text.template.parse.Parse_T_item.T_item, _context:stdgo.GoString) __self__._unexpected(_token, _context);
    @:embedded
    public static function _textOrAction( __self__:stdgo._internal.text.template.Template_Template.Template):stdgo._internal.text.template.parse.Parse_Node.Node return __self__._textOrAction();
    @:embedded
    public static function _term( __self__:stdgo._internal.text.template.Template_Template.Template):stdgo._internal.text.template.parse.Parse_Node.Node return __self__._term();
    @:embedded
    public static function _templateControl( __self__:stdgo._internal.text.template.Template_Template.Template):stdgo._internal.text.template.parse.Parse_Node.Node return __self__._templateControl();
    @:embedded
    public static function _stopParse( __self__:stdgo._internal.text.template.Template_Template.Template) __self__._stopParse();
    @:embedded
    public static function _startParse( __self__:stdgo._internal.text.template.Template_Template.Template, _funcs:stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>, _lex:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>, _treeSet:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>) __self__._startParse(_funcs, _lex, _treeSet);
    @:embedded
    public static function _recover( __self__:stdgo._internal.text.template.Template_Template.Template, _errp:stdgo.Ref<stdgo.Error>) __self__._recover(_errp);
    @:embedded
    public static function _rangeControl( __self__:stdgo._internal.text.template.Template_Template.Template):stdgo._internal.text.template.parse.Parse_Node.Node return __self__._rangeControl();
    @:embedded
    public static function _popVars( __self__:stdgo._internal.text.template.Template_Template.Template, __0:stdgo.GoInt) __self__._popVars(__0);
    @:embedded
    public static function _pipeline( __self__:stdgo._internal.text.template.Template_Template.Template, _context:stdgo.GoString, _end:stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType):stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> return __self__._pipeline(_context, _end);
    @:embedded
    public static function _peekNonSpace( __self__:stdgo._internal.text.template.Template_Template.Template):stdgo._internal.text.template.parse.Parse_T_item.T_item return __self__._peekNonSpace();
    @:embedded
    public static function _peek( __self__:stdgo._internal.text.template.Template_Template.Template):stdgo._internal.text.template.parse.Parse_T_item.T_item return __self__._peek();
    @:embedded
    public static function _parseTemplateName( __self__:stdgo._internal.text.template.Template_Template.Template, _token:stdgo._internal.text.template.parse.Parse_T_item.T_item, _context:stdgo.GoString):stdgo.GoString return __self__._parseTemplateName(_token, _context);
    @:embedded
    public static function _parseDefinition( __self__:stdgo._internal.text.template.Template_Template.Template) __self__._parseDefinition();
    @:embedded
    public static function _parseControl( __self__:stdgo._internal.text.template.Template_Template.Template, _allowElseIf:Bool, _context:stdgo.GoString):{ var _0 : stdgo._internal.text.template.parse.Parse_Pos.Pos; var _1 : stdgo.GoInt; var _2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>; var _3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>; var _4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>; } return __self__._parseControl(_allowElseIf, _context);
    @:embedded
    public static function _parse( __self__:stdgo._internal.text.template.Template_Template.Template) __self__._parse();
    @:embedded
    public static function _operand( __self__:stdgo._internal.text.template.Template_Template.Template):stdgo._internal.text.template.parse.Parse_Node.Node return __self__._operand();
    @:embedded
    public static function _nextNonSpace( __self__:stdgo._internal.text.template.Template_Template.Template):stdgo._internal.text.template.parse.Parse_T_item.T_item return __self__._nextNonSpace();
    @:embedded
    public static function _next( __self__:stdgo._internal.text.template.Template_Template.Template):stdgo._internal.text.template.parse.Parse_T_item.T_item return __self__._next();
    @:embedded
    public static function _newWith( __self__:stdgo._internal.text.template.Template_Template.Template, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_WithNode.WithNode> return __self__._newWith(_pos, _line, _pipe, _list, _elseList);
    @:embedded
    public static function _newVariable( __self__:stdgo._internal.text.template.Template_Template.Template, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode> return __self__._newVariable(_pos, _text);
    @:embedded
    public static function _newText( __self__:stdgo._internal.text.template.Template_Template.Template, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode> return __self__._newText(_pos, _text);
    @:embedded
    public static function _newTemplate( __self__:stdgo._internal.text.template.Template_Template.Template, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt, _name:stdgo.GoString, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode> return __self__._newTemplate(_pos, _line, _name, _pipe);
    @:embedded
    public static function _newString( __self__:stdgo._internal.text.template.Template_Template.Template, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _orig:stdgo.GoString, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode> return __self__._newString(_pos, _orig, _text);
    @:embedded
    public static function _newRange( __self__:stdgo._internal.text.template.Template_Template.Template, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_RangeNode.RangeNode> return __self__._newRange(_pos, _line, _pipe, _list, _elseList);
    @:embedded
    public static function _newPipeline( __self__:stdgo._internal.text.template.Template_Template.Template, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt, _vars:stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> return __self__._newPipeline(_pos, _line, _vars);
    @:embedded
    public static function _newNumber( __self__:stdgo._internal.text.template.Template_Template.Template, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _text:stdgo.GoString, _typ:stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType):{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>; var _1 : stdgo.Error; } return __self__._newNumber(_pos, _text, _typ);
    @:embedded
    public static function _newNil( __self__:stdgo._internal.text.template.Template_Template.Template, __0:stdgo._internal.text.template.parse.Parse_Pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode> return __self__._newNil(__0);
    @:embedded
    public static function _newList( __self__:stdgo._internal.text.template.Template_Template.Template, __0:stdgo._internal.text.template.parse.Parse_Pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode> return __self__._newList(__0);
    @:embedded
    public static function _newIf( __self__:stdgo._internal.text.template.Template_Template.Template, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, _list:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>, _elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_IfNode.IfNode> return __self__._newIf(_pos, _line, _pipe, _list, _elseList);
    @:embedded
    public static function _newField( __self__:stdgo._internal.text.template.Template_Template.Template, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode> return __self__._newField(_pos, _text);
    @:embedded
    public static function _newEnd( __self__:stdgo._internal.text.template.Template_Template.Template, __0:stdgo._internal.text.template.parse.Parse_Pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_endNode.T_endNode> return __self__._newEnd(__0);
    @:embedded
    public static function _newElse( __self__:stdgo._internal.text.template.Template_Template.Template, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_elseNode.T_elseNode> return __self__._newElse(_pos, _line);
    @:embedded
    public static function _newDot( __self__:stdgo._internal.text.template.Template_Template.Template, __0:stdgo._internal.text.template.parse.Parse_Pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode> return __self__._newDot(__0);
    @:embedded
    public static function _newContinue( __self__:stdgo._internal.text.template.Template_Template.Template, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode> return __self__._newContinue(_pos, _line);
    @:embedded
    public static function _newComment( __self__:stdgo._internal.text.template.Template_Template.Template, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode> return __self__._newComment(_pos, _text);
    @:embedded
    public static function _newCommand( __self__:stdgo._internal.text.template.Template_Template.Template, __0:stdgo._internal.text.template.parse.Parse_Pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode> return __self__._newCommand(__0);
    @:embedded
    public static function _newChain( __self__:stdgo._internal.text.template.Template_Template.Template, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _node:stdgo._internal.text.template.parse.Parse_Node.Node):stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode> return __self__._newChain(_pos, _node);
    @:embedded
    public static function _newBreak( __self__:stdgo._internal.text.template.Template_Template.Template, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode> return __self__._newBreak(_pos, _line);
    @:embedded
    public static function _newBool( __self__:stdgo._internal.text.template.Template_Template.Template, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, __true:Bool):stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode> return __self__._newBool(_pos, __true);
    @:embedded
    public static function _newAction( __self__:stdgo._internal.text.template.Template_Template.Template, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode> return __self__._newAction(_pos, _line, _pipe);
    @:embedded
    public static function _itemList( __self__:stdgo._internal.text.template.Template_Template.Template):{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>; var _1 : stdgo._internal.text.template.parse.Parse_Node.Node; } return __self__._itemList();
    @:embedded
    public static function _ifControl( __self__:stdgo._internal.text.template.Template_Template.Template):stdgo._internal.text.template.parse.Parse_Node.Node return __self__._ifControl();
    @:embedded
    public static function _hasFunction( __self__:stdgo._internal.text.template.Template_Template.Template, __0:stdgo.GoString):Bool return __self__._hasFunction(__0);
    @:embedded
    public static function _expectOneOf( __self__:stdgo._internal.text.template.Template_Template.Template, _expected1:stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType, _expected2:stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType, _context:stdgo.GoString):stdgo._internal.text.template.parse.Parse_T_item.T_item return __self__._expectOneOf(_expected1, _expected2, _context);
    @:embedded
    public static function _expect( __self__:stdgo._internal.text.template.Template_Template.Template, _expected:stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType, _context:stdgo.GoString):stdgo._internal.text.template.parse.Parse_T_item.T_item return __self__._expect(_expected, _context);
    @:embedded
    public static function _errorf( __self__:stdgo._internal.text.template.Template_Template.Template, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>) __self__._errorf(_format, ...[for (i in _args) i]);
    @:embedded
    public static function _error( __self__:stdgo._internal.text.template.Template_Template.Template, __0:stdgo.Error) __self__._error(__0);
    @:embedded
    public static function _endControl( __self__:stdgo._internal.text.template.Template_Template.Template):stdgo._internal.text.template.parse.Parse_Node.Node return __self__._endControl();
    @:embedded
    public static function _elseControl( __self__:stdgo._internal.text.template.Template_Template.Template):stdgo._internal.text.template.parse.Parse_Node.Node return __self__._elseControl();
    @:embedded
    public static function _continueControl( __self__:stdgo._internal.text.template.Template_Template.Template, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt):stdgo._internal.text.template.parse.Parse_Node.Node return __self__._continueControl(_pos, _line);
    @:embedded
    public static function _command( __self__:stdgo._internal.text.template.Template_Template.Template):stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode> return __self__._command();
    @:embedded
    public static function _clearActionLine( __self__:stdgo._internal.text.template.Template_Template.Template) __self__._clearActionLine();
    @:embedded
    public static function _checkPipeline( __self__:stdgo._internal.text.template.Template_Template.Template, _pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, _context:stdgo.GoString) __self__._checkPipeline(_pipe, _context);
    @:embedded
    public static function _breakControl( __self__:stdgo._internal.text.template.Template_Template.Template, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, _line:stdgo.GoInt):stdgo._internal.text.template.parse.Parse_Node.Node return __self__._breakControl(_pos, _line);
    @:embedded
    public static function _blockControl( __self__:stdgo._internal.text.template.Template_Template.Template):stdgo._internal.text.template.parse.Parse_Node.Node return __self__._blockControl();
    @:embedded
    public static function _backup3( __self__:stdgo._internal.text.template.Template_Template.Template, _t2:stdgo._internal.text.template.parse.Parse_T_item.T_item, _t1:stdgo._internal.text.template.parse.Parse_T_item.T_item) __self__._backup3(_t2, _t1);
    @:embedded
    public static function _backup2( __self__:stdgo._internal.text.template.Template_Template.Template, _t1:stdgo._internal.text.template.parse.Parse_T_item.T_item) __self__._backup2(_t1);
    @:embedded
    public static function _backup( __self__:stdgo._internal.text.template.Template_Template.Template) __self__._backup();
    @:embedded
    public static function _add( __self__:stdgo._internal.text.template.Template_Template.Template) __self__._add();
    @:embedded
    public static function _action( __self__:stdgo._internal.text.template.Template_Template.Template):stdgo._internal.text.template.parse.Parse_Node.Node return __self__._action();
    @:embedded
    public static function errorContext( __self__:stdgo._internal.text.template.Template_Template.Template, _node:stdgo._internal.text.template.parse.Parse_Node.Node):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return __self__.errorContext(_node);
    @:embedded
    public static function copy( __self__:stdgo._internal.text.template.Template_Template.Template):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> return __self__.copy();
}

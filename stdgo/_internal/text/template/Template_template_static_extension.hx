package stdgo._internal.text.template;
@:keep @:allow(stdgo._internal.text.template.Template.Template_asInterface) class Template_static_extension {
    @:keep
    @:tdfield
    static public function _associate( _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>, _new_:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>, _tree:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = _t;
        //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L228"
        if ((@:checkr _new_ ?? throw "null pointer dereference")._common != ((@:checkr _t ?? throw "null pointer dereference")._common)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L229"
            throw stdgo.Go.toInterface(("internal error: associate not common" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L231"
        {
            var _old = ((@:checkr _t ?? throw "null pointer dereference")._common._tmpl[(@:checkr _new_ ?? throw "null pointer dereference")._name] ?? (null : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>));
            if (((({
                final value = _old;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && stdgo._internal.text.template.parse.Parse_isemptytree.isEmptyTree(stdgo.Go.asInterface((@:checkr _tree ?? throw "null pointer dereference").root)) : Bool) && ({
                final value = (@:checkr _old ?? throw "null pointer dereference").tree;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L234"
                return false;
            };
        };
        (@:checkr _t ?? throw "null pointer dereference")._common._tmpl[(@:checkr _new_ ?? throw "null pointer dereference")._name] = _new_;
        //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L237"
        return true;
    }
    @:keep
    @:tdfield
    static public function parse( _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>, _text:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = _t;
        //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L208"
        _t._init();
        //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L209"
        (@:checkr _t ?? throw "null pointer dereference")._common._muFuncs.rLock();
        var __tmp__ = stdgo._internal.text.template.parse.Parse_parse.parse((@:checkr _t ?? throw "null pointer dereference")._name?.__copy__(), _text?.__copy__(), (@:checkr _t ?? throw "null pointer dereference")._leftDelim?.__copy__(), (@:checkr _t ?? throw "null pointer dereference")._rightDelim?.__copy__(), (@:checkr _t ?? throw "null pointer dereference")._common._parseFuncs, stdgo._internal.text.template.Template__builtins._builtins()), _trees:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L211"
        (@:checkr _t ?? throw "null pointer dereference")._common._muFuncs.rUnlock();
        //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L212"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L213"
            return { _0 : null, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L216"
        for (_name => _tree in _trees) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L217"
            {
                var __tmp__ = _t.addParseTree(_name?.__copy__(), _tree), __80:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L218"
                    return { _0 : null, _1 : _err };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L221"
        return { _0 : _t, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function lookup( _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.Template_template.Template> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L189"
            if (({
                final value = (@:checkr _t ?? throw "null pointer dereference")._common;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L190"
                return null;
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L192"
            (@:checkr _t ?? throw "null pointer dereference")._common._muTmpl.rLock();
            {
                final __f__ = (@:checkr _t ?? throw "null pointer dereference")._common._muTmpl.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L194"
            {
                final __ret__:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = ((@:checkr _t ?? throw "null pointer dereference")._common._tmpl[_name] ?? (null : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>));
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
                return (null : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
                return (null : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function funcs( _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>, _funcMap:stdgo._internal.text.template.Template_funcmap.FuncMap):stdgo.Ref<stdgo._internal.text.template.Template_template.Template> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L178"
            _t._init();
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L179"
            (@:checkr _t ?? throw "null pointer dereference")._common._muFuncs.lock();
            {
                final __f__ = (@:checkr _t ?? throw "null pointer dereference")._common._muFuncs.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L181"
            stdgo._internal.text.template.Template__addvaluefuncs._addValueFuncs((@:checkr _t ?? throw "null pointer dereference")._common._execFuncs, _funcMap);
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L182"
            stdgo._internal.text.template.Template__addfuncs._addFuncs((@:checkr _t ?? throw "null pointer dereference")._common._parseFuncs, _funcMap);
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L183"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _t;
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
                return (null : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
                return (null : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function delims( _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>, _left:stdgo.GoString, _right:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.Template_template.Template> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = _t;
        //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L165"
        _t._init();
        (@:checkr _t ?? throw "null pointer dereference")._leftDelim = _left?.__copy__();
        (@:checkr _t ?? throw "null pointer dereference")._rightDelim = _right?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L168"
        return _t;
    }
    @:keep
    @:tdfield
    static public function templates( _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>):stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.Template_template.Template>> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L146"
            if (({
                final value = (@:checkr _t ?? throw "null pointer dereference")._common;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L147"
                return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.Template_template.Template>>);
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L150"
            (@:checkr _t ?? throw "null pointer dereference")._common._muTmpl.rLock();
            {
                final __f__ = (@:checkr _t ?? throw "null pointer dereference")._common._muTmpl.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _m = (new stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.Template_template.Template>>((0 : stdgo.GoInt).toBasic(), ((@:checkr _t ?? throw "null pointer dereference")._common._tmpl.length)) : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.Template_template.Template>>);
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L153"
            for (__56 => _v in (@:checkr _t ?? throw "null pointer dereference")._common._tmpl) {
                _m = (_m.__append__(_v) : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.Template_template.Template>>);
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L156"
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
                return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.Template_template.Template>>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
                return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.Template_template.Template>>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function addParseTree( _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>, _name:stdgo.GoString, _tree:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L130"
            _t._init();
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L131"
            (@:checkr _t ?? throw "null pointer dereference")._common._muTmpl.lock();
            {
                final __f__ = (@:checkr _t ?? throw "null pointer dereference")._common._muTmpl.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _nt = _t;
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L134"
            if (_name != ((@:checkr _t ?? throw "null pointer dereference")._name)) {
                _nt = _t.new_(_name?.__copy__());
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L138"
            if ((_t._associate(_nt, _tree) || ({
                final value = (@:checkr _nt ?? throw "null pointer dereference").tree;
                (value == null || (value : Dynamic).__nil__);
            }) : Bool)) {
                (@:checkr _nt ?? throw "null pointer dereference").tree = _tree;
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L141"
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>; var _1 : stdgo.Error; } = { _0 : _nt, _1 : (null : stdgo.Error) };
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
                return { _0 : (null : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
                return { _0 : (null : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _copy( _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>, _c:stdgo.Ref<stdgo._internal.text.template.Template_t_common.T_common>):stdgo.Ref<stdgo._internal.text.template.Template_template.Template> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = _t;
        //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L116"
        return (stdgo.Go.setRef(({ _name : (@:checkr _t ?? throw "null pointer dereference")._name?.__copy__(), tree : (@:checkr _t ?? throw "null pointer dereference").tree, _common : _c, _leftDelim : (@:checkr _t ?? throw "null pointer dereference")._leftDelim?.__copy__(), _rightDelim : (@:checkr _t ?? throw "null pointer dereference")._rightDelim?.__copy__() } : stdgo._internal.text.template.Template_template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
    }
    @:keep
    @:tdfield
    static public function clone( _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _nt = _t._copy(null);
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L88"
            _nt._init();
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L89"
            if (({
                final value = (@:checkr _t ?? throw "null pointer dereference")._common;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L90"
                return { _0 : _nt, _1 : (null : stdgo.Error) };
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L92"
            (@:checkr _t ?? throw "null pointer dereference")._common._muTmpl.rLock();
            {
                final __f__ = (@:checkr _t ?? throw "null pointer dereference")._common._muTmpl.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L94"
            for (_k => _v in (@:checkr _t ?? throw "null pointer dereference")._common._tmpl) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L95"
                if (_k == ((@:checkr _t ?? throw "null pointer dereference")._name)) {
                    (@:checkr _nt ?? throw "null pointer dereference")._common._tmpl[(@:checkr _t ?? throw "null pointer dereference")._name] = _nt;
                    //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L97"
                    continue;
                };
                var _tmpl = _v._copy((@:checkr _nt ?? throw "null pointer dereference")._common);
                (@:checkr _nt ?? throw "null pointer dereference")._common._tmpl[_k] = _tmpl;
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L103"
            (@:checkr _t ?? throw "null pointer dereference")._common._muFuncs.rLock();
            {
                final __f__ = (@:checkr _t ?? throw "null pointer dereference")._common._muFuncs.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L105"
            for (_k => _v in (@:checkr _t ?? throw "null pointer dereference")._common._parseFuncs) {
                (@:checkr _nt ?? throw "null pointer dereference")._common._parseFuncs[_k] = _v;
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L108"
            for (_k => _v in (@:checkr _t ?? throw "null pointer dereference")._common._execFuncs) {
                (@:checkr _nt ?? throw "null pointer dereference")._common._execFuncs[_k] = _v?.__copy__();
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L111"
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>; var _1 : stdgo.Error; } = { _0 : _nt, _1 : (null : stdgo.Error) };
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
                return { _0 : (null : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
                return { _0 : (null : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _init( _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = _t;
        //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L71"
        if (({
            final value = (@:checkr _t ?? throw "null pointer dereference")._common;
            (value == null || (value : Dynamic).__nil__);
        })) {
            var _c = (stdgo.Go.setRef(({} : stdgo._internal.text.template.Template_t_common.T_common)) : stdgo.Ref<stdgo._internal.text.template.Template_t_common.T_common>);
            (@:checkr _c ?? throw "null pointer dereference")._tmpl = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.text.template.Template_template.Template>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_template.Template>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_template.Template>>);
            (@:checkr _c ?? throw "null pointer dereference")._parseFuncs = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>) : stdgo._internal.text.template.Template_funcmap.FuncMap);
            (@:checkr _c ?? throw "null pointer dereference")._execFuncs = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo._internal.reflect.Reflect_value.Value>();
                x.__defaultValue__ = () -> ({} : stdgo._internal.reflect.Reflect_value.Value);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_value.Value>) : stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_value.Value>);
            (@:checkr _t ?? throw "null pointer dereference")._common = _c;
        };
    }
    @:keep
    @:tdfield
    static public function new_( _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.Template_template.Template> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = _t;
        //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L59"
        _t._init();
        var _nt = (stdgo.Go.setRef(({ _name : _name?.__copy__(), _common : (@:checkr _t ?? throw "null pointer dereference")._common, _leftDelim : (@:checkr _t ?? throw "null pointer dereference")._leftDelim?.__copy__(), _rightDelim : (@:checkr _t ?? throw "null pointer dereference")._rightDelim?.__copy__() } : stdgo._internal.text.template.Template_template.Template)) : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L66"
        return _nt;
    }
    @:keep
    @:tdfield
    static public function name( _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = _t;
        //"file:///home/runner/.go/go1.21.3/src/text/template/template.go#L48"
        return (@:checkr _t ?? throw "null pointer dereference")._name?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _setOption( _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>, _opt:stdgo.GoString):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = _t;
        //"file:///home/runner/.go/go1.21.3/src/text/template/option.go#L51"
        if (_opt == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/option.go#L52"
            throw stdgo.Go.toInterface(("empty option string" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/option.go#L55"
        {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_opt?.__copy__(), ("=" : stdgo.GoString)), _key:stdgo.GoString = __tmp__._0, _value:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/option.go#L56"
                {
                    final __value__ = _key;
                    if (__value__ == (("missingkey" : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/text/template/option.go#L58"
                        {
                            final __value__ = _value;
                            if (__value__ == (("invalid" : stdgo.GoString)) || __value__ == (("default" : stdgo.GoString))) {
                                (@:checkr _t ?? throw "null pointer dereference")._common._option._missingKey = (0 : stdgo._internal.text.template.Template_t_missingkeyaction.T_missingKeyAction);
                                //"file:///home/runner/.go/go1.21.3/src/text/template/option.go#L61"
                                return;
                            } else if (__value__ == (("zero" : stdgo.GoString))) {
                                (@:checkr _t ?? throw "null pointer dereference")._common._option._missingKey = (1 : stdgo._internal.text.template.Template_t_missingkeyaction.T_missingKeyAction);
                                //"file:///home/runner/.go/go1.21.3/src/text/template/option.go#L64"
                                return;
                            } else if (__value__ == (("error" : stdgo.GoString))) {
                                (@:checkr _t ?? throw "null pointer dereference")._common._option._missingKey = (2 : stdgo._internal.text.template.Template_t_missingkeyaction.T_missingKeyAction);
                                //"file:///home/runner/.go/go1.21.3/src/text/template/option.go#L67"
                                return;
                            };
                        };
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/option.go#L71"
        throw stdgo.Go.toInterface((("unrecognized option: " : stdgo.GoString) + _opt?.__copy__() : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function option( _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>, _opt:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.text.template.Template_template.Template> {
        var _opt = new stdgo.Slice<stdgo.GoString>(_opt.length, 0, ..._opt);
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = _t;
        //"file:///home/runner/.go/go1.21.3/src/text/template/option.go#L43"
        _t._init();
        //"file:///home/runner/.go/go1.21.3/src/text/template/option.go#L44"
        for (__16 => _s in _opt) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/option.go#L45"
            _t._setOption(_s?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/option.go#L47"
        return _t;
    }
    @:keep
    @:tdfield
    static public function parseFS( _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>, _fsys:stdgo._internal.io.fs.Fs_fs.FS, _patterns:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>; var _1 : stdgo.Error; } {
        var _patterns = new stdgo.Slice<stdgo.GoString>(_patterns.length, 0, ..._patterns);
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = _t;
        //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L147"
        _t._init();
        //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L148"
        return stdgo._internal.text.template.Template__parsefs._parseFS(_t, _fsys, _patterns);
    }
    @:keep
    @:tdfield
    static public function parseGlob( _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>, _pattern:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = _t;
        //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L118"
        _t._init();
        //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L119"
        return stdgo._internal.text.template.Template__parseglob._parseGlob(_t, _pattern?.__copy__());
    }
    @:keep
    @:tdfield
    static public function parseFiles( _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>, _filenames:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>; var _1 : stdgo.Error; } {
        var _filenames = new stdgo.Slice<stdgo.GoString>(_filenames.length, 0, ..._filenames);
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = _t;
        //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L56"
        _t._init();
        //"file:///home/runner/.go/go1.21.3/src/text/template/helper.go#L57"
        return stdgo._internal.text.template.Template__parsefiles._parseFiles(_t, stdgo._internal.text.template.Template__readfileos._readFileOS, ...(_filenames : Array<stdgo.GoString>));
    }
    @:keep
    @:tdfield
    static public function definedTemplates( _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L233"
            if (({
                final value = (@:checkr _t ?? throw "null pointer dereference")._common;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L234"
                return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            };
            var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L237"
            (@:checkr _t ?? throw "null pointer dereference")._common._muTmpl.rLock();
            {
                final __f__ = (@:checkr _t ?? throw "null pointer dereference")._common._muTmpl.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L239"
            for (_name => _tmpl in (@:checkr _t ?? throw "null pointer dereference")._common._tmpl) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L240"
                if ((({
                    final value = (@:checkr _tmpl ?? throw "null pointer dereference").tree;
                    (value == null || (value : Dynamic).__nil__);
                }) || ({
                    final value = (@:checkr _tmpl ?? throw "null pointer dereference").tree.root;
                    (value == null || (value : Dynamic).__nil__);
                }) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L241"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L243"
                if (_b.len() == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L244"
                    _b.writeString(("; defined templates are: " : stdgo.GoString));
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L246"
                    _b.writeString((", " : stdgo.GoString));
                };
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L248"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), ("%q" : stdgo.GoString), stdgo.Go.toInterface(_name));
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L250"
            {
                final __ret__:stdgo.GoString = (_b.string() : stdgo.GoString)?.__copy__();
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
                return ("" : stdgo.GoString);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
                return ("" : stdgo.GoString);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _execute( _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>, _wr:stdgo._internal.io.Io_writer.Writer, _data:stdgo.AnyInterface):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _err = (null : stdgo.Error);
        try {
            {
                var _a0 = (stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>);
                final __f__ = stdgo._internal.text.template.Template__errrecover._errRecover;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_data : stdgo._internal.reflect.Reflect_value.Value)) : stdgo._internal.reflect.Reflect_value.Value), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.reflect.Reflect_value.Value), _1 : false };
            }, _value = __tmp__._0, _ok = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L213"
            if (!_ok) {
                _value = stdgo._internal.reflect.Reflect_valueof.valueOf(_data)?.__copy__();
            };
            var _state = (stdgo.Go.setRef(({ _tmpl : _t, _wr : _wr, _vars : (new stdgo.Slice<stdgo._internal.text.template.Template_t_variable.T_variable>(1, 1, ...[(new stdgo._internal.text.template.Template_t_variable.T_variable(("$" : stdgo.GoString), _value?.__copy__()) : stdgo._internal.text.template.Template_t_variable.T_variable)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.text.template.Template_t_variable.T_variable)])) : stdgo.Slice<stdgo._internal.text.template.Template_t_variable.T_variable>) } : stdgo._internal.text.template.Template_t_state.T_state)) : stdgo.Ref<stdgo._internal.text.template.Template_t_state.T_state>);
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L221"
            if ((({
                final value = (@:checkr _t ?? throw "null pointer dereference").tree;
                (value == null || (value : Dynamic).__nil__);
            }) || ({
                final value = (@:checkr _t ?? throw "null pointer dereference").tree.root;
                (value == null || (value : Dynamic).__nil__);
            }) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L222"
                _state._errorf(("%q is an incomplete or empty template" : stdgo.GoString), stdgo.Go.toInterface(_t.name()));
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L224"
            _state._walk(_value?.__copy__(), stdgo.Go.asInterface((@:checkr _t ?? throw "null pointer dereference").tree.root));
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L225"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _err;
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
                return _err;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
                return _err;
            };
        };
    }
    @:keep
    @:tdfield
    static public function execute( _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>, _wr:stdgo._internal.io.Io_writer.Writer, _data:stdgo.AnyInterface):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = _t;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L207"
        return _t._execute(_wr, _data);
    }
    @:keep
    @:tdfield
    static public function executeTemplate( _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>, _wr:stdgo._internal.io.Io_writer.Writer, _name:stdgo.GoString, _data:stdgo.AnyInterface):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = _t;
        var _tmpl = _t.lookup(_name?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L190"
        if (({
            final value = _tmpl;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L191"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("template: no template %q associated with template %q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference")._name));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L193"
        return _tmpl.execute(_wr, _data);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _withControl( __self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_node.Node return @:_5 __self__._withControl();
    @:embedded
    @:embeddededffieldsffun
    public static function _useVar( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoString):stdgo._internal.text.template.parse.Parse_node.Node return @:_5 __self__._useVar(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _unexpected( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_t_item.T_item, _1:stdgo.GoString):Void return @:_5 __self__._unexpected(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _textOrAction( __self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_node.Node return @:_5 __self__._textOrAction();
    @:embedded
    @:embeddededffieldsffun
    public static function _term( __self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_node.Node return @:_5 __self__._term();
    @:embedded
    @:embeddededffieldsffun
    public static function _templateControl( __self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_node.Node return @:_5 __self__._templateControl();
    @:embedded
    @:embeddededffieldsffun
    public static function _stopParse( __self__:stdgo._internal.text.template.Template_template.Template):Void return @:_5 __self__._stopParse();
    @:embedded
    @:embeddededffieldsffun
    public static function _startParse( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>, _1:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>, _2:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>>):Void return @:_5 __self__._startParse(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function _recover( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo.Ref<stdgo.Error>):Void return @:_5 __self__._recover(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _rangeControl( __self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_node.Node return @:_5 __self__._rangeControl();
    @:embedded
    @:embeddededffieldsffun
    public static function _popVars( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo.GoInt):Void return @:_5 __self__._popVars(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _pipeline( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo.GoString, _1:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType):stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode> return @:_5 __self__._pipeline(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _peekNonSpace( __self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_t_item.T_item return @:_5 __self__._peekNonSpace();
    @:embedded
    @:embeddededffieldsffun
    public static function _peek( __self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_t_item.T_item return @:_5 __self__._peek();
    @:embedded
    @:embeddededffieldsffun
    public static function _parseTemplateName( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_t_item.T_item, _1:stdgo.GoString):stdgo.GoString return @:_5 __self__._parseTemplateName(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _parseDefinition( __self__:stdgo._internal.text.template.Template_template.Template):Void return @:_5 __self__._parseDefinition();
    @:embedded
    @:embeddededffieldsffun
    public static function _parseControl( __self__:stdgo._internal.text.template.Template_template.Template, _0:Bool, _1:stdgo.GoString):{ var _0 : stdgo._internal.text.template.parse.Parse_pos.Pos; var _1 : stdgo.GoInt; var _2 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>; var _3 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>; var _4 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>; } return @:_5 __self__._parseControl(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _parse( __self__:stdgo._internal.text.template.Template_template.Template):Void return @:_5 __self__._parse();
    @:embedded
    @:embeddededffieldsffun
    public static function _operand( __self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_node.Node return @:_5 __self__._operand();
    @:embedded
    @:embeddededffieldsffun
    public static function _nextNonSpace( __self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_t_item.T_item return @:_5 __self__._nextNonSpace();
    @:embedded
    @:embeddededffieldsffun
    public static function _next( __self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_t_item.T_item return @:_5 __self__._next();
    @:embedded
    @:embeddededffieldsffun
    public static function _newWith( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoInt, _2:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>, _3:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>, _4:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_withnode.WithNode> return @:_5 __self__._newWith(_0, _1, _2, _3, _4);
    @:embedded
    @:embeddededffieldsffun
    public static function _newVariable( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode> return @:_5 __self__._newVariable(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _newText( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_textnode.TextNode> return @:_5 __self__._newText(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _newTemplate( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoInt, _2:stdgo.GoString, _3:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode> return @:_5 __self__._newTemplate(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public static function _newString( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoString, _2:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_stringnode.StringNode> return @:_5 __self__._newString(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function _newRange( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoInt, _2:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>, _3:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>, _4:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_rangenode.RangeNode> return @:_5 __self__._newRange(_0, _1, _2, _3, _4);
    @:embedded
    @:embeddededffieldsffun
    public static function _newPipeline( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoInt, _2:stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode> return @:_5 __self__._newPipeline(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function _newNumber( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoString, _2:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType):{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_numbernode.NumberNode>; var _1 : stdgo.Error; } return @:_5 __self__._newNumber(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function _newNil( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_nilnode.NilNode> return @:_5 __self__._newNil(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _newList( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode> return @:_5 __self__._newList(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _newIf( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoInt, _2:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>, _3:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>, _4:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_ifnode.IfNode> return @:_5 __self__._newIf(_0, _1, _2, _3, _4);
    @:embedded
    @:embeddededffieldsffun
    public static function _newField( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_fieldnode.FieldNode> return @:_5 __self__._newField(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _newEnd( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_endnode.T_endNode> return @:_5 __self__._newEnd(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _newElse( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_elsenode.T_elseNode> return @:_5 __self__._newElse(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _newDot( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_dotnode.DotNode> return @:_5 __self__._newDot(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _newContinue( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode> return @:_5 __self__._newContinue(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _newComment( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_commentnode.CommentNode> return @:_5 __self__._newComment(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _newCommand( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode> return @:_5 __self__._newCommand(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _newChain( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo._internal.text.template.parse.Parse_node.Node):stdgo.Ref<stdgo._internal.text.template.parse.Parse_chainnode.ChainNode> return @:_5 __self__._newChain(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _newBreak( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoInt):stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode> return @:_5 __self__._newBreak(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _newBool( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:Bool):stdgo.Ref<stdgo._internal.text.template.parse.Parse_boolnode.BoolNode> return @:_5 __self__._newBool(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _newAction( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoInt, _2:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_actionnode.ActionNode> return @:_5 __self__._newAction(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function _itemList( __self__:stdgo._internal.text.template.Template_template.Template):{ var _0 : stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>; var _1 : stdgo._internal.text.template.parse.Parse_node.Node; } return @:_5 __self__._itemList();
    @:embedded
    @:embeddededffieldsffun
    public static function _ifControl( __self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_node.Node return @:_5 __self__._ifControl();
    @:embedded
    @:embeddededffieldsffun
    public static function _hasFunction( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo.GoString):Bool return @:_5 __self__._hasFunction(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _expectOneOf( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType, _1:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType, _2:stdgo.GoString):stdgo._internal.text.template.parse.Parse_t_item.T_item return @:_5 __self__._expectOneOf(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function _expect( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType, _1:stdgo.GoString):stdgo._internal.text.template.parse.Parse_t_item.T_item return @:_5 __self__._expect(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _errorf( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__._errorf(_0, ...[for (i in _1) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function _error( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo.Error):Void return @:_5 __self__._error(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _endControl( __self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_node.Node return @:_5 __self__._endControl();
    @:embedded
    @:embeddededffieldsffun
    public static function _elseControl( __self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_node.Node return @:_5 __self__._elseControl();
    @:embedded
    @:embeddededffieldsffun
    public static function _continueControl( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoInt):stdgo._internal.text.template.parse.Parse_node.Node return @:_5 __self__._continueControl(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _command( __self__:stdgo._internal.text.template.Template_template.Template):stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode> return @:_5 __self__._command();
    @:embedded
    @:embeddededffieldsffun
    public static function _clearActionLine( __self__:stdgo._internal.text.template.Template_template.Template):Void return @:_5 __self__._clearActionLine();
    @:embedded
    @:embeddededffieldsffun
    public static function _checkPipeline( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>, _1:stdgo.GoString):Void return @:_5 __self__._checkPipeline(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _breakControl( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_pos.Pos, _1:stdgo.GoInt):stdgo._internal.text.template.parse.Parse_node.Node return @:_5 __self__._breakControl(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _blockControl( __self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_node.Node return @:_5 __self__._blockControl();
    @:embedded
    @:embeddededffieldsffun
    public static function _backup3( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_t_item.T_item, _1:stdgo._internal.text.template.parse.Parse_t_item.T_item):Void return @:_5 __self__._backup3(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _backup2( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_t_item.T_item):Void return @:_5 __self__._backup2(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _backup( __self__:stdgo._internal.text.template.Template_template.Template):Void return @:_5 __self__._backup();
    @:embedded
    @:embeddededffieldsffun
    public static function _add( __self__:stdgo._internal.text.template.Template_template.Template):Void return @:_5 __self__._add();
    @:embedded
    @:embeddededffieldsffun
    public static function _action( __self__:stdgo._internal.text.template.Template_template.Template):stdgo._internal.text.template.parse.Parse_node.Node return @:_5 __self__._action();
    @:embedded
    @:embeddededffieldsffun
    public static function errorContext( __self__:stdgo._internal.text.template.Template_template.Template, _0:stdgo._internal.text.template.parse.Parse_node.Node):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return @:_5 __self__.errorContext(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function copy( __self__:stdgo._internal.text.template.Template_template.Template):stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> return @:_5 __self__.copy();
}

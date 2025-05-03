package stdgo._internal.expvar;
@:keep @:allow(stdgo._internal.expvar.Expvar.Map__asInterface) class Map__static_extension {
    @:keep
    @:tdfield
    static public function do_( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_>, _f:stdgo._internal.expvar.Expvar_keyvalue.KeyValue -> Void):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_> = _v;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L228"
            (@:checkr _v ?? throw "null pointer dereference")._keysMu.rLock();
            {
                final __f__ = (@:checkr _v ?? throw "null pointer dereference")._keysMu.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L230"
            for (__36 => _k in (@:checkr _v ?? throw "null pointer dereference")._keys) {
                var __tmp__ = (@:checkr _v ?? throw "null pointer dereference")._m.load(stdgo.Go.toInterface(_k)), _i:stdgo.AnyInterface = __tmp__._0, __49:Bool = __tmp__._1;
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_i : stdgo._internal.expvar.Expvar_var.Var)) : stdgo._internal.expvar.Expvar_var.Var), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.expvar.Expvar_var.Var), _1 : false };
                }, _val = __tmp__._0, __50 = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L233"
                _f((new stdgo._internal.expvar.Expvar_keyvalue.KeyValue(_k?.__copy__(), _val) : stdgo._internal.expvar.Expvar_keyvalue.KeyValue));
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
                return;
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function delete( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_>, _key:stdgo.GoString):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_> = _v;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L215"
            (@:checkr _v ?? throw "null pointer dereference")._keysMu.lock();
            {
                final __f__ = (@:checkr _v ?? throw "null pointer dereference")._keysMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _i = (stdgo._internal.sort.Sort_searchstrings.searchStrings((@:checkr _v ?? throw "null pointer dereference")._keys, _key?.__copy__()) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L218"
            if (((_i < ((@:checkr _v ?? throw "null pointer dereference")._keys.length) : Bool) && (_key == (@:checkr _v ?? throw "null pointer dereference")._keys[(_i : stdgo.GoInt)]) : Bool)) {
                (@:checkr _v ?? throw "null pointer dereference")._keys = (((@:checkr _v ?? throw "null pointer dereference")._keys.__slice__(0, _i) : stdgo.Slice<stdgo.GoString>).__append__(...(((@:checkr _v ?? throw "null pointer dereference")._keys.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>) : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
                //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L220"
                (@:checkr _v ?? throw "null pointer dereference")._m.delete(stdgo.Go.toInterface(_key));
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
                return;
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function addFloat( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_>, _key:stdgo.GoString, _delta:stdgo.GoFloat64):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_> = _v;
        var __tmp__ = (@:checkr _v ?? throw "null pointer dereference")._m.load(stdgo.Go.toInterface(_key)), _i:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L199"
        if (!_ok) {
            var _dup:Bool = false;
            {
                var __tmp__ = (@:checkr _v ?? throw "null pointer dereference")._m.loadOrStore(stdgo.Go.toInterface(_key), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.expvar.Expvar_float_.Float_)) : stdgo.Ref<stdgo._internal.expvar.Expvar_float_.Float_>))));
                _i = @:tmpset0 __tmp__._0;
                _dup = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L202"
            if (!_dup) {
                //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L203"
                _v._addKey(_key?.__copy__());
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L208"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_i : stdgo.Ref<stdgo._internal.expvar.Expvar_float_.Float_>)) : stdgo.Ref<stdgo._internal.expvar.Expvar_float_.Float_>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.expvar.Expvar_float_.Float_>), _1 : false };
            }, _iv = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L209"
                _iv.add(_delta);
            };
        };
    }
    @:keep
    @:tdfield
    static public function add( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_>, _key:stdgo.GoString, _delta:stdgo.GoInt64):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_> = _v;
        var __tmp__ = (@:checkr _v ?? throw "null pointer dereference")._m.load(stdgo.Go.toInterface(_key)), _i:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L182"
        if (!_ok) {
            var _dup:Bool = false;
            {
                var __tmp__ = (@:checkr _v ?? throw "null pointer dereference")._m.loadOrStore(stdgo.Go.toInterface(_key), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.expvar.Expvar_int_.Int_)) : stdgo.Ref<stdgo._internal.expvar.Expvar_int_.Int_>))));
                _i = @:tmpset0 __tmp__._0;
                _dup = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L185"
            if (!_dup) {
                //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L186"
                _v._addKey(_key?.__copy__());
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L191"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_i : stdgo.Ref<stdgo._internal.expvar.Expvar_int_.Int_>)) : stdgo.Ref<stdgo._internal.expvar.Expvar_int_.Int_>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.expvar.Expvar_int_.Int_>), _1 : false };
            }, _iv = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L192"
                _iv.add(_delta);
            };
        };
    }
    @:keep
    @:tdfield
    static public function set( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_>, _key:stdgo.GoString, _av:stdgo._internal.expvar.Expvar_var.Var):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_> = _v;
        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L169"
        {
            var __tmp__ = (@:checkr _v ?? throw "null pointer dereference")._m.load(stdgo.Go.toInterface(_key)), __16:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L170"
                {
                    var __tmp__ = (@:checkr _v ?? throw "null pointer dereference")._m.loadOrStore(stdgo.Go.toInterface(_key), stdgo.Go.toInterface(_av)), __29:stdgo.AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
                    if (!_dup) {
                        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L171"
                        _v._addKey(_key?.__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L172"
                        return;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L176"
        (@:checkr _v ?? throw "null pointer dereference")._m.store(stdgo.Go.toInterface(_key), stdgo.Go.toInterface(_av));
    }
    @:keep
    @:tdfield
    static public function get( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_>, _key:stdgo.GoString):stdgo._internal.expvar.Expvar_var.Var {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_> = _v;
        var __tmp__ = (@:checkr _v ?? throw "null pointer dereference")._m.load(stdgo.Go.toInterface(_key)), _i:stdgo.AnyInterface = __tmp__._0, __16:Bool = __tmp__._1;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_i : stdgo._internal.expvar.Expvar_var.Var)) : stdgo._internal.expvar.Expvar_var.Var), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.expvar.Expvar_var.Var), _1 : false };
        }, _av = __tmp__._0, __17 = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L162"
        return _av;
    }
    @:keep
    @:tdfield
    static public function _addKey( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_>, _key:stdgo.GoString):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_> = _v;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L147"
            (@:checkr _v ?? throw "null pointer dereference")._keysMu.lock();
            {
                final __f__ = (@:checkr _v ?? throw "null pointer dereference")._keysMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L150"
            {
                var _i = (stdgo._internal.sort.Sort_searchstrings.searchStrings((@:checkr _v ?? throw "null pointer dereference")._keys, _key?.__copy__()) : stdgo.GoInt);
                if ((_i >= ((@:checkr _v ?? throw "null pointer dereference")._keys.length) : Bool)) {
                    (@:checkr _v ?? throw "null pointer dereference")._keys = ((@:checkr _v ?? throw "null pointer dereference")._keys.__append__(_key?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                } else if ((@:checkr _v ?? throw "null pointer dereference")._keys[(_i : stdgo.GoInt)] != (_key)) {
                    (@:checkr _v ?? throw "null pointer dereference")._keys = ((@:checkr _v ?? throw "null pointer dereference")._keys.__append__((stdgo.Go.str() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                    //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L154"
                    ((@:checkr _v ?? throw "null pointer dereference")._keys.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>).__copyTo__(((@:checkr _v ?? throw "null pointer dereference")._keys.__slice__(_i) : stdgo.Slice<stdgo.GoString>));
                    (@:checkr _v ?? throw "null pointer dereference")._keys[(_i : stdgo.GoInt)] = _key?.__copy__();
                };
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
                return;
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function init( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_>):stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_> {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_> = _v;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L135"
            (@:checkr _v ?? throw "null pointer dereference")._keysMu.lock();
            {
                final __f__ = (@:checkr _v ?? throw "null pointer dereference")._keysMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            (@:checkr _v ?? throw "null pointer dereference")._keys = ((@:checkr _v ?? throw "null pointer dereference")._keys.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
            //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L138"
            (@:checkr _v ?? throw "null pointer dereference")._m.range(function(_k:stdgo.AnyInterface, __56:stdgo.AnyInterface):Bool {
                //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L139"
                (@:checkr _v ?? throw "null pointer dereference")._m.delete(_k);
                //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L140"
                return true;
            });
            //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L142"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _v;
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
                return (null : stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_>);
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
                return (null : stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function string( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_>):stdgo.GoString {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_> = _v;
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L115"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), ("{" : stdgo.GoString));
        var _first = (true : Bool);
        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L117"
        _v.do_(function(_kv:stdgo._internal.expvar.Expvar_keyvalue.KeyValue):Void {
            //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L118"
            if (!_first) {
                //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L119"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), (", " : stdgo.GoString));
            };
            //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L121"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), ("%q: " : stdgo.GoString), stdgo.Go.toInterface(_kv.key));
            //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L122"
            if (_kv.value != null) {
                //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L123"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), ("%v" : stdgo.GoString), stdgo.Go.toInterface(_kv.value));
            } else {
                //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L125"
                stdgo._internal.fmt.Fmt_fprint.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), stdgo.Go.toInterface(("null" : stdgo.GoString)));
            };
            _first = false;
        });
        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L129"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), ("}" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L130"
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
}

package stdgo._internal.expvar;
@:keep @:allow(stdgo._internal.expvar.Expvar.Map__asInterface) class Map__static_extension {
    @:keep
    @:tdfield
    static public function do_( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_>, _f:stdgo._internal.expvar.Expvar_KeyValue.KeyValue -> Void):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_> = _v;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            @:check2 (@:checkr _v ?? throw "null pointer dereference")._keysMu.rLock();
            {
                final __f__ = @:check2 (@:checkr _v ?? throw "null pointer dereference")._keysMu.rUnlock;
                __deferstack__.unshift(() -> __f__());
            };
            for (__36 => _k in (@:checkr _v ?? throw "null pointer dereference")._keys) {
                var __tmp__ = @:check2 (@:checkr _v ?? throw "null pointer dereference")._m.load(stdgo.Go.toInterface(_k)), _i:stdgo.AnyInterface = __tmp__._0, __49:Bool = __tmp__._1;
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_i : stdgo._internal.expvar.Expvar_Var.Var)) : stdgo._internal.expvar.Expvar_Var.Var), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.expvar.Expvar_Var.Var), _1 : false };
                }, _val = __tmp__._0, __50 = __tmp__._1;
                _f((new stdgo._internal.expvar.Expvar_KeyValue.KeyValue(_k?.__copy__(), _val) : stdgo._internal.expvar.Expvar_KeyValue.KeyValue));
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    @:tdfield
    static public function delete( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_>, _key:stdgo.GoString):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_> = _v;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            @:check2 (@:checkr _v ?? throw "null pointer dereference")._keysMu.lock();
            {
                final __f__ = @:check2 (@:checkr _v ?? throw "null pointer dereference")._keysMu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            var _i = (stdgo._internal.sort.Sort_searchStrings.searchStrings((@:checkr _v ?? throw "null pointer dereference")._keys, _key?.__copy__()) : stdgo.GoInt);
            if (((_i < ((@:checkr _v ?? throw "null pointer dereference")._keys.length) : Bool) && (_key == (@:checkr _v ?? throw "null pointer dereference")._keys[(_i : stdgo.GoInt)]) : Bool)) {
                (@:checkr _v ?? throw "null pointer dereference")._keys = (((@:checkr _v ?? throw "null pointer dereference")._keys.__slice__(0, _i) : stdgo.Slice<stdgo.GoString>).__append__(...(((@:checkr _v ?? throw "null pointer dereference")._keys.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>) : Array<stdgo.GoString>)));
                @:check2 (@:checkr _v ?? throw "null pointer dereference")._m.delete(stdgo.Go.toInterface(_key));
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    @:tdfield
    static public function addFloat( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_>, _key:stdgo.GoString, _delta:stdgo.GoFloat64):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_> = _v;
        var __tmp__ = @:check2 (@:checkr _v ?? throw "null pointer dereference")._m.load(stdgo.Go.toInterface(_key)), _i:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            var _dup:Bool = false;
            {
                var __tmp__ = @:check2 (@:checkr _v ?? throw "null pointer dereference")._m.loadOrStore(stdgo.Go.toInterface(_key), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.expvar.Expvar_Float_.Float_)) : stdgo.Ref<stdgo._internal.expvar.Expvar_Float_.Float_>))));
                _i = __tmp__._0;
                _dup = __tmp__._1;
            };
            if (!_dup) {
                @:check2r _v._addKey(_key?.__copy__());
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_i : stdgo.Ref<stdgo._internal.expvar.Expvar_Float_.Float_>)) : stdgo.Ref<stdgo._internal.expvar.Expvar_Float_.Float_>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.expvar.Expvar_Float_.Float_>), _1 : false };
            }, _iv = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                @:check2r _iv.add(_delta);
            };
        };
    }
    @:keep
    @:tdfield
    static public function add( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_>, _key:stdgo.GoString, _delta:stdgo.GoInt64):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_> = _v;
        var __tmp__ = @:check2 (@:checkr _v ?? throw "null pointer dereference")._m.load(stdgo.Go.toInterface(_key)), _i:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            var _dup:Bool = false;
            {
                var __tmp__ = @:check2 (@:checkr _v ?? throw "null pointer dereference")._m.loadOrStore(stdgo.Go.toInterface(_key), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.expvar.Expvar_Int_.Int_)) : stdgo.Ref<stdgo._internal.expvar.Expvar_Int_.Int_>))));
                _i = __tmp__._0;
                _dup = __tmp__._1;
            };
            if (!_dup) {
                @:check2r _v._addKey(_key?.__copy__());
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_i : stdgo.Ref<stdgo._internal.expvar.Expvar_Int_.Int_>)) : stdgo.Ref<stdgo._internal.expvar.Expvar_Int_.Int_>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.expvar.Expvar_Int_.Int_>), _1 : false };
            }, _iv = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                @:check2r _iv.add(_delta);
            };
        };
    }
    @:keep
    @:tdfield
    static public function set( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_>, _key:stdgo.GoString, _av:stdgo._internal.expvar.Expvar_Var.Var):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_> = _v;
        {
            var __tmp__ = @:check2 (@:checkr _v ?? throw "null pointer dereference")._m.load(stdgo.Go.toInterface(_key)), __16:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                {
                    var __tmp__ = @:check2 (@:checkr _v ?? throw "null pointer dereference")._m.loadOrStore(stdgo.Go.toInterface(_key), stdgo.Go.toInterface(_av)), __29:stdgo.AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
                    if (!_dup) {
                        @:check2r _v._addKey(_key?.__copy__());
                        return;
                    };
                };
            };
        };
        @:check2 (@:checkr _v ?? throw "null pointer dereference")._m.store(stdgo.Go.toInterface(_key), stdgo.Go.toInterface(_av));
    }
    @:keep
    @:tdfield
    static public function get( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_>, _key:stdgo.GoString):stdgo._internal.expvar.Expvar_Var.Var {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_> = _v;
        var __tmp__ = @:check2 (@:checkr _v ?? throw "null pointer dereference")._m.load(stdgo.Go.toInterface(_key)), _i:stdgo.AnyInterface = __tmp__._0, __16:Bool = __tmp__._1;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_i : stdgo._internal.expvar.Expvar_Var.Var)) : stdgo._internal.expvar.Expvar_Var.Var), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.expvar.Expvar_Var.Var), _1 : false };
        }, _av = __tmp__._0, __17 = __tmp__._1;
        return _av;
    }
    @:keep
    @:tdfield
    static public function _addKey( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_>, _key:stdgo.GoString):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_> = _v;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            @:check2 (@:checkr _v ?? throw "null pointer dereference")._keysMu.lock();
            {
                final __f__ = @:check2 (@:checkr _v ?? throw "null pointer dereference")._keysMu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                var _i = (stdgo._internal.sort.Sort_searchStrings.searchStrings((@:checkr _v ?? throw "null pointer dereference")._keys, _key?.__copy__()) : stdgo.GoInt);
                if ((_i >= ((@:checkr _v ?? throw "null pointer dereference")._keys.length) : Bool)) {
                    (@:checkr _v ?? throw "null pointer dereference")._keys = ((@:checkr _v ?? throw "null pointer dereference")._keys.__append__(_key?.__copy__()));
                } else if ((@:checkr _v ?? throw "null pointer dereference")._keys[(_i : stdgo.GoInt)] != (_key)) {
                    (@:checkr _v ?? throw "null pointer dereference")._keys = ((@:checkr _v ?? throw "null pointer dereference")._keys.__append__(stdgo.Go.str()?.__copy__()));
                    ((@:checkr _v ?? throw "null pointer dereference")._keys.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>).__copyTo__(((@:checkr _v ?? throw "null pointer dereference")._keys.__slice__(_i) : stdgo.Slice<stdgo.GoString>));
                    (@:checkr _v ?? throw "null pointer dereference")._keys[(_i : stdgo.GoInt)] = _key?.__copy__();
                };
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    @:tdfield
    static public function init( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_>):stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_> {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_> = _v;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            @:check2 (@:checkr _v ?? throw "null pointer dereference")._keysMu.lock();
            {
                final __f__ = @:check2 (@:checkr _v ?? throw "null pointer dereference")._keysMu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            (@:checkr _v ?? throw "null pointer dereference")._keys = ((@:checkr _v ?? throw "null pointer dereference")._keys.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
            @:check2 (@:checkr _v ?? throw "null pointer dereference")._m.range(function(_k:stdgo.AnyInterface, __56:stdgo.AnyInterface):Bool {
                @:check2 (@:checkr _v ?? throw "null pointer dereference")._m.delete(_k);
                return true;
            });
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                return _v;
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_>);
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_>);
        };
    }
    @:keep
    @:tdfield
    static public function string( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_>):stdgo.GoString {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_> = _v;
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), ("{" : stdgo.GoString));
        var _first = (true : Bool);
        @:check2r _v.do_(function(_kv:stdgo._internal.expvar.Expvar_KeyValue.KeyValue):Void {
            if (!_first) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), (", " : stdgo.GoString));
            };
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), ("%q: " : stdgo.GoString), stdgo.Go.toInterface(_kv.key));
            if (_kv.value != null) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), ("%v" : stdgo.GoString), stdgo.Go.toInterface(_kv.value));
            } else {
                stdgo._internal.fmt.Fmt_fprint.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), stdgo.Go.toInterface(("null" : stdgo.GoString)));
            };
            _first = false;
        });
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), ("}" : stdgo.GoString));
        return (@:check2 _b.string() : stdgo.GoString)?.__copy__();
    }
}

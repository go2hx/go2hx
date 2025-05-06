package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.Named_asInterface) class Named_static_extension {
    @:keep
    @:tdfield
    static public function _expandUnderlying( _n:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _n:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _n;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _check = (@:checkr _n ?? throw "null pointer dereference")._check;
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L586"
            if ((({
                final value = _check;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && (@:checkr (@:checkr _check ?? throw "null pointer dereference")._conf ?? throw "null pointer dereference").__Trace : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L587"
                _check._trace((@:checkr (@:checkr _n ?? throw "null pointer dereference")._obj ?? throw "null pointer dereference")._object._pos, ("-- Named.expandUnderlying %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_n)));
                //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L588"
                (@:checkr _check ?? throw "null pointer dereference")._indent++;
                {
                    __deferstack__.unshift({ ran : false, f : () -> ({
                        var a = function():Void {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L590"
                            (@:checkr _check ?? throw "null pointer dereference")._indent--;
                            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L591"
                            _check._trace((@:checkr (@:checkr _n ?? throw "null pointer dereference")._obj ?? throw "null pointer dereference")._object._pos, ("=> %s (tparams = %s, under = %s)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_n)), stdgo.Go.toInterface((@:checkr _n ?? throw "null pointer dereference")._tparams._list()), stdgo.Go.toInterface((@:checkr _n ?? throw "null pointer dereference")._underlying));
                        };
                        a();
                    }) });
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L595"
            stdgo._internal.go.types.Types__assert._assert((@:checkr (@:checkr (@:checkr _n ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._orig ?? throw "null pointer dereference")._underlying != null);
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L596"
            if (({
                final value = (@:checkr (@:checkr _n ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._ctxt;
                (value == null || (value : Dynamic).__nil__);
            })) {
                (@:checkr (@:checkr _n ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._ctxt = stdgo._internal.go.types.Types_newcontext.newContext();
            };
            var _orig = (@:checkr (@:checkr _n ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._orig;
            var _targs = (@:checkr (@:checkr _n ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._targs;
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L603"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _orig ?? throw "null pointer dereference")._underlying) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
                }, __64 = __tmp__._0, _unexpanded = __tmp__._1;
                if (_unexpanded) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L606"
                    stdgo._internal.go.types.Types__assert._assert(({
                        final value = _check;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    }));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L609"
            if ((@:checkr _orig ?? throw "null pointer dereference")._tparams.len() != (_targs.len())) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L611"
                {
                    final __ret__:stdgo._internal.go.types.Types_type_.Type_ = stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _h = ((@:checkr (@:checkr _n ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._ctxt._instanceHash(stdgo.Go.asInterface(_orig), _targs._list())?.__copy__() : stdgo.GoString);
            var _n2 = ((@:checkr (@:checkr _n ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._ctxt._update(_h?.__copy__(), stdgo.Go.asInterface(_orig), _n.typeArgs()._list(), stdgo.Go.asInterface(_n)) : stdgo._internal.go.types.Types_type_.Type_);
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L618"
            stdgo._internal.go.types.Types__assert._assert(stdgo.Go.toInterface(stdgo.Go.asInterface(_n)) == (stdgo.Go.toInterface(_n2)));
            var _smap = (stdgo._internal.go.types.Types__makesubstmap._makeSubstMap((@:checkr _orig ?? throw "null pointer dereference")._tparams._list(), _targs._list()) : stdgo._internal.go.types.Types_t_substmap.T_substMap);
            var _ctxt:stdgo.Ref<stdgo._internal.go.types.Types_context.Context> = (null : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>);
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L622"
            if (({
                final value = _check;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                _ctxt = _check._context();
            };
            var _underlying = ((@:checkr _n ?? throw "null pointer dereference")._check._subst((@:checkr (@:checkr _n ?? throw "null pointer dereference")._obj ?? throw "null pointer dereference")._object._pos, (@:checkr _orig ?? throw "null pointer dereference")._underlying, _smap, _n, _ctxt) : stdgo._internal.go.types.Types_type_.Type_);
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L629"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_underlying) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : false };
                }, _iface = __tmp__._0, __137 = __tmp__._1;
                if (({
                    final value = _iface;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L630"
                    {
                        var __tmp__ = stdgo._internal.go.types.Types__replacerecvtype._replaceRecvType((@:checkr _iface ?? throw "null pointer dereference")._methods, stdgo.Go.asInterface(_orig), stdgo.Go.asInterface(_n)), _methods:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>> = __tmp__._0, _copied:Bool = __tmp__._1;
                        if (_copied) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L634"
                            if (stdgo.Go.toInterface(stdgo.Go.asInterface(_iface)) == (stdgo.Go.toInterface((@:checkr _orig ?? throw "null pointer dereference")._underlying))) {
                                var _old = _iface;
                                _iface = _check._newInterface();
                                (@:checkr _iface ?? throw "null pointer dereference")._embeddeds = (@:checkr _old ?? throw "null pointer dereference")._embeddeds;
                                (@:checkr _iface ?? throw "null pointer dereference")._complete = (@:checkr _old ?? throw "null pointer dereference")._complete;
                                (@:checkr _iface ?? throw "null pointer dereference")._implicit = (@:checkr _old ?? throw "null pointer dereference")._implicit;
                                _underlying = stdgo.Go.asInterface(_iface);
                            };
                            (@:checkr _iface ?? throw "null pointer dereference")._methods = _methods;
                        };
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L646"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _underlying;
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
                return (null : stdgo._internal.go.types.Types_type_.Type_);
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
                return (null : stdgo._internal.go.types.Types_type_.Type_);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _lookupMethod( _n:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString, _foldCase:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>; } {
        @:recv var _n:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _n;
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L562"
        _n._resolve();
        var __tmp__ = stdgo._internal.go.types.Types__lookupmethod._lookupMethod(_n.origin()._methods, _pkg, _name?.__copy__(), _foldCase), _i:stdgo.GoInt = __tmp__._0, __24:stdgo.Ref<stdgo._internal.go.types.Types_func.Func> = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L567"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L568"
            return { _0 : (-1 : stdgo.GoInt), _1 : null };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L571"
        return { _0 : _i, _1 : _n.method(_i) };
    }
    @:keep
    @:tdfield
    static public function _setUnderlying( _n:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, _typ:stdgo._internal.go.types.Types_type_.Type_):Void {
        @:recv var _n:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _n;
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L556"
        if (({
            final value = _n;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            (@:checkr _n ?? throw "null pointer dereference")._underlying = _typ;
        };
    }
    @:keep
    @:tdfield
    static public function _under( _n0:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _n0:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _n0;
        var _u1_155 = @:invalid_type null;
        var _n_149:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        var _u1_145 = @:default_value null;
        var _n1_144:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        var _ok_153:Bool = false;
        var _loopBreak = false;
        var _seen_150:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, stdgo.GoInt>);
        var _check_148:stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker> = (null : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        var _u_143:stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
        var _keys_6586574:stdgo.Slice<Dynamic> = (new stdgo.Slice<Dynamic>(0, 0, ...[]) : stdgo.Slice<Dynamic>);
        var _u1_156:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        var _i_152:stdgo.GoInt = (0 : stdgo.GoInt);
        var _path_151:stdgo.Slice<stdgo._internal.go.types.Types_object.Object> = (null : stdgo.Slice<stdgo._internal.go.types.Types_object.Object>);
        var _n_157:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        var _iterator_6586583 = 0i64;
        var _u1_154 = @:default_value null;
        var _u1_147:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        var _u1_146 = @:invalid_type null;
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _u_143 = _n0.underlying();
                    0i64;
                    _gotoNext = 6585562i64;
                } else if (__value__ == (6585562i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L492"
                    {
                        final __type__ = _u_143;
                        if (__type__ == null) {
                            var _u1:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : cast __type__;
                            _u1_145 = _u1;
                            _gotoNext = 6585587i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>))) {
                            var _u1:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__().value);
                            _u1_147 = _u1;
                            _gotoNext = 6585750i64;
                        } else {
                            var _u1:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                            _u1_146 = _u1;
                            _gotoNext = 6585712i64;
                        };
                    };
                } else if (__value__ == (6585587i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L496"
                    throw stdgo.Go.toInterface(("nil underlying" : stdgo.GoString));
                    _u1_145;
                    _gotoNext = 6585797i64;
                } else if (__value__ == (6585712i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L499"
                    return _u_143;
                    _u1_146;
                    _gotoNext = 6585797i64;
                } else if (__value__ == (6585750i64)) {
                    _n1_144 = _u1_147;
                    _u1_147;
                    _gotoNext = 6585797i64;
                } else if (__value__ == (6585797i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L505"
                    if (({
                        final value = (@:checkr _n0 ?? throw "null pointer dereference")._check;
                        (value == null || (value : Dynamic).__nil__);
                    })) {
                        _gotoNext = 6585816i64;
                    } else {
                        _gotoNext = 6586009i64;
                    };
                } else if (__value__ == (6585816i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L506"
                    throw stdgo.Go.toInterface(("Named.check == nil but type is incomplete" : stdgo.GoString));
                    _gotoNext = 6586009i64;
                } else if (__value__ == (6586009i64)) {
                    _check_148 = (@:checkr _n0 ?? throw "null pointer dereference")._check;
                    _n_149 = _n0;
                    _seen_150 = ({
                        final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, stdgo.GoInt>();
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, stdgo.GoInt>);
                    _gotoNext = 6586192i64;
                } else if (__value__ == (6586192i64)) {
                    0i64;
                    _loopBreak = false;
                    _gotoNext = 6586199i64;
                } else if (__value__ == (6586199i64)) {
                    //"file://#L0"
                    if (!_loopBreak) {
                        _gotoNext = 6586203i64;
                    } else {
                        _gotoNext = 6586574i64;
                    };
                } else if (__value__ == (6586203i64)) {
                    _seen_150[_n_149] = (_seen_150.length);
                    _path_151 = (_path_151.__append__(stdgo.Go.asInterface((@:checkr _n_149 ?? throw "null pointer dereference")._obj)) : stdgo.Slice<stdgo._internal.go.types.Types_object.Object>);
                    _n_149 = _n1_144;
                    //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L522"
                    {
                        {
                            var __tmp__ = (_seen_150 != null && _seen_150.__exists__(_n_149) ? { _0 : _seen_150[_n_149], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false });
                            _i_152 = @:tmpset0 __tmp__._0;
                            _ok_153 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_153) {
                            _gotoNext = 6586291i64;
                        } else {
                            _gotoNext = 6586370i64;
                        };
                    };
                } else if (__value__ == (6586291i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L524"
                    _check_148._cycleError((_path_151.__slice__(_i_152) : stdgo.Slice<stdgo._internal.go.types.Types_object.Object>));
                    _u_143 = stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
                    _gotoNext = 6586574i64;
                } else if (__value__ == (6586370i64)) {
                    _u_143 = _n_149.underlying();
                    0i64;
                    _gotoNext = 6586391i64;
                } else if (__value__ == (6586391i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L529"
                    {
                        final __type__ = _u_143;
                        if (__type__ == null) {
                            var _u1:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : cast __type__;
                            _u1_154 = _u1;
                            _gotoNext = 6586417i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>))) {
                            var _u1:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__().value);
                            _u1_156 = _u1;
                            _gotoNext = 6586488i64;
                        } else {
                            var _u1:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                            _u1_155 = _u1;
                            _gotoNext = 6586463i64;
                        };
                    };
                    _gotoNext = 6586199i64;
                } else if (__value__ == (6586417i64)) {
                    _u_143 = stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
                    _loopBreak = true;
                    _gotoNext = 6586199i64;
                } else if (__value__ == (6586463i64)) {
                    _loopBreak = true;
                    _gotoNext = 6586199i64;
                } else if (__value__ == (6586488i64)) {
                    _n1_144 = _u1_156;
                    _u1_156;
                    _gotoNext = 6586199i64;
                } else if (__value__ == (6586574i64)) {
                    _keys_6586574 = (new stdgo.Slice<Dynamic>(0, 0, ...[]) : stdgo.Slice<Dynamic>);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L541"
                    for (_key => _ in _seen_150) {
                        _keys_6586574 = _keys_6586574.__append__(_key);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L541"
                    if ((0i64 : stdgo.GoInt) < (_seen_150.length)) {
                        _gotoNext = 6586998i64;
                    } else {
                        _gotoNext = 6587003i64;
                    };
                } else if (__value__ == (6586594i64)) {
                    _n_157 = _keys_6586574[@:invalid_index_invalid_type _iterator_6586583];
                    //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L546"
                    if ((@:checkr (@:checkr _n_157 ?? throw "null pointer dereference")._obj ?? throw "null pointer dereference")._object._pkg != ((@:checkr _check_148 ?? throw "null pointer dereference")._pkg)) {
                        _gotoNext = 6586915i64;
                    } else {
                        _gotoNext = 6586981i64;
                    };
                } else if (__value__ == (6586915i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L547"
                    throw stdgo.Go.toInterface(("imported type with unresolved underlying type" : stdgo.GoString));
                    _gotoNext = 6586981i64;
                } else if (__value__ == (6586981i64)) {
                    (@:checkr _n_157 ?? throw "null pointer dereference")._underlying = _u_143;
                    //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L541"
                    _iterator_6586583++;
                    _gotoNext = 6586999i64;
                } else if (__value__ == (6586998i64)) {
                    _iterator_6586583 = 0i64;
                    _gotoNext = 6586999i64;
                } else if (__value__ == (6586999i64)) {
                    //"file://#L0"
                    if (_iterator_6586583 < (_keys_6586574.length)) {
                        _gotoNext = 6586594i64;
                    } else {
                        _gotoNext = 6587003i64;
                    };
                } else if (__value__ == (6587003i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L552"
                    return _u_143;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function string( _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L459"
        return stdgo._internal.go.types.Types_typestring.typeString(stdgo.Go.asInterface(_t), null)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function underlying( _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L458"
        return _t._resolve()._underlying;
    }
    @:keep
    @:tdfield
    static public function addMethod( _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, _m:stdgo.Ref<stdgo._internal.go.types.Types_func.Func>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L451"
        stdgo._internal.go.types.Types__assert._assert(({
            final value = (@:checkr _t ?? throw "null pointer dereference")._inst;
            (value == null || (value : Dynamic).__nil__);
        }));
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L452"
        _t._resolve();
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L453"
        {
            var __tmp__ = stdgo._internal.go.types.Types__lookupmethod._lookupMethod((@:checkr _t ?? throw "null pointer dereference")._methods, (@:checkr _m ?? throw "null pointer dereference")._object._pkg, (@:checkr _m ?? throw "null pointer dereference")._object._name?.__copy__(), false), _i:stdgo.GoInt = __tmp__._0, __24:stdgo.Ref<stdgo._internal.go.types.Types_func.Func> = __tmp__._1;
            if ((_i < (0 : stdgo.GoInt) : Bool)) {
                (@:checkr _t ?? throw "null pointer dereference")._methods = ((@:checkr _t ?? throw "null pointer dereference")._methods.__append__(_m) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function setUnderlying( _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, _underlying:stdgo._internal.go.types.Types_type_.Type_):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L435"
        stdgo._internal.go.types.Types__assert._assert(({
            final value = (@:checkr _t ?? throw "null pointer dereference")._inst;
            (value == null || (value : Dynamic).__nil__);
        }));
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L436"
        if (_underlying == null) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L437"
            throw stdgo.Go.toInterface(("underlying type must not be nil" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L439"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_underlying) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
            }, __8 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L440"
                throw stdgo.Go.toInterface(("underlying type must not be *Named" : stdgo.GoString));
            };
        };
        _t._resolve()._underlying = _underlying;
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L443"
        if ((@:checkr _t ?? throw "null pointer dereference")._fromRHS == null) {
            (@:checkr _t ?? throw "null pointer dereference")._fromRHS = _underlying;
        };
    }
    @:keep
    @:tdfield
    static public function _expandMethod( _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_func.Func> {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _t;
        var _origm = (@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._orig.method(_i);
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L379"
        stdgo._internal.go.types.Types__assert._assert(({
            final value = _origm;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }));
        var _check = (@:checkr _t ?? throw "null pointer dereference")._check;
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L383"
        if (({
            final value = _check;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L384"
            _check._objDecl(stdgo.Go.asInterface(_origm), null);
        };
        var _origSig = (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _origm ?? throw "null pointer dereference")._object._typ) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
        var __tmp__ = stdgo._internal.go.types.Types__deref._deref(_origSig.recv().type()), _rbase:stdgo._internal.go.types.Types_type_.Type_ = __tmp__._0, __24:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L397"
        if (stdgo.Go.toInterface(_rbase) == (stdgo.Go.toInterface(stdgo.Go.asInterface(_t)))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L398"
            return _origm;
        };
        var _sig = _origSig;
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L405"
        if (_origSig.recvTypeParams().len() == ((@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._targs.len())) {
            var _smap = (stdgo._internal.go.types.Types__makesubstmap._makeSubstMap(_origSig.recvTypeParams()._list(), (@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._targs._list()) : stdgo._internal.go.types.Types_t_substmap.T_substMap);
            var _ctxt:stdgo.Ref<stdgo._internal.go.types.Types_context.Context> = (null : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>);
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L408"
            if (({
                final value = _check;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                _ctxt = _check._context();
            };
            _sig = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_check._subst((@:checkr _origm ?? throw "null pointer dereference")._object._pos, stdgo.Go.asInterface(_origSig), _smap, _t, _ctxt)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L414"
        if (_sig == (_origSig)) {
            var _copy = ((_origSig : stdgo._internal.go.types.Types_signature.Signature)?.__copy__() : stdgo._internal.go.types.Types_signature.Signature);
            _sig = (stdgo.Go.setRef(_copy) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
        };
        var _rtyp:stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L422"
        if (_origm._hasPtrRecv()) {
            _rtyp = stdgo.Go.asInterface(stdgo._internal.go.types.Types_newpointer.newPointer(stdgo.Go.asInterface(_t)));
        } else {
            _rtyp = stdgo.Go.asInterface(_t);
        };
        (@:checkr _sig ?? throw "null pointer dereference")._recv = stdgo._internal.go.types.Types__substvar._substVar((@:checkr _origSig ?? throw "null pointer dereference")._recv, _rtyp);
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L429"
        return stdgo._internal.go.types.Types__substfunc._substFunc(_origm, stdgo.Go.asInterface(_sig));
    }
    @:keep
    @:tdfield
    static public function method( _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_func.Func> {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L340"
            _t._resolve();
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L342"
            if ((_t._state() >= (2u32 : stdgo._internal.go.types.Types_t_namedstate.T_namedState) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L343"
                return (@:checkr _t ?? throw "null pointer dereference")._methods[(_i : stdgo.GoInt)];
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L346"
            stdgo._internal.go.types.Types__assert._assert(({
                final value = (@:checkr _t ?? throw "null pointer dereference")._inst;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }));
            var _orig = (@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._orig;
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L349"
            (@:checkr _t ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = (@:checkr _t ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L352"
            if (((@:checkr _t ?? throw "null pointer dereference")._methods.length) != (((@:checkr _orig ?? throw "null pointer dereference")._methods.length))) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L353"
                stdgo._internal.go.types.Types__assert._assert(((@:checkr _t ?? throw "null pointer dereference")._methods.length) == ((0 : stdgo.GoInt)));
                (@:checkr _t ?? throw "null pointer dereference")._methods = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>(((@:checkr _orig ?? throw "null pointer dereference")._methods.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L357"
            if (({
                final value = (@:checkr _t ?? throw "null pointer dereference")._methods[(_i : stdgo.GoInt)];
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L358"
                stdgo._internal.go.types.Types__assert._assert(({
                    final value = (@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._ctxt;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }));
                (@:checkr _t ?? throw "null pointer dereference")._methods[(_i : stdgo.GoInt)] = _t._expandMethod(_i);
                //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L360"
                (@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._expandedMethods++;
                //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L364"
                if ((@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._expandedMethods == (((@:checkr _orig ?? throw "null pointer dereference")._methods.length))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L365"
                    _t._setState((2u32 : stdgo._internal.go.types.Types_t_namedstate.T_namedState));
                    (@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._ctxt = null;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L370"
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.types.Types_func.Func> = (@:checkr _t ?? throw "null pointer dereference")._methods[(_i : stdgo.GoInt)];
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
                return (null : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>);
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
                return (null : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function numMethods( _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L331"
        return (_t.origin()._resolve()._methods.length);
    }
    @:keep
    @:tdfield
    static public function typeArgs( _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList> {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L323"
        if (({
            final value = (@:checkr _t ?? throw "null pointer dereference")._inst;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L324"
            return null;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L326"
        return (@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._targs;
    }
    @:keep
    @:tdfield
    static public function setTypeParams( _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, _tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L317"
        stdgo._internal.go.types.Types__assert._assert(({
            final value = (@:checkr _t ?? throw "null pointer dereference")._inst;
            (value == null || (value : Dynamic).__nil__);
        }));
        _t._resolve()._tparams = stdgo._internal.go.types.Types__bindtparams._bindTParams(_tparams);
    }
    @:keep
    @:tdfield
    static public function typeParams( _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList> {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L312"
        return _t._resolve()._tparams;
    }
    @:keep
    @:tdfield
    static public function origin( _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo.Ref<stdgo._internal.go.types.Types_named.Named> {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L304"
        if (({
            final value = (@:checkr _t ?? throw "null pointer dereference")._inst;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L305"
            return _t;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L307"
        return (@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._orig;
    }
    @:keep
    @:tdfield
    static public function obj( _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName> {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L295"
        if (({
            final value = (@:checkr _t ?? throw "null pointer dereference")._inst;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L296"
            return (@:checkr _t ?? throw "null pointer dereference")._obj;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L298"
        return (@:checkr (@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._orig ?? throw "null pointer dereference")._obj;
    }
    @:keep
    @:tdfield
    static public function _cleanup( _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L272"
        stdgo._internal.go.types.Types__assert._assert((({
            final value = (@:checkr _t ?? throw "null pointer dereference")._inst;
            (value == null || (value : Dynamic).__nil__);
        }) || ({
            final value = (@:checkr (@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._orig ?? throw "null pointer dereference")._inst;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool));
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L281"
        {
            final __type__ = (@:checkr _t ?? throw "null pointer dereference")._underlying;
            if (__type__ == null) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L283"
                if (_t.typeArgs().len() == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L284"
                    throw stdgo.Go.toInterface(("nil underlying" : stdgo.GoString));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>))) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L287"
                _t._under();
            };
        };
        (@:checkr _t ?? throw "null pointer dereference")._check = null;
    }
    @:keep
    @:tdfield
    static public function _setState( _n:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, _state:stdgo._internal.go.types.Types_t_namedstate.T_namedState):Void {
        @:recv var _n:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _n;
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L226"
        stdgo._internal.sync.atomic_.Atomic__storeuint32.storeUint32(stdgo.Go.pointer((@:checkr _n ?? throw "null pointer dereference")._state_), (_state : stdgo.GoUInt32));
    }
    @:keep
    @:tdfield
    static public function _state( _n:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo._internal.go.types.Types_t_namedstate.T_namedState {
        @:recv var _n:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _n;
        //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L220"
        return (stdgo._internal.sync.atomic_.Atomic__loaduint32.loadUint32(stdgo.Go.pointer((@:checkr _n ?? throw "null pointer dereference")._state_)) : stdgo._internal.go.types.Types_t_namedstate.T_namedState);
    }
    @:keep
    @:tdfield
    static public function _resolve( _n:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo.Ref<stdgo._internal.go.types.Types_named.Named> {
        @:recv var _n:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _n;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L160"
            if ((_n._state() >= (1u32 : stdgo._internal.go.types.Types_t_namedstate.T_namedState) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L161"
                return _n;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L166"
            (@:checkr _n ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = (@:checkr _n ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L169"
            if ((_n._state() >= (1u32 : stdgo._internal.go.types.Types_t_namedstate.T_namedState) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L170"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _n;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L173"
            if (({
                final value = (@:checkr _n ?? throw "null pointer dereference")._inst;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L174"
                stdgo._internal.go.types.Types__assert._assert((@:checkr _n ?? throw "null pointer dereference")._underlying == null);
                //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L175"
                stdgo._internal.go.types.Types__assert._assert((@:checkr _n ?? throw "null pointer dereference")._loader == null);
                var _orig = (@:checkr (@:checkr _n ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._orig;
                //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L178"
                _orig._resolve();
                var _underlying = (_n._expandUnderlying() : stdgo._internal.go.types.Types_type_.Type_);
                (@:checkr _n ?? throw "null pointer dereference")._tparams = (@:checkr _orig ?? throw "null pointer dereference")._tparams;
                (@:checkr _n ?? throw "null pointer dereference")._underlying = _underlying;
                (@:checkr _n ?? throw "null pointer dereference")._fromRHS = (@:checkr _orig ?? throw "null pointer dereference")._fromRHS;
                //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L185"
                if (((@:checkr _orig ?? throw "null pointer dereference")._methods.length) == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L186"
                    _n._setState((2u32 : stdgo._internal.go.types.Types_t_namedstate.T_namedState));
                    (@:checkr (@:checkr _n ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._ctxt = null;
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L189"
                    _n._setState((1u32 : stdgo._internal.go.types.Types_t_namedstate.T_namedState));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L191"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _n;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L201"
            if ((@:checkr _n ?? throw "null pointer dereference")._loader != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L202"
                stdgo._internal.go.types.Types__assert._assert((@:checkr _n ?? throw "null pointer dereference")._underlying == null);
                //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L203"
                stdgo._internal.go.types.Types__assert._assert(_n.typeArgs().len() == ((0 : stdgo.GoInt)));
                var __tmp__ = (@:checkr _n ?? throw "null pointer dereference")._loader(_n), _tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>> = __tmp__._0, _underlying:stdgo._internal.go.types.Types_type_.Type_ = __tmp__._1, _methods:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>> = __tmp__._2;
                (@:checkr _n ?? throw "null pointer dereference")._tparams = stdgo._internal.go.types.Types__bindtparams._bindTParams(_tparams);
                (@:checkr _n ?? throw "null pointer dereference")._underlying = _underlying;
                (@:checkr _n ?? throw "null pointer dereference")._fromRHS = _underlying;
                (@:checkr _n ?? throw "null pointer dereference")._methods = _methods;
                (@:checkr _n ?? throw "null pointer dereference")._loader = null;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L214"
            _n._setState((2u32 : stdgo._internal.go.types.Types_t_namedstate.T_namedState));
            //"file:///home/runner/.go/go1.21.3/src/go/types/named.go#L215"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _n;
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
                return (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
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
                return (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
            };
        };
    }
}

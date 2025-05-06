package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_unifier_asInterface) class T_unifier_static_extension {
    @:keep
    @:tdfield
    static public function _nify( _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>, _x:stdgo._internal.go.types.Types_type_.Type_, _y:stdgo._internal.go.types.Types_type_.Type_, _mode:stdgo._internal.go.types.Types_t_unifymode.T_unifyMode, _p:stdgo.Ref<stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair>):Bool {
        @:recv var _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier> = _u;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _result = false;
        try {
            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L285"
            (@:checkr _u ?? throw "null pointer dereference")._depth++;
            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L286"
            if (false) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L287"
                _u._tracef(("%s ≡ %s\t// %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)));
            };
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L290"
                        if ((false && !_result : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L291"
                            _u._tracef(("%s ≢ %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L293"
                        (@:checkr _u ?? throw "null pointer dereference")._depth--;
                    };
                    a();
                }) });
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L297"
            if (stdgo.Go.toInterface(_x) == (stdgo.Go.toInterface(_y))) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L298"
                {
                    final __ret__:Bool = _result = true;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L302"
            if (((@:checkr _u ?? throw "null pointer dereference")._depth > (50 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L303"
                if (false) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L304"
                    _u._tracef(("depth %d >= %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _u ?? throw "null pointer dereference")._depth), stdgo.Go.toInterface((50 : stdgo.GoInt)));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L306"
                if (true) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L307"
                    throw stdgo.Go.toInterface(("unification reached recursion depth limit" : stdgo.GoString));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L309"
                {
                    final __ret__:Bool = _result = false;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L316"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
                }, __0 = __tmp__._0, _ok = __tmp__._1;
                if ((_ok || ({
                    final value = _u._asTypeParam(_y);
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L317"
                    if (false) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L318"
                        _u._tracef(("%s ≡ %s\t// swap" : stdgo.GoString), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_x));
                    };
                    {
                        final __tmp__0 = _y;
                        final __tmp__1 = _x;
                        _x = @:binopAssign __tmp__0;
                        _y = @:binopAssign __tmp__1;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L340"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
                }, _ny = __tmp__._0, __1 = __tmp__._1;
                if (((((_mode & (2u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode) : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode) == ((0u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode)) && ({
                    final value = _ny;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) : Bool) && stdgo._internal.go.types.Types__istypelit._isTypeLit(_x) : Bool) && !(((@:checkr _u ?? throw "null pointer dereference")._enableInterfaceInference && stdgo._internal.go.types.Types_isinterface.isInterface(_x) : Bool)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L341"
                    if (false) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L342"
                        _u._tracef(("%s ≡ under %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(stdgo.Go.asInterface(_ny)));
                    };
                    _y = _ny._under();
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L347"
                    stdgo._internal.go.types.Types__assert._assert(!stdgo._internal.go.types.Types__istypeparam._isTypeParam(_y));
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L349"
                    if (stdgo.Go.toInterface(_x) == (stdgo.Go.toInterface(_y))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L350"
                        {
                            final __ret__:Bool = _result = true;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L360"
            {
                var __0 = _u._asTypeParam(_x), __1 = _u._asTypeParam(_y);
var _py = __1, _px = __0;
                if ((({
                    final value = _px;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) && ({
                    final value = _py;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L363"
                    if (_u._join(_px, _py)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L364"
                        {
                            final __ret__:Bool = _result = true;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L367"
                    {
                        final __ret__:Bool = _result = _u._nify(_u._at(_px), _u._at(_py), _mode, _p);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (({
                    final value = _px;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L371"
                    {
                        var _x = (_u._at(_px) : stdgo._internal.go.types.Types_type_.Type_);
                        if (_x != null) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L373"
                            if (_u._nify(_x, _y, _mode, _p)) {
                                var _xi = stdgo._internal.go.types.Types__asinterface._asInterface(_x);
                                var _yi = stdgo._internal.go.types.Types__asinterface._asInterface(_y);
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
                                } catch(_) {
                                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
                                }, __2 = __tmp__._0, _xn = __tmp__._1;
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
                                } catch(_) {
                                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
                                }, __3 = __tmp__._0, _yn = __tmp__._1;
                                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L381"
                                if ((({
                                    final value = _xi;
                                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                }) && ({
                                    final value = _yi;
                                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                }) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L385"
                                    if ((_xn && _yn : Bool)) {
                                        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L386"
                                        {
                                            final __ret__:Bool = _result = stdgo._internal.go.types.Types_identical.identical(_x, _y);
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                            return __ret__;
                                        };
                                    };
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L396"
                                    if ((_xi._typeSet()._methods.length) != ((_yi._typeSet()._methods.length))) {
                                        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L397"
                                        {
                                            final __ret__:Bool = _result = false;
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                            return __ret__;
                                        };
                                    };
                                } else if ((({
                                    final value = _xi;
                                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                }) || ({
                                    final value = _yi;
                                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                }) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L404"
                                    {
                                        final __ret__:Bool = _result = false;
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
                                    };
                                };
                                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L426"
                                if ((_mode & (2u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode) : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode) == ((0u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode))) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L427"
                                    if (_xn) {} else if (_yn) {
                                        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L432"
                                        _u._set(_px, _y);
                                    } else {
                                        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L435"
                                        {
                                            var __tmp__ = try {
                                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.go.types.Types__under._under(_y)) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>)) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : true };
                                            } catch(_) {
                                                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : false };
                                            }, _yc = __tmp__._0, __4 = __tmp__._1;
                                            if ((({
                                                final value = _yc;
                                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                            }) && ((@:checkr _yc ?? throw "null pointer dereference")._dir != (0 : stdgo._internal.go.types.Types_chandir.ChanDir)) : Bool)) {
                                                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L437"
                                                _u._set(_px, _y);
                                            };
                                        };
                                    };
                                };
                                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L441"
                                {
                                    final __ret__:Bool = _result = true;
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L443"
                            {
                                final __ret__:Bool = _result = false;
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L446"
                    _u._set(_px, _y);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L447"
                    {
                        final __ret__:Bool = _result = true;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L451"
            stdgo._internal.go.types.Types__assert._assert(stdgo.Go.toInterface(_x) != (stdgo.Go.toInterface(_y)));
            var _emode = (_mode : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode);
            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L456"
            if ((_mode & (1u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode) : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode) != ((0u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode))) {
                _emode = (_emode | ((2u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode)) : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L465"
            if (((@:checkr _u ?? throw "null pointer dereference")._enableInterfaceInference && ((_mode & (2u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode) : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode) == (0u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode)) : Bool)) {
                var _xi = stdgo._internal.go.types.Types__asinterface._asInterface(_x);
                var _yi = stdgo._internal.go.types.Types__asinterface._asInterface(_y);
                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L472"
                if ((({
                    final value = _xi;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) && ({
                    final value = _yi;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) : Bool)) {
                    var _xset = _xi._typeSet();
                    var _yset = _yi._typeSet();
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L475"
                    if ((@:checkr _xset ?? throw "null pointer dereference")._comparable != ((@:checkr _yset ?? throw "null pointer dereference")._comparable)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L476"
                        {
                            final __ret__:Bool = _result = false;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L480"
                    if (!(@:checkr _xset ?? throw "null pointer dereference")._terms._equal((@:checkr _yset ?? throw "null pointer dereference")._terms)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L481"
                        {
                            final __ret__:Bool = _result = false;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    var _q = (stdgo.Go.setRef((new stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair(_xi, _yi, _p) : stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair)) : stdgo.Ref<stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair>);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L506"
                    while (({
                        final value = _p;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L507"
                        if (_p._identical(_q)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L508"
                            {
                                final __ret__:Bool = _result = true;
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                        _p = (@:checkr _p ?? throw "null pointer dereference")._prev;
                    };
                    var _xmethods = (@:checkr _xset ?? throw "null pointer dereference")._methods;
                    var _ymethods = (@:checkr _yset ?? throw "null pointer dereference")._methods;
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L517"
                    if (((_xmethods.length) > (_ymethods.length) : Bool)) {
                        {
                            final __tmp__0 = _ymethods;
                            final __tmp__1 = _xmethods;
                            _xmethods = @:binopAssign __tmp__0;
                            _ymethods = @:binopAssign __tmp__1;
                        };
                    };
                    var _ymap = (({
                        final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L523"
                    for (__18 => _ym in _ymethods) {
                        _ymap[_ym.id()] = _ym;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L527"
                    for (__19 => _xm in _xmethods) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L528"
                        {
                            var _ym = (_ymap[_xm.id()] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>));
                            if ((({
                                final value = _ym;
                                (value == null || (value : Dynamic).__nil__);
                            }) || !_u._nify((@:checkr _xm ?? throw "null pointer dereference")._object._typ, (@:checkr _ym ?? throw "null pointer dereference")._object._typ, (2u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode), _p) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L529"
                                {
                                    final __ret__:Bool = _result = false;
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L532"
                    {
                        final __ret__:Bool = _result = true;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L536"
                if (({
                    final value = _yi;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    _xi = _yi;
                    _y = _x;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L544"
                if (({
                    final value = _xi;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    var _xmethods = _xi._typeSet()._methods;
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L547"
                    for (__10 => _xm in _xmethods) {
                        var __tmp__ = stdgo._internal.go.types.Types_lookupfieldormethod.lookupFieldOrMethod(_y, false, (@:checkr _xm ?? throw "null pointer dereference")._object._pkg, (@:checkr _xm ?? throw "null pointer dereference")._object._name?.__copy__()), _obj:stdgo._internal.go.types.Types_object.Object = __tmp__._0, __11:stdgo.Slice<stdgo.GoInt> = __tmp__._1, __12:Bool = __tmp__._2;
                        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L549"
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>), _1 : false };
                            }, _ym = __tmp__._0, __13 = __tmp__._1;
                            if ((({
                                final value = _ym;
                                (value == null || (value : Dynamic).__nil__);
                            }) || !_u._nify((@:checkr _xm ?? throw "null pointer dereference")._object._typ, (@:checkr _ym ?? throw "null pointer dereference")._object._typ, (2u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode), _p) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L550"
                                {
                                    final __ret__:Bool = _result = false;
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L553"
                    {
                        final __ret__:Bool = _result = true;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L568"
            if (stdgo._internal.go.types.Types__istypeparam._isTypeParam(_y)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L569"
                if (false) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L570"
                    _u._tracef(("%s ≡ %s\t// swap" : stdgo.GoString), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_x));
                };
                {
                    final __tmp__0 = _y;
                    final __tmp__1 = _x;
                    _x = @:binopAssign __tmp__0;
                    _y = @:binopAssign __tmp__1;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L575"
            {
                final __type__ = _x;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L580"
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>)) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _1 : false };
                        }, _y = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L581"
                            {
                                final __ret__:Bool = _result = (@:checkr _x ?? throw "null pointer dereference")._kind == ((@:checkr _y ?? throw "null pointer dereference")._kind);
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L587"
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>)) : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>), _1 : false };
                        }, _y = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L590"
                            {
                                final __ret__:Bool = _result = ((((((@:checkr _x ?? throw "null pointer dereference")._len < (0i64 : stdgo.GoInt64) : Bool) || ((@:checkr _y ?? throw "null pointer dereference")._len < (0i64 : stdgo.GoInt64) : Bool) : Bool) || ((@:checkr _x ?? throw "null pointer dereference")._len == (@:checkr _y ?? throw "null pointer dereference")._len) : Bool)) && _u._nify((@:checkr _x ?? throw "null pointer dereference")._elem, (@:checkr _y ?? throw "null pointer dereference")._elem, _emode, _p) : Bool);
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L595"
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>)) : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>), _1 : false };
                        }, _y = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L596"
                            {
                                final __ret__:Bool = _result = _u._nify((@:checkr _x ?? throw "null pointer dereference")._elem, (@:checkr _y ?? throw "null pointer dereference")._elem, _emode, _p);
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L604"
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>)) : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>), _1 : false };
                        }, _y = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L605"
                            if (_x.numFields() == (_y.numFields())) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L606"
                                for (_i => _f in (@:checkr _x ?? throw "null pointer dereference")._fields) {
                                    var _g = (@:checkr _y ?? throw "null pointer dereference")._fields[(_i : stdgo.GoInt)];
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L608"
                                    if (((((@:checkr _f ?? throw "null pointer dereference")._embedded != ((@:checkr _g ?? throw "null pointer dereference")._embedded) || _x.tag(_i) != (_y.tag(_i)) : Bool) || !_f._sameId((@:checkr _g ?? throw "null pointer dereference")._object._pkg, (@:checkr _g ?? throw "null pointer dereference")._object._name?.__copy__()) : Bool) || !_u._nify((@:checkr _f ?? throw "null pointer dereference")._object._typ, (@:checkr _g ?? throw "null pointer dereference")._object._typ, _emode, _p) : Bool)) {
                                        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L612"
                                        {
                                            final __ret__:Bool = _result = false;
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                            return __ret__;
                                        };
                                    };
                                };
                                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L615"
                                {
                                    final __ret__:Bool = _result = true;
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L621"
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>)) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : false };
                        }, _y = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L622"
                            {
                                final __ret__:Bool = _result = _u._nify((@:checkr _x ?? throw "null pointer dereference")._base, (@:checkr _y ?? throw "null pointer dereference")._base, _emode, _p);
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L628"
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>)) : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>), _1 : false };
                        }, _y = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L629"
                            if (_x.len() == (_y.len())) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L630"
                                if (({
                                    final value = _x;
                                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                })) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L631"
                                    for (_i => _v in (@:checkr _x ?? throw "null pointer dereference")._vars) {
                                        var _w = (@:checkr _y ?? throw "null pointer dereference")._vars[(_i : stdgo.GoInt)];
                                        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L633"
                                        if (!_u._nify((@:checkr _v ?? throw "null pointer dereference")._object._typ, (@:checkr _w ?? throw "null pointer dereference")._object._typ, _mode, _p)) {
                                            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L634"
                                            {
                                                final __ret__:Bool = _result = false;
                                                for (defer in __deferstack__) {
                                                    if (defer.ran) continue;
                                                    defer.ran = true;
                                                    defer.f();
                                                };
                                                return __ret__;
                                            };
                                        };
                                    };
                                };
                                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L638"
                                {
                                    final __ret__:Bool = _result = true;
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L648"
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>), _1 : false };
                        }, _y = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L649"
                            {
                                final __ret__:Bool = _result = (((@:checkr _x ?? throw "null pointer dereference")._variadic == ((@:checkr _y ?? throw "null pointer dereference")._variadic) && _u._nify(stdgo.Go.asInterface((@:checkr _x ?? throw "null pointer dereference")._params), stdgo.Go.asInterface((@:checkr _y ?? throw "null pointer dereference")._params), _emode, _p) : Bool) && _u._nify(stdgo.Go.asInterface((@:checkr _x ?? throw "null pointer dereference")._results), stdgo.Go.asInterface((@:checkr _y ?? throw "null pointer dereference")._results), _emode, _p) : Bool);
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L655"
                    stdgo._internal.go.types.Types__assert._assert((!(@:checkr _u ?? throw "null pointer dereference")._enableInterfaceInference || ((_mode & (2u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode) : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode) != (0u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode)) : Bool));
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L661"
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : false };
                        }, _y = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            var _xset = _x._typeSet();
                            var _yset = _y._typeSet();
                            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L664"
                            if ((@:checkr _xset ?? throw "null pointer dereference")._comparable != ((@:checkr _yset ?? throw "null pointer dereference")._comparable)) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L665"
                                {
                                    final __ret__:Bool = _result = false;
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L667"
                            if (!(@:checkr _xset ?? throw "null pointer dereference")._terms._equal((@:checkr _yset ?? throw "null pointer dereference")._terms)) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L668"
                                {
                                    final __ret__:Bool = _result = false;
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                            var _a = (@:checkr _xset ?? throw "null pointer dereference")._methods;
                            var _b = (@:checkr _yset ?? throw "null pointer dereference")._methods;
                            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L672"
                            if ((_a.length) == ((_b.length))) {
                                var _q = (stdgo.Go.setRef((new stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair(_x, _y, _p) : stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair)) : stdgo.Ref<stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair>);
                                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L696"
                                while (({
                                    final value = _p;
                                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                })) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L697"
                                    if (_p._identical(_q)) {
                                        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L698"
                                        {
                                            final __ret__:Bool = _result = true;
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                            return __ret__;
                                        };
                                    };
                                    _p = (@:checkr _p ?? throw "null pointer dereference")._prev;
                                };
                                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L702"
                                if (false) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L703"
                                    stdgo._internal.go.types.Types__assertsortedmethods._assertSortedMethods(_a);
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L704"
                                    stdgo._internal.go.types.Types__assertsortedmethods._assertSortedMethods(_b);
                                };
                                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L706"
                                for (_i => _f in _a) {
                                    var _g = _b[(_i : stdgo.GoInt)];
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L708"
                                    if (((_f.id() != _g.id()) || !_u._nify((@:checkr _f ?? throw "null pointer dereference")._object._typ, (@:checkr _g ?? throw "null pointer dereference")._object._typ, (2u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode), _q) : Bool)) {
                                        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L709"
                                        {
                                            final __ret__:Bool = _result = false;
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                            return __ret__;
                                        };
                                    };
                                };
                                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L712"
                                {
                                    final __ret__:Bool = _result = true;
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L718"
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>)) : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>), _1 : false };
                        }, _y = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L719"
                            {
                                final __ret__:Bool = _result = (_u._nify((@:checkr _x ?? throw "null pointer dereference")._key, (@:checkr _y ?? throw "null pointer dereference")._key, _emode, _p) && _u._nify((@:checkr _x ?? throw "null pointer dereference")._elem, (@:checkr _y ?? throw "null pointer dereference")._elem, _emode, _p) : Bool);
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L726"
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>)) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : false };
                        }, _y = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L727"
                            {
                                final __ret__:Bool = _result = (((((_mode & (2u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode) : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode) == (0u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode)) || ((@:checkr _x ?? throw "null pointer dereference")._dir == (@:checkr _y ?? throw "null pointer dereference")._dir) : Bool)) && _u._nify((@:checkr _x ?? throw "null pointer dereference")._elem, (@:checkr _y ?? throw "null pointer dereference")._elem, _emode, _p) : Bool);
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L733"
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
                        }, _y = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            var _xargs = _x.typeArgs()._list();
                            var _yargs = _y.typeArgs()._list();
                            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L739"
                            if ((_xargs.length) != ((_yargs.length))) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L740"
                                {
                                    final __ret__:Bool = _result = false;
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L742"
                            for (_i => _xarg in _xargs) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L743"
                                if (!_u._nify(_xarg, _yargs[(_i : stdgo.GoInt)], _mode, _p)) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L744"
                                    {
                                        final __ret__:Bool = _result = false;
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L747"
                            {
                                final __ret__:Bool = _result = stdgo._internal.go.types.Types__indenticalorigin._indenticalOrigin(_x, _y);
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L752"
                    if (false) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L753"
                        stdgo._internal.go.types.Types__assert._assert(({
                            final value = _u._asTypeParam(stdgo.Go.asInterface(_x));
                            (value == null || (value : Dynamic).__nil__);
                        }));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L767"
                    if (true) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L774"
                        {
                            var _cx = (stdgo._internal.go.types.Types__coretype._coreType(stdgo.Go.asInterface(_x)) : stdgo._internal.go.types.Types_type_.Type_);
                            if (_cx != null) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L775"
                                if (false) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L776"
                                    _u._tracef(("core %s ≡ %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(_y));
                                };
                                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L782"
                                {
                                    final __ret__:Bool = _result = _u._nify(_cx, _y, (1u32 : stdgo._internal.go.types.Types_t_unifymode.T_unifyMode), _p);
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                        };
                    };
                } else if (__type__ == null) {
                    var _x:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : cast __type__;
                } else {
                    var _x:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                    //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L791"
                    throw stdgo.Go.toInterface(stdgo._internal.go.types.Types__sprintf._sprintf(null, null, true, ("u.nify(%s, %s, %d)" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode))));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L794"
            {
                final __ret__:Bool = _result = false;
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
                return _result;
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
                return _result;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _inferred( _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>, _tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>):stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_> {
        @:recv var _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier> = _u;
        var _list = (new stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>((_tparams.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L265"
        for (_i => _x in _tparams) {
            _list[(_i : stdgo.GoInt)] = _u._at(_x);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L268"
        return _list;
    }
    @:keep
    @:tdfield
    static public function _unknowns( _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>):stdgo.GoInt {
        @:recv var _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier> = _u;
        var _n = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L251"
        for (__0 => _h in (@:checkr _u ?? throw "null pointer dereference")._handles) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L252"
            if ((_h : stdgo._internal.go.types.Types_type_.Type_) == null) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L253"
                _n++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L256"
        return _n;
    }
    @:keep
    @:tdfield
    static public function _set( _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>, _x:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, _t:stdgo._internal.go.types.Types_type_.Type_):Void {
        @:recv var _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier> = _u;
        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L241"
        stdgo._internal.go.types.Types__assert._assert(_t != null);
        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L242"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L243"
            _u._tracef(("%s ➞ %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(_t));
        };
        {
            var __tmp__ = _t;
            var x = ((@:checkr _u ?? throw "null pointer dereference")._handles[_x] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>) : stdgo._internal.go.types.Types_type_.Type_);
            x.string = __tmp__.string;
            x.underlying = __tmp__.underlying;
        };
    }
    @:keep
    @:tdfield
    static public function _at( _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>, _x:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier> = _u;
        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L235"
        return ((@:checkr _u ?? throw "null pointer dereference")._handles[_x] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>) : stdgo._internal.go.types.Types_type_.Type_);
    }
    @:keep
    @:tdfield
    static public function _setHandle( _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>, _x:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, _h:stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>):Void {
        @:recv var _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier> = _u;
        var _hx = ((@:checkr _u ?? throw "null pointer dereference")._handles[_x] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>));
        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L225"
        stdgo._internal.go.types.Types__assert._assert(({
            final value = _hx;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }));
        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L226"
        for (_y => _hy in (@:checkr _u ?? throw "null pointer dereference")._handles) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L227"
            if (stdgo.Go.toInterface(_hy) == (stdgo.Go.toInterface(_hx))) {
                (@:checkr _u ?? throw "null pointer dereference")._handles[_y] = _h;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _asTypeParam( _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>, _x:stdgo._internal.go.types.Types_type_.Type_):stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> {
        @:recv var _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier> = _u;
        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L213"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
            }, _x = __tmp__._0, __0 = __tmp__._1;
            if (({
                final value = _x;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L214"
                {
                    var __tmp__ = ((@:checkr _u ?? throw "null pointer dereference")._handles != null && (@:checkr _u ?? throw "null pointer dereference")._handles.__exists__(_x) ? { _0 : (@:checkr _u ?? throw "null pointer dereference")._handles[_x], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>), _1 : false }), __1:stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_> = __tmp__._0, _found:Bool = __tmp__._1;
                    if (_found) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L215"
                        return _x;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L218"
        return null;
    }
    @:keep
    @:tdfield
    static public function _join( _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>, _x:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, _y:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):Bool {
        @:recv var _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier> = _u;
        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L187"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L188"
            _u._tracef(("%s ⇄ %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L190"
        {
            var __0 = ((@:checkr _u ?? throw "null pointer dereference")._handles[_x] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>)), __1 = ((@:checkr _u ?? throw "null pointer dereference")._handles[_y] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>));
var _hy = __1, _hx = __0;
            if (stdgo.Go.toInterface(_hx) == (stdgo.Go.toInterface(_hy))) {} else if ((((_hx : stdgo._internal.go.types.Types_type_.Type_) != null) && ((_hy : stdgo._internal.go.types.Types_type_.Type_) != null) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L195"
                return false;
            } else if ((_hx : stdgo._internal.go.types.Types_type_.Type_) != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L198"
                _u._setHandle(_y, _hx);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L205"
                _u._setHandle(_x, _hy);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L207"
        return true;
    }
    @:keep
    @:tdfield
    static public function string( _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier> = _u;
        var _tparams = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>(((@:checkr _u ?? throw "null pointer dereference")._handles.length : stdgo.GoInt).toBasic(), 0) : stdgo._internal.go.types.Types_t_typeparamsbyid.T_typeParamsById);
        var _i = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L156"
        for (_tpar => _ in (@:checkr _u ?? throw "null pointer dereference")._handles) {
            _tparams[(_i : stdgo.GoInt)] = _tpar;
            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L158"
            _i++;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L160"
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_tparams));
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _w = stdgo._internal.go.types.Types__newtypewriter._newTypeWriter((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), null);
        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L164"
        _w._byte((91 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L165"
        for (_i => _x in _tparams) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L166"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L167"
                _w._string((", " : stdgo.GoString));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L169"
            _w._typ(stdgo.Go.asInterface(_x));
            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L170"
            _w._string((": " : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L171"
            _w._typ(_u._at(_x));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L173"
        _w._byte((93 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L174"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _tracef( _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier> = _u;
        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L147"
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((stdgo._internal.strings.Strings_repeat.repeat((".  " : stdgo.GoString), (@:checkr _u ?? throw "null pointer dereference")._depth) + stdgo._internal.go.types.Types__sprintf._sprintf(null, null, true, _format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString)));
    }
    @:keep
    @:tdfield
    static public function _unify( _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier>, _x:stdgo._internal.go.types.Types_type_.Type_, _y:stdgo._internal.go.types.Types_type_.Type_, _mode:stdgo._internal.go.types.Types_t_unifymode.T_unifyMode):Bool {
        @:recv var _u:stdgo.Ref<stdgo._internal.go.types.Types_t_unifier.T_unifier> = _u;
        //"file:///home/runner/.go/go1.21.3/src/go/types/unify.go#L143"
        return _u._nify(_x, _y, _mode, null);
    }
}

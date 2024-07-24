package stdgo._internal.slices;
macro function equal<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s1:haxe.macro.Expr.ExprOf<S>, _s2:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<Bool> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "equal" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _s1:$S, _s2:$S) {
                    if ((_s1.length) != ((_s2.length))) {
                        return false;
                    };
                    for (_i => _ in _s1) {
                        if (_s1[@:param_index _i] != (_s2[@:param_index _i])) {
                            return false;
                        };
                    };
                    return true;
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_s1, $_s2));
        };
    }
macro function equalFunc<S1, S2, E1, E2>(__generic__0:haxe.macro.Expr.ExprOf<S1>, __generic__1:haxe.macro.Expr.ExprOf<S2>, __generic__2:haxe.macro.Expr.ExprOf<E1>, __generic__3:haxe.macro.Expr.ExprOf<E2>, _s1:haxe.macro.Expr.ExprOf<S1>, _s2:haxe.macro.Expr.ExprOf<S2>, _eq:haxe.macro.Expr.ExprOf<($E1, $E2) -> Bool>):haxe.macro.Expr.ExprOf<Bool> {
        final S1:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final S2:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        final E1:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__2));
        final E2:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__3));
        {
            var id = "T_" + "slices" + "_" + "equalFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S1) + "_" + haxe.macro.ComplexTypeTools.toString(S2) + "_" + haxe.macro.ComplexTypeTools.toString(E1) + "_" + haxe.macro.ComplexTypeTools.toString(E2) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S1, __generic__1:$S2, __generic__2:$E1, __generic__3:$E2, _s1:$S1, _s2:$S2, _eq:($E1, $E2) -> Bool) {
                    if ((_s1.length) != ((_s2.length))) {
                        return false;
                    };
                    for (_i => _v1 in _s1) {
                        var _v2 = _s2[@:param_index _i];
                        if (!_eq(_v1, _v2)) {
                            return false;
                        };
                    };
                    return true;
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $__generic__2, $__generic__3, $_s1, $_s2, $_eq));
        };
    }
macro function compare<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s1:haxe.macro.Expr.ExprOf<S>, _s2:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<stdgo.GoInt> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "compare" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _s1:$S, _s2:$S) {
                    for (_i => _v1 in _s1) {
                        if ((_i >= (_s2.length) : Bool)) {
                            return (1 : stdgo.GoInt);
                        };
                        var _v2 = _s2[@:param_index _i];
                        {
                            var _c = stdgo._internal.cmp.Cmp.compare(stdgo.Go.defaultValue((cast (null) : $E)), _v1, _v2);
                            if (_c != ((0 : stdgo.GoInt))) {
                                return _c;
                            };
                        };
                    };
                    if (((_s1.length) < (_s2.length) : Bool)) {
                        return (-1 : stdgo.GoInt);
                    };
                    return (0 : stdgo.GoInt);
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_s1, $_s2));
        };
    }
macro function compareFunc<S1, S2, E1, E2>(__generic__0:haxe.macro.Expr.ExprOf<S1>, __generic__1:haxe.macro.Expr.ExprOf<S2>, __generic__2:haxe.macro.Expr.ExprOf<E1>, __generic__3:haxe.macro.Expr.ExprOf<E2>, _s1:haxe.macro.Expr.ExprOf<S1>, _s2:haxe.macro.Expr.ExprOf<S2>, _cmp:haxe.macro.Expr.ExprOf<($E1, $E2) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<stdgo.GoInt> {
        final S1:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final S2:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        final E1:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__2));
        final E2:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__3));
        {
            var id = "T_" + "slices" + "_" + "compareFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S1) + "_" + haxe.macro.ComplexTypeTools.toString(S2) + "_" + haxe.macro.ComplexTypeTools.toString(E1) + "_" + haxe.macro.ComplexTypeTools.toString(E2) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S1, __generic__1:$S2, __generic__2:$E1, __generic__3:$E2, _s1:$S1, _s2:$S2, _cmp:($E1, $E2) -> stdgo.GoInt) {
                    for (_i => _v1 in _s1) {
                        if ((_i >= (_s2.length) : Bool)) {
                            return (1 : stdgo.GoInt);
                        };
                        var _v2 = _s2[@:param_index _i];
                        {
                            var _c = _cmp(_v1, _v2);
                            if (_c != ((0 : stdgo.GoInt))) {
                                return _c;
                            };
                        };
                    };
                    if (((_s1.length) < (_s2.length) : Bool)) {
                        return (-1 : stdgo.GoInt);
                    };
                    return (0 : stdgo.GoInt);
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $__generic__2, $__generic__3, $_s1, $_s2, $_cmp));
        };
    }
macro function index<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _v:haxe.macro.Expr.ExprOf<E>):haxe.macro.Expr.ExprOf<stdgo.GoInt> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "index" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _s:$S, _v:$E) {
                    for (_i => _ in _s) {
                        if (_v == (_s[@:param_index _i])) {
                            return _i;
                        };
                    };
                    return (-1 : stdgo.GoInt);
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_s, $_v));
        };
    }
macro function indexFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _f:haxe.macro.Expr.ExprOf<$E -> Bool>):haxe.macro.Expr.ExprOf<stdgo.GoInt> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "indexFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _s:$S, _f:$E -> Bool) {
                    for (_i => _ in _s) {
                        if (_f(_s[@:param_index _i])) {
                            return _i;
                        };
                    };
                    return (-1 : stdgo.GoInt);
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_s, $_f));
        };
    }
macro function contains<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _v:haxe.macro.Expr.ExprOf<E>):haxe.macro.Expr.ExprOf<Bool> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "contains" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _s:$S, _v:$E) {
                    return (@:privateAccess stdgo._internal.slices.Slices.index(stdgo.Go.defaultValue((cast (null) : $S)), stdgo.Go.defaultValue((cast (null) : $E)), _s, _v) >= (0 : stdgo.GoInt) : Bool);
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_s, $_v));
        };
    }
macro function containsFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _f:haxe.macro.Expr.ExprOf<$E -> Bool>):haxe.macro.Expr.ExprOf<Bool> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "containsFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _s:$S, _f:$E -> Bool) {
                    return (@:privateAccess stdgo._internal.slices.Slices.indexFunc(stdgo.Go.defaultValue((cast (null) : $S)), stdgo.Go.defaultValue((cast (null) : $E)), _s, _f) >= (0 : stdgo.GoInt) : Bool);
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_s, $_f));
        };
    }
macro function insert<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _i:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _v:haxe.macro.Expr.ExprOf<haxe.Rest<E>>):haxe.macro.Expr.ExprOf<S> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "insert" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _s:$S, _i:stdgo.GoInt, _v:haxe.Rest<$E>) {
                    var _v = new stdgo.Slice<$E>(_v.length, 0, ..._v);
                    var _m = (_v.length);
                    if (_m == ((0 : stdgo.GoInt))) {
                        return _s;
                    };
                    var _n = (_s.length);
                    if (_i == (_n)) {
                        return (_s.__append__(...(_v : stdgo._internal.slices.Slices.Array<$S>)));
                    };
                    if (((_n + _m : stdgo.GoInt) > _s.capacity : Bool)) {
                        var _s2 = ((_s.__slice__(0, _i) : $S).__append__(...((new stdgo.Slice<$E>(((_n + _m : stdgo.GoInt) - _i : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<$E>) : stdgo._internal.slices.Slices.Array<$S>)));
                        stdgo.Go.copySlice((_s2.__slice__(_i) : $S), _v);
                        stdgo.Go.copySlice((_s2.__slice__((_i + _m : stdgo.GoInt)) : $S), (_s.__slice__(_i) : $S));
                        return _s2;
                    };
                    _s = (_s.__slice__(0, (_n + _m : stdgo.GoInt)) : $S);
                    if (!@:privateAccess stdgo._internal.slices.Slices._overlaps(stdgo.Go.defaultValue((cast (null) : $E)), _v, (_s.__slice__((_i + _m : stdgo.GoInt)) : $S))) {
                        stdgo.Go.copySlice((_s.__slice__((_i + _m : stdgo.GoInt)) : $S), (_s.__slice__(_i) : $S));
                        stdgo.Go.copySlice((_s.__slice__(_i) : $S), _v);
                        return _s;
                    };
                    stdgo.Go.copySlice((_s.__slice__(_n) : $S), _v);
                    @:privateAccess stdgo._internal.slices.Slices._rotateRight(stdgo.Go.defaultValue((cast (null) : $E)), (_s.__slice__(_i) : $S), _m);
                    return _s;
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_s, $_i, $_v));
        };
    }
macro function delete<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _i:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _j:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<S> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "delete" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _s:$S, _i:stdgo.GoInt, _j:stdgo.GoInt) {
                    var __blank__ = (_s.__slice__(_i, _j) : $S);
                    return ((_s.__slice__(0, _i) : $S).__append__(...((_s.__slice__(_j) : $S) : stdgo._internal.slices.Slices.Array<$S>)));
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_s, $_i, $_j));
        };
    }
macro function deleteFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _del:haxe.macro.Expr.ExprOf<$E -> Bool>):haxe.macro.Expr.ExprOf<S> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "deleteFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _s:$S, _del:$E -> Bool) {
                    for (_i => _v in _s) {
                        if (_del(_v)) {
                            var _j = _i;
                            {
                                _i++;
                                stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                                    _v = _s[@:param_index _i];
                                    if (!_del(_v)) {
                                        _s[@:param_index _j] = _v;
                                        _j++;
                                    };
                                });
                            };
                            return (_s.__slice__(0, _j) : $S);
                        };
                    };
                    return _s;
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_s, $_del));
        };
    }
macro function replace<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _i:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _j:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _v:haxe.macro.Expr.ExprOf<haxe.Rest<E>>):haxe.macro.Expr.ExprOf<S> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "replace" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _s:$S, _i:stdgo.GoInt, _j:stdgo.GoInt, _v:haxe.Rest<$E>) {
                    var _v = new stdgo.Slice<$E>(_v.length, 0, ..._v);
                    var __blank__ = (_s.__slice__(_i, _j) : $S);
                    if (_i == (_j)) {
                        return @:privateAccess stdgo._internal.slices.Slices.insert(stdgo.Go.defaultValue((cast (null) : $S)), stdgo.Go.defaultValue((cast (null) : $E)), _s, _i, ...(_v : stdgo._internal.slices.Slices.Array<$E>));
                    };
                    if (_j == ((_s.length))) {
                        return ((_s.__slice__(0, _i) : $S).__append__(...(_v : stdgo._internal.slices.Slices.Array<$S>)));
                    };
                    var _tot = ((((_s.__slice__(0, _i) : $S).length) + (_v.length) : stdgo.GoInt) + ((_s.__slice__(_j) : $S).length) : stdgo.GoInt);
                    if ((_tot > _s.capacity : Bool)) {
                        var _s2 = ((_s.__slice__(0, _i) : $S).__append__(...((new stdgo.Slice<$E>((_tot - _i : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<$E>) : stdgo._internal.slices.Slices.Array<$S>)));
                        stdgo.Go.copySlice((_s2.__slice__(_i) : $S), _v);
                        stdgo.Go.copySlice((_s2.__slice__((_i + (_v.length) : stdgo.GoInt)) : $S), (_s.__slice__(_j) : $S));
                        return _s2;
                    };
                    var _r = (_s.__slice__(0, _tot) : $S);
                    if (((_i + (_v.length) : stdgo.GoInt) <= _j : Bool)) {
                        stdgo.Go.copySlice((_r.__slice__(_i) : $S), _v);
                        if ((_i + (_v.length) : stdgo.GoInt) != (_j)) {
                            stdgo.Go.copySlice((_r.__slice__((_i + (_v.length) : stdgo.GoInt)) : $S), (_s.__slice__(_j) : $S));
                        };
                        return _r;
                    };
                    if (!@:privateAccess stdgo._internal.slices.Slices._overlaps(stdgo.Go.defaultValue((cast (null) : $E)), (_r.__slice__((_i + (_v.length) : stdgo.GoInt)) : $S), _v)) {
                        stdgo.Go.copySlice((_r.__slice__((_i + (_v.length) : stdgo.GoInt)) : $S), (_s.__slice__(_j) : $S));
                        stdgo.Go.copySlice((_r.__slice__(_i) : $S), _v);
                        return _r;
                    };
                    var _y = ((_v.length) - ((_j - _i : stdgo.GoInt)) : stdgo.GoInt);
                    if (!@:privateAccess stdgo._internal.slices.Slices._overlaps(stdgo.Go.defaultValue((cast (null) : $E)), (_r.__slice__(_i, _j) : $S), _v)) {
                        stdgo.Go.copySlice((_r.__slice__(_i, _j) : $S), (_v.__slice__(_y) : stdgo.Slice<$E>));
                        stdgo.Go.copySlice((_r.__slice__((_s.length)) : $S), (_v.__slice__(0, _y) : stdgo.Slice<$E>));
                        @:privateAccess stdgo._internal.slices.Slices._rotateRight(stdgo.Go.defaultValue((cast (null) : $E)), (_r.__slice__(_i) : $S), _y);
                        return _r;
                    };
                    if (!@:privateAccess stdgo._internal.slices.Slices._overlaps(stdgo.Go.defaultValue((cast (null) : $E)), (_r.__slice__((_s.length)) : $S), _v)) {
                        stdgo.Go.copySlice((_r.__slice__((_s.length)) : $S), (_v.__slice__(0, _y) : stdgo.Slice<$E>));
                        stdgo.Go.copySlice((_r.__slice__(_i, _j) : $S), (_v.__slice__(_y) : stdgo.Slice<$E>));
                        @:privateAccess stdgo._internal.slices.Slices._rotateRight(stdgo.Go.defaultValue((cast (null) : $E)), (_r.__slice__(_i) : $S), _y);
                        return _r;
                    };
                    var _k = @:privateAccess stdgo._internal.slices.Slices._startIdx(stdgo.Go.defaultValue((cast (null) : $E)), _v, (_s.__slice__(_j) : $S));
                    stdgo.Go.copySlice((_r.__slice__(_i) : $S), _v);
                    stdgo.Go.copySlice((_r.__slice__((_i + (_v.length) : stdgo.GoInt)) : $S), (_r.__slice__((_i + _k : stdgo.GoInt)) : $S));
                    return _r;
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_s, $_i, $_j, $_v));
        };
    }
macro function clone<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<S> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "clone" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _s:$S) {
                    if (_s == null) {
                        return stdgo.Go.defaultValue((cast (null) : $S));
                    };
                    return (((new stdgo.Slice<$E>(0, 0, ...[]) : stdgo.Slice<$E>) : $S).__append__(...(_s : stdgo._internal.slices.Slices.Array<$S>)));
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_s));
        };
    }
macro function compact<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<S> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "compact" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _s:$S) {
                    if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
                        return _s;
                    };
                    var _i = (1 : stdgo.GoInt);
                    {
                        var _k = (1 : stdgo.GoInt);
                        stdgo.Go.cfor((_k < (_s.length) : Bool), _k++, {
                            if (_s[@:param_index _k] != (_s[@:param_index (_k - (1 : stdgo.GoInt) : stdgo.GoInt)])) {
                                if (_i != (_k)) {
                                    _s[@:param_index _i] = _s[@:param_index _k];
                                };
                                _i++;
                            };
                        });
                    };
                    return (_s.__slice__(0, _i) : $S);
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_s));
        };
    }
macro function compactFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _eq:haxe.macro.Expr.ExprOf<($E, $E) -> Bool>):haxe.macro.Expr.ExprOf<S> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "compactFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _s:$S, _eq:($E, $E) -> Bool) {
                    if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
                        return _s;
                    };
                    var _i = (1 : stdgo.GoInt);
                    {
                        var _k = (1 : stdgo.GoInt);
                        stdgo.Go.cfor((_k < (_s.length) : Bool), _k++, {
                            if (!_eq(_s[@:param_index _k], _s[@:param_index (_k - (1 : stdgo.GoInt) : stdgo.GoInt)])) {
                                if (_i != (_k)) {
                                    _s[@:param_index _i] = _s[@:param_index _k];
                                };
                                _i++;
                            };
                        });
                    };
                    return (_s.__slice__(0, _i) : $S);
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_s, $_eq));
        };
    }
macro function grow<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _n:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<S> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "grow" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _s:$S, _n:stdgo.GoInt) {
                    if ((_n < (0 : stdgo.GoInt) : Bool)) {
                        throw stdgo.Go.toInterface(("cannot be negative" : stdgo.GoString));
                    };
                    {
                        _n = (_n - ((_s.capacity - (_s.length) : stdgo.GoInt)) : stdgo.GoInt);
                        if ((_n > (0 : stdgo.GoInt) : Bool)) {
                            _s = (((_s.__slice__(0, _s.capacity) : $S).__append__(...((new stdgo.Slice<$E>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<$E>) : stdgo._internal.slices.Slices.Array<$S>))).__slice__(0, (_s.length)) : $S);
                        };
                    };
                    return _s;
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_s, $_n));
        };
    }
macro function clip<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<S> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "clip" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _s:$S) {
                    return (_s.__slice__(0, (_s.length), (_s.length)) : $S);
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_s));
        };
    }
macro function _rotateLeft<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _r:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_rotateLeft" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _s:stdgo.Slice<$E>, _r:stdgo.GoInt) {
                    while (((_r != (0 : stdgo.GoInt)) && (_r != (_s.length)) : Bool)) {
                        if (((_r * (2 : stdgo.GoInt) : stdgo.GoInt) <= (_s.length) : Bool)) {
                            @:privateAccess stdgo._internal.slices.Slices._swap(stdgo.Go.defaultValue((cast (null) : $E)), (_s.__slice__(0, _r) : stdgo.Slice<$E>), (_s.__slice__(((_s.length) - _r : stdgo.GoInt)) : stdgo.Slice<$E>));
                            _s = (_s.__slice__(0, ((_s.length) - _r : stdgo.GoInt)) : stdgo.Slice<$E>);
                        } else {
                            @:privateAccess stdgo._internal.slices.Slices._swap(stdgo.Go.defaultValue((cast (null) : $E)), (_s.__slice__(0, ((_s.length) - _r : stdgo.GoInt)) : stdgo.Slice<$E>), (_s.__slice__(_r) : stdgo.Slice<$E>));
                            {
                                final __tmp__0 = (_s.__slice__(((_s.length) - _r : stdgo.GoInt)) : stdgo.Slice<$E>);
                                final __tmp__1 = ((_r * (2 : stdgo.GoInt) : stdgo.GoInt) - (_s.length) : stdgo.GoInt);
                                _s = __tmp__0;
                                _r = __tmp__1;
                            };
                        };
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_s, $_r));
        };
    }
macro function _rotateRight<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _r:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_rotateRight" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _s:stdgo.Slice<$E>, _r:stdgo.GoInt) {
                    @:privateAccess stdgo._internal.slices.Slices._rotateLeft(stdgo.Go.defaultValue((cast (null) : $E)), _s, ((_s.length) - _r : stdgo.GoInt));
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_s, $_r));
        };
    }
macro function _swap<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _y:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>):haxe.macro.Expr.ExprOf<Void> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_swap" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _x:stdgo.Slice<$E>, _y:stdgo.Slice<$E>) {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < (_x.length) : Bool), _i++, {
                            {
                                final __tmp__0 = _y[(_i : stdgo.GoInt)];
                                final __tmp__1 = _x[(_i : stdgo.GoInt)];
                                final __tmp__2 = _x;
                                final __tmp__3 = (_i : stdgo.GoInt);
                                final __tmp__4 = _y;
                                final __tmp__5 = (_i : stdgo.GoInt);
                                __tmp__2[__tmp__3] = __tmp__0;
                                __tmp__4[__tmp__5] = __tmp__1;
                            };
                        });
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_x, $_y));
        };
    }
macro function _overlaps<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _a:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _b:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>):haxe.macro.Expr.ExprOf<Bool> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_overlaps" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _a:stdgo.Slice<$E>, _b:stdgo.Slice<$E>) {
                    if (((_a.length == (0 : stdgo.GoInt)) || (_b.length == (0 : stdgo.GoInt)) : Bool)) {
                        return false;
                    };
                    var _elemSize = stdgo._internal.unsafe.Unsafe.sizeof(_a[(0 : stdgo.GoInt)]);
                    if (_elemSize == ((0 : stdgo.GoUIntptr))) {
                        return false;
                    };
                    return ((((stdgo.Go.toInterface((stdgo.Go.setRef(_a[(0 : stdgo.GoInt)]) : stdgo.Ref<$E>)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(@:privateAccess stdgo._internal.slices.Slices.uintptr_kind)) : stdgo.GoUIntptr) <= (((stdgo.Go.toInterface((stdgo.Go.setRef(_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<$E>)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(@:privateAccess stdgo._internal.slices.Slices.uintptr_kind)) : stdgo.GoUIntptr) + ((_elemSize - (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr) : Bool) && (((stdgo.Go.toInterface((stdgo.Go.setRef(_b[(0 : stdgo.GoInt)]) : stdgo.Ref<$E>)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(@:privateAccess stdgo._internal.slices.Slices.uintptr_kind)) : stdgo.GoUIntptr) <= (((stdgo.Go.toInterface((stdgo.Go.setRef(_a[((_a.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<$E>)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(@:privateAccess stdgo._internal.slices.Slices.uintptr_kind)) : stdgo.GoUIntptr) + ((_elemSize - (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr) : Bool) : Bool);
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_a, $_b));
        };
    }
macro function _startIdx<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _haystack:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _needle:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>):haxe.macro.Expr.ExprOf<stdgo.GoInt> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_startIdx" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _haystack:stdgo.Slice<$E>, _needle:stdgo.Slice<$E>) {
                    var _p = (stdgo.Go.setRef(_needle[(0 : stdgo.GoInt)]) : stdgo.Ref<$E>);
                    for (_i => _ in _haystack) {
                        if (_p == ((stdgo.Go.setRef(_haystack[(_i : stdgo.GoInt)]) : stdgo.Ref<$E>))) {
                            return _i;
                        };
                    };
                    throw stdgo.Go.toInterface(("needle not found" : stdgo.GoString));
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_haystack, $_needle));
        };
    }
macro function reverse<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<Void> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "reverse" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _s:$S) {
                    {
                        var __0 = (0 : stdgo.GoInt), __1 = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
                        stdgo.Go.cfor((_i < _j : Bool), {
                            final __tmp__0 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                            final __tmp__1 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                            _i = __tmp__0;
                            _j = __tmp__1;
                        }, {
                            {
                                final __tmp__0 = _s[@:param_index _j];
                                final __tmp__1 = _s[@:param_index _i];
                                final __tmp__2 = _s;
                                final __tmp__3 = @:param_index _i;
                                final __tmp__4 = _s;
                                final __tmp__5 = @:param_index _j;
                                __tmp__2[__tmp__3] = __tmp__0;
                                __tmp__4[__tmp__5] = __tmp__1;
                            };
                        });
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_s));
        };
    }
macro function _equal<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _v1:haxe.macro.Expr.ExprOf<T_>, _v2:haxe.macro.Expr.ExprOf<T_>):haxe.macro.Expr.ExprOf<Bool> {
        final T_:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_equal" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(T_) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$T_, _v1:$T_, _v2:$T_) {
                    return _v1 == (_v2);
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_v1, $_v2));
        };
    }
macro function _equalNaN<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _v1:haxe.macro.Expr.ExprOf<T_>, _v2:haxe.macro.Expr.ExprOf<T_>):haxe.macro.Expr.ExprOf<Bool> {
        final T_:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_equalNaN" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(T_) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$T_, _v1:$T_, _v2:$T_) {
                    var _isNaN = function(_f:$T_):Bool {
                        return _f != (_f);
                    };
                    return ((_v1 == _v2) || ((_isNaN(_v1) && _isNaN(_v2) : Bool)) : Bool);
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_v1, $_v2));
        };
    }
macro function _equalToCmp<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _eq:haxe.macro.Expr.ExprOf<($T_, $T_) -> Bool>):haxe.macro.Expr.ExprOf<(T_, T_) -> stdgo.GoInt> {
        final T_:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_equalToCmp" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(T_) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$T_, _eq:($T_, $T_) -> Bool) {
                    return function(_v1:$T_, _v2:$T_):stdgo.GoInt {
                        if (_eq(_v1, _v2)) {
                            return (0 : stdgo.GoInt);
                        };
                        return (1 : stdgo.GoInt);
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_eq));
        };
    }
macro function _equalToIndex<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _f:haxe.macro.Expr.ExprOf<($T_, $T_) -> Bool>, _v1:haxe.macro.Expr.ExprOf<T_>):haxe.macro.Expr.ExprOf<T_ -> Bool> {
        final T_:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_equalToIndex" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(T_) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$T_, _f:($T_, $T_) -> Bool, _v1:$T_) {
                    return function(_v2:$T_):Bool {
                        return _f(_v1, _v2);
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_f, $_v1));
        };
    }
macro function _naiveReplace<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _i:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _j:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _v:haxe.macro.Expr.ExprOf<haxe.Rest<E>>):haxe.macro.Expr.ExprOf<S> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "_naiveReplace" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _s:$S, _i:stdgo.GoInt, _j:stdgo.GoInt, _v:haxe.Rest<$E>) {
                    var _v = new stdgo.Slice<$E>(_v.length, 0, ..._v);
                    _s = @:privateAccess stdgo._internal.slices.Slices.delete(stdgo.Go.defaultValue((cast (null) : $S)), stdgo.Go.defaultValue((cast (null) : $E)), _s, _i, _j);
                    _s = @:privateAccess stdgo._internal.slices.Slices.insert(stdgo.Go.defaultValue((cast (null) : $S)), stdgo.Go.defaultValue((cast (null) : $E)), _s, _i, ...(_v : stdgo._internal.slices.Slices.Array<$E>));
                    return _s;
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_s, $_i, $_j, $_v));
        };
    }
macro function _apply<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _v:haxe.macro.Expr.ExprOf<T_>, _f:haxe.macro.Expr.ExprOf<$T_ -> Void>):haxe.macro.Expr.ExprOf<Void> {
        final T_:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_apply" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(T_) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$T_, _v:$T_, _f:$T_ -> Void) {
                    _f(_v);
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_v, $_f));
        };
    }
macro function sort<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<Void> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "sort" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _x:$S) {
                    var _n = (_x.length);
                    @:privateAccess stdgo._internal.slices.Slices._pdqsortOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _x, (0 : stdgo.GoInt), _n, stdgo._internal.math.bits.Bits.len((_n : stdgo.GoUInt)));
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_x));
        };
    }
macro function sortFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "sortFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _x:$S, _cmp:(_a:E, _b:E) -> stdgo.GoInt) {
                    var _n = (_x.length);
                    @:privateAccess stdgo._internal.slices.Slices._pdqsortCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _x, (0 : stdgo.GoInt), _n, stdgo._internal.math.bits.Bits.len((_n : stdgo.GoUInt)), _cmp);
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_x, $_cmp));
        };
    }
macro function sortStableFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "sortStableFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _x:$S, _cmp:(_a:E, _b:E) -> stdgo.GoInt) {
                    @:privateAccess stdgo._internal.slices.Slices._stableCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _x, (_x.length), _cmp);
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_x, $_cmp));
        };
    }
macro function isSorted<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<Bool> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "isSorted" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _x:$S) {
                    {
                        var _i = ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                        stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i--, {
                            if (stdgo._internal.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _x[@:param_index _i], _x[@:param_index (_i - (1 : stdgo.GoInt) : stdgo.GoInt)])) {
                                return false;
                            };
                        });
                    };
                    return true;
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_x));
        };
    }
macro function isSortedFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Bool> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "isSortedFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _x:$S, _cmp:(_a:E, _b:E) -> stdgo.GoInt) {
                    {
                        var _i = ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                        stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i--, {
                            if ((_cmp(_x[@:param_index _i], _x[@:param_index (_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool)) {
                                return false;
                            };
                        });
                    };
                    return true;
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_x, $_cmp));
        };
    }
macro function min<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<E> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "min" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _x:$S) {
                    if (((_x.length) < (1 : stdgo.GoInt) : Bool)) {
                        throw stdgo.Go.toInterface(("slices.Min: empty list" : stdgo.GoString));
                    };
                    var _m = _x[@:param_index (0 : stdgo.GoInt)];
                    {
                        var _i = (1 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < (_x.length) : Bool), _i++, {
                            _m = @:privateAccess stdgo._internal.slices.Slices._min(_m, _x[@:param_index _i]);
                        });
                    };
                    return _m;
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_x));
        };
    }
macro function minFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<E> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "minFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _x:$S, _cmp:(_a:E, _b:E) -> stdgo.GoInt) {
                    if (((_x.length) < (1 : stdgo.GoInt) : Bool)) {
                        throw stdgo.Go.toInterface(("slices.MinFunc: empty list" : stdgo.GoString));
                    };
                    var _m = _x[@:param_index (0 : stdgo.GoInt)];
                    {
                        var _i = (1 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < (_x.length) : Bool), _i++, {
                            if ((_cmp(_x[@:param_index _i], _m) < (0 : stdgo.GoInt) : Bool)) {
                                _m = _x[@:param_index _i];
                            };
                        });
                    };
                    return _m;
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_x, $_cmp));
        };
    }
macro function max<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<E> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "max" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _x:$S) {
                    if (((_x.length) < (1 : stdgo.GoInt) : Bool)) {
                        throw stdgo.Go.toInterface(("slices.Max: empty list" : stdgo.GoString));
                    };
                    var _m = _x[@:param_index (0 : stdgo.GoInt)];
                    {
                        var _i = (1 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < (_x.length) : Bool), _i++, {
                            _m = @:privateAccess stdgo._internal.slices.Slices._max(_m, _x[@:param_index _i]);
                        });
                    };
                    return _m;
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_x));
        };
    }
macro function maxFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<E> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "maxFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _x:$S, _cmp:(_a:E, _b:E) -> stdgo.GoInt) {
                    if (((_x.length) < (1 : stdgo.GoInt) : Bool)) {
                        throw stdgo.Go.toInterface(("slices.MaxFunc: empty list" : stdgo.GoString));
                    };
                    var _m = _x[@:param_index (0 : stdgo.GoInt)];
                    {
                        var _i = (1 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < (_x.length) : Bool), _i++, {
                            if ((_cmp(_x[@:param_index _i], _m) > (0 : stdgo.GoInt) : Bool)) {
                                _m = _x[@:param_index _i];
                            };
                        });
                    };
                    return _m;
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_x, $_cmp));
        };
    }
macro function binarySearch<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>, _target:haxe.macro.Expr.ExprOf<E>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : Bool; }> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "slices" + "_" + "binarySearch" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, _x:$S, _target:$E) {
                    var _n = (_x.length);
                    var __0 = (0 : stdgo.GoInt), __1 = _n;
var _j = __1, _i = __0;
                    while ((_i < _j : Bool)) {
                        var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                        if (stdgo._internal.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _x[@:param_index _h], _target)) {
                            _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                        } else {
                            _j = _h;
                        };
                    };
                    return { _0 : _i, _1 : ((_i < _n : Bool) && (((_x[@:param_index _i] == _target) || ((@:privateAccess stdgo._internal.slices.Slices._isNaN(stdgo.Go.defaultValue((cast (null) : $E)), _x[@:param_index _i]) && @:privateAccess stdgo._internal.slices.Slices._isNaN(stdgo.Go.defaultValue((cast (null) : $E)), _target) : Bool)) : Bool)) : Bool) };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_x, $_target));
        };
    }
macro function binarySearchFunc<S, E, T_>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, __generic__2:haxe.macro.Expr.ExprOf<T_>, _x:haxe.macro.Expr.ExprOf<S>, _target:haxe.macro.Expr.ExprOf<T_>, _cmp:haxe.macro.Expr.ExprOf<($E, $T_) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : Bool; }> {
        final S:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        final T_:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__2));
        {
            var id = "T_" + "slices" + "_" + "binarySearchFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(S) + "_" + haxe.macro.ComplexTypeTools.toString(E) + "_" + haxe.macro.ComplexTypeTools.toString(T_) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$S, __generic__1:$E, __generic__2:$T_, _x:$S, _target:$T_, _cmp:($E, $T_) -> stdgo.GoInt) {
                    var _n = (_x.length);
                    var __0 = (0 : stdgo.GoInt), __1 = _n;
var _j = __1, _i = __0;
                    while ((_i < _j : Bool)) {
                        var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                        if ((_cmp(_x[@:param_index _h], _target) < (0 : stdgo.GoInt) : Bool)) {
                            _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                        } else {
                            _j = _h;
                        };
                    };
                    return { _0 : _i, _1 : ((_i < _n : Bool) && (_cmp(_x[@:param_index _i], _target) == (0 : stdgo.GoInt)) : Bool) };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $__generic__2, $_x, $_target, $_cmp));
        };
    }
macro function _isNaN<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _x:haxe.macro.Expr.ExprOf<T_>):haxe.macro.Expr.ExprOf<Bool> {
        final T_:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_isNaN" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(T_) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$T_, _x:$T_) {
                    return _x != (_x);
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_x));
        };
    }
macro function _insertionSortCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_insertionSortCmpFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _cmp:(_a:E, _b:E) -> stdgo.GoInt) {
                    {
                        var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b : Bool), _i++, {
                            {
                                var _j = _i;
                                stdgo.Go.cfor(((_j > _a : Bool) && ((_cmp(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool)) : Bool), _j--, {
                                    {
                                        final __tmp__0 = _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)];
                                        final __tmp__1 = _data[(_j : stdgo.GoInt)];
                                        final __tmp__2 = _data;
                                        final __tmp__3 = (_j : stdgo.GoInt);
                                        final __tmp__4 = _data;
                                        final __tmp__5 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                                        __tmp__2[__tmp__3] = __tmp__0;
                                        __tmp__4[__tmp__5] = __tmp__1;
                                    };
                                });
                            };
                        });
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_b, $_cmp));
        };
    }
macro function _siftDownCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _lo:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _hi:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _first:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_siftDownCmpFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt, _cmp:(_a:E, _b:E) -> stdgo.GoInt) {
                    var _root = _lo;
                    while (true) {
                        var _child = (((2 : stdgo.GoInt) * _root : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
                        if ((_child >= _hi : Bool)) {
                            break;
                        };
                        if ((((_child + (1 : stdgo.GoInt) : stdgo.GoInt) < _hi : Bool) && ((_cmp(_data[(_first + _child : stdgo.GoInt)], _data[((_first + _child : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool)) : Bool)) {
                            _child++;
                        };
                        if (!((_cmp(_data[(_first + _root : stdgo.GoInt)], _data[(_first + _child : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool))) {
                            return;
                        };
                        {
                            final __tmp__0 = _data[(_first + _child : stdgo.GoInt)];
                            final __tmp__1 = _data[(_first + _root : stdgo.GoInt)];
                            final __tmp__2 = _data;
                            final __tmp__3 = (_first + _root : stdgo.GoInt);
                            final __tmp__4 = _data;
                            final __tmp__5 = (_first + _child : stdgo.GoInt);
                            __tmp__2[__tmp__3] = __tmp__0;
                            __tmp__4[__tmp__5] = __tmp__1;
                        };
                        _root = _child;
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_lo, $_hi, $_first, $_cmp));
        };
    }
macro function _heapSortCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_heapSortCmpFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _cmp:(_a:E, _b:E) -> stdgo.GoInt) {
                    var _first = _a;
                    var _lo = (0 : stdgo.GoInt);
                    var _hi = (_b - _a : stdgo.GoInt);
                    {
                        var _i = (((_hi - (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
                        stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                            @:privateAccess stdgo._internal.slices.Slices._siftDownCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _i, _hi, _first, _cmp);
                        });
                    };
                    {
                        var _i = (_hi - (1 : stdgo.GoInt) : stdgo.GoInt);
                        stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                            {
                                final __tmp__0 = _data[(_first + _i : stdgo.GoInt)];
                                final __tmp__1 = _data[(_first : stdgo.GoInt)];
                                final __tmp__2 = _data;
                                final __tmp__3 = (_first : stdgo.GoInt);
                                final __tmp__4 = _data;
                                final __tmp__5 = (_first + _i : stdgo.GoInt);
                                __tmp__2[__tmp__3] = __tmp__0;
                                __tmp__4[__tmp__5] = __tmp__1;
                            };
                            @:privateAccess stdgo._internal.slices.Slices._siftDownCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _lo, _i, _first, _cmp);
                        });
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_b, $_cmp));
        };
    }
macro function _pdqsortCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _limit:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_pdqsortCmpFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt, _cmp:(_a:E, _b:E) -> stdgo.GoInt) {
                    {};
                    var __0:Bool = true, __1:Bool = true;
var _wasPartitioned = __1, _wasBalanced = __0;
                    while (true) {
                        var _length = (_b - _a : stdgo.GoInt);
                        if ((_length <= (12 : stdgo.GoInt) : Bool)) {
                            @:privateAccess stdgo._internal.slices.Slices._insertionSortCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _cmp);
                            return;
                        };
                        if (_limit == ((0 : stdgo.GoInt))) {
                            @:privateAccess stdgo._internal.slices.Slices._heapSortCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _cmp);
                            return;
                        };
                        if (!_wasBalanced) {
                            @:privateAccess stdgo._internal.slices.Slices._breakPatternsCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _cmp);
                            _limit--;
                        };
                        var __tmp__ = @:privateAccess stdgo._internal.slices.Slices._choosePivotCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _cmp), _pivot:stdgo.GoInt = __tmp__._0, _hint:stdgo._internal.slices.Slices.T_sortedHint = __tmp__._1;
                        if (_hint == ((2 : stdgo._internal.slices.Slices.T_sortedHint))) {
                            @:privateAccess stdgo._internal.slices.Slices._reverseRangeCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _cmp);
                            _pivot = (((_b - (1 : stdgo.GoInt) : stdgo.GoInt)) - ((_pivot - _a : stdgo.GoInt)) : stdgo.GoInt);
                            _hint = (1 : stdgo._internal.slices.Slices.T_sortedHint);
                        };
                        if (((_wasBalanced && _wasPartitioned : Bool) && (_hint == (1 : stdgo._internal.slices.Slices.T_sortedHint)) : Bool)) {
                            if (@:privateAccess stdgo._internal.slices.Slices._partialInsertionSortCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _cmp)) {
                                return;
                            };
                        };
                        if (((_a > (0 : stdgo.GoInt) : Bool) && !((_cmp(_data[(_a - (1 : stdgo.GoInt) : stdgo.GoInt)], _data[(_pivot : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool)) : Bool)) {
                            var _mid = @:privateAccess stdgo._internal.slices.Slices._partitionEqualCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _pivot, _cmp);
                            _a = _mid;
                            continue;
                        };
                        var __tmp__ = @:privateAccess stdgo._internal.slices.Slices._partitionCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _pivot, _cmp), _mid:stdgo.GoInt = __tmp__._0, _alreadyPartitioned:Bool = __tmp__._1;
                        _wasPartitioned = _alreadyPartitioned;
                        var __0 = (_mid - _a : stdgo.GoInt), __1 = (_b - _mid : stdgo.GoInt);
var _rightLen = __1, _leftLen = __0;
                        var _balanceThreshold = (_length / (8 : stdgo.GoInt) : stdgo.GoInt);
                        if ((_leftLen < _rightLen : Bool)) {
                            _wasBalanced = (_leftLen >= _balanceThreshold : Bool);
                            @:privateAccess stdgo._internal.slices.Slices._pdqsortCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _mid, _limit, _cmp);
                            _a = (_mid + (1 : stdgo.GoInt) : stdgo.GoInt);
                        } else {
                            _wasBalanced = (_rightLen >= _balanceThreshold : Bool);
                            @:privateAccess stdgo._internal.slices.Slices._pdqsortCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, (_mid + (1 : stdgo.GoInt) : stdgo.GoInt), _b, _limit, _cmp);
                            _b = _mid;
                        };
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_b, $_limit, $_cmp));
        };
    }
macro function _partitionCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _pivot:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : Bool; }> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_partitionCmpFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt, _cmp:(_a:E, _b:E) -> stdgo.GoInt) {
                    var _newpivot = (0 : stdgo.GoInt), _alreadyPartitioned = false;
                    {
                        final __tmp__0 = _data[(_pivot : stdgo.GoInt)];
                        final __tmp__1 = _data[(_a : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_a : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_pivot : stdgo.GoInt);
                        __tmp__2[__tmp__3] = __tmp__0;
                        __tmp__4[__tmp__5] = __tmp__1;
                    };
                    var __0 = (_a + (1 : stdgo.GoInt) : stdgo.GoInt), __1 = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
                    while (((_i <= _j : Bool) && ((_cmp(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool)) : Bool)) {
                        _i++;
                    };
                    while (((_i <= _j : Bool) && !((_cmp(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool)) : Bool)) {
                        _j--;
                    };
                    if ((_i > _j : Bool)) {
                        {
                            final __tmp__0 = _data[(_a : stdgo.GoInt)];
                            final __tmp__1 = _data[(_j : stdgo.GoInt)];
                            final __tmp__2 = _data;
                            final __tmp__3 = (_j : stdgo.GoInt);
                            final __tmp__4 = _data;
                            final __tmp__5 = (_a : stdgo.GoInt);
                            __tmp__2[__tmp__3] = __tmp__0;
                            __tmp__4[__tmp__5] = __tmp__1;
                        };
                        return { _0 : _j, _1 : true };
                    };
                    {
                        final __tmp__0 = _data[(_j : stdgo.GoInt)];
                        final __tmp__1 = _data[(_i : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_i : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_j : stdgo.GoInt);
                        __tmp__2[__tmp__3] = __tmp__0;
                        __tmp__4[__tmp__5] = __tmp__1;
                    };
                    _i++;
                    _j--;
                    while (true) {
                        while (((_i <= _j : Bool) && ((_cmp(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool)) : Bool)) {
                            _i++;
                        };
                        while (((_i <= _j : Bool) && !((_cmp(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool)) : Bool)) {
                            _j--;
                        };
                        if ((_i > _j : Bool)) {
                            break;
                        };
                        {
                            final __tmp__0 = _data[(_j : stdgo.GoInt)];
                            final __tmp__1 = _data[(_i : stdgo.GoInt)];
                            final __tmp__2 = _data;
                            final __tmp__3 = (_i : stdgo.GoInt);
                            final __tmp__4 = _data;
                            final __tmp__5 = (_j : stdgo.GoInt);
                            __tmp__2[__tmp__3] = __tmp__0;
                            __tmp__4[__tmp__5] = __tmp__1;
                        };
                        _i++;
                        _j--;
                    };
                    {
                        final __tmp__0 = _data[(_a : stdgo.GoInt)];
                        final __tmp__1 = _data[(_j : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_j : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_a : stdgo.GoInt);
                        __tmp__2[__tmp__3] = __tmp__0;
                        __tmp__4[__tmp__5] = __tmp__1;
                    };
                    return { _0 : _j, _1 : false };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_b, $_pivot, $_cmp));
        };
    }
macro function _partitionEqualCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _pivot:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<stdgo.GoInt> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_partitionEqualCmpFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt, _cmp:(_a:E, _b:E) -> stdgo.GoInt) {
                    var _newpivot = (0 : stdgo.GoInt);
                    {
                        final __tmp__0 = _data[(_pivot : stdgo.GoInt)];
                        final __tmp__1 = _data[(_a : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_a : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_pivot : stdgo.GoInt);
                        __tmp__2[__tmp__3] = __tmp__0;
                        __tmp__4[__tmp__5] = __tmp__1;
                    };
                    var __0 = (_a + (1 : stdgo.GoInt) : stdgo.GoInt), __1 = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
                    while (true) {
                        while (((_i <= _j : Bool) && !((_cmp(_data[(_a : stdgo.GoInt)], _data[(_i : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool)) : Bool)) {
                            _i++;
                        };
                        while (((_i <= _j : Bool) && ((_cmp(_data[(_a : stdgo.GoInt)], _data[(_j : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool)) : Bool)) {
                            _j--;
                        };
                        if ((_i > _j : Bool)) {
                            break;
                        };
                        {
                            final __tmp__0 = _data[(_j : stdgo.GoInt)];
                            final __tmp__1 = _data[(_i : stdgo.GoInt)];
                            final __tmp__2 = _data;
                            final __tmp__3 = (_i : stdgo.GoInt);
                            final __tmp__4 = _data;
                            final __tmp__5 = (_j : stdgo.GoInt);
                            __tmp__2[__tmp__3] = __tmp__0;
                            __tmp__4[__tmp__5] = __tmp__1;
                        };
                        _i++;
                        _j--;
                    };
                    return _i;
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_b, $_pivot, $_cmp));
        };
    }
macro function _partialInsertionSortCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Bool> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_partialInsertionSortCmpFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _cmp:(_a:E, _b:E) -> stdgo.GoInt) {
                    {};
                    var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
                    {
                        var _j = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_j < (5 : stdgo.GoInt) : Bool), _j++, {
                            while (((_i < _b : Bool) && !((_cmp(_data[(_i : stdgo.GoInt)], _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool)) : Bool)) {
                                _i++;
                            };
                            if (_i == (_b)) {
                                return true;
                            };
                            if (((_b - _a : stdgo.GoInt) < (50 : stdgo.GoInt) : Bool)) {
                                return false;
                            };
                            {
                                final __tmp__0 = _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)];
                                final __tmp__1 = _data[(_i : stdgo.GoInt)];
                                final __tmp__2 = _data;
                                final __tmp__3 = (_i : stdgo.GoInt);
                                final __tmp__4 = _data;
                                final __tmp__5 = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                                __tmp__2[__tmp__3] = __tmp__0;
                                __tmp__4[__tmp__5] = __tmp__1;
                            };
                            if (((_i - _a : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                                {
                                    var _j = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                                    stdgo.Go.cfor((_j >= (1 : stdgo.GoInt) : Bool), _j--, {
                                        if (!((_cmp(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool))) {
                                            break;
                                        };
                                        {
                                            final __tmp__0 = _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)];
                                            final __tmp__1 = _data[(_j : stdgo.GoInt)];
                                            final __tmp__2 = _data;
                                            final __tmp__3 = (_j : stdgo.GoInt);
                                            final __tmp__4 = _data;
                                            final __tmp__5 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                                            __tmp__2[__tmp__3] = __tmp__0;
                                            __tmp__4[__tmp__5] = __tmp__1;
                                        };
                                    });
                                };
                            };
                            if (((_b - _i : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                                {
                                    var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                                    stdgo.Go.cfor((_j < _b : Bool), _j++, {
                                        if (!((_cmp(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool))) {
                                            break;
                                        };
                                        {
                                            final __tmp__0 = _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)];
                                            final __tmp__1 = _data[(_j : stdgo.GoInt)];
                                            final __tmp__2 = _data;
                                            final __tmp__3 = (_j : stdgo.GoInt);
                                            final __tmp__4 = _data;
                                            final __tmp__5 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                                            __tmp__2[__tmp__3] = __tmp__0;
                                            __tmp__4[__tmp__5] = __tmp__1;
                                        };
                                    });
                                };
                            };
                        });
                    };
                    return false;
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_b, $_cmp));
        };
    }
macro function _breakPatternsCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_breakPatternsCmpFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _cmp:(_a:E, _b:E) -> stdgo.GoInt) {
                    var _length = (_b - _a : stdgo.GoInt);
                    if ((_length >= (8 : stdgo.GoInt) : Bool)) {
                        var _random = (_length : stdgo._internal.slices.Slices.T_xorshift);
                        var _modulus = @:privateAccess stdgo._internal.slices.Slices._nextPowerOfTwo(_length);
                        {
                            var _idx = ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                            stdgo.Go.cfor((_idx <= ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _idx++, {
                                var _other = (((_random.next(stdgo.Go.pointer(_random)) : stdgo.GoUInt) & ((_modulus - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoInt);
                                if ((_other >= _length : Bool)) {
                                    _other = (_other - (_length) : stdgo.GoInt);
                                };
                                {
                                    final __tmp__0 = _data[(_a + _other : stdgo.GoInt)];
                                    final __tmp__1 = _data[(_idx : stdgo.GoInt)];
                                    final __tmp__2 = _data;
                                    final __tmp__3 = (_idx : stdgo.GoInt);
                                    final __tmp__4 = _data;
                                    final __tmp__5 = (_a + _other : stdgo.GoInt);
                                    __tmp__2[__tmp__3] = __tmp__0;
                                    __tmp__4[__tmp__5] = __tmp__1;
                                };
                            });
                        };
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_b, $_cmp));
        };
    }
macro function _choosePivotCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : T_sortedHint; }> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_choosePivotCmpFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _cmp:(_a:E, _b:E) -> stdgo.GoInt) {
                    var _pivot = (0 : stdgo.GoInt), _hint = ((0 : stdgo.GoInt) : stdgo._internal.slices.Slices.T_sortedHint);
                    {};
                    var _l = (_b - _a : stdgo.GoInt);
                    var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), __2:stdgo.GoInt = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), __3:stdgo.GoInt = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
var _k = __3, _j = __2, _i = __1, _swaps = __0;
                    if ((_l >= (8 : stdgo.GoInt) : Bool)) {
                        if ((_l >= (50 : stdgo.GoInt) : Bool)) {
                            _i = @:privateAccess stdgo._internal.slices.Slices._medianAdjacentCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _i, stdgo.Go.pointer(_swaps), _cmp);
                            _j = @:privateAccess stdgo._internal.slices.Slices._medianAdjacentCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _j, stdgo.Go.pointer(_swaps), _cmp);
                            _k = @:privateAccess stdgo._internal.slices.Slices._medianAdjacentCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _k, stdgo.Go.pointer(_swaps), _cmp);
                        };
                        _j = @:privateAccess stdgo._internal.slices.Slices._medianCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _i, _j, _k, stdgo.Go.pointer(_swaps), _cmp);
                    };
                    {
                        final __value__ = _swaps;
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            return { _0 : _j, _1 : (1 : stdgo._internal.slices.Slices.T_sortedHint) };
                        } else if (__value__ == ((12 : stdgo.GoInt))) {
                            return { _0 : _j, _1 : (2 : stdgo._internal.slices.Slices.T_sortedHint) };
                        } else {
                            return { _0 : _j, _1 : (0 : stdgo._internal.slices.Slices.T_sortedHint) };
                        };
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_b, $_cmp));
        };
    }
macro function _order2CmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _swaps:haxe.macro.Expr.ExprOf<stdgo.Pointer<stdgo.GoInt>>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; }> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_order2CmpFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>, _cmp:(_a:E, _b:E) -> stdgo.GoInt) {
                    if ((_cmp(_data[(_b : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool)) {
                        _swaps.value++;
                        return { _0 : _b, _1 : _a };
                    };
                    return { _0 : _a, _1 : _b };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_b, $_swaps, $_cmp));
        };
    }
macro function _medianCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _c:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _swaps:haxe.macro.Expr.ExprOf<stdgo.Pointer<stdgo.GoInt>>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<stdgo.GoInt> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_medianCmpFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>, _cmp:(_a:E, _b:E) -> stdgo.GoInt) {
                    {
                        var __tmp__ = @:privateAccess stdgo._internal.slices.Slices._order2CmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _swaps, _cmp);
                        _a = __tmp__._0;
                        _b = __tmp__._1;
                    };
                    {
                        var __tmp__ = @:privateAccess stdgo._internal.slices.Slices._order2CmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _b, _c, _swaps, _cmp);
                        _b = __tmp__._0;
                        _c = __tmp__._1;
                    };
                    {
                        var __tmp__ = @:privateAccess stdgo._internal.slices.Slices._order2CmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _swaps, _cmp);
                        _a = __tmp__._0;
                        _b = __tmp__._1;
                    };
                    return _b;
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_b, $_c, $_swaps, $_cmp));
        };
    }
macro function _medianAdjacentCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _swaps:haxe.macro.Expr.ExprOf<stdgo.Pointer<stdgo.GoInt>>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<stdgo.GoInt> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_medianAdjacentCmpFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>, _cmp:(_a:E, _b:E) -> stdgo.GoInt) {
                    return @:privateAccess stdgo._internal.slices.Slices._medianCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, (_a - (1 : stdgo.GoInt) : stdgo.GoInt), _a, (_a + (1 : stdgo.GoInt) : stdgo.GoInt), _swaps, _cmp);
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_swaps, $_cmp));
        };
    }
macro function _reverseRangeCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_reverseRangeCmpFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _cmp:(_a:E, _b:E) -> stdgo.GoInt) {
                    var _i = _a;
                    var _j = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
                    while ((_i < _j : Bool)) {
                        {
                            final __tmp__0 = _data[(_j : stdgo.GoInt)];
                            final __tmp__1 = _data[(_i : stdgo.GoInt)];
                            final __tmp__2 = _data;
                            final __tmp__3 = (_i : stdgo.GoInt);
                            final __tmp__4 = _data;
                            final __tmp__5 = (_j : stdgo.GoInt);
                            __tmp__2[__tmp__3] = __tmp__0;
                            __tmp__4[__tmp__5] = __tmp__1;
                        };
                        _i++;
                        _j--;
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_b, $_cmp));
        };
    }
macro function _swapRangeCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _n:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_swapRangeCmpFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt, _cmp:(_a:E, _b:E) -> stdgo.GoInt) {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _n : Bool), _i++, {
                            {
                                final __tmp__0 = _data[(_b + _i : stdgo.GoInt)];
                                final __tmp__1 = _data[(_a + _i : stdgo.GoInt)];
                                final __tmp__2 = _data;
                                final __tmp__3 = (_a + _i : stdgo.GoInt);
                                final __tmp__4 = _data;
                                final __tmp__5 = (_b + _i : stdgo.GoInt);
                                __tmp__2[__tmp__3] = __tmp__0;
                                __tmp__4[__tmp__5] = __tmp__1;
                            };
                        });
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_b, $_n, $_cmp));
        };
    }
macro function _stableCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _n:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_stableCmpFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _n:stdgo.GoInt, _cmp:(_a:E, _b:E) -> stdgo.GoInt) {
                    var _blockSize = (20 : stdgo.GoInt);
                    var __0 = (0 : stdgo.GoInt), __1 = _blockSize;
var _b = __1, _a = __0;
                    while ((_b <= _n : Bool)) {
                        @:privateAccess stdgo._internal.slices.Slices._insertionSortCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _cmp);
                        _a = _b;
                        _b = (_b + (_blockSize) : stdgo.GoInt);
                    };
                    @:privateAccess stdgo._internal.slices.Slices._insertionSortCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _n, _cmp);
                    while ((_blockSize < _n : Bool)) {
                        {
                            final __tmp__0 = (0 : stdgo.GoInt);
                            final __tmp__1 = ((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt);
                            _a = __tmp__0;
                            _b = __tmp__1;
                        };
                        while ((_b <= _n : Bool)) {
                            @:privateAccess stdgo._internal.slices.Slices._symMergeCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, (_a + _blockSize : stdgo.GoInt), _b, _cmp);
                            _a = _b;
                            _b = (_b + (((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt)) : stdgo.GoInt);
                        };
                        {
                            var _m = (_a + _blockSize : stdgo.GoInt);
                            if ((_m < _n : Bool)) {
                                @:privateAccess stdgo._internal.slices.Slices._symMergeCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _m, _n, _cmp);
                            };
                        };
                        _blockSize = (_blockSize * ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_n, $_cmp));
        };
    }
macro function _symMergeCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _m:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_symMergeCmpFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt, _cmp:(_a:E, _b:E) -> stdgo.GoInt) {
                    if ((_m - _a : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
                        var _i = _m;
                        var _j = _b;
                        while ((_i < _j : Bool)) {
                            var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                            if ((_cmp(_data[(_h : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool)) {
                                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                            } else {
                                _j = _h;
                            };
                        };
                        {
                            var _k = _a;
                            stdgo.Go.cfor((_k < (_i - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _k++, {
                                {
                                    final __tmp__0 = _data[(_k + (1 : stdgo.GoInt) : stdgo.GoInt)];
                                    final __tmp__1 = _data[(_k : stdgo.GoInt)];
                                    final __tmp__2 = _data;
                                    final __tmp__3 = (_k : stdgo.GoInt);
                                    final __tmp__4 = _data;
                                    final __tmp__5 = (_k + (1 : stdgo.GoInt) : stdgo.GoInt);
                                    __tmp__2[__tmp__3] = __tmp__0;
                                    __tmp__4[__tmp__5] = __tmp__1;
                                };
                            });
                        };
                        return;
                    };
                    if ((_b - _m : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
                        var _i = _a;
                        var _j = _m;
                        while ((_i < _j : Bool)) {
                            var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                            if (!((_cmp(_data[(_m : stdgo.GoInt)], _data[(_h : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool))) {
                                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                            } else {
                                _j = _h;
                            };
                        };
                        {
                            var _k = _m;
                            stdgo.Go.cfor((_k > _i : Bool), _k--, {
                                {
                                    final __tmp__0 = _data[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)];
                                    final __tmp__1 = _data[(_k : stdgo.GoInt)];
                                    final __tmp__2 = _data;
                                    final __tmp__3 = (_k : stdgo.GoInt);
                                    final __tmp__4 = _data;
                                    final __tmp__5 = (_k - (1 : stdgo.GoInt) : stdgo.GoInt);
                                    __tmp__2[__tmp__3] = __tmp__0;
                                    __tmp__4[__tmp__5] = __tmp__1;
                                };
                            });
                        };
                        return;
                    };
                    var _mid = ((((_a + _b : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                    var _n = (_mid + _m : stdgo.GoInt);
                    var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _r = __1, _start = __0;
                    if ((_m > _mid : Bool)) {
                        _start = (_n - _b : stdgo.GoInt);
                        _r = _mid;
                    } else {
                        _start = _a;
                        _r = _m;
                    };
                    var _p = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
                    while ((_start < _r : Bool)) {
                        var _c = ((((_start + _r : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                        if (!((_cmp(_data[(_p - _c : stdgo.GoInt)], _data[(_c : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool))) {
                            _start = (_c + (1 : stdgo.GoInt) : stdgo.GoInt);
                        } else {
                            _r = _c;
                        };
                    };
                    var _end = (_n - _start : stdgo.GoInt);
                    if (((_start < _m : Bool) && (_m < _end : Bool) : Bool)) {
                        @:privateAccess stdgo._internal.slices.Slices._rotateCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _start, _m, _end, _cmp);
                    };
                    if (((_a < _start : Bool) && (_start < _mid : Bool) : Bool)) {
                        @:privateAccess stdgo._internal.slices.Slices._symMergeCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _start, _mid, _cmp);
                    };
                    if (((_mid < _end : Bool) && (_end < _b : Bool) : Bool)) {
                        @:privateAccess stdgo._internal.slices.Slices._symMergeCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _mid, _end, _b, _cmp);
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_m, $_b, $_cmp));
        };
    }
macro function _rotateCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _m:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_rotateCmpFunc" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt, _cmp:(_a:E, _b:E) -> stdgo.GoInt) {
                    var _i = (_m - _a : stdgo.GoInt);
                    var _j = (_b - _m : stdgo.GoInt);
                    while (_i != (_j)) {
                        if ((_i > _j : Bool)) {
                            @:privateAccess stdgo._internal.slices.Slices._swapRangeCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, (_m - _i : stdgo.GoInt), _m, _j, _cmp);
                            _i = (_i - (_j) : stdgo.GoInt);
                        } else {
                            @:privateAccess stdgo._internal.slices.Slices._swapRangeCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, (_m - _i : stdgo.GoInt), ((_m + _j : stdgo.GoInt) - _i : stdgo.GoInt), _i, _cmp);
                            _j = (_j - (_i) : stdgo.GoInt);
                        };
                    };
                    @:privateAccess stdgo._internal.slices.Slices._swapRangeCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, (_m - _i : stdgo.GoInt), _m, _i, _cmp);
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_m, $_b, $_cmp));
        };
    }
macro function _insertionSortOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_insertionSortOrdered" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _b:stdgo.GoInt) {
                    {
                        var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b : Bool), _i++, {
                            {
                                var _j = _i;
                                stdgo.Go.cfor(((_j > _a : Bool) && stdgo._internal.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool), _j--, {
                                    {
                                        final __tmp__0 = _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)];
                                        final __tmp__1 = _data[(_j : stdgo.GoInt)];
                                        final __tmp__2 = _data;
                                        final __tmp__3 = (_j : stdgo.GoInt);
                                        final __tmp__4 = _data;
                                        final __tmp__5 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                                        __tmp__2[__tmp__3] = __tmp__0;
                                        __tmp__4[__tmp__5] = __tmp__1;
                                    };
                                });
                            };
                        });
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_b));
        };
    }
macro function _siftDownOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _lo:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _hi:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _first:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_siftDownOrdered" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt) {
                    var _root = _lo;
                    while (true) {
                        var _child = (((2 : stdgo.GoInt) * _root : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
                        if ((_child >= _hi : Bool)) {
                            break;
                        };
                        if ((((_child + (1 : stdgo.GoInt) : stdgo.GoInt) < _hi : Bool) && stdgo._internal.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_first + _child : stdgo.GoInt)], _data[((_first + _child : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                            _child++;
                        };
                        if (!stdgo._internal.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_first + _root : stdgo.GoInt)], _data[(_first + _child : stdgo.GoInt)])) {
                            return;
                        };
                        {
                            final __tmp__0 = _data[(_first + _child : stdgo.GoInt)];
                            final __tmp__1 = _data[(_first + _root : stdgo.GoInt)];
                            final __tmp__2 = _data;
                            final __tmp__3 = (_first + _root : stdgo.GoInt);
                            final __tmp__4 = _data;
                            final __tmp__5 = (_first + _child : stdgo.GoInt);
                            __tmp__2[__tmp__3] = __tmp__0;
                            __tmp__4[__tmp__5] = __tmp__1;
                        };
                        _root = _child;
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_lo, $_hi, $_first));
        };
    }
macro function _heapSortOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_heapSortOrdered" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _b:stdgo.GoInt) {
                    var _first = _a;
                    var _lo = (0 : stdgo.GoInt);
                    var _hi = (_b - _a : stdgo.GoInt);
                    {
                        var _i = (((_hi - (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
                        stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                            @:privateAccess stdgo._internal.slices.Slices._siftDownOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _i, _hi, _first);
                        });
                    };
                    {
                        var _i = (_hi - (1 : stdgo.GoInt) : stdgo.GoInt);
                        stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                            {
                                final __tmp__0 = _data[(_first + _i : stdgo.GoInt)];
                                final __tmp__1 = _data[(_first : stdgo.GoInt)];
                                final __tmp__2 = _data;
                                final __tmp__3 = (_first : stdgo.GoInt);
                                final __tmp__4 = _data;
                                final __tmp__5 = (_first + _i : stdgo.GoInt);
                                __tmp__2[__tmp__3] = __tmp__0;
                                __tmp__4[__tmp__5] = __tmp__1;
                            };
                            @:privateAccess stdgo._internal.slices.Slices._siftDownOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _lo, _i, _first);
                        });
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_b));
        };
    }
macro function _pdqsortOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _limit:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_pdqsortOrdered" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt) {
                    {};
                    var __0:Bool = true, __1:Bool = true;
var _wasPartitioned = __1, _wasBalanced = __0;
                    while (true) {
                        var _length = (_b - _a : stdgo.GoInt);
                        if ((_length <= (12 : stdgo.GoInt) : Bool)) {
                            @:privateAccess stdgo._internal.slices.Slices._insertionSortOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b);
                            return;
                        };
                        if (_limit == ((0 : stdgo.GoInt))) {
                            @:privateAccess stdgo._internal.slices.Slices._heapSortOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b);
                            return;
                        };
                        if (!_wasBalanced) {
                            @:privateAccess stdgo._internal.slices.Slices._breakPatternsOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b);
                            _limit--;
                        };
                        var __tmp__ = @:privateAccess stdgo._internal.slices.Slices._choosePivotOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b), _pivot:stdgo.GoInt = __tmp__._0, _hint:stdgo._internal.slices.Slices.T_sortedHint = __tmp__._1;
                        if (_hint == ((2 : stdgo._internal.slices.Slices.T_sortedHint))) {
                            @:privateAccess stdgo._internal.slices.Slices._reverseRangeOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b);
                            _pivot = (((_b - (1 : stdgo.GoInt) : stdgo.GoInt)) - ((_pivot - _a : stdgo.GoInt)) : stdgo.GoInt);
                            _hint = (1 : stdgo._internal.slices.Slices.T_sortedHint);
                        };
                        if (((_wasBalanced && _wasPartitioned : Bool) && (_hint == (1 : stdgo._internal.slices.Slices.T_sortedHint)) : Bool)) {
                            if (@:privateAccess stdgo._internal.slices.Slices._partialInsertionSortOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b)) {
                                return;
                            };
                        };
                        if (((_a > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_a - (1 : stdgo.GoInt) : stdgo.GoInt)], _data[(_pivot : stdgo.GoInt)]) : Bool)) {
                            var _mid = @:privateAccess stdgo._internal.slices.Slices._partitionEqualOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _pivot);
                            _a = _mid;
                            continue;
                        };
                        var __tmp__ = @:privateAccess stdgo._internal.slices.Slices._partitionOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _pivot), _mid:stdgo.GoInt = __tmp__._0, _alreadyPartitioned:Bool = __tmp__._1;
                        _wasPartitioned = _alreadyPartitioned;
                        var __0 = (_mid - _a : stdgo.GoInt), __1 = (_b - _mid : stdgo.GoInt);
var _rightLen = __1, _leftLen = __0;
                        var _balanceThreshold = (_length / (8 : stdgo.GoInt) : stdgo.GoInt);
                        if ((_leftLen < _rightLen : Bool)) {
                            _wasBalanced = (_leftLen >= _balanceThreshold : Bool);
                            @:privateAccess stdgo._internal.slices.Slices._pdqsortOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _mid, _limit);
                            _a = (_mid + (1 : stdgo.GoInt) : stdgo.GoInt);
                        } else {
                            _wasBalanced = (_rightLen >= _balanceThreshold : Bool);
                            @:privateAccess stdgo._internal.slices.Slices._pdqsortOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, (_mid + (1 : stdgo.GoInt) : stdgo.GoInt), _b, _limit);
                            _b = _mid;
                        };
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_b, $_limit));
        };
    }
macro function _partitionOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _pivot:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : Bool; }> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_partitionOrdered" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt) {
                    var _newpivot = (0 : stdgo.GoInt), _alreadyPartitioned = false;
                    {
                        final __tmp__0 = _data[(_pivot : stdgo.GoInt)];
                        final __tmp__1 = _data[(_a : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_a : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_pivot : stdgo.GoInt);
                        __tmp__2[__tmp__3] = __tmp__0;
                        __tmp__4[__tmp__5] = __tmp__1;
                    };
                    var __0 = (_a + (1 : stdgo.GoInt) : stdgo.GoInt), __1 = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
                    while (((_i <= _j : Bool) && stdgo._internal.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool)) {
                        _i++;
                    };
                    while (((_i <= _j : Bool) && !stdgo._internal.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool)) {
                        _j--;
                    };
                    if ((_i > _j : Bool)) {
                        {
                            final __tmp__0 = _data[(_a : stdgo.GoInt)];
                            final __tmp__1 = _data[(_j : stdgo.GoInt)];
                            final __tmp__2 = _data;
                            final __tmp__3 = (_j : stdgo.GoInt);
                            final __tmp__4 = _data;
                            final __tmp__5 = (_a : stdgo.GoInt);
                            __tmp__2[__tmp__3] = __tmp__0;
                            __tmp__4[__tmp__5] = __tmp__1;
                        };
                        return { _0 : _j, _1 : true };
                    };
                    {
                        final __tmp__0 = _data[(_j : stdgo.GoInt)];
                        final __tmp__1 = _data[(_i : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_i : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_j : stdgo.GoInt);
                        __tmp__2[__tmp__3] = __tmp__0;
                        __tmp__4[__tmp__5] = __tmp__1;
                    };
                    _i++;
                    _j--;
                    while (true) {
                        while (((_i <= _j : Bool) && stdgo._internal.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool)) {
                            _i++;
                        };
                        while (((_i <= _j : Bool) && !stdgo._internal.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool)) {
                            _j--;
                        };
                        if ((_i > _j : Bool)) {
                            break;
                        };
                        {
                            final __tmp__0 = _data[(_j : stdgo.GoInt)];
                            final __tmp__1 = _data[(_i : stdgo.GoInt)];
                            final __tmp__2 = _data;
                            final __tmp__3 = (_i : stdgo.GoInt);
                            final __tmp__4 = _data;
                            final __tmp__5 = (_j : stdgo.GoInt);
                            __tmp__2[__tmp__3] = __tmp__0;
                            __tmp__4[__tmp__5] = __tmp__1;
                        };
                        _i++;
                        _j--;
                    };
                    {
                        final __tmp__0 = _data[(_a : stdgo.GoInt)];
                        final __tmp__1 = _data[(_j : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_j : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_a : stdgo.GoInt);
                        __tmp__2[__tmp__3] = __tmp__0;
                        __tmp__4[__tmp__5] = __tmp__1;
                    };
                    return { _0 : _j, _1 : false };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_b, $_pivot));
        };
    }
macro function _partitionEqualOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _pivot:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<stdgo.GoInt> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_partitionEqualOrdered" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt) {
                    var _newpivot = (0 : stdgo.GoInt);
                    {
                        final __tmp__0 = _data[(_pivot : stdgo.GoInt)];
                        final __tmp__1 = _data[(_a : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_a : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_pivot : stdgo.GoInt);
                        __tmp__2[__tmp__3] = __tmp__0;
                        __tmp__4[__tmp__5] = __tmp__1;
                    };
                    var __0 = (_a + (1 : stdgo.GoInt) : stdgo.GoInt), __1 = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
                    while (true) {
                        while (((_i <= _j : Bool) && !stdgo._internal.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_a : stdgo.GoInt)], _data[(_i : stdgo.GoInt)]) : Bool)) {
                            _i++;
                        };
                        while (((_i <= _j : Bool) && stdgo._internal.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_a : stdgo.GoInt)], _data[(_j : stdgo.GoInt)]) : Bool)) {
                            _j--;
                        };
                        if ((_i > _j : Bool)) {
                            break;
                        };
                        {
                            final __tmp__0 = _data[(_j : stdgo.GoInt)];
                            final __tmp__1 = _data[(_i : stdgo.GoInt)];
                            final __tmp__2 = _data;
                            final __tmp__3 = (_i : stdgo.GoInt);
                            final __tmp__4 = _data;
                            final __tmp__5 = (_j : stdgo.GoInt);
                            __tmp__2[__tmp__3] = __tmp__0;
                            __tmp__4[__tmp__5] = __tmp__1;
                        };
                        _i++;
                        _j--;
                    };
                    return _i;
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_b, $_pivot));
        };
    }
macro function _partialInsertionSortOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Bool> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_partialInsertionSortOrdered" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _b:stdgo.GoInt) {
                    {};
                    var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
                    {
                        var _j = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_j < (5 : stdgo.GoInt) : Bool), _j++, {
                            while (((_i < _b : Bool) && !stdgo._internal.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_i : stdgo.GoInt)], _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                                _i++;
                            };
                            if (_i == (_b)) {
                                return true;
                            };
                            if (((_b - _a : stdgo.GoInt) < (50 : stdgo.GoInt) : Bool)) {
                                return false;
                            };
                            {
                                final __tmp__0 = _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)];
                                final __tmp__1 = _data[(_i : stdgo.GoInt)];
                                final __tmp__2 = _data;
                                final __tmp__3 = (_i : stdgo.GoInt);
                                final __tmp__4 = _data;
                                final __tmp__5 = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                                __tmp__2[__tmp__3] = __tmp__0;
                                __tmp__4[__tmp__5] = __tmp__1;
                            };
                            if (((_i - _a : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                                {
                                    var _j = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                                    stdgo.Go.cfor((_j >= (1 : stdgo.GoInt) : Bool), _j--, {
                                        if (!stdgo._internal.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)])) {
                                            break;
                                        };
                                        {
                                            final __tmp__0 = _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)];
                                            final __tmp__1 = _data[(_j : stdgo.GoInt)];
                                            final __tmp__2 = _data;
                                            final __tmp__3 = (_j : stdgo.GoInt);
                                            final __tmp__4 = _data;
                                            final __tmp__5 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                                            __tmp__2[__tmp__3] = __tmp__0;
                                            __tmp__4[__tmp__5] = __tmp__1;
                                        };
                                    });
                                };
                            };
                            if (((_b - _i : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                                {
                                    var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                                    stdgo.Go.cfor((_j < _b : Bool), _j++, {
                                        if (!stdgo._internal.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)])) {
                                            break;
                                        };
                                        {
                                            final __tmp__0 = _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)];
                                            final __tmp__1 = _data[(_j : stdgo.GoInt)];
                                            final __tmp__2 = _data;
                                            final __tmp__3 = (_j : stdgo.GoInt);
                                            final __tmp__4 = _data;
                                            final __tmp__5 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                                            __tmp__2[__tmp__3] = __tmp__0;
                                            __tmp__4[__tmp__5] = __tmp__1;
                                        };
                                    });
                                };
                            };
                        });
                    };
                    return false;
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_b));
        };
    }
macro function _breakPatternsOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_breakPatternsOrdered" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _b:stdgo.GoInt) {
                    var _length = (_b - _a : stdgo.GoInt);
                    if ((_length >= (8 : stdgo.GoInt) : Bool)) {
                        var _random = (_length : stdgo._internal.slices.Slices.T_xorshift);
                        var _modulus = @:privateAccess stdgo._internal.slices.Slices._nextPowerOfTwo(_length);
                        {
                            var _idx = ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                            stdgo.Go.cfor((_idx <= ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _idx++, {
                                var _other = (((_random.next(stdgo.Go.pointer(_random)) : stdgo.GoUInt) & ((_modulus - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoInt);
                                if ((_other >= _length : Bool)) {
                                    _other = (_other - (_length) : stdgo.GoInt);
                                };
                                {
                                    final __tmp__0 = _data[(_a + _other : stdgo.GoInt)];
                                    final __tmp__1 = _data[(_idx : stdgo.GoInt)];
                                    final __tmp__2 = _data;
                                    final __tmp__3 = (_idx : stdgo.GoInt);
                                    final __tmp__4 = _data;
                                    final __tmp__5 = (_a + _other : stdgo.GoInt);
                                    __tmp__2[__tmp__3] = __tmp__0;
                                    __tmp__4[__tmp__5] = __tmp__1;
                                };
                            });
                        };
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_b));
        };
    }
macro function _choosePivotOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : T_sortedHint; }> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_choosePivotOrdered" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _b:stdgo.GoInt) {
                    var _pivot = (0 : stdgo.GoInt), _hint = ((0 : stdgo.GoInt) : stdgo._internal.slices.Slices.T_sortedHint);
                    {};
                    var _l = (_b - _a : stdgo.GoInt);
                    var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), __2:stdgo.GoInt = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), __3:stdgo.GoInt = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
var _k = __3, _j = __2, _i = __1, _swaps = __0;
                    if ((_l >= (8 : stdgo.GoInt) : Bool)) {
                        if ((_l >= (50 : stdgo.GoInt) : Bool)) {
                            _i = @:privateAccess stdgo._internal.slices.Slices._medianAdjacentOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _i, stdgo.Go.pointer(_swaps));
                            _j = @:privateAccess stdgo._internal.slices.Slices._medianAdjacentOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _j, stdgo.Go.pointer(_swaps));
                            _k = @:privateAccess stdgo._internal.slices.Slices._medianAdjacentOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _k, stdgo.Go.pointer(_swaps));
                        };
                        _j = @:privateAccess stdgo._internal.slices.Slices._medianOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _i, _j, _k, stdgo.Go.pointer(_swaps));
                    };
                    {
                        final __value__ = _swaps;
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            return { _0 : _j, _1 : (1 : stdgo._internal.slices.Slices.T_sortedHint) };
                        } else if (__value__ == ((12 : stdgo.GoInt))) {
                            return { _0 : _j, _1 : (2 : stdgo._internal.slices.Slices.T_sortedHint) };
                        } else {
                            return { _0 : _j, _1 : (0 : stdgo._internal.slices.Slices.T_sortedHint) };
                        };
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_b));
        };
    }
macro function _order2Ordered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _swaps:haxe.macro.Expr.ExprOf<stdgo.Pointer<stdgo.GoInt>>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; }> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_order2Ordered" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>) {
                    if (stdgo._internal.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_b : stdgo.GoInt)], _data[(_a : stdgo.GoInt)])) {
                        _swaps.value++;
                        return { _0 : _b, _1 : _a };
                    };
                    return { _0 : _a, _1 : _b };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_b, $_swaps));
        };
    }
macro function _medianOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _c:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _swaps:haxe.macro.Expr.ExprOf<stdgo.Pointer<stdgo.GoInt>>):haxe.macro.Expr.ExprOf<stdgo.GoInt> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_medianOrdered" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>) {
                    {
                        var __tmp__ = @:privateAccess stdgo._internal.slices.Slices._order2Ordered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _swaps);
                        _a = __tmp__._0;
                        _b = __tmp__._1;
                    };
                    {
                        var __tmp__ = @:privateAccess stdgo._internal.slices.Slices._order2Ordered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _b, _c, _swaps);
                        _b = __tmp__._0;
                        _c = __tmp__._1;
                    };
                    {
                        var __tmp__ = @:privateAccess stdgo._internal.slices.Slices._order2Ordered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _swaps);
                        _a = __tmp__._0;
                        _b = __tmp__._1;
                    };
                    return _b;
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_b, $_c, $_swaps));
        };
    }
macro function _medianAdjacentOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _swaps:haxe.macro.Expr.ExprOf<stdgo.Pointer<stdgo.GoInt>>):haxe.macro.Expr.ExprOf<stdgo.GoInt> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_medianAdjacentOrdered" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>) {
                    return @:privateAccess stdgo._internal.slices.Slices._medianOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, (_a - (1 : stdgo.GoInt) : stdgo.GoInt), _a, (_a + (1 : stdgo.GoInt) : stdgo.GoInt), _swaps);
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_swaps));
        };
    }
macro function _reverseRangeOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_reverseRangeOrdered" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _b:stdgo.GoInt) {
                    var _i = _a;
                    var _j = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
                    while ((_i < _j : Bool)) {
                        {
                            final __tmp__0 = _data[(_j : stdgo.GoInt)];
                            final __tmp__1 = _data[(_i : stdgo.GoInt)];
                            final __tmp__2 = _data;
                            final __tmp__3 = (_i : stdgo.GoInt);
                            final __tmp__4 = _data;
                            final __tmp__5 = (_j : stdgo.GoInt);
                            __tmp__2[__tmp__3] = __tmp__0;
                            __tmp__4[__tmp__5] = __tmp__1;
                        };
                        _i++;
                        _j--;
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_b));
        };
    }
macro function _swapRangeOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _n:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_swapRangeOrdered" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt) {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _n : Bool), _i++, {
                            {
                                final __tmp__0 = _data[(_b + _i : stdgo.GoInt)];
                                final __tmp__1 = _data[(_a + _i : stdgo.GoInt)];
                                final __tmp__2 = _data;
                                final __tmp__3 = (_a + _i : stdgo.GoInt);
                                final __tmp__4 = _data;
                                final __tmp__5 = (_b + _i : stdgo.GoInt);
                                __tmp__2[__tmp__3] = __tmp__0;
                                __tmp__4[__tmp__5] = __tmp__1;
                            };
                        });
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_b, $_n));
        };
    }
macro function _stableOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _n:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_stableOrdered" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _n:stdgo.GoInt) {
                    var _blockSize = (20 : stdgo.GoInt);
                    var __0 = (0 : stdgo.GoInt), __1 = _blockSize;
var _b = __1, _a = __0;
                    while ((_b <= _n : Bool)) {
                        @:privateAccess stdgo._internal.slices.Slices._insertionSortOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b);
                        _a = _b;
                        _b = (_b + (_blockSize) : stdgo.GoInt);
                    };
                    @:privateAccess stdgo._internal.slices.Slices._insertionSortOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _n);
                    while ((_blockSize < _n : Bool)) {
                        {
                            final __tmp__0 = (0 : stdgo.GoInt);
                            final __tmp__1 = ((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt);
                            _a = __tmp__0;
                            _b = __tmp__1;
                        };
                        while ((_b <= _n : Bool)) {
                            @:privateAccess stdgo._internal.slices.Slices._symMergeOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, (_a + _blockSize : stdgo.GoInt), _b);
                            _a = _b;
                            _b = (_b + (((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt)) : stdgo.GoInt);
                        };
                        {
                            var _m = (_a + _blockSize : stdgo.GoInt);
                            if ((_m < _n : Bool)) {
                                @:privateAccess stdgo._internal.slices.Slices._symMergeOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _m, _n);
                            };
                        };
                        _blockSize = (_blockSize * ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_n));
        };
    }
macro function _symMergeOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _m:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_symMergeOrdered" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt) {
                    if ((_m - _a : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
                        var _i = _m;
                        var _j = _b;
                        while ((_i < _j : Bool)) {
                            var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                            if (stdgo._internal.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_h : stdgo.GoInt)], _data[(_a : stdgo.GoInt)])) {
                                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                            } else {
                                _j = _h;
                            };
                        };
                        {
                            var _k = _a;
                            stdgo.Go.cfor((_k < (_i - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _k++, {
                                {
                                    final __tmp__0 = _data[(_k + (1 : stdgo.GoInt) : stdgo.GoInt)];
                                    final __tmp__1 = _data[(_k : stdgo.GoInt)];
                                    final __tmp__2 = _data;
                                    final __tmp__3 = (_k : stdgo.GoInt);
                                    final __tmp__4 = _data;
                                    final __tmp__5 = (_k + (1 : stdgo.GoInt) : stdgo.GoInt);
                                    __tmp__2[__tmp__3] = __tmp__0;
                                    __tmp__4[__tmp__5] = __tmp__1;
                                };
                            });
                        };
                        return;
                    };
                    if ((_b - _m : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
                        var _i = _a;
                        var _j = _m;
                        while ((_i < _j : Bool)) {
                            var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                            if (!stdgo._internal.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_m : stdgo.GoInt)], _data[(_h : stdgo.GoInt)])) {
                                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                            } else {
                                _j = _h;
                            };
                        };
                        {
                            var _k = _m;
                            stdgo.Go.cfor((_k > _i : Bool), _k--, {
                                {
                                    final __tmp__0 = _data[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)];
                                    final __tmp__1 = _data[(_k : stdgo.GoInt)];
                                    final __tmp__2 = _data;
                                    final __tmp__3 = (_k : stdgo.GoInt);
                                    final __tmp__4 = _data;
                                    final __tmp__5 = (_k - (1 : stdgo.GoInt) : stdgo.GoInt);
                                    __tmp__2[__tmp__3] = __tmp__0;
                                    __tmp__4[__tmp__5] = __tmp__1;
                                };
                            });
                        };
                        return;
                    };
                    var _mid = ((((_a + _b : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                    var _n = (_mid + _m : stdgo.GoInt);
                    var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _r = __1, _start = __0;
                    if ((_m > _mid : Bool)) {
                        _start = (_n - _b : stdgo.GoInt);
                        _r = _mid;
                    } else {
                        _start = _a;
                        _r = _m;
                    };
                    var _p = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
                    while ((_start < _r : Bool)) {
                        var _c = ((((_start + _r : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                        if (!stdgo._internal.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_p - _c : stdgo.GoInt)], _data[(_c : stdgo.GoInt)])) {
                            _start = (_c + (1 : stdgo.GoInt) : stdgo.GoInt);
                        } else {
                            _r = _c;
                        };
                    };
                    var _end = (_n - _start : stdgo.GoInt);
                    if (((_start < _m : Bool) && (_m < _end : Bool) : Bool)) {
                        @:privateAccess stdgo._internal.slices.Slices._rotateOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _start, _m, _end);
                    };
                    if (((_a < _start : Bool) && (_start < _mid : Bool) : Bool)) {
                        @:privateAccess stdgo._internal.slices.Slices._symMergeOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _start, _mid);
                    };
                    if (((_mid < _end : Bool) && (_end < _b : Bool) : Bool)) {
                        @:privateAccess stdgo._internal.slices.Slices._symMergeOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _mid, _end, _b);
                    };
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_m, $_b));
        };
    }
macro function _rotateOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _m:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "slices" + "_" + "_rotateOrdered" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _data:stdgo.Slice<$E>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt) {
                    var _i = (_m - _a : stdgo.GoInt);
                    var _j = (_b - _m : stdgo.GoInt);
                    while (_i != (_j)) {
                        if ((_i > _j : Bool)) {
                            @:privateAccess stdgo._internal.slices.Slices._swapRangeOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, (_m - _i : stdgo.GoInt), _m, _j);
                            _i = (_i - (_j) : stdgo.GoInt);
                        } else {
                            @:privateAccess stdgo._internal.slices.Slices._swapRangeOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, (_m - _i : stdgo.GoInt), ((_m + _j : stdgo.GoInt) - _i : stdgo.GoInt), _i);
                            _j = (_j - (_i) : stdgo.GoInt);
                        };
                    };
                    @:privateAccess stdgo._internal.slices.Slices._swapRangeOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, (_m - _i : stdgo.GoInt), _m, _i);
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_data, $_a, $_m, $_b));
        };
    }

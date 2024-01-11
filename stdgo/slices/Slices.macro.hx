package stdgo.slices;
/**
    // Equal reports whether two slices are equal: the same length and all
    // elements equal. If the lengths are different, Equal returns false.
    // Otherwise, the elements are compared in increasing index order, and the
    // comparison stops at the first unequal pair.
    // Floating point NaNs are not considered equal.
**/
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
/**
    // EqualFunc reports whether two slices are equal using an equality
    // function on each pair of elements. If the lengths are different,
    // EqualFunc returns false. Otherwise, the elements are compared in
    // increasing index order, and the comparison stops at the first index
    // for which eq returns false.
**/
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
                        var _v2:$E2 = _s2[@:param_index _i];
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
/**
    // Compare compares the elements of s1 and s2, using [cmp.Compare] on each pair
    // of elements. The elements are compared sequentially, starting at index 0,
    // until one element is not equal to the other.
    // The result of comparing the first non-matching elements is returned.
    // If both slices are equal until one of them ends, the shorter slice is
    // considered less than the longer one.
    // The result is 0 if s1 == s2, -1 if s1 < s2, and +1 if s1 > s2.
**/
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
                        if (_i >= (_s2.length)) {
                            return (1 : stdgo.GoInt);
                        };
                        var _v2:$E = _s2[@:param_index _i];
                        {
                            var _c:stdgo.GoInt = stdgo.cmp.Cmp.compare(stdgo.Go.defaultValue((cast (null) : $E)), _v1, _v2);
                            if (_c != ((0 : stdgo.GoInt))) {
                                return _c;
                            };
                        };
                    };
                    if ((_s1.length) < (_s2.length)) {
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
/**
    // CompareFunc is like [Compare] but uses a custom comparison function on each
    // pair of elements.
    // The result is the first non-zero result of cmp; if cmp always
    // returns 0 the result is 0 if len(s1) == len(s2), -1 if len(s1) < len(s2),
    // and +1 if len(s1) > len(s2).
**/
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
                        if (_i >= (_s2.length)) {
                            return (1 : stdgo.GoInt);
                        };
                        var _v2:$E2 = _s2[@:param_index _i];
                        {
                            var _c:stdgo.GoInt = _cmp(_v1, _v2);
                            if (_c != ((0 : stdgo.GoInt))) {
                                return _c;
                            };
                        };
                    };
                    if ((_s1.length) < (_s2.length)) {
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
/**
    // Index returns the index of the first occurrence of v in s,
    // or -1 if not present.
**/
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
/**
    // IndexFunc returns the first index i satisfying f(s[i]),
    // or -1 if none do.
**/
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
/**
    // Contains reports whether v is present in s.
**/
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
                    return @:privateAccess stdgo.slices.Slices.index(stdgo.Go.defaultValue((cast (null) : $S)), stdgo.Go.defaultValue((cast (null) : $E)), _s, _v) >= (0 : stdgo.GoInt);
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
/**
    // ContainsFunc reports whether at least one
    // element e of s satisfies f(e).
**/
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
                    return @:privateAccess stdgo.slices.Slices.indexFunc(stdgo.Go.defaultValue((cast (null) : $S)), stdgo.Go.defaultValue((cast (null) : $E)), _s, _f) >= (0 : stdgo.GoInt);
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
/**
    // Insert inserts the values v... into s at index i,
    // returning the modified slice.
    // The elements at s[i:] are shifted up to make room.
    // In the returned slice r, r[i] == v[0],
    // and r[i+len(v)] == value originally at r[i].
    // Insert panics if i is out of range.
    // This function is O(len(s) + len(v)).
**/
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
                    var _m:stdgo.GoInt = (_v.length);
                    if (_m == ((0 : stdgo.GoInt))) {
                        return _s;
                    };
                    var _n:stdgo.GoInt = (_s.length);
                    if (_i == (_n)) {
                        return (_s.__append__(..._v.__toArray__()));
                    };
                    if ((_n + _m) > _s.capacity) {
                        var _s2:$S = ((_s.__slice__(0, _i) : $S).__append__(...new stdgo.Slice<$E>(((_n + _m) - _i : stdgo.GoInt).toBasic(), 0).__toArray__()));
                        stdgo.Go.copySlice((_s2.__slice__(_i) : $S), _v);
                        stdgo.Go.copySlice((_s2.__slice__(_i + _m) : $S), (_s.__slice__(_i) : $S));
                        return _s2;
                    };
                    _s = (_s.__slice__(0, _n + _m) : $S);
                    if (!@:privateAccess stdgo.slices.Slices._overlaps(stdgo.Go.defaultValue((cast (null) : $E)), _v, (_s.__slice__(_i + _m) : $S))) {
                        stdgo.Go.copySlice((_s.__slice__(_i + _m) : $S), (_s.__slice__(_i) : $S));
                        stdgo.Go.copySlice((_s.__slice__(_i) : $S), _v);
                        return _s;
                    };
                    stdgo.Go.copySlice((_s.__slice__(_n) : $S), _v);
                    @:privateAccess stdgo.slices.Slices._rotateRight(stdgo.Go.defaultValue((cast (null) : $E)), (_s.__slice__(_i) : $S), _m);
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
/**
    // Delete removes the elements s[i:j] from s, returning the modified slice.
    // Delete panics if s[i:j] is not a valid slice of s.
    // Delete is O(len(s)-j), so if many items must be deleted, it is better to
    // make a single call deleting them all together than to delete one at a time.
    // Delete might not modify the elements s[len(s)-(j-i):len(s)]. If those
    // elements contain pointers you might consider zeroing those elements so that
    // objects they reference can be garbage collected.
**/
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
                    (_s.__slice__(_i, _j) : $S);
                    return ((_s.__slice__(0, _i) : $S).__append__(...(_s.__slice__(_j) : $S).__toArray__()));
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
/**
    // DeleteFunc removes any elements from s for which del returns true,
    // returning the modified slice.
    // When DeleteFunc removes m elements, it might not modify the elements
    // s[len(s)-m:len(s)]. If those elements contain pointers you might consider
    // zeroing those elements so that objects they reference can be garbage
    // collected.
**/
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
                            var _j:stdgo.GoInt = _i;
                            {
                                _i++;
                                stdgo.Go.cfor(_i < (_s.length), _i++, {
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
/**
    // Replace replaces the elements s[i:j] by the given v, and returns the
    // modified slice. Replace panics if s[i:j] is not a valid slice of s.
**/
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
                    (_s.__slice__(_i, _j) : $S);
                    if (_i == (_j)) {
                        return @:privateAccess stdgo.slices.Slices.insert(stdgo.Go.defaultValue((cast (null) : $S)), stdgo.Go.defaultValue((cast (null) : $E)), _s, _i, ..._v.__toArray__());
                    };
                    if (_j == ((_s.length))) {
                        return ((_s.__slice__(0, _i) : $S).__append__(..._v.__toArray__()));
                    };
                    var _tot:stdgo.GoInt = ((_s.__slice__(0, _i) : $S).length + _v.length) + ((_s.__slice__(_j) : $S).length);
                    if (_tot > _s.capacity) {
                        var _s2:$S = ((_s.__slice__(0, _i) : $S).__append__(...new stdgo.Slice<$E>((_tot - _i : stdgo.GoInt).toBasic(), 0).__toArray__()));
                        stdgo.Go.copySlice((_s2.__slice__(_i) : $S), _v);
                        stdgo.Go.copySlice((_s2.__slice__(_i + (_v.length)) : $S), (_s.__slice__(_j) : $S));
                        return _s2;
                    };
                    var _r:$S = (_s.__slice__(0, _tot) : $S);
                    if ((_i + _v.length) <= _j) {
                        stdgo.Go.copySlice((_r.__slice__(_i) : $S), _v);
                        if (_i + (_v.length) != (_j)) {
                            stdgo.Go.copySlice((_r.__slice__(_i + (_v.length)) : $S), (_s.__slice__(_j) : $S));
                        };
                        return _r;
                    };
                    if (!@:privateAccess stdgo.slices.Slices._overlaps(stdgo.Go.defaultValue((cast (null) : $E)), (_r.__slice__(_i + (_v.length)) : $S), _v)) {
                        stdgo.Go.copySlice((_r.__slice__(_i + (_v.length)) : $S), (_s.__slice__(_j) : $S));
                        stdgo.Go.copySlice((_r.__slice__(_i) : $S), _v);
                        return _r;
                    };
                    var _y:stdgo.GoInt = (_v.length) - (_j - _i);
                    if (!@:privateAccess stdgo.slices.Slices._overlaps(stdgo.Go.defaultValue((cast (null) : $E)), (_r.__slice__(_i, _j) : $S), _v)) {
                        stdgo.Go.copySlice((_r.__slice__(_i, _j) : $S), (_v.__slice__(_y) : stdgo.Slice<$E>));
                        stdgo.Go.copySlice((_r.__slice__((_s.length)) : $S), (_v.__slice__(0, _y) : stdgo.Slice<$E>));
                        @:privateAccess stdgo.slices.Slices._rotateRight(stdgo.Go.defaultValue((cast (null) : $E)), (_r.__slice__(_i) : $S), _y);
                        return _r;
                    };
                    if (!@:privateAccess stdgo.slices.Slices._overlaps(stdgo.Go.defaultValue((cast (null) : $E)), (_r.__slice__((_s.length)) : $S), _v)) {
                        stdgo.Go.copySlice((_r.__slice__((_s.length)) : $S), (_v.__slice__(0, _y) : stdgo.Slice<$E>));
                        stdgo.Go.copySlice((_r.__slice__(_i, _j) : $S), (_v.__slice__(_y) : stdgo.Slice<$E>));
                        @:privateAccess stdgo.slices.Slices._rotateRight(stdgo.Go.defaultValue((cast (null) : $E)), (_r.__slice__(_i) : $S), _y);
                        return _r;
                    };
                    var _k:stdgo.GoInt = @:privateAccess stdgo.slices.Slices._startIdx(stdgo.Go.defaultValue((cast (null) : $E)), _v, (_s.__slice__(_j) : $S));
                    stdgo.Go.copySlice((_r.__slice__(_i) : $S), _v);
                    stdgo.Go.copySlice((_r.__slice__(_i + (_v.length)) : $S), (_r.__slice__(_i + _k) : $S));
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
/**
    // Clone returns a copy of the slice.
    // The elements are copied using assignment, so this is a shallow clone.
**/
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
                    return (((new stdgo.Slice<$E>(0, 0) : stdgo.Slice<$E>) : $S).__append__(..._s.__toArray__()));
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
/**
    // Compact replaces consecutive runs of equal elements with a single copy.
    // This is like the uniq command found on Unix.
    // Compact modifies the contents of the slice s and returns the modified slice,
    // which may have a smaller length.
    // When Compact discards m elements in total, it might not modify the elements
    // s[len(s)-m:len(s)]. If those elements contain pointers you might consider
    // zeroing those elements so that objects they reference can be garbage collected.
**/
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
                    if ((_s.length) < (2 : stdgo.GoInt)) {
                        return _s;
                    };
                    var _i:stdgo.GoInt = (1 : stdgo.GoInt);
                    {
                        var _k:stdgo.GoInt = (1 : stdgo.GoInt);
                        stdgo.Go.cfor(_k < (_s.length), _k++, {
                            if (_s[@:param_index _k] != (_s[@:param_index _k - (1 : stdgo.GoInt)])) {
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
/**
    // CompactFunc is like [Compact] but uses an equality function to compare elements.
    // For runs of elements that compare equal, CompactFunc keeps the first one.
**/
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
                    if ((_s.length) < (2 : stdgo.GoInt)) {
                        return _s;
                    };
                    var _i:stdgo.GoInt = (1 : stdgo.GoInt);
                    {
                        var _k:stdgo.GoInt = (1 : stdgo.GoInt);
                        stdgo.Go.cfor(_k < (_s.length), _k++, {
                            if (!_eq(_s[@:param_index _k], _s[@:param_index _k - (1 : stdgo.GoInt)])) {
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
/**
    // Grow increases the slice's capacity, if necessary, to guarantee space for
    // another n elements. After Grow(n), at least n elements can be appended
    // to the slice without another allocation. If n is negative or too large to
    // allocate the memory, Grow panics.
**/
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
                    if (_n < (0 : stdgo.GoInt)) {
                        throw stdgo.Go.toInterface(("cannot be negative" : stdgo.GoString));
                    };
                    {
                        _n = _n - (_s.capacity - _s.length);
                        if (_n > (0 : stdgo.GoInt)) {
                            _s = (((_s.__slice__(0, _s.capacity) : $S).__append__(...new stdgo.Slice<$E>((_n : stdgo.GoInt).toBasic(), 0).__toArray__())).__slice__(0, (_s.length)) : $S);
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
/**
    // Clip removes unused capacity from the slice, returning s[:len(s):len(s)].
**/
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
/**
    // rotateLeft rotates b left by n spaces.
    // s_final[i] = s_orig[i+r], wrapping around.
**/
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
                    while ((_r != (0 : stdgo.GoInt)) && (_r != (_s.length))) {
                        if ((_r * (2 : stdgo.GoInt)) <= (_s.length)) {
                            @:privateAccess stdgo.slices.Slices._swap(stdgo.Go.defaultValue((cast (null) : $E)), (_s.__slice__(0, _r) : stdgo.Slice<$E>), (_s.__slice__((_s.length) - _r) : stdgo.Slice<$E>));
                            _s = (_s.__slice__(0, (_s.length) - _r) : stdgo.Slice<$E>);
                        } else {
                            @:privateAccess stdgo.slices.Slices._swap(stdgo.Go.defaultValue((cast (null) : $E)), (_s.__slice__(0, (_s.length) - _r) : stdgo.Slice<$E>), (_s.__slice__(_r) : stdgo.Slice<$E>));
                            {
                                final __tmp__0 = (_s.__slice__((_s.length) - _r) : stdgo.Slice<$E>);
                                final __tmp__1 = (_r * (2 : stdgo.GoInt)) - (_s.length);
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
                    @:privateAccess stdgo.slices.Slices._rotateLeft(stdgo.Go.defaultValue((cast (null) : $E)), _s, (_s.length) - _r);
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
/**
    // swap swaps the contents of x and y. x and y must be equal length and disjoint.
**/
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
                        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                        stdgo.Go.cfor(_i < (_x.length), _i++, {
                            {
                                final __tmp__0 = _y[(_i : stdgo.GoInt)];
                                final __tmp__1 = _x[(_i : stdgo.GoInt)];
                                _x[(_i : stdgo.GoInt)] = __tmp__0;
                                _y[(_i : stdgo.GoInt)] = __tmp__1;
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
/**
    // overlaps reports whether the memory ranges a[0:len(a)] and b[0:len(b)] overlap.
**/
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
                    if ((_a.length == (0 : stdgo.GoInt)) || (_b.length == (0 : stdgo.GoInt))) {
                        return false;
                    };
                    var _elemSize:stdgo.GoUIntptr = stdgo.unsafe.Unsafe.sizeof(_a[(0 : stdgo.GoInt)]);
                    if (_elemSize == ((0 : stdgo.GoUIntptr))) {
                        return false;
                    };
                    return (((stdgo.Go.toInterface((stdgo.Go.setRef(_a[(0 : stdgo.GoInt)]) : stdgo.Ref<$E>)) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.basic(@:privateAccess stdgo.slices.Slices.uintptr_kind)) : stdgo.GoUIntptr) <= (((stdgo.Go.toInterface((stdgo.Go.setRef(_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<$E>)) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.basic(@:privateAccess stdgo.slices.Slices.uintptr_kind)) : stdgo.GoUIntptr) + (_elemSize - (1 : stdgo.GoUIntptr)))) && (((stdgo.Go.toInterface((stdgo.Go.setRef(_b[(0 : stdgo.GoInt)]) : stdgo.Ref<$E>)) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.basic(@:privateAccess stdgo.slices.Slices.uintptr_kind)) : stdgo.GoUIntptr) <= (((stdgo.Go.toInterface((stdgo.Go.setRef(_a[((_a.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<$E>)) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.basic(@:privateAccess stdgo.slices.Slices.uintptr_kind)) : stdgo.GoUIntptr) + (_elemSize - (1 : stdgo.GoUIntptr))));
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
/**
    // startIdx returns the index in haystack where the needle starts.
    // prerequisite: the needle must be aliased entirely inside the haystack.
**/
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
                    for (@:privateAccess stdgo.slices.Slices._i in 0 ... _haystack.length.toBasic()) {
                        if (_p == ((stdgo.Go.setRef(_haystack[(@:privateAccess stdgo.slices.Slices._i : stdgo.GoInt)]) : stdgo.Ref<$E>))) {
                            return @:privateAccess stdgo.slices.Slices._i;
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
/**
    // Reverse reverses the elements of the slice in place.
**/
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
                        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (_s.length) - (1 : stdgo.GoInt), _j:stdgo.GoInt = __1, _i:stdgo.GoInt = __0;
                        stdgo.Go.cfor(_i < _j, {
                            final __tmp__0 = _i + (1 : stdgo.GoInt);
                            final __tmp__1 = _j - (1 : stdgo.GoInt);
                            _i = __tmp__0;
                            _j = __tmp__1;
                        }, {
                            {
                                final __tmp__0 = _s[@:param_index _j];
                                final __tmp__1 = _s[@:param_index _i];
                                _s[@:param_index _i] = __tmp__0;
                                _s[@:param_index _j] = __tmp__1;
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
/**
    // equal is simply ==.
**/
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
/**
    // equalNaN is like == except that all NaNs are equal.
**/
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
                    var _isNaN:$T_ -> Bool = function(_f:$T_):Bool {
                        return _f != (_f);
                    };
                    return (_v1 == _v2) || (_isNaN(_v1) && _isNaN(_v2));
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
/**
    // naiveReplace is a baseline implementation to the Replace function.
**/
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
                    _s = @:privateAccess stdgo.slices.Slices.delete(stdgo.Go.defaultValue((cast (null) : $S)), stdgo.Go.defaultValue((cast (null) : $E)), _s, _i, _j);
                    _s = @:privateAccess stdgo.slices.Slices.insert(stdgo.Go.defaultValue((cast (null) : $S)), stdgo.Go.defaultValue((cast (null) : $E)), _s, _i, ..._v.__toArray__());
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
/**
    // Sort sorts a slice of any ordered type in ascending order.
    // When sorting floating-point numbers, NaNs are ordered before other values.
**/
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
                    var _n:stdgo.GoInt = (_x.length);
                    @:privateAccess stdgo.slices.Slices._pdqsortOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _x, (0 : stdgo.GoInt), _n, stdgo.math.bits.Bits.len((_n : stdgo.GoUInt)));
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
/**
    // SortFunc sorts the slice x in ascending order as determined by the cmp
    // function. This sort is not guaranteed to be stable.
    // cmp(a, b) should return a negative number when a < b, a positive number when
    // a > b and zero when a == b.
    //
    // SortFunc requires that cmp is a strict weak ordering.
    // See https://en.wikipedia.org/wiki/Weak_ordering#Strict_weak_orderings.
**/
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
                    var _n:stdgo.GoInt = (_x.length);
                    @:privateAccess stdgo.slices.Slices._pdqsortCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _x, (0 : stdgo.GoInt), _n, stdgo.math.bits.Bits.len((_n : stdgo.GoUInt)), _cmp);
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
/**
    // SortStableFunc sorts the slice x while keeping the original order of equal
    // elements, using cmp to compare elements in the same way as [SortFunc].
**/
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
                    @:privateAccess stdgo.slices.Slices._stableCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _x, (_x.length), _cmp);
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
/**
    // IsSorted reports whether x is sorted in ascending order.
**/
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
                        var _i:stdgo.GoInt = (_x.length) - (1 : stdgo.GoInt);
                        stdgo.Go.cfor(_i > (0 : stdgo.GoInt), _i--, {
                            if (stdgo.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _x[@:param_index _i], _x[@:param_index _i - (1 : stdgo.GoInt)])) {
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
/**
    // IsSortedFunc reports whether x is sorted in ascending order, with cmp as the
    // comparison function as defined by [SortFunc].
**/
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
                        var _i:stdgo.GoInt = (_x.length) - (1 : stdgo.GoInt);
                        stdgo.Go.cfor(_i > (0 : stdgo.GoInt), _i--, {
                            if (_cmp(_x[@:param_index _i], _x[@:param_index _i - (1 : stdgo.GoInt)]) < (0 : stdgo.GoInt)) {
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
/**
    // Min returns the minimal value in x. It panics if x is empty.
    // For floating-point numbers, Min propagates NaNs (any NaN value in x
    // forces the output to be NaN).
**/
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
                    if ((_x.length) < (1 : stdgo.GoInt)) {
                        throw stdgo.Go.toInterface(("slices.Min: empty list" : stdgo.GoString));
                    };
                    var _m:$E = _x[@:param_index (0 : stdgo.GoInt)];
                    {
                        var _i:stdgo.GoInt = (1 : stdgo.GoInt);
                        stdgo.Go.cfor(_i < (_x.length), _i++, {
                            _m = @:privateAccess stdgo.slices.Slices._min(_m, _x[@:param_index _i]);
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
/**
    // MinFunc returns the minimal value in x, using cmp to compare elements.
    // It panics if x is empty. If there is more than one minimal element
    // according to the cmp function, MinFunc returns the first one.
**/
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
                    if ((_x.length) < (1 : stdgo.GoInt)) {
                        throw stdgo.Go.toInterface(("slices.MinFunc: empty list" : stdgo.GoString));
                    };
                    var _m:$E = _x[@:param_index (0 : stdgo.GoInt)];
                    {
                        var _i:stdgo.GoInt = (1 : stdgo.GoInt);
                        stdgo.Go.cfor(_i < (_x.length), _i++, {
                            if (_cmp(_x[@:param_index _i], _m) < (0 : stdgo.GoInt)) {
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
/**
    // Max returns the maximal value in x. It panics if x is empty.
    // For floating-point E, Max propagates NaNs (any NaN value in x
    // forces the output to be NaN).
**/
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
                    if ((_x.length) < (1 : stdgo.GoInt)) {
                        throw stdgo.Go.toInterface(("slices.Max: empty list" : stdgo.GoString));
                    };
                    var _m:$E = _x[@:param_index (0 : stdgo.GoInt)];
                    {
                        var _i:stdgo.GoInt = (1 : stdgo.GoInt);
                        stdgo.Go.cfor(_i < (_x.length), _i++, {
                            _m = @:privateAccess stdgo.slices.Slices._max(_m, _x[@:param_index _i]);
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
/**
    // MaxFunc returns the maximal value in x, using cmp to compare elements.
    // It panics if x is empty. If there is more than one maximal element
    // according to the cmp function, MaxFunc returns the first one.
**/
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
                    if ((_x.length) < (1 : stdgo.GoInt)) {
                        throw stdgo.Go.toInterface(("slices.MaxFunc: empty list" : stdgo.GoString));
                    };
                    var _m:$E = _x[@:param_index (0 : stdgo.GoInt)];
                    {
                        var _i:stdgo.GoInt = (1 : stdgo.GoInt);
                        stdgo.Go.cfor(_i < (_x.length), _i++, {
                            if (_cmp(_x[@:param_index _i], _m) > (0 : stdgo.GoInt)) {
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
/**
    // BinarySearch searches for target in a sorted slice and returns the position
    // where target is found, or the position where target would appear in the
    // sort order; it also returns a bool saying whether the target is really found
    // in the slice. The slice must be sorted in increasing order.
**/
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
                    var _n:stdgo.GoInt = (_x.length);
                    var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = _n, _j:stdgo.GoInt = __1, _i:stdgo.GoInt = __0;
                    while (_i < _j) {
                        var _h:stdgo.GoInt = ((_i + _j : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
                        if (stdgo.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _x[@:param_index _h], _target)) {
                            _i = _h + (1 : stdgo.GoInt);
                        } else {
                            _j = _h;
                        };
                    };
                    return { _0 : _i, _1 : (_i < _n) && ((_x[@:param_index _i] == _target) || (@:privateAccess stdgo.slices.Slices._isNaN(stdgo.Go.defaultValue((cast (null) : $E)), _x[@:param_index _i]) && @:privateAccess stdgo.slices.Slices._isNaN(stdgo.Go.defaultValue((cast (null) : $E)), _target))) };
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
/**
    // BinarySearchFunc works like [BinarySearch], but uses a custom comparison
    // function. The slice must be sorted in increasing order, where "increasing"
    // is defined by cmp. cmp should return 0 if the slice element matches
    // the target, a negative number if the slice element precedes the target,
    // or a positive number if the slice element follows the target.
    // cmp must implement the same ordering as the slice, such that if
    // cmp(a, t) < 0 and cmp(b, t) >= 0, then a must precede b in the slice.
**/
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
                    var _n:stdgo.GoInt = (_x.length);
                    var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = _n, _j:stdgo.GoInt = __1, _i:stdgo.GoInt = __0;
                    while (_i < _j) {
                        var _h:stdgo.GoInt = ((_i + _j : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
                        if (_cmp(_x[@:param_index _h], _target) < (0 : stdgo.GoInt)) {
                            _i = _h + (1 : stdgo.GoInt);
                        } else {
                            _j = _h;
                        };
                    };
                    return { _0 : _i, _1 : (_i < _n) && (_cmp(_x[@:param_index _i], _target) == (0 : stdgo.GoInt)) };
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
/**
    // isNaN reports whether x is a NaN without requiring the math package.
    // This will always return false if T is not floating-point.
**/
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
/**
    // insertionSortCmpFunc sorts data[a:b] using insertion sort.
**/
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
                        var _i:stdgo.GoInt = _a + (1 : stdgo.GoInt);
                        stdgo.Go.cfor(_i < _b, _i++, {
                            {
                                var _j:stdgo.GoInt = _i;
                                stdgo.Go.cfor((_j > _a) && (_cmp(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) < (0 : stdgo.GoInt)), _j--, {
                                    {
                                        final __tmp__0 = _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)];
                                        final __tmp__1 = _data[(_j : stdgo.GoInt)];
                                        _data[(_j : stdgo.GoInt)] = __tmp__0;
                                        _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)] = __tmp__1;
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
/**
    // siftDownCmpFunc implements the heap property on data[lo:hi].
    // first is an offset into the array where the root of the heap lies.
**/
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
                    var _root:stdgo.GoInt = _lo;
                    while (true) {
                        var _child:stdgo.GoInt = ((2 : stdgo.GoInt) * _root) + (1 : stdgo.GoInt);
                        if (_child >= _hi) {
                            break;
                        };
                        if (((_child + (1 : stdgo.GoInt)) < _hi) && (_cmp(_data[(_first + _child : stdgo.GoInt)], _data[((_first + _child) + (1 : stdgo.GoInt) : stdgo.GoInt)]) < (0 : stdgo.GoInt))) {
                            _child++;
                        };
                        if (!(_cmp(_data[(_first + _root : stdgo.GoInt)], _data[(_first + _child : stdgo.GoInt)]) < (0 : stdgo.GoInt))) {
                            return;
                        };
                        {
                            final __tmp__0 = _data[(_first + _child : stdgo.GoInt)];
                            final __tmp__1 = _data[(_first + _root : stdgo.GoInt)];
                            _data[(_first + _root : stdgo.GoInt)] = __tmp__0;
                            _data[(_first + _child : stdgo.GoInt)] = __tmp__1;
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
                    var _first:stdgo.GoInt = _a;
                    var _lo:stdgo.GoInt = (0 : stdgo.GoInt);
                    var _hi:stdgo.GoInt = _b - _a;
                    {
                        var _i:stdgo.GoInt = (_hi - (1 : stdgo.GoInt)) / (2 : stdgo.GoInt);
                        stdgo.Go.cfor(_i >= (0 : stdgo.GoInt), _i--, {
                            @:privateAccess stdgo.slices.Slices._siftDownCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _i, _hi, _first, _cmp);
                        });
                    };
                    {
                        var _i:stdgo.GoInt = _hi - (1 : stdgo.GoInt);
                        stdgo.Go.cfor(_i >= (0 : stdgo.GoInt), _i--, {
                            {
                                final __tmp__0 = _data[(_first + _i : stdgo.GoInt)];
                                final __tmp__1 = _data[(_first : stdgo.GoInt)];
                                _data[(_first : stdgo.GoInt)] = __tmp__0;
                                _data[(_first + _i : stdgo.GoInt)] = __tmp__1;
                            };
                            @:privateAccess stdgo.slices.Slices._siftDownCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _lo, _i, _first, _cmp);
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
/**
    // pdqsortCmpFunc sorts data[a:b].
    // The algorithm based on pattern-defeating quicksort(pdqsort), but without the optimizations from BlockQuicksort.
    // pdqsort paper: https://arxiv.org/pdf/2106.05123.pdf
    // C++ implementation: https://github.com/orlp/pdqsort
    // Rust implementation: https://docs.rs/pdqsort/latest/pdqsort/
    // limit is the number of allowed bad (very unbalanced) pivots before falling back to heapsort.
**/
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
                    var __0:Bool = true, __1:Bool = true, _wasPartitioned:Bool = __1, _wasBalanced:Bool = __0;
                    while (true) {
                        var _length:stdgo.GoInt = _b - _a;
                        if (_length <= (12 : stdgo.GoInt)) {
                            @:privateAccess stdgo.slices.Slices._insertionSortCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _cmp);
                            return;
                        };
                        if (_limit == ((0 : stdgo.GoInt))) {
                            @:privateAccess stdgo.slices.Slices._heapSortCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _cmp);
                            return;
                        };
                        if (!_wasBalanced) {
                            @:privateAccess stdgo.slices.Slices._breakPatternsCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _cmp);
                            _limit--;
                        };
                        var __tmp__ = @:privateAccess stdgo.slices.Slices._choosePivotCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _cmp), _pivot:stdgo.GoInt = __tmp__._0, _hint:stdgo.slices.Slices.T_sortedHint = __tmp__._1;
                        if (_hint == ((2 : stdgo.slices.Slices.T_sortedHint))) {
                            @:privateAccess stdgo.slices.Slices._reverseRangeCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _cmp);
                            _pivot = (_b - (1 : stdgo.GoInt)) - (_pivot - _a);
                            _hint = (1 : stdgo.slices.Slices.T_sortedHint);
                        };
                        if ((_wasBalanced && _wasPartitioned) && (_hint == (1 : stdgo.slices.Slices.T_sortedHint))) {
                            if (@:privateAccess stdgo.slices.Slices._partialInsertionSortCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _cmp)) {
                                return;
                            };
                        };
                        if ((_a > (0 : stdgo.GoInt)) && !(_cmp(_data[(_a - (1 : stdgo.GoInt) : stdgo.GoInt)], _data[(_pivot : stdgo.GoInt)]) < (0 : stdgo.GoInt))) {
                            var _mid:stdgo.GoInt = @:privateAccess stdgo.slices.Slices._partitionEqualCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _pivot, _cmp);
                            _a = _mid;
                            continue;
                        };
                        var __tmp__ = @:privateAccess stdgo.slices.Slices._partitionCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _pivot, _cmp), _mid:stdgo.GoInt = __tmp__._0, _alreadyPartitioned:Bool = __tmp__._1;
                        _wasPartitioned = _alreadyPartitioned;
                        var __0:stdgo.GoInt = _mid - _a, __1:stdgo.GoInt = _b - _mid, _rightLen:stdgo.GoInt = __1, _leftLen:stdgo.GoInt = __0;
                        var _balanceThreshold:stdgo.GoInt = _length / (8 : stdgo.GoInt);
                        if (_leftLen < _rightLen) {
                            _wasBalanced = _leftLen >= _balanceThreshold;
                            @:privateAccess stdgo.slices.Slices._pdqsortCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _mid, _limit, _cmp);
                            _a = _mid + (1 : stdgo.GoInt);
                        } else {
                            _wasBalanced = _rightLen >= _balanceThreshold;
                            @:privateAccess stdgo.slices.Slices._pdqsortCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _mid + (1 : stdgo.GoInt), _b, _limit, _cmp);
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
/**
    // partitionCmpFunc does one quicksort partition.
    // Let p = data[pivot]
    // Moves elements in data[a:b] around, so that data[i]<p and data[j]>=p for i<newpivot and j>newpivot.
    // On return, data[newpivot] = p
**/
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
                    var _newpivot:stdgo.GoInt = (0 : stdgo.GoInt), _alreadyPartitioned:Bool = false;
                    {
                        final __tmp__0 = _data[(_pivot : stdgo.GoInt)];
                        final __tmp__1 = _data[(_a : stdgo.GoInt)];
                        _data[(_a : stdgo.GoInt)] = __tmp__0;
                        _data[(_pivot : stdgo.GoInt)] = __tmp__1;
                    };
                    var __0:stdgo.GoInt = _a + (1 : stdgo.GoInt), __1:stdgo.GoInt = _b - (1 : stdgo.GoInt), _j:stdgo.GoInt = __1, _i:stdgo.GoInt = __0;
                    while ((_i <= _j) && (_cmp(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) < (0 : stdgo.GoInt))) {
                        _i++;
                    };
                    while ((_i <= _j) && !(_cmp(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) < (0 : stdgo.GoInt))) {
                        _j--;
                    };
                    if (_i > _j) {
                        {
                            final __tmp__0 = _data[(_a : stdgo.GoInt)];
                            final __tmp__1 = _data[(_j : stdgo.GoInt)];
                            _data[(_j : stdgo.GoInt)] = __tmp__0;
                            _data[(_a : stdgo.GoInt)] = __tmp__1;
                        };
                        return { _0 : _j, _1 : true };
                    };
                    {
                        final __tmp__0 = _data[(_j : stdgo.GoInt)];
                        final __tmp__1 = _data[(_i : stdgo.GoInt)];
                        _data[(_i : stdgo.GoInt)] = __tmp__0;
                        _data[(_j : stdgo.GoInt)] = __tmp__1;
                    };
                    _i++;
                    _j--;
                    while (true) {
                        while ((_i <= _j) && (_cmp(_data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) < (0 : stdgo.GoInt))) {
                            _i++;
                        };
                        while ((_i <= _j) && !(_cmp(_data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) < (0 : stdgo.GoInt))) {
                            _j--;
                        };
                        if (_i > _j) {
                            break;
                        };
                        {
                            final __tmp__0 = _data[(_j : stdgo.GoInt)];
                            final __tmp__1 = _data[(_i : stdgo.GoInt)];
                            _data[(_i : stdgo.GoInt)] = __tmp__0;
                            _data[(_j : stdgo.GoInt)] = __tmp__1;
                        };
                        _i++;
                        _j--;
                    };
                    {
                        final __tmp__0 = _data[(_a : stdgo.GoInt)];
                        final __tmp__1 = _data[(_j : stdgo.GoInt)];
                        _data[(_j : stdgo.GoInt)] = __tmp__0;
                        _data[(_a : stdgo.GoInt)] = __tmp__1;
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
/**
    // partitionEqualCmpFunc partitions data[a:b] into elements equal to data[pivot] followed by elements greater than data[pivot].
    // It assumed that data[a:b] does not contain elements smaller than the data[pivot].
**/
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
                    var _newpivot:stdgo.GoInt = (0 : stdgo.GoInt);
                    {
                        final __tmp__0 = _data[(_pivot : stdgo.GoInt)];
                        final __tmp__1 = _data[(_a : stdgo.GoInt)];
                        _data[(_a : stdgo.GoInt)] = __tmp__0;
                        _data[(_pivot : stdgo.GoInt)] = __tmp__1;
                    };
                    var __0:stdgo.GoInt = _a + (1 : stdgo.GoInt), __1:stdgo.GoInt = _b - (1 : stdgo.GoInt), _j:stdgo.GoInt = __1, _i:stdgo.GoInt = __0;
                    while (true) {
                        while ((_i <= _j) && !(_cmp(_data[(_a : stdgo.GoInt)], _data[(_i : stdgo.GoInt)]) < (0 : stdgo.GoInt))) {
                            _i++;
                        };
                        while ((_i <= _j) && (_cmp(_data[(_a : stdgo.GoInt)], _data[(_j : stdgo.GoInt)]) < (0 : stdgo.GoInt))) {
                            _j--;
                        };
                        if (_i > _j) {
                            break;
                        };
                        {
                            final __tmp__0 = _data[(_j : stdgo.GoInt)];
                            final __tmp__1 = _data[(_i : stdgo.GoInt)];
                            _data[(_i : stdgo.GoInt)] = __tmp__0;
                            _data[(_j : stdgo.GoInt)] = __tmp__1;
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
/**
    // partialInsertionSortCmpFunc partially sorts a slice, returns true if the slice is sorted at the end.
**/
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
                    var _i:stdgo.GoInt = _a + (1 : stdgo.GoInt);
                    {
                        var _j:stdgo.GoInt = (0 : stdgo.GoInt);
                        stdgo.Go.cfor(_j < (5 : stdgo.GoInt), _j++, {
                            while ((_i < _b) && !(_cmp(_data[(_i : stdgo.GoInt)], _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) < (0 : stdgo.GoInt))) {
                                _i++;
                            };
                            if (_i == (_b)) {
                                return true;
                            };
                            if ((_b - _a) < (50 : stdgo.GoInt)) {
                                return false;
                            };
                            {
                                final __tmp__0 = _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)];
                                final __tmp__1 = _data[(_i : stdgo.GoInt)];
                                _data[(_i : stdgo.GoInt)] = __tmp__0;
                                _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] = __tmp__1;
                            };
                            if ((_i - _a) >= (2 : stdgo.GoInt)) {
                                {
                                    var _j:stdgo.GoInt = _i - (1 : stdgo.GoInt);
                                    stdgo.Go.cfor(_j >= (1 : stdgo.GoInt), _j--, {
                                        if (!(_cmp(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) < (0 : stdgo.GoInt))) {
                                            break;
                                        };
                                        {
                                            final __tmp__0 = _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)];
                                            final __tmp__1 = _data[(_j : stdgo.GoInt)];
                                            _data[(_j : stdgo.GoInt)] = __tmp__0;
                                            _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)] = __tmp__1;
                                        };
                                    });
                                };
                            };
                            if ((_b - _i) >= (2 : stdgo.GoInt)) {
                                {
                                    var _j:stdgo.GoInt = _i + (1 : stdgo.GoInt);
                                    stdgo.Go.cfor(_j < _b, _j++, {
                                        if (!(_cmp(_data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) < (0 : stdgo.GoInt))) {
                                            break;
                                        };
                                        {
                                            final __tmp__0 = _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)];
                                            final __tmp__1 = _data[(_j : stdgo.GoInt)];
                                            _data[(_j : stdgo.GoInt)] = __tmp__0;
                                            _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)] = __tmp__1;
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
/**
    // breakPatternsCmpFunc scatters some elements around in an attempt to break some patterns
    // that might cause imbalanced partitions in quicksort.
**/
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
                    var _length:stdgo.GoInt = _b - _a;
                    if (_length >= (8 : stdgo.GoInt)) {
                        var _random:stdgo.slices.Slices.T_xorshift = (_length : stdgo.slices.Slices.T_xorshift);
                        var _modulus:stdgo.GoUInt = @:privateAccess stdgo.slices.Slices._nextPowerOfTwo(_length);
                        {
                            var _idx:stdgo.GoInt = (_a + ((_length / (4 : stdgo.GoInt)) * (2 : stdgo.GoInt))) - (1 : stdgo.GoInt);
                            stdgo.Go.cfor(_idx <= ((_a + ((_length / (4 : stdgo.GoInt)) * (2 : stdgo.GoInt))) + (1 : stdgo.GoInt)), _idx++, {
                                var _other:stdgo.GoInt = ((_random.next(stdgo.Go.pointer(_random)) : stdgo.GoUInt) & (_modulus - (1u32 : stdgo.GoUInt)) : stdgo.GoInt);
                                if (_other >= _length) {
                                    _other = _other - (_length);
                                };
                                {
                                    final __tmp__0 = _data[(_a + _other : stdgo.GoInt)];
                                    final __tmp__1 = _data[(_idx : stdgo.GoInt)];
                                    _data[(_idx : stdgo.GoInt)] = __tmp__0;
                                    _data[(_a + _other : stdgo.GoInt)] = __tmp__1;
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
/**
    // choosePivotCmpFunc chooses a pivot in data[a:b].
    //
    // [0,8): chooses a static pivot.
    // [8,shortestNinther): uses the simple median-of-three method.
    // [shortestNinther,∞): uses the Tukey ninther method.
**/
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
                    var _pivot:stdgo.GoInt = (0 : stdgo.GoInt), _hint:stdgo.slices.Slices.T_sortedHint = ((0 : stdgo.GoInt) : stdgo.slices.Slices.T_sortedHint);
                    {};
                    var _l:stdgo.GoInt = _b - _a;
                    var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = _a + ((_l / (4 : stdgo.GoInt)) * (1 : stdgo.GoInt)), __2:stdgo.GoInt = _a + ((_l / (4 : stdgo.GoInt)) * (2 : stdgo.GoInt)), __3:stdgo.GoInt = _a + ((_l / (4 : stdgo.GoInt)) * (3 : stdgo.GoInt)), _k:stdgo.GoInt = __3, _j:stdgo.GoInt = __2, _i:stdgo.GoInt = __1, _swaps:stdgo.GoInt = __0;
                    if (_l >= (8 : stdgo.GoInt)) {
                        if (_l >= (50 : stdgo.GoInt)) {
                            _i = @:privateAccess stdgo.slices.Slices._medianAdjacentCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _i, stdgo.Go.pointer(_swaps), _cmp);
                            _j = @:privateAccess stdgo.slices.Slices._medianAdjacentCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _j, stdgo.Go.pointer(_swaps), _cmp);
                            _k = @:privateAccess stdgo.slices.Slices._medianAdjacentCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _k, stdgo.Go.pointer(_swaps), _cmp);
                        };
                        _j = @:privateAccess stdgo.slices.Slices._medianCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _i, _j, _k, stdgo.Go.pointer(_swaps), _cmp);
                    };
                    {
                        final __value__ = _swaps;
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            return { _0 : _j, _1 : (1 : stdgo.slices.Slices.T_sortedHint) };
                        } else if (__value__ == ((12 : stdgo.GoInt))) {
                            return { _0 : _j, _1 : (2 : stdgo.slices.Slices.T_sortedHint) };
                        } else {
                            return { _0 : _j, _1 : (0 : stdgo.slices.Slices.T_sortedHint) };
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
/**
    // order2CmpFunc returns x,y where data[x] <= data[y], where x,y=a,b or x,y=b,a.
**/
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
                    if (_cmp(_data[(_b : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) < (0 : stdgo.GoInt)) {
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
/**
    // medianCmpFunc returns x where data[x] is the median of data[a],data[b],data[c], where x is a, b, or c.
**/
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
                        var __tmp__ = @:privateAccess stdgo.slices.Slices._order2CmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _swaps, _cmp);
                        _a = __tmp__._0;
                        _b = __tmp__._1;
                    };
                    {
                        var __tmp__ = @:privateAccess stdgo.slices.Slices._order2CmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _b, _c, _swaps, _cmp);
                        _b = __tmp__._0;
                        _c = __tmp__._1;
                    };
                    {
                        var __tmp__ = @:privateAccess stdgo.slices.Slices._order2CmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _swaps, _cmp);
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
/**
    // medianAdjacentCmpFunc finds the median of data[a - 1], data[a], data[a + 1] and stores the index into a.
**/
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
                    return @:privateAccess stdgo.slices.Slices._medianCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a - (1 : stdgo.GoInt), _a, _a + (1 : stdgo.GoInt), _swaps, _cmp);
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
                    var _i:stdgo.GoInt = _a;
                    var _j:stdgo.GoInt = _b - (1 : stdgo.GoInt);
                    while (_i < _j) {
                        {
                            final __tmp__0 = _data[(_j : stdgo.GoInt)];
                            final __tmp__1 = _data[(_i : stdgo.GoInt)];
                            _data[(_i : stdgo.GoInt)] = __tmp__0;
                            _data[(_j : stdgo.GoInt)] = __tmp__1;
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
                        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                        stdgo.Go.cfor(_i < _n, _i++, {
                            {
                                final __tmp__0 = _data[(_b + _i : stdgo.GoInt)];
                                final __tmp__1 = _data[(_a + _i : stdgo.GoInt)];
                                _data[(_a + _i : stdgo.GoInt)] = __tmp__0;
                                _data[(_b + _i : stdgo.GoInt)] = __tmp__1;
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
                    var _blockSize:stdgo.GoInt = (20 : stdgo.GoInt);
                    var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = _blockSize, _b:stdgo.GoInt = __1, _a:stdgo.GoInt = __0;
                    while (_b <= _n) {
                        @:privateAccess stdgo.slices.Slices._insertionSortCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _cmp);
                        _a = _b;
                        _b = _b + (_blockSize);
                    };
                    @:privateAccess stdgo.slices.Slices._insertionSortCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _n, _cmp);
                    while (_blockSize < _n) {
                        {
                            final __tmp__0 = (0 : stdgo.GoInt);
                            final __tmp__1 = (2 : stdgo.GoInt) * _blockSize;
                            _a = __tmp__0;
                            _b = __tmp__1;
                        };
                        while (_b <= _n) {
                            @:privateAccess stdgo.slices.Slices._symMergeCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _a + _blockSize, _b, _cmp);
                            _a = _b;
                            _b = _b + ((2 : stdgo.GoInt) * _blockSize);
                        };
                        {
                            var _m:stdgo.GoInt = _a + _blockSize;
                            if (_m < _n) {
                                @:privateAccess stdgo.slices.Slices._symMergeCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _m, _n, _cmp);
                            };
                        };
                        _blockSize = _blockSize * ((2 : stdgo.GoInt));
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
/**
    // symMergeCmpFunc merges the two sorted subsequences data[a:m] and data[m:b] using
    // the SymMerge algorithm from Pok-Son Kim and Arne Kutzner, "Stable Minimum
    // Storage Merging by Symmetric Comparisons", in Susanne Albers and Tomasz
    // Radzik, editors, Algorithms - ESA 2004, volume 3221 of Lecture Notes in
    // Computer Science, pages 714-723. Springer, 2004.
    //
    // Let M = m-a and N = b-n. Wolog M < N.
    // The recursion depth is bound by ceil(log(N+M)).
    // The algorithm needs O(M*log(N/M + 1)) calls to data.Less.
    // The algorithm needs O((M+N)*log(M)) calls to data.Swap.
    //
    // The paper gives O((M+N)*log(M)) as the number of assignments assuming a
    // rotation algorithm which uses O(M+N+gcd(M+N)) assignments. The argumentation
    // in the paper carries through for Swap operations, especially as the block
    // swapping rotate uses only O(M+N) Swaps.
    //
    // symMerge assumes non-degenerate arguments: a < m && m < b.
    // Having the caller check this condition eliminates many leaf recursion calls,
    // which improves performance.
**/
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
                    if (_m - _a == ((1 : stdgo.GoInt))) {
                        var _i:stdgo.GoInt = _m;
                        var _j:stdgo.GoInt = _b;
                        while (_i < _j) {
                            var _h:stdgo.GoInt = ((_i + _j : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
                            if (_cmp(_data[(_h : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) < (0 : stdgo.GoInt)) {
                                _i = _h + (1 : stdgo.GoInt);
                            } else {
                                _j = _h;
                            };
                        };
                        {
                            var _k:stdgo.GoInt = _a;
                            stdgo.Go.cfor(_k < (_i - (1 : stdgo.GoInt)), _k++, {
                                {
                                    final __tmp__0 = _data[(_k + (1 : stdgo.GoInt) : stdgo.GoInt)];
                                    final __tmp__1 = _data[(_k : stdgo.GoInt)];
                                    _data[(_k : stdgo.GoInt)] = __tmp__0;
                                    _data[(_k + (1 : stdgo.GoInt) : stdgo.GoInt)] = __tmp__1;
                                };
                            });
                        };
                        return;
                    };
                    if (_b - _m == ((1 : stdgo.GoInt))) {
                        var _i:stdgo.GoInt = _a;
                        var _j:stdgo.GoInt = _m;
                        while (_i < _j) {
                            var _h:stdgo.GoInt = ((_i + _j : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
                            if (!(_cmp(_data[(_m : stdgo.GoInt)], _data[(_h : stdgo.GoInt)]) < (0 : stdgo.GoInt))) {
                                _i = _h + (1 : stdgo.GoInt);
                            } else {
                                _j = _h;
                            };
                        };
                        {
                            var _k:stdgo.GoInt = _m;
                            stdgo.Go.cfor(_k > _i, _k--, {
                                {
                                    final __tmp__0 = _data[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)];
                                    final __tmp__1 = _data[(_k : stdgo.GoInt)];
                                    _data[(_k : stdgo.GoInt)] = __tmp__0;
                                    _data[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)] = __tmp__1;
                                };
                            });
                        };
                        return;
                    };
                    var _mid:stdgo.GoInt = ((_a + _b : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
                    var _n:stdgo.GoInt = _mid + _m;
                    var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), _r:stdgo.GoInt = __1, _start:stdgo.GoInt = __0;
                    if (_m > _mid) {
                        _start = _n - _b;
                        _r = _mid;
                    } else {
                        _start = _a;
                        _r = _m;
                    };
                    var _p:stdgo.GoInt = _n - (1 : stdgo.GoInt);
                    while (_start < _r) {
                        var _c:stdgo.GoInt = ((_start + _r : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
                        if (!(_cmp(_data[(_p - _c : stdgo.GoInt)], _data[(_c : stdgo.GoInt)]) < (0 : stdgo.GoInt))) {
                            _start = _c + (1 : stdgo.GoInt);
                        } else {
                            _r = _c;
                        };
                    };
                    var _end:stdgo.GoInt = _n - _start;
                    if ((_start < _m) && (_m < _end)) {
                        @:privateAccess stdgo.slices.Slices._rotateCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _start, _m, _end, _cmp);
                    };
                    if ((_a < _start) && (_start < _mid)) {
                        @:privateAccess stdgo.slices.Slices._symMergeCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _start, _mid, _cmp);
                    };
                    if ((_mid < _end) && (_end < _b)) {
                        @:privateAccess stdgo.slices.Slices._symMergeCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _mid, _end, _b, _cmp);
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
/**
    // rotateCmpFunc rotates two consecutive blocks u = data[a:m] and v = data[m:b] in data:
    // Data of the form 'x u v y' is changed to 'x v u y'.
    // rotate performs at most b-a many calls to data.Swap,
    // and it assumes non-degenerate arguments: a < m && m < b.
**/
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
                    var _i:stdgo.GoInt = _m - _a;
                    var _j:stdgo.GoInt = _b - _m;
                    while (_i != (_j)) {
                        if (_i > _j) {
                            @:privateAccess stdgo.slices.Slices._swapRangeCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _m - _i, _m, _j, _cmp);
                            _i = _i - (_j);
                        } else {
                            @:privateAccess stdgo.slices.Slices._swapRangeCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _m - _i, (_m + _j) - _i, _i, _cmp);
                            _j = _j - (_i);
                        };
                    };
                    @:privateAccess stdgo.slices.Slices._swapRangeCmpFunc(stdgo.Go.defaultValue((cast (null) : $E)), _data, _m - _i, _m, _i, _cmp);
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
/**
    // insertionSortOrdered sorts data[a:b] using insertion sort.
**/
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
                        var _i:stdgo.GoInt = _a + (1 : stdgo.GoInt);
                        stdgo.Go.cfor(_i < _b, _i++, {
                            {
                                var _j:stdgo.GoInt = _i;
                                stdgo.Go.cfor((_j > _a) && stdgo.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]), _j--, {
                                    {
                                        final __tmp__0 = _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)];
                                        final __tmp__1 = _data[(_j : stdgo.GoInt)];
                                        _data[(_j : stdgo.GoInt)] = __tmp__0;
                                        _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)] = __tmp__1;
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
/**
    // siftDownOrdered implements the heap property on data[lo:hi].
    // first is an offset into the array where the root of the heap lies.
**/
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
                    var _root:stdgo.GoInt = _lo;
                    while (true) {
                        var _child:stdgo.GoInt = ((2 : stdgo.GoInt) * _root) + (1 : stdgo.GoInt);
                        if (_child >= _hi) {
                            break;
                        };
                        if (((_child + (1 : stdgo.GoInt)) < _hi) && stdgo.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_first + _child : stdgo.GoInt)], _data[((_first + _child) + (1 : stdgo.GoInt) : stdgo.GoInt)])) {
                            _child++;
                        };
                        if (!stdgo.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_first + _root : stdgo.GoInt)], _data[(_first + _child : stdgo.GoInt)])) {
                            return;
                        };
                        {
                            final __tmp__0 = _data[(_first + _child : stdgo.GoInt)];
                            final __tmp__1 = _data[(_first + _root : stdgo.GoInt)];
                            _data[(_first + _root : stdgo.GoInt)] = __tmp__0;
                            _data[(_first + _child : stdgo.GoInt)] = __tmp__1;
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
                    var _first:stdgo.GoInt = _a;
                    var _lo:stdgo.GoInt = (0 : stdgo.GoInt);
                    var _hi:stdgo.GoInt = _b - _a;
                    {
                        var _i:stdgo.GoInt = (_hi - (1 : stdgo.GoInt)) / (2 : stdgo.GoInt);
                        stdgo.Go.cfor(_i >= (0 : stdgo.GoInt), _i--, {
                            @:privateAccess stdgo.slices.Slices._siftDownOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _i, _hi, _first);
                        });
                    };
                    {
                        var _i:stdgo.GoInt = _hi - (1 : stdgo.GoInt);
                        stdgo.Go.cfor(_i >= (0 : stdgo.GoInt), _i--, {
                            {
                                final __tmp__0 = _data[(_first + _i : stdgo.GoInt)];
                                final __tmp__1 = _data[(_first : stdgo.GoInt)];
                                _data[(_first : stdgo.GoInt)] = __tmp__0;
                                _data[(_first + _i : stdgo.GoInt)] = __tmp__1;
                            };
                            @:privateAccess stdgo.slices.Slices._siftDownOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _lo, _i, _first);
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
/**
    // pdqsortOrdered sorts data[a:b].
    // The algorithm based on pattern-defeating quicksort(pdqsort), but without the optimizations from BlockQuicksort.
    // pdqsort paper: https://arxiv.org/pdf/2106.05123.pdf
    // C++ implementation: https://github.com/orlp/pdqsort
    // Rust implementation: https://docs.rs/pdqsort/latest/pdqsort/
    // limit is the number of allowed bad (very unbalanced) pivots before falling back to heapsort.
**/
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
                    var __0:Bool = true, __1:Bool = true, _wasPartitioned:Bool = __1, _wasBalanced:Bool = __0;
                    while (true) {
                        var _length:stdgo.GoInt = _b - _a;
                        if (_length <= (12 : stdgo.GoInt)) {
                            @:privateAccess stdgo.slices.Slices._insertionSortOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b);
                            return;
                        };
                        if (_limit == ((0 : stdgo.GoInt))) {
                            @:privateAccess stdgo.slices.Slices._heapSortOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b);
                            return;
                        };
                        if (!_wasBalanced) {
                            @:privateAccess stdgo.slices.Slices._breakPatternsOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b);
                            _limit--;
                        };
                        var __tmp__ = @:privateAccess stdgo.slices.Slices._choosePivotOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b), _pivot:stdgo.GoInt = __tmp__._0, _hint:stdgo.slices.Slices.T_sortedHint = __tmp__._1;
                        if (_hint == ((2 : stdgo.slices.Slices.T_sortedHint))) {
                            @:privateAccess stdgo.slices.Slices._reverseRangeOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b);
                            _pivot = (_b - (1 : stdgo.GoInt)) - (_pivot - _a);
                            _hint = (1 : stdgo.slices.Slices.T_sortedHint);
                        };
                        if ((_wasBalanced && _wasPartitioned) && (_hint == (1 : stdgo.slices.Slices.T_sortedHint))) {
                            if (@:privateAccess stdgo.slices.Slices._partialInsertionSortOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b)) {
                                return;
                            };
                        };
                        if ((_a > (0 : stdgo.GoInt)) && !stdgo.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_a - (1 : stdgo.GoInt) : stdgo.GoInt)], _data[(_pivot : stdgo.GoInt)])) {
                            var _mid:stdgo.GoInt = @:privateAccess stdgo.slices.Slices._partitionEqualOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _pivot);
                            _a = _mid;
                            continue;
                        };
                        var __tmp__ = @:privateAccess stdgo.slices.Slices._partitionOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _pivot), _mid:stdgo.GoInt = __tmp__._0, _alreadyPartitioned:Bool = __tmp__._1;
                        _wasPartitioned = _alreadyPartitioned;
                        var __0:stdgo.GoInt = _mid - _a, __1:stdgo.GoInt = _b - _mid, _rightLen:stdgo.GoInt = __1, _leftLen:stdgo.GoInt = __0;
                        var _balanceThreshold:stdgo.GoInt = _length / (8 : stdgo.GoInt);
                        if (_leftLen < _rightLen) {
                            _wasBalanced = _leftLen >= _balanceThreshold;
                            @:privateAccess stdgo.slices.Slices._pdqsortOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _mid, _limit);
                            _a = _mid + (1 : stdgo.GoInt);
                        } else {
                            _wasBalanced = _rightLen >= _balanceThreshold;
                            @:privateAccess stdgo.slices.Slices._pdqsortOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _mid + (1 : stdgo.GoInt), _b, _limit);
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
/**
    // partitionOrdered does one quicksort partition.
    // Let p = data[pivot]
    // Moves elements in data[a:b] around, so that data[i]<p and data[j]>=p for i<newpivot and j>newpivot.
    // On return, data[newpivot] = p
**/
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
                    var _newpivot:stdgo.GoInt = (0 : stdgo.GoInt), _alreadyPartitioned:Bool = false;
                    {
                        final __tmp__0 = _data[(_pivot : stdgo.GoInt)];
                        final __tmp__1 = _data[(_a : stdgo.GoInt)];
                        _data[(_a : stdgo.GoInt)] = __tmp__0;
                        _data[(_pivot : stdgo.GoInt)] = __tmp__1;
                    };
                    var __0:stdgo.GoInt = _a + (1 : stdgo.GoInt), __1:stdgo.GoInt = _b - (1 : stdgo.GoInt), _j:stdgo.GoInt = __1, _i:stdgo.GoInt = __0;
                    while ((_i <= _j) && stdgo.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)])) {
                        _i++;
                    };
                    while ((_i <= _j) && !stdgo.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)])) {
                        _j--;
                    };
                    if (_i > _j) {
                        {
                            final __tmp__0 = _data[(_a : stdgo.GoInt)];
                            final __tmp__1 = _data[(_j : stdgo.GoInt)];
                            _data[(_j : stdgo.GoInt)] = __tmp__0;
                            _data[(_a : stdgo.GoInt)] = __tmp__1;
                        };
                        return { _0 : _j, _1 : true };
                    };
                    {
                        final __tmp__0 = _data[(_j : stdgo.GoInt)];
                        final __tmp__1 = _data[(_i : stdgo.GoInt)];
                        _data[(_i : stdgo.GoInt)] = __tmp__0;
                        _data[(_j : stdgo.GoInt)] = __tmp__1;
                    };
                    _i++;
                    _j--;
                    while (true) {
                        while ((_i <= _j) && stdgo.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_i : stdgo.GoInt)], _data[(_a : stdgo.GoInt)])) {
                            _i++;
                        };
                        while ((_i <= _j) && !stdgo.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_j : stdgo.GoInt)], _data[(_a : stdgo.GoInt)])) {
                            _j--;
                        };
                        if (_i > _j) {
                            break;
                        };
                        {
                            final __tmp__0 = _data[(_j : stdgo.GoInt)];
                            final __tmp__1 = _data[(_i : stdgo.GoInt)];
                            _data[(_i : stdgo.GoInt)] = __tmp__0;
                            _data[(_j : stdgo.GoInt)] = __tmp__1;
                        };
                        _i++;
                        _j--;
                    };
                    {
                        final __tmp__0 = _data[(_a : stdgo.GoInt)];
                        final __tmp__1 = _data[(_j : stdgo.GoInt)];
                        _data[(_j : stdgo.GoInt)] = __tmp__0;
                        _data[(_a : stdgo.GoInt)] = __tmp__1;
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
/**
    // partitionEqualOrdered partitions data[a:b] into elements equal to data[pivot] followed by elements greater than data[pivot].
    // It assumed that data[a:b] does not contain elements smaller than the data[pivot].
**/
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
                    var _newpivot:stdgo.GoInt = (0 : stdgo.GoInt);
                    {
                        final __tmp__0 = _data[(_pivot : stdgo.GoInt)];
                        final __tmp__1 = _data[(_a : stdgo.GoInt)];
                        _data[(_a : stdgo.GoInt)] = __tmp__0;
                        _data[(_pivot : stdgo.GoInt)] = __tmp__1;
                    };
                    var __0:stdgo.GoInt = _a + (1 : stdgo.GoInt), __1:stdgo.GoInt = _b - (1 : stdgo.GoInt), _j:stdgo.GoInt = __1, _i:stdgo.GoInt = __0;
                    while (true) {
                        while ((_i <= _j) && !stdgo.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_a : stdgo.GoInt)], _data[(_i : stdgo.GoInt)])) {
                            _i++;
                        };
                        while ((_i <= _j) && stdgo.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_a : stdgo.GoInt)], _data[(_j : stdgo.GoInt)])) {
                            _j--;
                        };
                        if (_i > _j) {
                            break;
                        };
                        {
                            final __tmp__0 = _data[(_j : stdgo.GoInt)];
                            final __tmp__1 = _data[(_i : stdgo.GoInt)];
                            _data[(_i : stdgo.GoInt)] = __tmp__0;
                            _data[(_j : stdgo.GoInt)] = __tmp__1;
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
/**
    // partialInsertionSortOrdered partially sorts a slice, returns true if the slice is sorted at the end.
**/
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
                    var _i:stdgo.GoInt = _a + (1 : stdgo.GoInt);
                    {
                        var _j:stdgo.GoInt = (0 : stdgo.GoInt);
                        stdgo.Go.cfor(_j < (5 : stdgo.GoInt), _j++, {
                            while ((_i < _b) && !stdgo.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_i : stdgo.GoInt)], _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)])) {
                                _i++;
                            };
                            if (_i == (_b)) {
                                return true;
                            };
                            if ((_b - _a) < (50 : stdgo.GoInt)) {
                                return false;
                            };
                            {
                                final __tmp__0 = _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)];
                                final __tmp__1 = _data[(_i : stdgo.GoInt)];
                                _data[(_i : stdgo.GoInt)] = __tmp__0;
                                _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] = __tmp__1;
                            };
                            if ((_i - _a) >= (2 : stdgo.GoInt)) {
                                {
                                    var _j:stdgo.GoInt = _i - (1 : stdgo.GoInt);
                                    stdgo.Go.cfor(_j >= (1 : stdgo.GoInt), _j--, {
                                        if (!stdgo.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)])) {
                                            break;
                                        };
                                        {
                                            final __tmp__0 = _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)];
                                            final __tmp__1 = _data[(_j : stdgo.GoInt)];
                                            _data[(_j : stdgo.GoInt)] = __tmp__0;
                                            _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)] = __tmp__1;
                                        };
                                    });
                                };
                            };
                            if ((_b - _i) >= (2 : stdgo.GoInt)) {
                                {
                                    var _j:stdgo.GoInt = _i + (1 : stdgo.GoInt);
                                    stdgo.Go.cfor(_j < _b, _j++, {
                                        if (!stdgo.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_j : stdgo.GoInt)], _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)])) {
                                            break;
                                        };
                                        {
                                            final __tmp__0 = _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)];
                                            final __tmp__1 = _data[(_j : stdgo.GoInt)];
                                            _data[(_j : stdgo.GoInt)] = __tmp__0;
                                            _data[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)] = __tmp__1;
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
/**
    // breakPatternsOrdered scatters some elements around in an attempt to break some patterns
    // that might cause imbalanced partitions in quicksort.
**/
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
                    var _length:stdgo.GoInt = _b - _a;
                    if (_length >= (8 : stdgo.GoInt)) {
                        var _random:stdgo.slices.Slices.T_xorshift = (_length : stdgo.slices.Slices.T_xorshift);
                        var _modulus:stdgo.GoUInt = @:privateAccess stdgo.slices.Slices._nextPowerOfTwo(_length);
                        {
                            var _idx:stdgo.GoInt = (_a + ((_length / (4 : stdgo.GoInt)) * (2 : stdgo.GoInt))) - (1 : stdgo.GoInt);
                            stdgo.Go.cfor(_idx <= ((_a + ((_length / (4 : stdgo.GoInt)) * (2 : stdgo.GoInt))) + (1 : stdgo.GoInt)), _idx++, {
                                var _other:stdgo.GoInt = ((_random.next(stdgo.Go.pointer(_random)) : stdgo.GoUInt) & (_modulus - (1u32 : stdgo.GoUInt)) : stdgo.GoInt);
                                if (_other >= _length) {
                                    _other = _other - (_length);
                                };
                                {
                                    final __tmp__0 = _data[(_a + _other : stdgo.GoInt)];
                                    final __tmp__1 = _data[(_idx : stdgo.GoInt)];
                                    _data[(_idx : stdgo.GoInt)] = __tmp__0;
                                    _data[(_a + _other : stdgo.GoInt)] = __tmp__1;
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
/**
    // choosePivotOrdered chooses a pivot in data[a:b].
    //
    // [0,8): chooses a static pivot.
    // [8,shortestNinther): uses the simple median-of-three method.
    // [shortestNinther,∞): uses the Tukey ninther method.
**/
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
                    var _pivot:stdgo.GoInt = (0 : stdgo.GoInt), _hint:stdgo.slices.Slices.T_sortedHint = ((0 : stdgo.GoInt) : stdgo.slices.Slices.T_sortedHint);
                    {};
                    var _l:stdgo.GoInt = _b - _a;
                    var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = _a + ((_l / (4 : stdgo.GoInt)) * (1 : stdgo.GoInt)), __2:stdgo.GoInt = _a + ((_l / (4 : stdgo.GoInt)) * (2 : stdgo.GoInt)), __3:stdgo.GoInt = _a + ((_l / (4 : stdgo.GoInt)) * (3 : stdgo.GoInt)), _k:stdgo.GoInt = __3, _j:stdgo.GoInt = __2, _i:stdgo.GoInt = __1, _swaps:stdgo.GoInt = __0;
                    if (_l >= (8 : stdgo.GoInt)) {
                        if (_l >= (50 : stdgo.GoInt)) {
                            _i = @:privateAccess stdgo.slices.Slices._medianAdjacentOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _i, stdgo.Go.pointer(_swaps));
                            _j = @:privateAccess stdgo.slices.Slices._medianAdjacentOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _j, stdgo.Go.pointer(_swaps));
                            _k = @:privateAccess stdgo.slices.Slices._medianAdjacentOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _k, stdgo.Go.pointer(_swaps));
                        };
                        _j = @:privateAccess stdgo.slices.Slices._medianOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _i, _j, _k, stdgo.Go.pointer(_swaps));
                    };
                    {
                        final __value__ = _swaps;
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            return { _0 : _j, _1 : (1 : stdgo.slices.Slices.T_sortedHint) };
                        } else if (__value__ == ((12 : stdgo.GoInt))) {
                            return { _0 : _j, _1 : (2 : stdgo.slices.Slices.T_sortedHint) };
                        } else {
                            return { _0 : _j, _1 : (0 : stdgo.slices.Slices.T_sortedHint) };
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
/**
    // order2Ordered returns x,y where data[x] <= data[y], where x,y=a,b or x,y=b,a.
**/
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
                    if (stdgo.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_b : stdgo.GoInt)], _data[(_a : stdgo.GoInt)])) {
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
/**
    // medianOrdered returns x where data[x] is the median of data[a],data[b],data[c], where x is a, b, or c.
**/
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
                        var __tmp__ = @:privateAccess stdgo.slices.Slices._order2Ordered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _swaps);
                        _a = __tmp__._0;
                        _b = __tmp__._1;
                    };
                    {
                        var __tmp__ = @:privateAccess stdgo.slices.Slices._order2Ordered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _b, _c, _swaps);
                        _b = __tmp__._0;
                        _c = __tmp__._1;
                    };
                    {
                        var __tmp__ = @:privateAccess stdgo.slices.Slices._order2Ordered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b, _swaps);
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
/**
    // medianAdjacentOrdered finds the median of data[a - 1], data[a], data[a + 1] and stores the index into a.
**/
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
                    return @:privateAccess stdgo.slices.Slices._medianOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a - (1 : stdgo.GoInt), _a, _a + (1 : stdgo.GoInt), _swaps);
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
                    var _i:stdgo.GoInt = _a;
                    var _j:stdgo.GoInt = _b - (1 : stdgo.GoInt);
                    while (_i < _j) {
                        {
                            final __tmp__0 = _data[(_j : stdgo.GoInt)];
                            final __tmp__1 = _data[(_i : stdgo.GoInt)];
                            _data[(_i : stdgo.GoInt)] = __tmp__0;
                            _data[(_j : stdgo.GoInt)] = __tmp__1;
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
                        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                        stdgo.Go.cfor(_i < _n, _i++, {
                            {
                                final __tmp__0 = _data[(_b + _i : stdgo.GoInt)];
                                final __tmp__1 = _data[(_a + _i : stdgo.GoInt)];
                                _data[(_a + _i : stdgo.GoInt)] = __tmp__0;
                                _data[(_b + _i : stdgo.GoInt)] = __tmp__1;
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
                    var _blockSize:stdgo.GoInt = (20 : stdgo.GoInt);
                    var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = _blockSize, _b:stdgo.GoInt = __1, _a:stdgo.GoInt = __0;
                    while (_b <= _n) {
                        @:privateAccess stdgo.slices.Slices._insertionSortOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _b);
                        _a = _b;
                        _b = _b + (_blockSize);
                    };
                    @:privateAccess stdgo.slices.Slices._insertionSortOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _n);
                    while (_blockSize < _n) {
                        {
                            final __tmp__0 = (0 : stdgo.GoInt);
                            final __tmp__1 = (2 : stdgo.GoInt) * _blockSize;
                            _a = __tmp__0;
                            _b = __tmp__1;
                        };
                        while (_b <= _n) {
                            @:privateAccess stdgo.slices.Slices._symMergeOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _a + _blockSize, _b);
                            _a = _b;
                            _b = _b + ((2 : stdgo.GoInt) * _blockSize);
                        };
                        {
                            var _m:stdgo.GoInt = _a + _blockSize;
                            if (_m < _n) {
                                @:privateAccess stdgo.slices.Slices._symMergeOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _m, _n);
                            };
                        };
                        _blockSize = _blockSize * ((2 : stdgo.GoInt));
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
/**
    // symMergeOrdered merges the two sorted subsequences data[a:m] and data[m:b] using
    // the SymMerge algorithm from Pok-Son Kim and Arne Kutzner, "Stable Minimum
    // Storage Merging by Symmetric Comparisons", in Susanne Albers and Tomasz
    // Radzik, editors, Algorithms - ESA 2004, volume 3221 of Lecture Notes in
    // Computer Science, pages 714-723. Springer, 2004.
    //
    // Let M = m-a and N = b-n. Wolog M < N.
    // The recursion depth is bound by ceil(log(N+M)).
    // The algorithm needs O(M*log(N/M + 1)) calls to data.Less.
    // The algorithm needs O((M+N)*log(M)) calls to data.Swap.
    //
    // The paper gives O((M+N)*log(M)) as the number of assignments assuming a
    // rotation algorithm which uses O(M+N+gcd(M+N)) assignments. The argumentation
    // in the paper carries through for Swap operations, especially as the block
    // swapping rotate uses only O(M+N) Swaps.
    //
    // symMerge assumes non-degenerate arguments: a < m && m < b.
    // Having the caller check this condition eliminates many leaf recursion calls,
    // which improves performance.
**/
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
                    if (_m - _a == ((1 : stdgo.GoInt))) {
                        var _i:stdgo.GoInt = _m;
                        var _j:stdgo.GoInt = _b;
                        while (_i < _j) {
                            var _h:stdgo.GoInt = ((_i + _j : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
                            if (stdgo.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_h : stdgo.GoInt)], _data[(_a : stdgo.GoInt)])) {
                                _i = _h + (1 : stdgo.GoInt);
                            } else {
                                _j = _h;
                            };
                        };
                        {
                            var _k:stdgo.GoInt = _a;
                            stdgo.Go.cfor(_k < (_i - (1 : stdgo.GoInt)), _k++, {
                                {
                                    final __tmp__0 = _data[(_k + (1 : stdgo.GoInt) : stdgo.GoInt)];
                                    final __tmp__1 = _data[(_k : stdgo.GoInt)];
                                    _data[(_k : stdgo.GoInt)] = __tmp__0;
                                    _data[(_k + (1 : stdgo.GoInt) : stdgo.GoInt)] = __tmp__1;
                                };
                            });
                        };
                        return;
                    };
                    if (_b - _m == ((1 : stdgo.GoInt))) {
                        var _i:stdgo.GoInt = _a;
                        var _j:stdgo.GoInt = _m;
                        while (_i < _j) {
                            var _h:stdgo.GoInt = ((_i + _j : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
                            if (!stdgo.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_m : stdgo.GoInt)], _data[(_h : stdgo.GoInt)])) {
                                _i = _h + (1 : stdgo.GoInt);
                            } else {
                                _j = _h;
                            };
                        };
                        {
                            var _k:stdgo.GoInt = _m;
                            stdgo.Go.cfor(_k > _i, _k--, {
                                {
                                    final __tmp__0 = _data[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)];
                                    final __tmp__1 = _data[(_k : stdgo.GoInt)];
                                    _data[(_k : stdgo.GoInt)] = __tmp__0;
                                    _data[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)] = __tmp__1;
                                };
                            });
                        };
                        return;
                    };
                    var _mid:stdgo.GoInt = ((_a + _b : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
                    var _n:stdgo.GoInt = _mid + _m;
                    var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), _r:stdgo.GoInt = __1, _start:stdgo.GoInt = __0;
                    if (_m > _mid) {
                        _start = _n - _b;
                        _r = _mid;
                    } else {
                        _start = _a;
                        _r = _m;
                    };
                    var _p:stdgo.GoInt = _n - (1 : stdgo.GoInt);
                    while (_start < _r) {
                        var _c:stdgo.GoInt = ((_start + _r : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
                        if (!stdgo.cmp.Cmp.less(stdgo.Go.defaultValue((cast (null) : $E)), _data[(_p - _c : stdgo.GoInt)], _data[(_c : stdgo.GoInt)])) {
                            _start = _c + (1 : stdgo.GoInt);
                        } else {
                            _r = _c;
                        };
                    };
                    var _end:stdgo.GoInt = _n - _start;
                    if ((_start < _m) && (_m < _end)) {
                        @:privateAccess stdgo.slices.Slices._rotateOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _start, _m, _end);
                    };
                    if ((_a < _start) && (_start < _mid)) {
                        @:privateAccess stdgo.slices.Slices._symMergeOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _a, _start, _mid);
                    };
                    if ((_mid < _end) && (_end < _b)) {
                        @:privateAccess stdgo.slices.Slices._symMergeOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _mid, _end, _b);
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
/**
    // rotateOrdered rotates two consecutive blocks u = data[a:m] and v = data[m:b] in data:
    // Data of the form 'x u v y' is changed to 'x v u y'.
    // rotate performs at most b-a many calls to data.Swap,
    // and it assumes non-degenerate arguments: a < m && m < b.
**/
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
                    var _i:stdgo.GoInt = _m - _a;
                    var _j:stdgo.GoInt = _b - _m;
                    while (_i != (_j)) {
                        if (_i > _j) {
                            @:privateAccess stdgo.slices.Slices._swapRangeOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _m - _i, _m, _j);
                            _i = _i - (_j);
                        } else {
                            @:privateAccess stdgo.slices.Slices._swapRangeOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _m - _i, (_m + _j) - _i, _i);
                            _j = _j - (_i);
                        };
                    };
                    @:privateAccess stdgo.slices.Slices._swapRangeOrdered(stdgo.Go.defaultValue((cast (null) : $E)), _data, _m - _i, _m, _i);
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

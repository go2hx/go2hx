package stdgo.sync;
/**
    // OnceValue returns a function that invokes f only once and returns the value
    // returned by f. The returned function may be called concurrently.
    //
    // If f panics, the returned function will panic with the same value on every call.
**/
macro function onceValue<T>(__generic__0:haxe.macro.Expr.ExprOf<T>, _f:haxe.macro.Expr.ExprOf<() -> T>):haxe.macro.Expr.ExprOf<() -> T> {
        final T:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "sync" + "_" + "onceValue" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(T) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$T, _f:() -> T) throw ":sync.onceValue is not yet implemented";
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr";
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_f));
        };
    }
/**
    // OnceValues returns a function that invokes f only once and returns the values
    // returned by f. The returned function may be called concurrently.
    //
    // If f panics, the returned function will panic with the same value on every call.
**/
macro function onceValues<T1, T2>(__generic__0:haxe.macro.Expr.ExprOf<T1>, __generic__1:haxe.macro.Expr.ExprOf<T2>, _f:haxe.macro.Expr.ExprOf<() -> { var _0 : T1; var _1 : T2; }>):haxe.macro.Expr.ExprOf<() -> { var _0 : T1; var _1 : T2; }> {
        final T1:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        final T2:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__1));
        {
            var id = "T_" + "sync" + "_" + "onceValues" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(T1) + "_" + haxe.macro.ComplexTypeTools.toString(T2) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$T1, __generic__1:$T2, _f:() -> { var _0 : T1; var _1 : T2; }) throw ":sync.onceValues is not yet implemented";
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr";
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_f));
        };
    }

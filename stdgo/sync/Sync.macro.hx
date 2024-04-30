package stdgo.sync;
/**
    OnceValue returns a function that invokes f only once and returns the value
    returned by f. The returned function may be called concurrently.
    
    If f panics, the returned function will panic with the same value on every call.
**/
macro inline function onceValue<T_>(_generic__0:haxe.macro.Expr.ExprOf<T_>, f:haxe.macro.Expr.ExprOf<() -> T_>):haxe.macro.Expr.ExprOf<() -> T_> throw "not implemented";
/**
    OnceValues returns a function that invokes f only once and returns the values
    returned by f. The returned function may be called concurrently.
    
    If f panics, the returned function will panic with the same value on every call.
**/
macro inline function onceValues<T1, T2>(_generic__0:haxe.macro.Expr.ExprOf<T1>, _generic__1:haxe.macro.Expr.ExprOf<T2>, f:haxe.macro.Expr.ExprOf<() -> { var _0 : T1; var _1 : T2; }>):haxe.macro.Expr.ExprOf<() -> { var _0 : T1; var _1 : T2; }> throw "not implemented";

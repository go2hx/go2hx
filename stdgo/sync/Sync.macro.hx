package stdgo.sync;
class Sync {
    /**
        OnceValue returns a function that invokes f only once and returns the value
        returned by f. The returned function may be called concurrently.
        
        If f panics, the returned function will panic with the same value on every call.
    **/
    static public function onceValue<T_>(_generic__0:haxe.macro.Expr<T_>, f:haxe.macro.Expr<() -> T_>):haxe.macro.Expr<() -> T_> {
        return stdgo._internal.sync.Sync.onceValue(_generic__0, f);
    }
    /**
        OnceValues returns a function that invokes f only once and returns the values
        returned by f. The returned function may be called concurrently.
        
        If f panics, the returned function will panic with the same value on every call.
    **/
    static public function onceValues<T1, T2>(_generic__0:haxe.macro.Expr<T1>, _generic__1:haxe.macro.Expr<T2>, f:haxe.macro.Expr<() -> { var _0 : T1; var _1 : T2; }>):haxe.macro.Expr<() -> { var _0 : T1; var _1 : T2; }> {
        return stdgo._internal.sync.Sync.onceValues(_generic__0, _generic__1, f);
    }
}

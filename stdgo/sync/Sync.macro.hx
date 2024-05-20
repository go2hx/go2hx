package stdgo.sync;
class Sync {
    /**
        OnceValue returns a function that invokes f only once and returns the value
        returned by f. The returned function may be called concurrently.
        
        If f panics, the returned function will panic with the same value on every call.
    **/
    static public function onceValue<T_>(__generic__0:haxe.macro.Expr<T_>, _f:haxe.macro.Expr<() -> T_>):haxe.macro.Expr<() -> T_> {
        return stdgo._internal.sync.Sync.onceValue(__generic__0, _f);
    }
    /**
        OnceValues returns a function that invokes f only once and returns the values
        returned by f. The returned function may be called concurrently.
        
        If f panics, the returned function will panic with the same value on every call.
    **/
    static public function onceValues<T1, T2>(__generic__0:haxe.macro.Expr<T1>, __generic__1:haxe.macro.Expr<T2>, _f:haxe.macro.Expr<() -> { var _0 : T1; var _1 : T2; }>):haxe.macro.Expr<() -> { var _0 : T1; var _1 : T2; }> {
        return stdgo._internal.sync.Sync.onceValues(__generic__0, __generic__1, _f);
    }
}

package stdgo.sync.atomic_;
class Pointer__static_extension {
    macro static public function compareAndSwap<T_>(x:haxe.macro.Expr<Pointer_<T_>>, _generic__0:haxe.macro.Expr<T_>, old:haxe.macro.Expr<T_>, _new:haxe.macro.Expr<T_>):haxe.macro.Expr<Bool> {
        return stdgo._internal.sync.atomic_.Atomic_.Pointer__static_extension.compareAndSwap(x, _generic__0, old, _new);
    }
    macro static public function swap<T_>(x:haxe.macro.Expr<Pointer_<T_>>, _generic__0:haxe.macro.Expr<T_>, _new:haxe.macro.Expr<T_>):haxe.macro.Expr<T_> {
        return stdgo._internal.sync.atomic_.Atomic_.Pointer__static_extension.swap(x, _generic__0, _new);
    }
    macro static public function store<T_>(x:haxe.macro.Expr<Pointer_<T_>>, _generic__0:haxe.macro.Expr<T_>, val:haxe.macro.Expr<T_>):haxe.macro.Expr<Void> {
        return stdgo._internal.sync.atomic_.Atomic_.Pointer__static_extension.store(x, _generic__0, val);
    }
    macro static public function load<T_>(x:haxe.macro.Expr<Pointer_<T_>>, _generic__0:haxe.macro.Expr<T_>):haxe.macro.Expr<T_> {
        return stdgo._internal.sync.atomic_.Atomic_.Pointer__static_extension.load(x, _generic__0);
    }
}
class Atomic_ {

}

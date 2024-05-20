package stdgo.sync.atomic_;
class Pointer__static_extension {
    macro static public function compareAndSwap<T_>(_x:haxe.macro.Expr<Pointer_<T_>>, __generic__0:haxe.macro.Expr<T_>, _old:haxe.macro.Expr<T_>, _new:haxe.macro.Expr<T_>):haxe.macro.Expr<Bool> {
        return stdgo._internal.sync.atomic_.Atomic_.Pointer__static_extension.compareAndSwap(_x, __generic__0, _old, _new);
    }
    macro static public function swap<T_>(_x:haxe.macro.Expr<Pointer_<T_>>, __generic__0:haxe.macro.Expr<T_>, _new:haxe.macro.Expr<T_>):haxe.macro.Expr<T_> {
        return stdgo._internal.sync.atomic_.Atomic_.Pointer__static_extension.swap(_x, __generic__0, _new);
    }
    macro static public function store<T_>(_x:haxe.macro.Expr<Pointer_<T_>>, __generic__0:haxe.macro.Expr<T_>, _val:haxe.macro.Expr<T_>):haxe.macro.Expr<Void> {
        return stdgo._internal.sync.atomic_.Atomic_.Pointer__static_extension.store(_x, __generic__0, _val);
    }
    macro static public function load<T_>(_x:haxe.macro.Expr<Pointer_<T_>>, __generic__0:haxe.macro.Expr<T_>):haxe.macro.Expr<T_> {
        return stdgo._internal.sync.atomic_.Atomic_.Pointer__static_extension.load(_x, __generic__0);
    }
}
class Atomic_ {

}

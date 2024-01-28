package stdgo._internal.sync.atomic_;
class Pointer__static_extension {
    macro static public function compareAndSwap<T_>( _x:haxe.macro.Expr.ExprOf<stdgo.Ref<Pointer_<T_>>>, __generic__0:haxe.macro.Expr.ExprOf<T_>, _old:haxe.macro.Expr.ExprOf<stdgo.Ref<T_>>, _new:haxe.macro.Expr.ExprOf<stdgo.Ref<T_>>):haxe.macro.Expr.ExprOf<Bool> {
        final T_:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "sync.atomic_" + "_" + "compareAndSwap" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(T_) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Pointer_<$T_>>, __generic__0:$T_, _old:stdgo.Ref<$T_>, _new:stdgo.Ref<$T_>) {
                    var _new = stdgo.Go.refPointer(_new);
                    var _old = stdgo.Go.refPointer(_old);
                    @:recv var _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Pointer_<$T_>> = _x;
                    final b = stdgo.Go.toInterface(_old) == stdgo.Go.toInterface(_new);
                    if (b) _x._v = stdgo.Go.toInterface(_new);
                    return b;
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($_x, $__generic__0, $_old, $_new));
        };
    }
    macro static public function swap<T_>( _x:haxe.macro.Expr.ExprOf<stdgo.Ref<Pointer_<T_>>>, __generic__0:haxe.macro.Expr.ExprOf<T_>, _new:haxe.macro.Expr.ExprOf<stdgo.Ref<T_>>):haxe.macro.Expr.ExprOf<stdgo.Ref<T_>> {
        final T_:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "sync.atomic_" + "_" + "swap" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(T_) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Pointer_<$T_>>, __generic__0:$T_, _new:stdgo.Ref<$T_>) {
                    var _new = stdgo.Go.refPointer(_new);
                    @:recv var _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Pointer_<$T_>> = _x;
                    final old = @:privateAccess _x._v;
                    _x._v = stdgo.Go.toInterface(_new);
                    return stdgo.Go.toInterface(old);
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($_x, $__generic__0, $_new));
        };
    }
    macro static public function store<T_>( _x:haxe.macro.Expr.ExprOf<stdgo.Ref<Pointer_<T_>>>, __generic__0:haxe.macro.Expr.ExprOf<T_>, _val:haxe.macro.Expr.ExprOf<stdgo.Ref<T_>>):haxe.macro.Expr.ExprOf<Void> {
        final T_:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "sync.atomic_" + "_" + "store" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(T_) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Pointer_<$T_>>, __generic__0:$T_, _val:stdgo.Ref<$T_>) {
                    var _val = stdgo.Go.refPointer(_val);
                    @:recv var _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Pointer_<$T_>> = _x;
                    _x._v = stdgo.Go.toInterface(_val);
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($_x, $__generic__0, $_val));
        };
    }
    macro static public function load<T_>( _x:haxe.macro.Expr.ExprOf<stdgo.Ref<Pointer_<T_>>>, __generic__0:haxe.macro.Expr.ExprOf<T_>):haxe.macro.Expr.ExprOf<stdgo.Ref<T_>> {
        final T_:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "sync.atomic_" + "_" + "load" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(T_) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Pointer_<$T_>>, __generic__0:$T_) {
                    @:recv var _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Pointer_<$T_>> = _x;
                    return @:privateAccess _x._v.__toRef__();
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($_x, $__generic__0));
        };
    }
}

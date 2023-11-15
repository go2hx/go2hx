package stdgo.sync.atomic_;
class Pointer__static_extension {
    macro static public function compareAndSwap<T>( _x:haxe.macro.Expr.ExprOf<stdgo.StdGoTypes.Ref<Pointer_<T>>>, __generic__0:haxe.macro.Expr.ExprOf<T>, _old:haxe.macro.Expr.ExprOf<stdgo.StdGoTypes.Ref<T>>, _new:haxe.macro.Expr.ExprOf<stdgo.StdGoTypes.Ref<T>>):haxe.macro.Expr.ExprOf<Bool> {
        final T:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "sync.atomic_" + "_" + "compareAndSwap" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(T) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f( _x:stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Pointer_<$T>>, __generic__0:$T, _old:stdgo.StdGoTypes.Ref<$T>, _new:stdgo.StdGoTypes.Ref<$T>) {
                    var _new = stdgo.Go.refPointer(_new);
                    var _old = stdgo.Go.refPointer(_old);
                    @:recv var _x:stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Pointer_<$T>> = _x;
                    final b = stdgo.Go.toInterface(_old) == stdgo.Go.toInterface(_new);
                    if (b) _x._v = stdgo.Go.toInterface(_new);
                    return b;
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr";
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($_x, $__generic__0, $_old, $_new));
        };
    }
    macro static public function swap<T>( _x:haxe.macro.Expr.ExprOf<stdgo.StdGoTypes.Ref<Pointer_<T>>>, __generic__0:haxe.macro.Expr.ExprOf<T>, _new:haxe.macro.Expr.ExprOf<stdgo.StdGoTypes.Ref<T>>):haxe.macro.Expr.ExprOf<stdgo.StdGoTypes.Ref<T>> {
        final T:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "sync.atomic_" + "_" + "swap" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(T) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f( _x:stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Pointer_<$T>>, __generic__0:$T, _new:stdgo.StdGoTypes.Ref<$T>) {
                    var _new = stdgo.Go.refPointer(_new);
                    @:recv var _x:stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Pointer_<$T>> = _x;
                    final old = @:privateAccess _x._v;
                    _x._v = stdgo.Go.toInterface(_new);
                    return stdgo.Go.toInterface(old);
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr";
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($_x, $__generic__0, $_new));
        };
    }
    macro static public function store<T>( _x:haxe.macro.Expr.ExprOf<stdgo.StdGoTypes.Ref<Pointer_<T>>>, __generic__0:haxe.macro.Expr.ExprOf<T>, _val:haxe.macro.Expr.ExprOf<stdgo.StdGoTypes.Ref<T>>):haxe.macro.Expr.ExprOf<Void> {
        final T:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "sync.atomic_" + "_" + "store" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(T) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f( _x:stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Pointer_<$T>>, __generic__0:$T, _val:stdgo.StdGoTypes.Ref<$T>) {
                    var _val = stdgo.Go.refPointer(_val);
                    @:recv var _x:stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Pointer_<$T>> = _x;
                    _x._v = stdgo.Go.toInterface(_val);
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr";
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($_x, $__generic__0, $_val));
        };
    }
    macro static public function load<T>( _x:haxe.macro.Expr.ExprOf<stdgo.StdGoTypes.Ref<Pointer_<T>>>, __generic__0:haxe.macro.Expr.ExprOf<T>):haxe.macro.Expr.ExprOf<stdgo.StdGoTypes.Ref<T>> {
        final T:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "sync.atomic_" + "_" + "load" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(T) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f( _x:stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Pointer_<$T>>, __generic__0:$T) {
                    @:recv var _x:stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Pointer_<$T>> = _x;
                    return @:privateAccess _x._v.__toRef__();
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr";
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($_x, $__generic__0));
        };
    }
}

package stdgo._internal.encoding.gob;
macro function _growSlice<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _v:haxe.macro.Expr.ExprOf<stdgo._internal.reflect.Reflect.Value>, _ps:haxe.macro.Expr.ExprOf<stdgo.Ref<stdgo.Slice<E>>>, _length:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> {
        final E:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "encoding.gob" + "_" + "_growSlice" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(E) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$E, _v:stdgo._internal.reflect.Reflect.Value, _ps:stdgo.Ref<stdgo.Slice<$E>>, _length:stdgo.GoInt) {
                    var _zero:$E = stdgo.Go.defaultValue((cast (null) : $E));
                    var _s = (_ps : stdgo.Slice<$E>);
                    _s = (_s.__append__(_zero));
                    var _cp = (_s.capacity : stdgo.GoInt);
                    if ((_cp > _length : Bool)) {
                        _cp = _length;
                    };
                    _s = (_s.__slice__(0, _cp) : stdgo.Slice<$E>);
                    _v.set(stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(_s)).__copy__());
                    (_ps : stdgo.Slice<$E>).__setData__(_s);
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_v, $_ps, $_length));
        };
    }

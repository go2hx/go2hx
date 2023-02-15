package stdgo.sync.atomic;
class Pointer__static_extension {
    macro static public function compareAndSwap<T>( _x:haxe.macro.Expr.ExprOf<Ref<Pointer_<T>>>, _old:haxe.macro.Expr.ExprOf<Ref<T>>, _new:haxe.macro.Expr.ExprOf<Ref<T>>):haxe.macro.Expr.ExprOf<Bool> {
        final T:haxe.macro.Expr.ComplexType = switch {
                final t = haxe.macro.Context.typeof(_x);
                switch t {
                    case TInst(_, params), TType(_, params):
                        for (i in 0 ... params.length) {
                        params[i] = switch params[i] {
                            case TMono(_.get() => mono):
                                if (mono == null) {
                                throw "Param TMONO null: " + t;
                            } else {
                                mono;
                            };
                            default:
                                params[i];
                        };
                    };
                    default:
                        var _ = 0;
                };
                haxe.macro.Context.toComplexType(t);
            } {
            case TPath(p):
                switch p.params[0] {
                case TPType(t):
                    t;
                default:
                    throw "invalid param t";
            };
            default:
                throw "invalid e";
        };
        {
            return macro {
                function f( _x:Ref<Pointer_<$T>>, _old:Ref<$T>, _new:Ref<$T>) throw "sync.atomic.compareAndSwap is not yet implemented";
                f($_x, $_old, $_new);
            };
        };
    }
    macro static public function swap<T>( _x:haxe.macro.Expr.ExprOf<Ref<Pointer_<T>>>, _new:haxe.macro.Expr.ExprOf<Ref<T>>):haxe.macro.Expr.ExprOf<Ref<T>> {
        final T:haxe.macro.Expr.ComplexType = switch {
                final t = haxe.macro.Context.typeof(_x);
                switch t {
                    case TInst(_, params), TType(_, params):
                        for (i in 0 ... params.length) {
                        params[i] = switch params[i] {
                            case TMono(_.get() => mono):
                                if (mono == null) {
                                throw "Param TMONO null: " + t;
                            } else {
                                mono;
                            };
                            default:
                                params[i];
                        };
                    };
                    default:
                        var _ = 0;
                };
                haxe.macro.Context.toComplexType(t);
            } {
            case TPath(p):
                switch p.params[0] {
                case TPType(t):
                    t;
                default:
                    throw "invalid param t";
            };
            default:
                throw "invalid e";
        };
        {
            return macro {
                function f( _x:Ref<Pointer_<$T>>, _new:Ref<$T>) throw "sync.atomic.swap is not yet implemented";
                f($_x, $_new);
            };
        };
    }
    macro static public function store<T>( _x:haxe.macro.Expr.ExprOf<Ref<Pointer_<T>>>, _val:haxe.macro.Expr.ExprOf<Ref<T>>):haxe.macro.Expr.ExprOf<Void> {
        final T:haxe.macro.Expr.ComplexType = switch {
                final t = haxe.macro.Context.typeof(_x);
                switch t {
                    case TInst(_, params), TType(_, params):
                        for (i in 0 ... params.length) {
                        params[i] = switch params[i] {
                            case TMono(_.get() => mono):
                                if (mono == null) {
                                throw "Param TMONO null: " + t;
                            } else {
                                mono;
                            };
                            default:
                                params[i];
                        };
                    };
                    default:
                        var _ = 0;
                };
                haxe.macro.Context.toComplexType(t);
            } {
            case TPath(p):
                switch p.params[0] {
                case TPType(t):
                    t;
                default:
                    throw "invalid param t";
            };
            default:
                throw "invalid e";
        };
        {
            return macro {
                function f( _x:Ref<Pointer_<$T>>, _val:Ref<$T>) throw "sync.atomic.store is not yet implemented";
                f($_x, $_val);
            };
        };
    }
    macro static public function load<T>( _x:haxe.macro.Expr.ExprOf<Ref<Pointer_<T>>>):haxe.macro.Expr.ExprOf<Ref<T>> {
        final T:haxe.macro.Expr.ComplexType = switch {
                final t = haxe.macro.Context.typeof(_x);
                switch t {
                    case TInst(_, params), TType(_, params):
                        for (i in 0 ... params.length) {
                        params[i] = switch params[i] {
                            case TMono(_.get() => mono):
                                if (mono == null) {
                                throw "Param TMONO null: " + t;
                            } else {
                                mono;
                            };
                            default:
                                params[i];
                        };
                    };
                    default:
                        var _ = 0;
                };
                haxe.macro.Context.toComplexType(t);
            } {
            case TPath(p):
                switch p.params[0] {
                case TPType(t):
                    t;
                default:
                    throw "invalid param t";
            };
            default:
                throw "invalid e";
        };
        {
            return macro {
                function f( _x:Ref<Pointer_<$T>>) throw "sync.atomic.load is not yet implemented";
                f($_x);
            };
        };
    }
}

package stdgo._internal.go.types;
function default_(_t:stdgo._internal.go.types.Types_type_.Type_):stdgo._internal.go.types.Types_type_.Type_ {
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L497"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>)) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _1 : false };
            }, _t = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L498"
                {
                    final __value__ = (@:checkr _t ?? throw "null pointer dereference")._kind;
                    if (__value__ == ((19 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L500"
                        return stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((1 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
                    } else if (__value__ == ((20 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L502"
                        return stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((2 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
                    } else if (__value__ == ((21 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L504"
                        return stdgo._internal.go.types.Types__universerune._universeRune;
                    } else if (__value__ == ((22 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L506"
                        return stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((14 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
                    } else if (__value__ == ((23 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L508"
                        return stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((16 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
                    } else if (__value__ == ((24 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L510"
                        return stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((17 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L513"
        return _t;
    }

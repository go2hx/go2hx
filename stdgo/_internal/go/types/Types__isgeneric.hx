package stdgo._internal.go.types;
function _isGeneric(_t:stdgo._internal.go.types.Types_type_.Type_):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
        }, _named = __tmp__._0, __0 = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L130"
        return (((({
            final value = _named;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ({
            final value = (@:checkr _named ?? throw "null pointer dereference")._obj;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) : Bool) && ({
            final value = (@:checkr _named ?? throw "null pointer dereference")._inst;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool) && (_named.typeParams().len() > (0 : stdgo.GoInt) : Bool) : Bool);
    }

package stdgo._internal.go.types;
function _under(_t:stdgo._internal.go.types.Types_type_.Type_):stdgo._internal.go.types.Types_type_.Type_ {
        //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L14"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
            }, _t = __tmp__._0, __0 = __tmp__._1;
            if (({
                final value = _t;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L15"
                return _t._under();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L17"
        return _t.underlying();
    }

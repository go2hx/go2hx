package stdgo._internal.go.types;
function _match(_x:stdgo._internal.go.types.Types_type_.Type_, _y:stdgo._internal.go.types.Types_type_.Type_):stdgo._internal.go.types.Types_type_.Type_ {
        //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L96"
        if (stdgo._internal.go.types.Types_identical.identical(_x, _y)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L97"
            return _x;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L101"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>)) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : false };
            }, _x = __tmp__._0, __0 = __tmp__._1;
            if (({
                final value = _x;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L102"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>)) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : false };
                    }, _y = __tmp__._0, __1 = __tmp__._1;
                    if ((({
                        final value = _y;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    }) && stdgo._internal.go.types.Types_identical.identical((@:checkr _x ?? throw "null pointer dereference")._elem, (@:checkr _y ?? throw "null pointer dereference")._elem) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L105"
                        if ((@:checkr _x ?? throw "null pointer dereference")._dir == ((0 : stdgo._internal.go.types.Types_chandir.ChanDir))) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L107"
                            return stdgo.Go.asInterface(_y);
                        } else if ((@:checkr _y ?? throw "null pointer dereference")._dir == ((0 : stdgo._internal.go.types.Types_chandir.ChanDir))) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L109"
                            return stdgo.Go.asInterface(_x);
                        };
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/under.go#L115"
        return (null : stdgo._internal.go.types.Types_type_.Type_);
    }

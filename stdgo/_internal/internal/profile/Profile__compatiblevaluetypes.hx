package stdgo._internal.internal.profile;
function _compatibleValueTypes(_v1:stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>, _v2:stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/profile.go#L523"
        if ((({
            final value = _v1;
            (value == null || (value : Dynamic).__nil__);
        }) || ({
            final value = _v2;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/profile.go#L524"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/profile.go#L526"
        return (((@:checkr _v1 ?? throw "null pointer dereference").type == (@:checkr _v2 ?? throw "null pointer dereference").type) && ((@:checkr _v1 ?? throw "null pointer dereference").unit == (@:checkr _v2 ?? throw "null pointer dereference").unit) : Bool);
    }

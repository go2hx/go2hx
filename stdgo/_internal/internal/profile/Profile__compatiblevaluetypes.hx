package stdgo._internal.internal.profile;
function _compatibleValueTypes(_v1:stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>, _v2:stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>):Bool {
        if ((({
            final value = _v1;
            (value == null || (value : Dynamic).__nil__);
        }) || ({
            final value = _v2;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool)) {
            return true;
        };
        return (((@:checkr _v1 ?? throw "null pointer dereference").type == (@:checkr _v2 ?? throw "null pointer dereference").type) && ((@:checkr _v1 ?? throw "null pointer dereference").unit == (@:checkr _v2 ?? throw "null pointer dereference").unit) : Bool);
    }

package stdgo._internal.internal.profile;
function _equalValueType(_st1:stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>, _st2:stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>):Bool {
        return (((@:checkr _st1 ?? throw "null pointer dereference").type == (@:checkr _st2 ?? throw "null pointer dereference").type) && ((@:checkr _st1 ?? throw "null pointer dereference").unit == (@:checkr _st2 ?? throw "null pointer dereference").unit) : Bool);
    }

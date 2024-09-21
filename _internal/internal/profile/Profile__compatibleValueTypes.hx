package _internal.internal.profile;
function _compatibleValueTypes(_v1:stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>, _v2:stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>):Bool {
        if ((((_v1 == null) || (_v1 : Dynamic).__nil__) || ((_v2 == null) || (_v2 : Dynamic).__nil__) : Bool)) {
            return true;
        };
        return ((_v1.type == _v2.type) && (_v1.unit == _v2.unit) : Bool);
    }

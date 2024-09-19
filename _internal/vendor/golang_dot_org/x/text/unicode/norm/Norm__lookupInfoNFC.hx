package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _lookupInfoNFC(_b:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input, _i:stdgo.GoInt):_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties {
        var __tmp__ = _b._charinfoNFC(_i), _v:stdgo.GoUInt16 = __tmp__._0, _sz:stdgo.GoInt = __tmp__._1;
        return _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__compInfo._compInfo(_v, _sz)?.__copy__();
    }

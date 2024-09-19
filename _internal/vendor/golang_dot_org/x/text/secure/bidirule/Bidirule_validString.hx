package _internal.vendor.golang_dot_org.x.text.secure.bidirule;
function validString(_s:stdgo.GoString):Bool {
        var _t:_internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_Transformer.Transformer = ({} : _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_Transformer.Transformer);
        {
            var __tmp__ = _t._advanceString(_s?.__copy__()), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if ((!_ok || (_n < (_s.length) : Bool) : Bool)) {
                return false;
            };
        };
        return _t._isFinal();
    }

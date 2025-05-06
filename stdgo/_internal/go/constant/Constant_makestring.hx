package stdgo._internal.go.constant;
function makeString(_s:stdgo.GoString):stdgo._internal.go.constant.Constant_value.Value {
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L390"
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L391"
            return stdgo.Go.asInterface((stdgo.Go.setRef(stdgo._internal.go.constant.Constant__emptystring._emptyString) : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L393"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _s : _s?.__copy__() } : stdgo._internal.go.constant.Constant_t_stringval.T_stringVal)) : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>));
    }

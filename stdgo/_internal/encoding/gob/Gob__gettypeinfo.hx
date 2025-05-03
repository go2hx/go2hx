package stdgo._internal.encoding.gob;
function _getTypeInfo(_ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>):{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>; var _1 : stdgo.Error; } {
        var _rt = ((@:checkr _ut ?? throw "null pointer dereference")._base : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L716"
        if ((@:checkr _ut ?? throw "null pointer dereference")._externalEnc != ((0 : stdgo.GoInt))) {
            _rt = (@:checkr _ut ?? throw "null pointer dereference")._user;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L720"
        {
            var _info = stdgo._internal.encoding.gob.Gob__lookuptypeinfo._lookupTypeInfo(_rt);
            if (({
                final value = _info;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L721"
                return { _0 : _info, _1 : (null : stdgo.Error) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L723"
        return stdgo._internal.encoding.gob.Gob__buildtypeinfo._buildTypeInfo(_ut, _rt);
    }

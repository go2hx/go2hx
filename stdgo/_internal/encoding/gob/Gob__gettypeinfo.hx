package stdgo._internal.encoding.gob;
function _getTypeInfo(_ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>):{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>; var _1 : stdgo.Error; } {
        var _rt = ((@:checkr _ut ?? throw "null pointer dereference")._base : stdgo._internal.reflect.Reflect_type_.Type_);
        if ((@:checkr _ut ?? throw "null pointer dereference")._externalEnc != ((0 : stdgo.GoInt))) {
            _rt = (@:checkr _ut ?? throw "null pointer dereference")._user;
        };
        {
            var _info = stdgo._internal.encoding.gob.Gob__lookuptypeinfo._lookupTypeInfo(_rt);
            if ((_info != null && ((_info : Dynamic).__nil__ == null || !(_info : Dynamic).__nil__))) {
                return { _0 : _info, _1 : (null : stdgo.Error) };
            };
        };
        return stdgo._internal.encoding.gob.Gob__buildtypeinfo._buildTypeInfo(_ut, _rt);
    }

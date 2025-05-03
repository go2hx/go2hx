package stdgo._internal.encoding.gob;
function _bootstrapType(_name:stdgo.GoString, _e:stdgo.AnyInterface):stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId {
        var _rt = (stdgo._internal.reflect.Reflect_typeof.typeOf(_e).elem() : stdgo._internal.reflect.Reflect_type_.Type_);
        var __tmp__ = (stdgo._internal.encoding.gob.Gob__types._types != null && stdgo._internal.encoding.gob.Gob__types._types.__exists__(_rt) ? { _0 : stdgo._internal.encoding.gob.Gob__types._types[_rt], _1 : true } : { _0 : (null : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType), _1 : false }), __8:stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType = __tmp__._0, _present:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L631"
        if (_present) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L632"
            throw stdgo.Go.toInterface((((("bootstrap type already present: " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_rt.string() : stdgo.GoString)?.__copy__() : stdgo.GoString));
        };
        var _typ = (stdgo.Go.setRef(({ name : _name?.__copy__() } : stdgo._internal.encoding.gob.Gob_commontype.CommonType)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_commontype.CommonType>);
        stdgo._internal.encoding.gob.Gob__types._types[_rt] = stdgo.Go.asInterface(_typ);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L636"
        stdgo._internal.encoding.gob.Gob__settypeid._setTypeId(stdgo.Go.asInterface(_typ));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L637"
        return _typ._id();
    }

package stdgo._internal.internal.saferio;
function sliceCap(_v:stdgo.AnyInterface, _c:stdgo.GoUInt64):stdgo.GoInt {
        if ((((_c : stdgo.GoInt64) < (0i64 : stdgo.GoInt64) : Bool) || (_c != ((_c : stdgo.GoInt) : stdgo.GoUInt64)) : Bool)) {
            return (-1 : stdgo.GoInt);
        };
        var _typ = (stdgo._internal.reflect.Reflect_typeof.typeOf(_v) : stdgo._internal.reflect.Reflect_type_.Type_);
        if (_typ.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            throw stdgo.Go.toInterface(("SliceCap called with non-pointer type" : stdgo.GoString));
        };
        var _size = (_typ.elem().size() : stdgo.GoUInt64);
        if (((_size > (0i64 : stdgo.GoUInt64) : Bool) && (_c > ((-1i64 : stdgo.GoUInt64) / _size : stdgo.GoUInt64) : Bool) : Bool)) {
            return (-1 : stdgo.GoInt);
        };
        if (((_c * _size : stdgo.GoUInt64) > (10485760i64 : stdgo.GoUInt64) : Bool)) {
            _c = ((10485760i64 : stdgo.GoUInt64) / _size : stdgo.GoUInt64);
            if (_c == ((0i64 : stdgo.GoUInt64))) {
                _c = (1i64 : stdgo.GoUInt64);
            };
        };
        return (_c : stdgo.GoInt);
    }

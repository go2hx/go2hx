package stdgo._internal.internal.saferio;
function sliceCap(_v:stdgo.AnyInterface, _c:stdgo.GoUInt64):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io.go#L117"
        if ((((_c : stdgo.GoInt64) < (0i64 : stdgo.GoInt64) : Bool) || (_c != ((_c : stdgo.GoInt) : stdgo.GoUInt64)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io.go#L118"
            return (-1 : stdgo.GoInt);
        };
        var _typ = (stdgo._internal.reflect.Reflect_typeof.typeOf(_v) : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io.go#L121"
        if (_typ.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io.go#L122"
            throw stdgo.Go.toInterface(("SliceCap called with non-pointer type" : stdgo.GoString));
        };
        var _size = (_typ.elem().size() : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io.go#L125"
        if (((_size > (0i64 : stdgo.GoUInt64) : Bool) && (_c > ((-1i64 : stdgo.GoUInt64) / _size : stdgo.GoUInt64) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io.go#L126"
            return (-1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io.go#L128"
        if (((_c * _size : stdgo.GoUInt64) > (10485760i64 : stdgo.GoUInt64) : Bool)) {
            _c = ((10485760i64 : stdgo.GoUInt64) / _size : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io.go#L130"
            if (_c == ((0i64 : stdgo.GoUInt64))) {
                _c = (1i64 : stdgo.GoUInt64);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io.go#L134"
        return (_c : stdgo.GoInt);
    }

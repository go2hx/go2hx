package stdgo._internal.encoding.gob;
function _implementsInterface(_typ:stdgo._internal.reflect.Reflect_Type_.Type_, _gobEncDecType:stdgo._internal.reflect.Reflect_Type_.Type_):{ var _0 : Bool; var _1 : stdgo.GoInt8; } {
        var _success = false, _indir = (0 : stdgo.GoInt8);
        if ((_typ.string() : String) == (null.string() : String)) {
            return { _0 : _success, _1 : _indir };
        };
        var _rt = (_typ : stdgo._internal.reflect.Reflect_Type_.Type_);
        while (true) {
            if (_rt.implements_(_gobEncDecType)) {
                return { _0 : _success = true, _1 : _indir };
            };
            {
                var _p = (_rt : stdgo._internal.reflect.Reflect_Type_.Type_);
                if (_p.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _indir++;
                    if ((_indir > (100 : stdgo.GoInt8) : Bool)) {
                        return { _0 : _success = false, _1 : _indir = (0 : stdgo.GoInt8) };
                    };
                    _rt = _p.elem();
                    continue;
                };
            };
            break;
        };
        if (_typ.kind() != ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            if (stdgo._internal.reflect.Reflect_pointerTo.pointerTo(_typ).implements_(_gobEncDecType)) {
                return { _0 : _success = true, _1 : _indir = (-1 : stdgo.GoInt8) };
            };
        };
        return { _0 : _success = false, _1 : _indir = (0 : stdgo.GoInt8) };
    }

package stdgo._internal.encoding.gob;
function _implementsInterface(_typ:stdgo._internal.reflect.Reflect_type_.Type_, _gobEncDecType:stdgo._internal.reflect.Reflect_type_.Type_):{ var _0 : Bool; var _1 : stdgo.GoInt8; } {
        var _success = false, _indir = (0 : stdgo.GoInt8);
        if ((_typ.string() : String) == (null.string() : String)) {
            return { _0 : _success, _1 : _indir };
        };
        var _rt = (_typ : stdgo._internal.reflect.Reflect_type_.Type_);
        while (true) {
            if (_rt.implements_(_gobEncDecType)) {
                return {
                    final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoInt8; } = { _0 : true, _1 : _indir };
                    _success = __tmp__._0;
                    _indir = __tmp__._1;
                    __tmp__;
                };
            };
            {
                var _p = (_rt : stdgo._internal.reflect.Reflect_type_.Type_);
                if (_p.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    _indir++;
                    if ((_indir > (100 : stdgo.GoInt8) : Bool)) {
                        return {
                            final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoInt8; } = { _0 : false, _1 : (0 : stdgo.GoInt8) };
                            _success = __tmp__._0;
                            _indir = __tmp__._1;
                            __tmp__;
                        };
                    };
                    _rt = _p.elem();
                    continue;
                };
            };
            break;
        };
        if (_typ.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            if (stdgo._internal.reflect.Reflect_pointerto.pointerTo(_typ).implements_(_gobEncDecType)) {
                return {
                    final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoInt8; } = { _0 : true, _1 : (-1 : stdgo.GoInt8) };
                    _success = __tmp__._0;
                    _indir = __tmp__._1;
                    __tmp__;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoInt8; } = { _0 : false, _1 : (0 : stdgo.GoInt8) };
            _success = __tmp__._0;
            _indir = __tmp__._1;
            __tmp__;
        };
    }

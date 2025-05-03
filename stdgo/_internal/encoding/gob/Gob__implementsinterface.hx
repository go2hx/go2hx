package stdgo._internal.encoding.gob;
function _implementsInterface(_typ:stdgo._internal.reflect.Reflect_type_.Type_, _gobEncDecType:stdgo._internal.reflect.Reflect_type_.Type_):{ var _0 : Bool; var _1 : stdgo.GoInt8; } {
        var _success = false, _indir = (0 : stdgo.GoInt8);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L121"
        if ((_typ.string() : String) == (null.string() : String)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L122"
            return { _0 : _success, _1 : _indir };
        };
        var _rt = (_typ : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L127"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L128"
            if (_rt.implements_(_gobEncDecType)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L129"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoInt8; } = { _0 : true, _1 : _indir };
                    _success = __tmp__._0;
                    _indir = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L131"
            {
                var _p = (_rt : stdgo._internal.reflect.Reflect_type_.Type_);
                if (_p.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L132"
                    _indir++;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L133"
                    if ((_indir > (100 : stdgo.GoInt8) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L134"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoInt8; } = { _0 : false, _1 : (0 : stdgo.GoInt8) };
                            _success = __tmp__._0;
                            _indir = __tmp__._1;
                            __tmp__;
                        };
                    };
                    _rt = _p.elem();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L137"
                    continue;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L139"
            break;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L142"
        if (_typ.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L144"
            if (stdgo._internal.reflect.Reflect_pointerto.pointerTo(_typ).implements_(_gobEncDecType)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L145"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoInt8; } = { _0 : true, _1 : (-1 : stdgo.GoInt8) };
                    _success = __tmp__._0;
                    _indir = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L148"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoInt8; } = { _0 : false, _1 : (0 : stdgo.GoInt8) };
            _success = __tmp__._0;
            _indir = __tmp__._1;
            __tmp__;
        };
    }

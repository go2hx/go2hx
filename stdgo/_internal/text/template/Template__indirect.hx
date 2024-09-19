package stdgo._internal.text.template;
function _indirect(_v:stdgo._internal.reflect.Reflect_Value.Value):{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : Bool; } {
        var _rv = ({} : stdgo._internal.reflect.Reflect_Value.Value), _isNil = false;
        stdgo.Go.cfor(((_v.kind() == (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || (_v.kind() == (20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool), _v = _v.elem()?.__copy__(), {
            if (_v.isNil()) {
                return { _0 : _v?.__copy__(), _1 : true };
            };
        });
        return { _0 : _v?.__copy__(), _1 : false };
    }

package stdgo._internal.text.template;
function _indirect(_v:stdgo._internal.reflect.Reflect_value.Value):{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : Bool; } {
        var _rv = ({} : stdgo._internal.reflect.Reflect_value.Value), _isNil = false;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L1010"
        while (((_v.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || (_v.kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L1011"
            if (_v.isNil()) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L1012"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : Bool; } = { _0 : _v.__copy__(), _1 : true };
                    _rv = __tmp__._0;
                    _isNil = __tmp__._1;
                    __tmp__;
                };
            };
            _v = _v.elem()?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L1015"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : Bool; } = { _0 : _v?.__copy__(), _1 : false };
            _rv = __tmp__._0;
            _isNil = __tmp__._1;
            __tmp__;
        };
    }

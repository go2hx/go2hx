package stdgo._internal.go.constant;
function _match(_x:stdgo._internal.go.constant.Constant_value.Value, _y:stdgo._internal.go.constant.Constant_value.Value):{ var _0 : stdgo._internal.go.constant.Constant_value.Value; var _1 : stdgo._internal.go.constant.Constant_value.Value; } {
        var _0 = (null : stdgo._internal.go.constant.Constant_value.Value), _1 = (null : stdgo._internal.go.constant.Constant_value.Value);
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1048"
        {
            var __0 = (stdgo._internal.go.constant.Constant__ord._ord(_x) : stdgo.GoInt), __1 = (stdgo._internal.go.constant.Constant__ord._ord(_y) : stdgo.GoInt);
var _oy = __1, _ox = __0;
            if ((_ox < _oy : Bool)) {
                {
                    var __tmp__ = stdgo._internal.go.constant.Constant__match0._match0(_x, _y);
                    _x = @:tmpset0 __tmp__._0;
                    _y = @:tmpset0 __tmp__._1;
                };
            } else if ((_ox > _oy : Bool)) {
                {
                    var __tmp__ = stdgo._internal.go.constant.Constant__match0._match0(_y, _x);
                    _y = @:tmpset0 __tmp__._0;
                    _x = @:tmpset0 __tmp__._1;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1054"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.go.constant.Constant_value.Value; var _1 : stdgo._internal.go.constant.Constant_value.Value; } = { _0 : _x, _1 : _y };
            _0 = __tmp__._0;
            _1 = __tmp__._1;
            __tmp__;
        };
    }

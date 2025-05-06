package stdgo._internal.go.constant;
function _is32bit(_x:stdgo.GoInt64):Bool {
        {};
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L945"
        return (((-2147483648i64 : stdgo.GoInt64) <= _x : Bool) && (_x <= (2147483647i64 : stdgo.GoInt64) : Bool) : Bool);
    }

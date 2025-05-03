package stdgo._internal.index.suffixarray;
function _setBits(_bits:stdgo.GoInt):() -> Void {
        var _cleanup = null;
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L531"
        if (_bits == ((32 : stdgo.GoInt))) {
            stdgo._internal.index.suffixarray.Suffixarray__maxdata32._maxData32 = (2147483647 : stdgo.GoInt);
        } else {
            stdgo._internal.index.suffixarray.Suffixarray__maxdata32._maxData32 = (-1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L536"
        return _cleanup = function():Void {
            stdgo._internal.index.suffixarray.Suffixarray__maxdata32._maxData32 = (2147483647 : stdgo.GoInt);
        };
    }

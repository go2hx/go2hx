package stdgo._internal.index.suffixarray;
function _setBits(_bits:stdgo.GoInt):() -> Void {
        var _cleanup = null;
        if (_bits == ((32 : stdgo.GoInt))) {
            stdgo._internal.index.suffixarray.Suffixarray__maxdata32._maxData32 = (2147483647 : stdgo.GoInt);
        } else {
            stdgo._internal.index.suffixarray.Suffixarray__maxdata32._maxData32 = (-1 : stdgo.GoInt);
        };
        return _cleanup = function():Void {
            stdgo._internal.index.suffixarray.Suffixarray__maxdata32._maxData32 = (2147483647 : stdgo.GoInt);
        };
    }

package stdgo._internal.encoding.json;
function benchmarkNumberIsValid(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _s = ("-61657.61667E+61673" : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _b.n : Bool)) {
                stdgo._internal.encoding.json.Json__isValidNumber._isValidNumber(_s.__copy__());
                _i++;
            };
        };
    }

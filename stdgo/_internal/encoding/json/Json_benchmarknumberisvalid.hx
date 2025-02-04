package stdgo._internal.encoding.json;
function benchmarkNumberIsValid(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _s = (("-61657.61667E+61673" : stdgo.GoString) : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                stdgo._internal.encoding.json.Json__isvalidnumber._isValidNumber(_s.__copy__());
                _i++;
            };
        };
    }

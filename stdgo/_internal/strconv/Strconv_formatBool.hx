package stdgo._internal.strconv;
function formatBool(_b:Bool):stdgo.GoString {
        if (_b) {
            return ("true" : stdgo.GoString);
        };
        return ("false" : stdgo.GoString);
    }

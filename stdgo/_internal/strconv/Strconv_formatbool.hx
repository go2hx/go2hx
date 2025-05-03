package stdgo._internal.strconv;
function formatBool(_b:Bool):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/strconv/atob.go#L22"
        if (_b) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/atob.go#L23"
            return ("true" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/atob.go#L25"
        return ("false" : stdgo.GoString);
    }

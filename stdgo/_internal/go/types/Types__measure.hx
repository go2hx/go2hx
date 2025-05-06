package stdgo._internal.go.types;
function _measure(_x:stdgo.GoInt, _unit:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/go/types/assignments.go#L310"
        if (_x != ((1 : stdgo.GoInt))) {
            _unit = (_unit + (("s" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/assignments.go#L313"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_unit))?.__copy__();
    }

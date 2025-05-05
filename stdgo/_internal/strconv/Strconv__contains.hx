package stdgo._internal.strconv;
function _contains(_s:stdgo.GoString, _c:stdgo.GoUInt8):Bool {
        //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L20"
        return stdgo._internal.strconv.Strconv__index._index(_s?.__copy__(), _c) != ((-1 : stdgo.GoInt));
    }

package stdgo._internal.strings;
function trimLeftFunc(_s:stdgo.GoString, _f:stdgo.GoInt32 -> Bool):stdgo.GoString {
        var _i = (stdgo._internal.strings.Strings__indexfunc._indexFunc(_s?.__copy__(), _f, false) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L803"
        if (_i == ((-1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L804"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L806"
        return (_s.__slice__(_i) : stdgo.GoString)?.__copy__();
    }

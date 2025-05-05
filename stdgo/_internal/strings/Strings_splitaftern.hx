package stdgo._internal.strings;
function splitAfterN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L297"
        return stdgo._internal.strings.Strings__gensplit._genSplit(_s?.__copy__(), _sep?.__copy__(), (_sep.length), _n);
    }

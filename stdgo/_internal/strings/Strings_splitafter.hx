package stdgo._internal.strings;
function splitAfter(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L325"
        return stdgo._internal.strings.Strings__gensplit._genSplit(_s?.__copy__(), _sep?.__copy__(), (_sep.length), (-1 : stdgo.GoInt));
    }

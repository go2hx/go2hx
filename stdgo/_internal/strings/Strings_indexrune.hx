package stdgo._internal.strings;
function indexRune(_s:stdgo.GoString, _r:stdgo.GoInt32):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L126"
        if ((((0 : stdgo.GoInt32) <= _r : Bool) && (_r < (128 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L128"
            return stdgo._internal.strings.Strings_indexbyte.indexByte(_s?.__copy__(), (_r : stdgo.GoUInt8));
        } else if (_r == ((65533 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L130"
            for (_i => _r in _s) {
                //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L131"
                if (_r == ((65533 : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L132"
                    return _i;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L135"
            return (-1 : stdgo.GoInt);
        } else if (!stdgo._internal.unicode.utf8.Utf8_validrune.validRune(_r)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L137"
            return (-1 : stdgo.GoInt);
        } else {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L139"
            return stdgo._internal.strings.Strings_index.index(_s?.__copy__(), (_r : stdgo.GoString)?.__copy__());
        };
    }

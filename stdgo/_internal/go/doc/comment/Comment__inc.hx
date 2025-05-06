package stdgo._internal.go.doc.comment;
function _inc(_s:stdgo.GoString):stdgo.GoString {
        var _b = (_s : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L98"
        {
            var _i = ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L99"
                if ((_b[(_i : stdgo.GoInt)] < (57 : stdgo.GoUInt8) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L100"
                    _b[(_i : stdgo.GoInt)]++;
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L101"
                    return (_b : stdgo.GoString).__copy__();
                };
_b[(_i : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
                _i--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/html.go#L105"
        return (("1" : stdgo.GoString) + (_b : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }

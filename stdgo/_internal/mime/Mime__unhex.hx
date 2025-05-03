package stdgo._internal.mime;
function _unhex(_c:stdgo.GoUInt8):stdgo.GoUInt8 {
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L401"
        if ((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L403"
            return (_c - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
        } else if ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (102 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L405"
            return ((_c - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
        } else if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (70 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L407"
            return ((_c - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L409"
        return (0 : stdgo.GoUInt8);
    }

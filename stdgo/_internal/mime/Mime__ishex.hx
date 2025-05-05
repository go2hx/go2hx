package stdgo._internal.mime;
function _ishex(_c:stdgo.GoUInt8):Bool {
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L389"
        if ((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L391"
            return true;
        } else if ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (102 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L393"
            return true;
        } else if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (70 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L395"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L397"
        return false;
    }

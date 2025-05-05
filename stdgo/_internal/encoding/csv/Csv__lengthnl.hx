package stdgo._internal.encoding.csv;
function _lengthNL(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L284"
        if ((((_b.length) > (0 : stdgo.GoInt) : Bool) && (_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L285"
            return (1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L287"
        return (0 : stdgo.GoInt);
    }

package stdgo._internal.mime.multipart;
function _skipLWSPChar(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L484"
        while ((((_b.length) > (0 : stdgo.GoInt) : Bool) && (((_b[(0 : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) || (_b[(0 : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            _b = (_b.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L487"
        return _b;
    }

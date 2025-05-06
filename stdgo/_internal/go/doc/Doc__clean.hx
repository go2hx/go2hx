package stdgo._internal.go.doc;
function _clean(_s:stdgo.GoString):stdgo.GoString {
        var _b:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _p = ((32 : stdgo.GoUInt8) : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L499"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _q = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L501"
                if (((_q == (13 : stdgo.GoUInt8)) || (_q == (9 : stdgo.GoUInt8)) : Bool)) {
                    _q = (32 : stdgo.GoUInt8);
                };
//"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L504"
                if (((_q != (32 : stdgo.GoUInt8)) || (_p != (32 : stdgo.GoUInt8)) : Bool)) {
                    _b = (_b.__append__(_q) : stdgo.Slice<stdgo.GoUInt8>);
                    _p = _q;
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L510"
        {
            var _n = (_b.length : stdgo.GoInt);
            if (((_n > (0 : stdgo.GoInt) : Bool) && (_p == (32 : stdgo.GoUInt8)) : Bool)) {
                _b = (_b.__slice__((0 : stdgo.GoInt), (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L513"
        return (_b : stdgo.GoString)?.__copy__();
    }

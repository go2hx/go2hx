package stdgo._internal.encoding.ascii85;
function _strip85(_s:stdgo.GoString):stdgo.GoString {
        var _t = (new stdgo.Slice<stdgo.GoUInt8>((_s.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _w = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L57"
        {
            var _r = (0 : stdgo.GoInt);
            while ((_r < (_s.length) : Bool)) {
                var _c = (_s[(_r : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L59"
                if ((_c > (32 : stdgo.GoUInt8) : Bool)) {
                    _t[(_w : stdgo.GoInt)] = _c;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L61"
                    _w++;
                };
                _r++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L64"
        return ((_t.__slice__((0 : stdgo.GoInt), _w) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }

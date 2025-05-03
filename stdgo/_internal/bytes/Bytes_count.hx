package stdgo._internal.bytes;
function count(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L57"
        if ((_sep.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L58"
            return (stdgo._internal.unicode.utf8.Utf8_runecount.runeCount(_s) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L60"
        if ((_sep.length) == ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L61"
            return stdgo._internal.internal.bytealg.Bytealg_count.count(_s, _sep[(0 : stdgo.GoInt)]);
        };
        var _n = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L64"
        while (true) {
            var _i = (stdgo._internal.bytes.Bytes_index.index(_s, _sep) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L66"
            if (_i == ((-1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L67"
                return _n;
            };
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L69"
            _n++;
            _s = (_s.__slice__((_i + (_sep.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
    }

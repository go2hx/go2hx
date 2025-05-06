package stdgo._internal.go.scanner;
var _source : stdgo.Slice<stdgo.GoUInt8> = ({
        var a = function():stdgo.Slice<stdgo.GoUInt8> {
            var _src:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L190"
            for (__0 => _t in stdgo._internal.go.scanner.Scanner__tokens._tokens) {
                _src = (_src.__append__(...(_t._lit : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                _src = (_src.__append__(...((("  \t  \n\n\n" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L194"
            return _src;
        };
        a();
    });

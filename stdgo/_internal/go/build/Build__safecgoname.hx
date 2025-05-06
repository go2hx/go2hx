package stdgo._internal.go.build;
function _safeCgoName(_s:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1815"
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1816"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1818"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1819"
                {
                    var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (((_c < (128 : stdgo.GoUInt8) : Bool) && (stdgo._internal.strings.Strings_indexbyte.indexByte(("+-.,/0123456789=ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz:$@%! ~^" : stdgo.GoString), _c) < (0 : stdgo.GoInt) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1820"
                        return false;
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1823"
        return true;
    }

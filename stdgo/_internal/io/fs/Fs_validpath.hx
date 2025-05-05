package stdgo._internal.io.fs;
function validPath(_name:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/io/fs/fs.go#L48"
        if (!stdgo._internal.unicode.utf8.Utf8_validstring.validString(_name?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/io/fs/fs.go#L49"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/io/fs/fs.go#L52"
        if (_name == (("." : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/io/fs/fs.go#L54"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/io/fs/fs.go#L58"
        while (true) {
            var _i = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/io/fs/fs.go#L60"
            while (((_i < (_name.length) : Bool) && (_name[(_i : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/io/fs/fs.go#L61"
                _i++;
            };
            var _elem = ((_name.__slice__(0, _i) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/io/fs/fs.go#L64"
            if (((_elem == ((stdgo.Go.str() : stdgo.GoString)) || _elem == (("." : stdgo.GoString)) : Bool) || (_elem == (".." : stdgo.GoString)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/io/fs/fs.go#L65"
                return false;
            };
            //"file:///home/runner/.go/go1.21.3/src/io/fs/fs.go#L67"
            if (_i == ((_name.length))) {
                //"file:///home/runner/.go/go1.21.3/src/io/fs/fs.go#L68"
                return true;
            };
            _name = (_name.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
    }

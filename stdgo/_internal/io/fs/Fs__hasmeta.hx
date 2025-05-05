package stdgo._internal.io.fs;
function _hasMeta(_path:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/io/fs/glob.go#L122"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_path.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/io/fs/glob.go#L123"
                {
                    final __value__ = _path[(_i : stdgo.GoInt)];
                    if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((91 : stdgo.GoUInt8)) || __value__ == ((92 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/io/fs/glob.go#L125"
                        return true;
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/io/fs/glob.go#L128"
        return false;
    }

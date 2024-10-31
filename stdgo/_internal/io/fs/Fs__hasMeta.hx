package stdgo._internal.io.fs;
function _hasMeta(_path:stdgo.GoString):Bool {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_path.length) : Bool)) {
                {
                    final __value__ = _path[(_i : stdgo.GoInt)];
                    if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((91 : stdgo.GoUInt8)) || __value__ == ((92 : stdgo.GoUInt8))) {
                        return true;
                    };
                };
                _i++;
            };
        };
        return false;
    }

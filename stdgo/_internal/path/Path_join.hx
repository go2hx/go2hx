package stdgo._internal.path;
function join(_elem:haxe.Rest<stdgo.GoString>):stdgo.GoString {
        var _elem = new stdgo.Slice<stdgo.GoString>(_elem.length, 0, ..._elem);
        var _size = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/path/path.go#L164"
        for (__0 => _e in _elem) {
            _size = (_size + ((_e.length)) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/path/path.go#L167"
        if (_size == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/path/path.go#L168"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_size + (_elem.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/path/path.go#L171"
        for (__1 => _e in _elem) {
            //"file:///home/runner/.go/go1.21.3/src/path/path.go#L172"
            if ((((_buf.length) > (0 : stdgo.GoInt) : Bool) || (_e != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/path/path.go#L173"
                if (((_buf.length) > (0 : stdgo.GoInt) : Bool)) {
                    _buf = (_buf.__append__((47 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                };
                _buf = (_buf.__append__(...(_e : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/path/path.go#L179"
        return stdgo._internal.path.Path_clean.clean((_buf : stdgo.GoString)?.__copy__())?.__copy__();
    }

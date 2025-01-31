package stdgo._internal.path;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
function join(_elem:haxe.Rest<stdgo.GoString>):stdgo.GoString {
        var _elem = new stdgo.Slice<stdgo.GoString>(_elem.length, 0, ..._elem);
        var _size = (0 : stdgo.GoInt);
        for (__0 => _e in _elem) {
            _size = (_size + ((_e.length)) : stdgo.GoInt);
        };
        if (_size == ((0 : stdgo.GoInt))) {
            return stdgo.Go.str()?.__copy__();
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_size + (_elem.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (__1 => _e in _elem) {
            if ((((_buf.length) > (0 : stdgo.GoInt) : Bool) || (_e != stdgo.Go.str()) : Bool)) {
                if (((_buf.length) > (0 : stdgo.GoInt) : Bool)) {
                    _buf = (_buf.__append__((47 : stdgo.GoUInt8)));
                };
                _buf = (_buf.__append__(...(_e : Array<stdgo.GoUInt8>)));
            };
        };
        return stdgo._internal.path.Path_clean.clean((_buf : stdgo.GoString)?.__copy__())?.__copy__();
    }

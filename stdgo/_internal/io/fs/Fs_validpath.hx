package stdgo._internal.io.fs;
function validPath(_name:stdgo.GoString):Bool {
        if (!stdgo._internal.unicode.utf8.Utf8_validstring.validString(_name?.__copy__())) {
            return false;
        };
        if (_name == (("." : stdgo.GoString))) {
            return true;
        };
        while (true) {
            var _i = (0 : stdgo.GoInt);
            while (((_i < (_name.length) : Bool) && (_name[(_i : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                _i++;
            };
            var _elem = ((_name.__slice__(0, _i) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (((_elem == ((stdgo.Go.str() : stdgo.GoString)) || _elem == (("." : stdgo.GoString)) : Bool) || (_elem == (".." : stdgo.GoString)) : Bool)) {
                return false;
            };
            if (_i == ((_name.length))) {
                return true;
            };
            _name = (_name.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
    }

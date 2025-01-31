package stdgo._internal.embed;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
function _trimSlash(_name:stdgo.GoString):stdgo.GoString {
        if ((((_name.length) > (0 : stdgo.GoInt) : Bool) && (_name[((_name.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) {
            return (_name.__slice__(0, ((_name.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return _name?.__copy__();
    }

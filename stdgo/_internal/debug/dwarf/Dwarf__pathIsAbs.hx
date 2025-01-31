package stdgo._internal.debug.dwarf;
import stdgo._internal.errors.Errors;
import stdgo._internal.path.Path;
import stdgo._internal.strings.Strings;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
function _pathIsAbs(_path:stdgo.GoString):Bool {
        {
            var __tmp__ = stdgo._internal.debug.dwarf.Dwarf__splitDrive._splitDrive(_path?.__copy__());
            _path = @:tmpset0 __tmp__._1?.__copy__();
        };
        return (((_path.length) > (0 : stdgo.GoInt) : Bool) && (((_path[(0 : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) || (_path[(0 : stdgo.GoInt)] == (92 : stdgo.GoUInt8)) : Bool)) : Bool);
    }

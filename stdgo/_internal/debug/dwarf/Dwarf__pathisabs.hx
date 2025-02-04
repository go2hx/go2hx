package stdgo._internal.debug.dwarf;
function _pathIsAbs(_path:stdgo.GoString):Bool {
        {
            var __tmp__ = stdgo._internal.debug.dwarf.Dwarf__splitdrive._splitDrive(_path?.__copy__());
            _path = @:tmpset0 __tmp__._1?.__copy__();
        };
        return (((_path.length) > (0 : stdgo.GoInt) : Bool) && (((_path[(0 : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) || (_path[(0 : stdgo.GoInt)] == (92 : stdgo.GoUInt8)) : Bool)) : Bool);
    }

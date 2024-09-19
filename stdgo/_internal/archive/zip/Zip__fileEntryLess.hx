package stdgo._internal.archive.zip;
function _fileEntryLess(_x:stdgo.GoString, _y:stdgo.GoString):Bool {
        var __tmp__ = stdgo._internal.archive.zip.Zip__split._split(_x?.__copy__()), _xdir:stdgo.GoString = __tmp__._0, _xelem:stdgo.GoString = __tmp__._1, __0:Bool = __tmp__._2;
        var __tmp__ = stdgo._internal.archive.zip.Zip__split._split(_y?.__copy__()), _ydir:stdgo.GoString = __tmp__._0, _yelem:stdgo.GoString = __tmp__._1, __1:Bool = __tmp__._2;
        return ((_xdir < _ydir : Bool) || (_xdir == (_ydir) && (_xelem < _yelem : Bool) : Bool) : Bool);
    }

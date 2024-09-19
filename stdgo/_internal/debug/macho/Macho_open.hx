package stdgo._internal.debug.macho;
function open(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.debug.macho.Macho_File.File>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os_open.open(_name?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = stdgo._internal.debug.macho.Macho_newFile.newFile(stdgo.Go.asInterface(_f)), _ff:stdgo.Ref<stdgo._internal.debug.macho.Macho_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _f.close();
            return { _0 : null, _1 : _err };
        };
        _ff._closer = stdgo.Go.asInterface(_f);
        return { _0 : _ff, _1 : (null : stdgo.Error) };
    }

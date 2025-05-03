package stdgo._internal.debug.macho;
function openFat(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.debug.macho.Macho_fatfile.FatFile>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os_open.open(_name?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/debug/macho/fat.go#L134"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/macho/fat.go#L135"
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = stdgo._internal.debug.macho.Macho_newfatfile.newFatFile(stdgo.Go.asInterface(_f)), _ff:stdgo.Ref<stdgo._internal.debug.macho.Macho_fatfile.FatFile> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/debug/macho/fat.go#L138"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/macho/fat.go#L139"
            _f.close();
            //"file:///home/runner/.go/go1.21.3/src/debug/macho/fat.go#L140"
            return { _0 : null, _1 : _err };
        };
        (@:checkr _ff ?? throw "null pointer dereference")._closer = stdgo.Go.asInterface(_f);
        //"file:///home/runner/.go/go1.21.3/src/debug/macho/fat.go#L143"
        return { _0 : _ff, _1 : (null : stdgo.Error) };
    }

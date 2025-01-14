package stdgo._internal.os;
function create(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_File.File>; var _1 : stdgo.Error; } {
        return stdgo._internal.os.Os_openFile.openFile(_name, 0, 0);
    }

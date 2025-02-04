package stdgo._internal.os;
function openFile(_name:stdgo.GoString, _flag:stdgo.GoInt, _perm:stdgo._internal.io.fs.Fs_filemode.FileMode):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } {
        return #if (sys || hxnodejs) {
            if (!sys.FileSystem.exists(_name)) {
                sys.io.File.saveBytes(_name, haxe.io.Bytes.alloc(0));
            };
            try {
                { _0 : { _file : { _name : _name }, _input : sys.io.File.read(_name), _output : sys.io.File.write(_name) }, _1 : null };
            } catch(e) {
                { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(e.details()) };
            };
        } #else null #end;
    }

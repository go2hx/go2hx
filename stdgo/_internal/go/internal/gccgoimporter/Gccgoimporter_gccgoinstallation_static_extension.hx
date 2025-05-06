package stdgo._internal.go.internal.gccgoimporter;
@:keep @:allow(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.GccgoInstallation_asInterface) class GccgoInstallation_static_extension {
    @:keep
    @:tdfield
    static public function getImporter( _inst:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_gccgoinstallation.GccgoInstallation>, _incpaths:stdgo.Slice<stdgo.GoString>, _initmap:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData>):stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_importer.Importer {
        @:recv var _inst:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_gccgoinstallation.GccgoInstallation> = _inst;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation.go#L96"
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_getimporter.getImporter(((_incpaths.__append__(...(_inst.searchPaths() : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>).__append__(("." : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), _initmap);
    }
    @:keep
    @:tdfield
    static public function searchPaths( _inst:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_gccgoinstallation.GccgoInstallation>):stdgo.Slice<stdgo.GoString> {
        @:recv var _inst:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_gccgoinstallation.GccgoInstallation> = _inst;
        var _paths = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation.go#L72"
        for (__0 => _lpath in (@:checkr _inst ?? throw "null pointer dereference").libPaths) {
            var _spath = (stdgo._internal.path.filepath.Filepath_join.join(_lpath?.__copy__(), ("go" : stdgo.GoString), (@:checkr _inst ?? throw "null pointer dereference").gccVersion?.__copy__())?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.os.Os_stat.stat(_spath?.__copy__()), _fi:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation.go#L75"
            if (((_err != null) || !_fi.isDir() : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation.go#L76"
                continue;
            };
            _paths = (_paths.__append__(_spath?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            _spath = stdgo._internal.path.filepath.Filepath_join.join(_spath?.__copy__(), (@:checkr _inst ?? throw "null pointer dereference").targetTriple?.__copy__())?.__copy__();
            {
                var __tmp__ = stdgo._internal.os.Os_stat.stat(_spath?.__copy__());
                _fi = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation.go#L82"
            if (((_err != null) || !_fi.isDir() : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation.go#L83"
                continue;
            };
            _paths = (_paths.__append__(_spath?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        _paths = (_paths.__append__(...((@:checkr _inst ?? throw "null pointer dereference").libPaths : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation.go#L90"
        return _paths;
    }
    @:keep
    @:tdfield
    static public function initFromDriver( _inst:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_gccgoinstallation.GccgoInstallation>, _gccgoPath:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):stdgo.Error {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        @:recv var _inst:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_gccgoinstallation.GccgoInstallation> = _inst;
        var _err = (null : stdgo.Error);
        var _argv = ((new stdgo.Slice<stdgo.GoString>(5, 5, ...[("-###" : stdgo.GoString), ("-S" : stdgo.GoString), ("-x" : stdgo.GoString), ("go" : stdgo.GoString), ("-" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...(_args : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
        var _cmd = stdgo._internal.os.exec.Exec_command.command(_gccgoPath?.__copy__(), ...(_argv : Array<stdgo.GoString>));
        var __tmp__ = _cmd.stderrPipe(), _stderr:stdgo._internal.io.Io_readcloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation.go#L34"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation.go#L35"
            return _err;
        };
        _err = _cmd.start();
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation.go#L39"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation.go#L40"
            return _err;
        };
        var _scanner = stdgo._internal.bufio.Bufio_newscanner.newScanner(_stderr);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation.go#L44"
        while (_scanner.scan()) {
            var _line = (_scanner.text()?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation.go#L46"
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_line?.__copy__(), ("Target: " : stdgo.GoString))) {
                (@:checkr _inst ?? throw "null pointer dereference").targetTriple = (_line.__slice__((8 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            } else if (_line[(0 : stdgo.GoInt)] == ((32 : stdgo.GoUInt8))) {
                var _args = stdgo._internal.strings.Strings_fields.fields(_line?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation.go#L52"
                for (__12 => _arg in (_args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation.go#L53"
                    if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_arg?.__copy__(), ("-L" : stdgo.GoString))) {
                        (@:checkr _inst ?? throw "null pointer dereference").libPaths = ((@:checkr _inst ?? throw "null pointer dereference").libPaths.__append__((_arg.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                    };
                };
            };
        };
        _argv = ((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("-dumpversion" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...(_args : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
        var __tmp__ = stdgo._internal.os.exec.Exec_command.command(_gccgoPath?.__copy__(), ...(_argv : Array<stdgo.GoString>)).output(), _stdout:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation.go#L62"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation.go#L63"
            return _err;
        };
        (@:checkr _inst ?? throw "null pointer dereference").gccVersion = stdgo._internal.strings.Strings_trimspace.trimSpace((_stdout : stdgo.GoString)?.__copy__())?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation.go#L67"
        return _err;
    }
}

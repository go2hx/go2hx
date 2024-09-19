package stdgo._internal.internal.testenv;
function writeImportcfg(_t:stdgo._internal.testing.Testing_TB.TB, _dstPath:stdgo.GoString, _packageFiles:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _pkgs:haxe.Rest<stdgo.GoString>):Void {
        var _pkgs = new stdgo.Slice<stdgo.GoString>(_pkgs.length, 0, ..._pkgs);
        _t.helper();
        var _icfg = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        _icfg.writeString(("# import config\n" : stdgo.GoString));
        for (_k => _v in _packageFiles) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_icfg), ("packagefile %s=%s\n" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v));
        };
        if (((_pkgs.length) > (0 : stdgo.GoInt) : Bool)) {
            var _cmd = stdgo._internal.internal.testenv.Testenv_command.command(_t, stdgo._internal.internal.testenv.Testenv_goToolPath.goToolPath(_t)?.__copy__(), ("list" : stdgo.GoString), ("-export" : stdgo.GoString), ("-deps" : stdgo.GoString), ("-f" : stdgo.GoString), ("{{if ne .ImportPath \"command-line-arguments\"}}{{if .Export}}{{.ImportPath}}={{.Export}}{{end}}{{end}}" : stdgo.GoString));
            _cmd.args = (_cmd.args.__append__(...(_pkgs : Array<stdgo.GoString>)));
            _cmd.stderr = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_Builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>));
            var __tmp__ = _cmd.output(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("%v: %v\n%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_cmd.stderr));
            };
            for (__24 => _line in stdgo._internal.strings.Strings_split.split((_out : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString))) {
                if (_line == (stdgo.Go.str())) {
                    continue;
                };
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_line?.__copy__(), ("=" : stdgo.GoString)), _importPath:stdgo.GoString = __tmp__._0, _export:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
                if (!_ok) {
                    _t.fatalf(("invalid line in output from %v:\n%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)), stdgo.Go.toInterface(_line));
                };
                if ((_packageFiles[_importPath] ?? ("" : stdgo.GoString)) == (stdgo.Go.str())) {
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_icfg), ("packagefile %s=%s\n" : stdgo.GoString), stdgo.Go.toInterface(_importPath), stdgo.Go.toInterface(_export));
                };
            };
        };
        {
            var _err = (stdgo._internal.os.Os_writeFile.writeFile(_dstPath?.__copy__(), _icfg.bytes(), (438u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }

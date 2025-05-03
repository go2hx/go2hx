package stdgo._internal.internal.testenv;
function writeImportcfg(_t:stdgo._internal.testing.Testing_tb.TB, _dstPath:stdgo.GoString, _packageFiles:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _pkgs:haxe.Rest<stdgo.GoString>):Void {
        var _pkgs = new stdgo.Slice<stdgo.GoString>(_pkgs.length, 0, ..._pkgs);
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L465"
        _t.helper();
        var _icfg = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L468"
        _icfg.writeString(("# import config\n" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L469"
        for (_k => _v in _packageFiles) {
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L470"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_icfg), ("packagefile %s=%s\n" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L473"
        if (((_pkgs.length) > (0 : stdgo.GoInt) : Bool)) {
            var _cmd = stdgo._internal.internal.testenv.Testenv_command.command(_t, stdgo._internal.internal.testenv.Testenv_gotoolpath.goToolPath(_t)?.__copy__(), ("list" : stdgo.GoString), ("-export" : stdgo.GoString), ("-deps" : stdgo.GoString), ("-f" : stdgo.GoString), ("{{if ne .ImportPath \"command-line-arguments\"}}{{if .Export}}{{.ImportPath}}={{.Export}}{{end}}{{end}}" : stdgo.GoString));
            (@:checkr _cmd ?? throw "null pointer dereference").args = ((@:checkr _cmd ?? throw "null pointer dereference").args.__append__(...(_pkgs : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
            (@:checkr _cmd ?? throw "null pointer dereference").stderr = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>));
            var __tmp__ = _cmd.output(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L479"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L480"
                _t.fatalf(("%v: %v\n%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((@:checkr _cmd ?? throw "null pointer dereference").stderr));
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L483"
            for (__24 => _line in stdgo._internal.strings.Strings_split.split((_out : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L484"
                if (_line == ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L485"
                    continue;
                };
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_line?.__copy__(), ("=" : stdgo.GoString)), _importPath:stdgo.GoString = __tmp__._0, _export:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
                //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L488"
                if (!_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L489"
                    _t.fatalf(("invalid line in output from %v:\n%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)), stdgo.Go.toInterface(_line));
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L491"
                if ((_packageFiles[_importPath] ?? ("" : stdgo.GoString)) == ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L492"
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_icfg), ("packagefile %s=%s\n" : stdgo.GoString), stdgo.Go.toInterface(_importPath), stdgo.Go.toInterface(_export));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L497"
        {
            var _err = (stdgo._internal.os.Os_writefile.writeFile(_dstPath?.__copy__(), _icfg.bytes(), (438u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L498"
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }

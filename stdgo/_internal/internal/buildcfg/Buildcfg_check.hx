package stdgo._internal.internal.buildcfg;
function check():Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/buildcfg/cfg.go#L44"
        if (stdgo._internal.internal.buildcfg.Buildcfg_error.error != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/buildcfg/cfg.go#L45"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("%s: %v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_base.base(stdgo._internal.os.Os_args.args[(0 : stdgo.GoInt)]?.__copy__())), stdgo.Go.toInterface(stdgo._internal.internal.buildcfg.Buildcfg_error.error));
            //"file:///home/runner/.go/go1.21.3/src/internal/buildcfg/cfg.go#L46"
            #if (sys || hxnodejs) Sys.exit((2 : stdgo.GoInt)) #else null #end;
        };
    }

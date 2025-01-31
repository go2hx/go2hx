package stdgo._internal.internal.buildcfg;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
function check():Void {
        if (stdgo._internal.internal.buildcfg.Buildcfg_error.error != null) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("%s: %v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_base.base(stdgo._internal.os.Os_args.args[(0 : stdgo.GoInt)]?.__copy__())), stdgo.Go.toInterface(stdgo._internal.internal.buildcfg.Buildcfg_error.error));
            #if (sys || hxnodejs) Sys.exit((2 : stdgo.GoInt)) #else null #end;
        };
    }

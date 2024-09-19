package _internal.errors_test;
function exampleNew():Void {
        var _err = (stdgo._internal.errors.Errors_new_.new_(("emit macho dwarf: elf header corrupted" : stdgo.GoString)) : stdgo.Error);
        if (_err != null) {
            stdgo._internal.fmt.Fmt_print.print(stdgo.Go.toInterface(_err));
        };
    }

package stdgo.debug.plan9obj;
class File_static_extension {
    static public function section(_f:File, _name:String):Section {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_File.File>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.debug.plan9obj.Plan9obj_File_static_extension.File_static_extension.section(_f, _name);
    }
    static public function symbols(_f:File):stdgo.Tuple<Array<Sym>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_File.File>);
        return {
            final obj = stdgo._internal.debug.plan9obj.Plan9obj_File_static_extension.File_static_extension.symbols(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function close(_f:File):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_File.File>);
        return stdgo._internal.debug.plan9obj.Plan9obj_File_static_extension.File_static_extension.close(_f);
    }
}

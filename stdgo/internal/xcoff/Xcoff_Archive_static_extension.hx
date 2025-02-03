package stdgo.internal.xcoff;
class Archive_static_extension {
    static public function getFile(_arch:Archive, _name:String):stdgo.Tuple<File, stdgo.Error> {
        final _arch = (_arch : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Archive.Archive>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.internal.xcoff.Xcoff_Archive_static_extension.Archive_static_extension.getFile(_arch, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_a:Archive):stdgo.Error {
        final _a = (_a : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Archive.Archive>);
        return stdgo._internal.internal.xcoff.Xcoff_Archive_static_extension.Archive_static_extension.close(_a);
    }
}

package stdgo._internal.archive.tar;
var _formatNames : stdgo.GoMap<stdgo._internal.archive.tar.Tar_Format.Format, stdgo.GoString> = ({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((1 : stdgo._internal.archive.tar.Tar_Format.Format), ("V7" : stdgo.GoString));
x.set((2 : stdgo._internal.archive.tar.Tar_Format.Format), ("USTAR" : stdgo.GoString));
x.set((4 : stdgo._internal.archive.tar.Tar_Format.Format), ("PAX" : stdgo.GoString));
x.set((8 : stdgo._internal.archive.tar.Tar_Format.Format), ("GNU" : stdgo.GoString));
x.set((16 : stdgo._internal.archive.tar.Tar_Format.Format), ("STAR" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo._internal.archive.tar.Tar_Format.Format, stdgo.GoString>);
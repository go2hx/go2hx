package stdgo.embed;
class T_file_static_extension {
    static public function string(_f:T_file):String {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>);
        return stdgo._internal.embed.Embed_T_file_static_extension.T_file_static_extension.string(_f);
    }
    static public function mode(_f:T_file):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>);
        return stdgo._internal.embed.Embed_T_file_static_extension.T_file_static_extension.mode(_f);
    }
    static public function info(_f:T_file):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>);
        return {
            final obj = stdgo._internal.embed.Embed_T_file_static_extension.T_file_static_extension.info(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function type(_f:T_file):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>);
        return stdgo._internal.embed.Embed_T_file_static_extension.T_file_static_extension.type(_f);
    }
    static public function sys(_f:T_file):stdgo.AnyInterface {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>);
        return stdgo._internal.embed.Embed_T_file_static_extension.T_file_static_extension.sys(_f);
    }
    static public function isDir(_f:T_file):Bool {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>);
        return stdgo._internal.embed.Embed_T_file_static_extension.T_file_static_extension.isDir(_f);
    }
    static public function modTime(_f:T_file):stdgo._internal.time.Time_Time.Time {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>);
        return stdgo._internal.embed.Embed_T_file_static_extension.T_file_static_extension.modTime(_f);
    }
    static public function size(_f:T_file):haxe.Int64 {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>);
        return stdgo._internal.embed.Embed_T_file_static_extension.T_file_static_extension.size(_f);
    }
    static public function name(_f:T_file):String {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>);
        return stdgo._internal.embed.Embed_T_file_static_extension.T_file_static_extension.name(_f);
    }
}

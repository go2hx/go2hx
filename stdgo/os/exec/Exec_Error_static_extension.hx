package stdgo.os.exec;
class Error_static_extension {
    static public function unwrap(_e:Error):stdgo.Error {
        final _e = (_e : stdgo.Ref<stdgo._internal.os.exec.Exec_Error.Error>);
        return stdgo._internal.os.exec.Exec_Error_static_extension.Error_static_extension.unwrap(_e);
    }
    static public function error(_e:Error):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.os.exec.Exec_Error.Error>);
        return stdgo._internal.os.exec.Exec_Error_static_extension.Error_static_extension.error(_e);
    }
}

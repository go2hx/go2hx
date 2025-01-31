package stdgo._internal.mime.multipart;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.strings.Strings;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.mime.quotedprintable.Quotedprintable;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.mime.Mime;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.mime.multipart.Multipart.Form_asInterface) class Form_static_extension {
    @:keep
    @:tdfield
    static public function removeAll( _f:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form> = _f;
        var _err:stdgo.Error = (null : stdgo.Error);
        for (__0 => _fhs in (@:checkr _f ?? throw "null pointer dereference").file) {
            for (__1 => _fh in _fhs) {
                if ((@:checkr _fh ?? throw "null pointer dereference")._tmpfile != (stdgo.Go.str())) {
                    var _e = (stdgo._internal.os.Os_remove.remove((@:checkr _fh ?? throw "null pointer dereference")._tmpfile?.__copy__()) : stdgo.Error);
                    if (((_e != null && !stdgo._internal.errors.Errors_is_.is_(_e, stdgo._internal.os.Os_errNotExist.errNotExist) : Bool) && (_err == null) : Bool)) {
                        _err = _e;
                    };
                };
            };
        };
        return _err;
    }
}

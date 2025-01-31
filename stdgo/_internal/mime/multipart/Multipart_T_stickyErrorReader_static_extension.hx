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
@:keep @:allow(stdgo._internal.mime.multipart.Multipart.T_stickyErrorReader_asInterface) class T_stickyErrorReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_T_stickyErrorReader.T_stickyErrorReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_T_stickyErrorReader.T_stickyErrorReader> = _r;
        var _n = (0 : stdgo.GoInt), _1 = (null : stdgo.Error);
        if ((@:checkr _r ?? throw "null pointer dereference")._err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _r ?? throw "null pointer dereference")._err };
                _n = __tmp__._0;
                _1 = __tmp__._1;
                __tmp__;
            };
        };
        {
            var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._r.read(_p);
            _n = @:tmpset0 __tmp__._0;
            (@:checkr _r ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _r ?? throw "null pointer dereference")._err };
            _n = __tmp__._0;
            _1 = __tmp__._1;
            __tmp__;
        };
    }
}

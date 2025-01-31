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
function _mimeHeaderSize(_h:stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader):stdgo.GoInt64 {
        var _size = (0 : stdgo.GoInt64);
        _size = (400i64 : stdgo.GoInt64);
        for (_k => _vs in _h) {
            _size = (_size + ((_k.length : stdgo.GoInt64)) : stdgo.GoInt64);
            _size = (_size + ((200i64 : stdgo.GoInt64)) : stdgo.GoInt64);
            for (__0 => _v in _vs) {
                _size = (_size + ((_v.length : stdgo.GoInt64)) : stdgo.GoInt64);
            };
        };
        return _size;
    }

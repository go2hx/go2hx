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
function _readMIMEHeader(_r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>, _maxMemory:stdgo.GoInt64, _maxHeaders:stdgo.GoInt64):{ var _0 : stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader; var _1 : stdgo.Error; } {
        trace("funclit");
        throw "not implemented: _readMIMEHeader";
    }

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
function newWriter(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Writer.Writer> {
        return (stdgo.Go.setRef(({ _w : _w, _boundary : stdgo._internal.mime.multipart.Multipart__randomBoundary._randomBoundary()?.__copy__() } : stdgo._internal.mime.multipart.Multipart_Writer.Writer)) : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Writer.Writer>);
    }

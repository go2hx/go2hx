package stdgo._internal.net.http.httputil;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.http.internal.Internal;
import stdgo._internal.net.http.Http;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.textproto.Textproto;
import _internal.golang_dot_org.x.net.http.httpguts.Httpguts;
import stdgo._internal.net.url.Url;
import stdgo._internal.net.Net;
import stdgo._internal.context.Context;
import stdgo._internal.net.http.internal.ascii.Ascii;
import stdgo._internal.net.http.httptrace.Httptrace;
import stdgo._internal.mime.Mime;
import stdgo._internal.time.Time;
import stdgo._internal.log.Log;
@:structInit @:using(stdgo._internal.net.http.httputil.Httputil_T_dumpConn_static_extension.T_dumpConn_static_extension) class T_dumpConn {
    @:embedded
    public var writer : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    @:embedded
    public var reader : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public function new(?writer:stdgo._internal.io.Io_Writer.Writer, ?reader:stdgo._internal.io.Io_Reader.Reader) {
        if (writer != null) this.writer = writer;
        if (reader != null) this.reader = reader;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var read(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_read():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (this.reader ?? throw "null pointer dereference").read;
    public var write(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_write():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (this.writer ?? throw "null pointer dereference").write;
    public function __copy__() {
        return new T_dumpConn(writer, reader);
    }
}

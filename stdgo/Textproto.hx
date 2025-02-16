package stdgo;
@:structInit @:using(stdgo.net.textproto.Textproto.Pipeline_static_extension) abstract Pipeline(stdgo._internal.net.textproto.Textproto_pipeline.Pipeline) from stdgo._internal.net.textproto.Textproto_pipeline.Pipeline to stdgo._internal.net.textproto.Textproto_pipeline.Pipeline {
    public var _mu(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _id(get, set) : std.UInt;
    function get__id():std.UInt return this._id;
    function set__id(v:std.UInt):std.UInt {
        this._id = (v : stdgo.GoUInt);
        return v;
    }
    public var _request(get, set) : T_sequencer;
    function get__request():T_sequencer return this._request;
    function set__request(v:T_sequencer):T_sequencer {
        this._request = v;
        return v;
    }
    public var _response(get, set) : T_sequencer;
    function get__response():T_sequencer return this._response;
    function set__response(v:T_sequencer):T_sequencer {
        this._response = v;
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_id:std.UInt, ?_request:T_sequencer, ?_response:T_sequencer) this = new stdgo._internal.net.textproto.Textproto_pipeline.Pipeline(_mu, (_id : stdgo.GoUInt), _request, _response);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.textproto.Textproto.T_sequencer_static_extension) @:dox(hide) abstract T_sequencer(stdgo._internal.net.textproto.Textproto_t_sequencer.T_sequencer) from stdgo._internal.net.textproto.Textproto_t_sequencer.T_sequencer to stdgo._internal.net.textproto.Textproto_t_sequencer.T_sequencer {
    public var _mu(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _id(get, set) : std.UInt;
    function get__id():std.UInt return this._id;
    function set__id(v:std.UInt):std.UInt {
        this._id = (v : stdgo.GoUInt);
        return v;
    }
    public var _wait(get, set) : Map<std.UInt, stdgo.Chan<{ }>>;
    function get__wait():Map<std.UInt, stdgo.Chan<{ }>> return {
        final __obj__:Map<std.UInt, stdgo.Chan<{ }>> = [];
        for (key => value in this._wait) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__wait(v:Map<std.UInt, stdgo.Chan<{ }>>):Map<std.UInt, stdgo.Chan<{ }>> {
        this._wait = {
            final __obj__ = new stdgo.GoMap<stdgo.GoUInt, stdgo.Chan<{ }>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoUInt)] = (value : stdgo.Chan<{ }>);
            };
            __obj__;
        };
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_id:std.UInt, ?_wait:Map<std.UInt, stdgo.Chan<{ }>>) this = new stdgo._internal.net.textproto.Textproto_t_sequencer.T_sequencer(_mu, (_id : stdgo.GoUInt), {
        final __obj__ = new stdgo.GoMap<stdgo.GoUInt, stdgo.Chan<{ }>>();
        for (key => value in _wait) {
            __obj__[(key : stdgo.GoUInt)] = (value : stdgo.Chan<{ }>);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.textproto.Textproto.Reader_static_extension) abstract Reader(stdgo._internal.net.textproto.Textproto_reader.Reader) from stdgo._internal.net.textproto.Textproto_reader.Reader to stdgo._internal.net.textproto.Textproto_reader.Reader {
    public var r(get, set) : stdgo._internal.bufio.Bufio_reader.Reader;
    function get_r():stdgo._internal.bufio.Bufio_reader.Reader return this.r;
    function set_r(v:stdgo._internal.bufio.Bufio_reader.Reader):stdgo._internal.bufio.Bufio_reader.Reader {
        this.r = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        return v;
    }
    public var _dot(get, set) : T_dotReader;
    function get__dot():T_dotReader return this._dot;
    function set__dot(v:T_dotReader):T_dotReader {
        this._dot = (v : stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotreader.T_dotReader>);
        return v;
    }
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?r:stdgo._internal.bufio.Bufio_reader.Reader, ?_dot:T_dotReader, ?_buf:Array<std.UInt>) this = new stdgo._internal.net.textproto.Textproto_reader.Reader((r : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>), (_dot : stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotreader.T_dotReader>), ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.textproto.Textproto.T_dotReader_static_extension) @:dox(hide) abstract T_dotReader(stdgo._internal.net.textproto.Textproto_t_dotreader.T_dotReader) from stdgo._internal.net.textproto.Textproto_t_dotreader.T_dotReader to stdgo._internal.net.textproto.Textproto_t_dotreader.T_dotReader {
    public var _r(get, set) : Reader;
    function get__r():Reader return this._r;
    function set__r(v:Reader):Reader {
        this._r = (v : stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>);
        return v;
    }
    public var _state(get, set) : StdTypes.Int;
    function get__state():StdTypes.Int return this._state;
    function set__state(v:StdTypes.Int):StdTypes.Int {
        this._state = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_r:Reader, ?_state:StdTypes.Int) this = new stdgo._internal.net.textproto.Textproto_t_dotreader.T_dotReader((_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>), (_state : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.textproto.Textproto.Error_static_extension) abstract Error(stdgo._internal.net.textproto.Textproto_error.Error) from stdgo._internal.net.textproto.Textproto_error.Error to stdgo._internal.net.textproto.Textproto_error.Error {
    public var code(get, set) : StdTypes.Int;
    function get_code():StdTypes.Int return this.code;
    function set_code(v:StdTypes.Int):StdTypes.Int {
        this.code = (v : stdgo.GoInt);
        return v;
    }
    public var msg(get, set) : String;
    function get_msg():String return this.msg;
    function set_msg(v:String):String {
        this.msg = (v : stdgo.GoString);
        return v;
    }
    public function new(?code:StdTypes.Int, ?msg:String) this = new stdgo._internal.net.textproto.Textproto_error.Error((code : stdgo.GoInt), (msg : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.textproto.Textproto.Conn_static_extension) abstract Conn(stdgo._internal.net.textproto.Textproto_conn.Conn) from stdgo._internal.net.textproto.Textproto_conn.Conn to stdgo._internal.net.textproto.Textproto_conn.Conn {
    public var reader(get, set) : Reader;
    function get_reader():Reader return this.reader;
    function set_reader(v:Reader):Reader {
        this.reader = v;
        return v;
    }
    public var writer(get, set) : Writer;
    function get_writer():Writer return this.writer;
    function set_writer(v:Writer):Writer {
        this.writer = v;
        return v;
    }
    public var pipeline(get, set) : Pipeline;
    function get_pipeline():Pipeline return this.pipeline;
    function set_pipeline(v:Pipeline):Pipeline {
        this.pipeline = v;
        return v;
    }
    public var _conn(get, set) : stdgo._internal.io.Io_readwritecloser.ReadWriteCloser;
    function get__conn():stdgo._internal.io.Io_readwritecloser.ReadWriteCloser return this._conn;
    function set__conn(v:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):stdgo._internal.io.Io_readwritecloser.ReadWriteCloser {
        this._conn = v;
        return v;
    }
    public function new(?reader:Reader, ?writer:Writer, ?pipeline:Pipeline, ?_conn:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser) this = new stdgo._internal.net.textproto.Textproto_conn.Conn(reader, writer, pipeline, _conn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.textproto.Textproto.Writer_static_extension) abstract Writer(stdgo._internal.net.textproto.Textproto_writer.Writer) from stdgo._internal.net.textproto.Textproto_writer.Writer to stdgo._internal.net.textproto.Textproto_writer.Writer {
    public var w(get, set) : stdgo._internal.bufio.Bufio_writer.Writer;
    function get_w():stdgo._internal.bufio.Bufio_writer.Writer return this.w;
    function set_w(v:stdgo._internal.bufio.Bufio_writer.Writer):stdgo._internal.bufio.Bufio_writer.Writer {
        this.w = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
        return v;
    }
    public var _dot(get, set) : T_dotWriter;
    function get__dot():T_dotWriter return this._dot;
    function set__dot(v:T_dotWriter):T_dotWriter {
        this._dot = (v : stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotwriter.T_dotWriter>);
        return v;
    }
    public function new(?w:stdgo._internal.bufio.Bufio_writer.Writer, ?_dot:T_dotWriter) this = new stdgo._internal.net.textproto.Textproto_writer.Writer((w : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>), (_dot : stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotwriter.T_dotWriter>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.textproto.Textproto.T_dotWriter_static_extension) @:dox(hide) abstract T_dotWriter(stdgo._internal.net.textproto.Textproto_t_dotwriter.T_dotWriter) from stdgo._internal.net.textproto.Textproto_t_dotwriter.T_dotWriter to stdgo._internal.net.textproto.Textproto_t_dotwriter.T_dotWriter {
    public var _w(get, set) : Writer;
    function get__w():Writer return this._w;
    function set__w(v:Writer):Writer {
        this._w = (v : stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer>);
        return v;
    }
    public var _state(get, set) : StdTypes.Int;
    function get__state():StdTypes.Int return this._state;
    function set__state(v:StdTypes.Int):StdTypes.Int {
        this._state = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_w:Writer, ?_state:StdTypes.Int) this = new stdgo._internal.net.textproto.Textproto_t_dotwriter.T_dotWriter((_w : stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer>), (_state : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.net.textproto.Textproto_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.net.textproto.Textproto_t__struct_0.T__struct_0;
typedef MIMEHeader = stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader;
typedef ProtocolError = stdgo._internal.net.textproto.Textproto_protocolerror.ProtocolError;
typedef PipelinePointer = stdgo._internal.net.textproto.Textproto_pipelinepointer.PipelinePointer;
class Pipeline_static_extension {
    static public function endResponse(_p:Pipeline, _id:std.UInt):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.textproto.Textproto_pipeline.Pipeline>);
        final _id = (_id : stdgo.GoUInt);
        stdgo._internal.net.textproto.Textproto_pipeline_static_extension.Pipeline_static_extension.endResponse(_p, _id);
    }
    static public function startResponse(_p:Pipeline, _id:std.UInt):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.textproto.Textproto_pipeline.Pipeline>);
        final _id = (_id : stdgo.GoUInt);
        stdgo._internal.net.textproto.Textproto_pipeline_static_extension.Pipeline_static_extension.startResponse(_p, _id);
    }
    static public function endRequest(_p:Pipeline, _id:std.UInt):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.textproto.Textproto_pipeline.Pipeline>);
        final _id = (_id : stdgo.GoUInt);
        stdgo._internal.net.textproto.Textproto_pipeline_static_extension.Pipeline_static_extension.endRequest(_p, _id);
    }
    static public function startRequest(_p:Pipeline, _id:std.UInt):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.textproto.Textproto_pipeline.Pipeline>);
        final _id = (_id : stdgo.GoUInt);
        stdgo._internal.net.textproto.Textproto_pipeline_static_extension.Pipeline_static_extension.startRequest(_p, _id);
    }
    static public function next(_p:Pipeline):std.UInt {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.textproto.Textproto_pipeline.Pipeline>);
        return stdgo._internal.net.textproto.Textproto_pipeline_static_extension.Pipeline_static_extension.next(_p);
    }
}
@:dox(hide) typedef T_sequencerPointer = stdgo._internal.net.textproto.Textproto_t_sequencerpointer.T_sequencerPointer;
@:dox(hide) class T_sequencer_static_extension {
    static public function end(_s:T_sequencer, _id:std.UInt):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_sequencer.T_sequencer>);
        final _id = (_id : stdgo.GoUInt);
        stdgo._internal.net.textproto.Textproto_t_sequencer_static_extension.T_sequencer_static_extension.end(_s, _id);
    }
    static public function start(_s:T_sequencer, _id:std.UInt):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_sequencer.T_sequencer>);
        final _id = (_id : stdgo.GoUInt);
        stdgo._internal.net.textproto.Textproto_t_sequencer_static_extension.T_sequencer_static_extension.start(_s, _id);
    }
}
typedef ReaderPointer = stdgo._internal.net.textproto.Textproto_readerpointer.ReaderPointer;
class Reader_static_extension {
    static public function _upcomingHeaderKeys(_r:Reader):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>);
        return stdgo._internal.net.textproto.Textproto_reader_static_extension.Reader_static_extension._upcomingHeaderKeys(_r);
    }
    static public function readMIMEHeader(_r:Reader):stdgo.Tuple<MIMEHeader, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_reader_static_extension.Reader_static_extension.readMIMEHeader(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readDotLines(_r:Reader):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_reader_static_extension.Reader_static_extension.readDotLines(_r);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readDotBytes(_r:Reader):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_reader_static_extension.Reader_static_extension.readDotBytes(_r);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _closeDot(_r:Reader):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>);
        stdgo._internal.net.textproto.Textproto_reader_static_extension.Reader_static_extension._closeDot(_r);
    }
    static public function dotReader(_r:Reader):stdgo._internal.io.Io_reader.Reader {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>);
        return stdgo._internal.net.textproto.Textproto_reader_static_extension.Reader_static_extension.dotReader(_r);
    }
    static public function readResponse(_r:Reader, _expectCode:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, String, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>);
        final _expectCode = (_expectCode : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_reader_static_extension.Reader_static_extension.readResponse(_r, _expectCode);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function readCodeLine(_r:Reader, _expectCode:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, String, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>);
        final _expectCode = (_expectCode : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_reader_static_extension.Reader_static_extension.readCodeLine(_r, _expectCode);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _readCodeLine(_r:Reader, _expectCode:StdTypes.Int):stdgo.Tuple.Tuple4<StdTypes.Int, Bool, String, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>);
        final _expectCode = (_expectCode : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_reader_static_extension.Reader_static_extension._readCodeLine(_r, _expectCode);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function _skipSpace(_r:Reader):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>);
        return stdgo._internal.net.textproto.Textproto_reader_static_extension.Reader_static_extension._skipSpace(_r);
    }
    static public function _readContinuedLineSlice(_r:Reader, _validateFirstLine:Array<std.UInt> -> stdgo.Error):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>);
        final _validateFirstLine = _validateFirstLine;
        return {
            final obj = stdgo._internal.net.textproto.Textproto_reader_static_extension.Reader_static_extension._readContinuedLineSlice(_r, _validateFirstLine);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readContinuedLineBytes(_r:Reader):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_reader_static_extension.Reader_static_extension.readContinuedLineBytes(_r);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readContinuedLine(_r:Reader):stdgo.Tuple<String, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_reader_static_extension.Reader_static_extension.readContinuedLine(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readLineSlice(_r:Reader):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_reader_static_extension.Reader_static_extension._readLineSlice(_r);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readLineBytes(_r:Reader):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_reader_static_extension.Reader_static_extension.readLineBytes(_r);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readLine(_r:Reader):stdgo.Tuple<String, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_reader_static_extension.Reader_static_extension.readLine(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_dotReaderPointer = stdgo._internal.net.textproto.Textproto_t_dotreaderpointer.T_dotReaderPointer;
@:dox(hide) class T_dotReader_static_extension {
    static public function read(_d:T_dotReader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotreader.T_dotReader>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_t_dotreader_static_extension.T_dotReader_static_extension.read(_d, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef ErrorPointer = stdgo._internal.net.textproto.Textproto_errorpointer.ErrorPointer;
class Error_static_extension {
    static public function error(_e:Error):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.textproto.Textproto_error.Error>);
        return stdgo._internal.net.textproto.Textproto_error_static_extension.Error_static_extension.error(_e);
    }
}
typedef ConnPointer = stdgo._internal.net.textproto.Textproto_connpointer.ConnPointer;
class Conn_static_extension {
    static public function cmd(_c:Conn, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.textproto.Textproto_conn.Conn>);
        final _format = (_format : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_conn_static_extension.Conn_static_extension.cmd(_c, _format, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_c:Conn):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.textproto.Textproto_conn.Conn>);
        return stdgo._internal.net.textproto.Textproto_conn_static_extension.Conn_static_extension.close(_c);
    }
    public static function _upcomingHeaderKeys(__self__:stdgo._internal.net.textproto.Textproto_conn.Conn):StdTypes.Int {
        return stdgo._internal.net.textproto.Textproto_conn_static_extension.Conn_static_extension._upcomingHeaderKeys(__self__);
    }
    public static function _skipSpace(__self__:stdgo._internal.net.textproto.Textproto_conn.Conn):StdTypes.Int {
        return stdgo._internal.net.textproto.Textproto_conn_static_extension.Conn_static_extension._skipSpace(__self__);
    }
    public static function _readLineSlice(__self__:stdgo._internal.net.textproto.Textproto_conn.Conn):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.textproto.Textproto_conn_static_extension.Conn_static_extension._readLineSlice(__self__);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function _readContinuedLineSlice(__self__:stdgo._internal.net.textproto.Textproto_conn.Conn, _0:Array<std.UInt> -> stdgo.Error):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _0 = _0;
        return {
            final obj = stdgo._internal.net.textproto.Textproto_conn_static_extension.Conn_static_extension._readContinuedLineSlice(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function _readCodeLine(__self__:stdgo._internal.net.textproto.Textproto_conn.Conn, _0:StdTypes.Int):stdgo.Tuple.Tuple4<StdTypes.Int, Bool, String, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_conn_static_extension.Conn_static_extension._readCodeLine(__self__, _0);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    public static function startResponse(__self__:stdgo._internal.net.textproto.Textproto_conn.Conn, _0:std.UInt):Void {
        final _0 = (_0 : stdgo.GoUInt);
        stdgo._internal.net.textproto.Textproto_conn_static_extension.Conn_static_extension.startResponse(__self__, _0);
    }
    public static function startRequest(__self__:stdgo._internal.net.textproto.Textproto_conn.Conn, _0:std.UInt):Void {
        final _0 = (_0 : stdgo.GoUInt);
        stdgo._internal.net.textproto.Textproto_conn_static_extension.Conn_static_extension.startRequest(__self__, _0);
    }
    public static function readResponse(__self__:stdgo._internal.net.textproto.Textproto_conn.Conn, _0:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, String, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_conn_static_extension.Conn_static_extension.readResponse(__self__, _0);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function readMIMEHeader(__self__:stdgo._internal.net.textproto.Textproto_conn.Conn):stdgo.Tuple<MIMEHeader, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.textproto.Textproto_conn_static_extension.Conn_static_extension.readMIMEHeader(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readLineBytes(__self__:stdgo._internal.net.textproto.Textproto_conn.Conn):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.textproto.Textproto_conn_static_extension.Conn_static_extension.readLineBytes(__self__);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readLine(__self__:stdgo._internal.net.textproto.Textproto_conn.Conn):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.textproto.Textproto_conn_static_extension.Conn_static_extension.readLine(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readDotLines(__self__:stdgo._internal.net.textproto.Textproto_conn.Conn):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.textproto.Textproto_conn_static_extension.Conn_static_extension.readDotLines(__self__);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readDotBytes(__self__:stdgo._internal.net.textproto.Textproto_conn.Conn):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.textproto.Textproto_conn_static_extension.Conn_static_extension.readDotBytes(__self__);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readContinuedLineBytes(__self__:stdgo._internal.net.textproto.Textproto_conn.Conn):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.textproto.Textproto_conn_static_extension.Conn_static_extension.readContinuedLineBytes(__self__);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readContinuedLine(__self__:stdgo._internal.net.textproto.Textproto_conn.Conn):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.textproto.Textproto_conn_static_extension.Conn_static_extension.readContinuedLine(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readCodeLine(__self__:stdgo._internal.net.textproto.Textproto_conn.Conn, _0:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, String, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_conn_static_extension.Conn_static_extension.readCodeLine(__self__, _0);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function printfLine(__self__:stdgo._internal.net.textproto.Textproto_conn.Conn, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.net.textproto.Textproto_conn_static_extension.Conn_static_extension.printfLine(__self__, _0, ...[for (i in _1) i]);
    }
    public static function next(__self__:stdgo._internal.net.textproto.Textproto_conn.Conn):std.UInt {
        return stdgo._internal.net.textproto.Textproto_conn_static_extension.Conn_static_extension.next(__self__);
    }
    public static function endResponse(__self__:stdgo._internal.net.textproto.Textproto_conn.Conn, _0:std.UInt):Void {
        final _0 = (_0 : stdgo.GoUInt);
        stdgo._internal.net.textproto.Textproto_conn_static_extension.Conn_static_extension.endResponse(__self__, _0);
    }
    public static function endRequest(__self__:stdgo._internal.net.textproto.Textproto_conn.Conn, _0:std.UInt):Void {
        final _0 = (_0 : stdgo.GoUInt);
        stdgo._internal.net.textproto.Textproto_conn_static_extension.Conn_static_extension.endRequest(__self__, _0);
    }
    public static function dotWriter(__self__:stdgo._internal.net.textproto.Textproto_conn.Conn):stdgo._internal.io.Io_writecloser.WriteCloser {
        return stdgo._internal.net.textproto.Textproto_conn_static_extension.Conn_static_extension.dotWriter(__self__);
    }
    public static function dotReader(__self__:stdgo._internal.net.textproto.Textproto_conn.Conn):stdgo._internal.io.Io_reader.Reader {
        return stdgo._internal.net.textproto.Textproto_conn_static_extension.Conn_static_extension.dotReader(__self__);
    }
}
typedef WriterPointer = stdgo._internal.net.textproto.Textproto_writerpointer.WriterPointer;
class Writer_static_extension {
    static public function _closeDot(_w:Writer):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer>);
        stdgo._internal.net.textproto.Textproto_writer_static_extension.Writer_static_extension._closeDot(_w);
    }
    static public function dotWriter(_w:Writer):stdgo._internal.io.Io_writecloser.WriteCloser {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer>);
        return stdgo._internal.net.textproto.Textproto_writer_static_extension.Writer_static_extension.dotWriter(_w);
    }
    static public function printfLine(_w:Writer, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer>);
        final _format = (_format : stdgo.GoString);
        return stdgo._internal.net.textproto.Textproto_writer_static_extension.Writer_static_extension.printfLine(_w, _format, ...[for (i in _args) i]);
    }
}
@:dox(hide) typedef T_dotWriterPointer = stdgo._internal.net.textproto.Textproto_t_dotwriterpointer.T_dotWriterPointer;
@:dox(hide) class T_dotWriter_static_extension {
    static public function close(_d:T_dotWriter):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotwriter.T_dotWriter>);
        return stdgo._internal.net.textproto.Textproto_t_dotwriter_static_extension.T_dotWriter_static_extension.close(_d);
    }
    static public function write(_d:T_dotWriter, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotwriter.T_dotWriter>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_t_dotwriter_static_extension.T_dotWriter_static_extension.write(_d, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.net.textproto.Textproto_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
typedef MIMEHeaderPointer = stdgo._internal.net.textproto.Textproto_mimeheaderpointer.MIMEHeaderPointer;
class MIMEHeader_static_extension {
    static public function del(_h:MIMEHeader, _key:String):Void {
        final _key = (_key : stdgo.GoString);
        stdgo._internal.net.textproto.Textproto_mimeheader_static_extension.MIMEHeader_static_extension.del(_h, _key);
    }
    static public function values(_h:MIMEHeader, _key:String):Array<String> {
        final _key = (_key : stdgo.GoString);
        return [for (i in stdgo._internal.net.textproto.Textproto_mimeheader_static_extension.MIMEHeader_static_extension.values(_h, _key)) i];
    }
    static public function get(_h:MIMEHeader, _key:String):String {
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.net.textproto.Textproto_mimeheader_static_extension.MIMEHeader_static_extension.get(_h, _key);
    }
    static public function set(_h:MIMEHeader, _key:String, _value:String):Void {
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        stdgo._internal.net.textproto.Textproto_mimeheader_static_extension.MIMEHeader_static_extension.set(_h, _key, _value);
    }
    static public function add(_h:MIMEHeader, _key:String, _value:String):Void {
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        stdgo._internal.net.textproto.Textproto_mimeheader_static_extension.MIMEHeader_static_extension.add(_h, _key, _value);
    }
}
typedef ProtocolErrorPointer = stdgo._internal.net.textproto.Textproto_protocolerrorpointer.ProtocolErrorPointer;
class ProtocolError_static_extension {
    static public function error(_p:ProtocolError):String {
        return stdgo._internal.net.textproto.Textproto_protocolerror_static_extension.ProtocolError_static_extension.error(_p);
    }
}
/**
    * Package textproto implements generic support for text-based request/response
    * protocols in the style of HTTP, NNTP, and SMTP.
    * 
    * The package provides:
    * 
    * Error, which represents a numeric error response from
    * a server.
    * 
    * Pipeline, to manage pipelined requests and responses
    * in a client.
    * 
    * Reader, to read numeric response code lines,
    * key: value headers, lines wrapped with leading spaces
    * on continuation lines, and whole text blocks ending
    * with a dot on a line by itself.
    * 
    * Writer, to write dot-encoded text blocks.
    * 
    * Conn, a convenient packaging of Reader, Writer, and Pipeline for use
    * with a single network connection.
**/
class Textproto {
    /**
        * NewReader returns a new Reader reading from r.
        * 
        * To avoid denial of service attacks, the provided bufio.Reader
        * should be reading from an io.LimitReader or similar Reader to bound
        * the size of responses.
    **/
    static public inline function newReader(_r:stdgo._internal.bufio.Bufio_reader.Reader):Reader {
        final _r = (_r : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        return stdgo._internal.net.textproto.Textproto_newreader.newReader(_r);
    }
    /**
        * CanonicalMIMEHeaderKey returns the canonical format of the
        * MIME header key s. The canonicalization converts the first
        * letter and any letter following a hyphen to upper case;
        * the rest are converted to lowercase. For example, the
        * canonical key for "accept-encoding" is "Accept-Encoding".
        * MIME header keys are assumed to be ASCII only.
        * If s contains a space or invalid header field bytes, it is
        * returned without modifications.
    **/
    static public inline function canonicalMIMEHeaderKey(_s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.net.textproto.Textproto_canonicalmimeheaderkey.canonicalMIMEHeaderKey(_s);
    }
    /**
        * NewConn returns a new Conn using conn for I/O.
    **/
    static public inline function newConn(_conn:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):Conn {
        return stdgo._internal.net.textproto.Textproto_newconn.newConn(_conn);
    }
    /**
        * Dial connects to the given address on the given network using net.Dial
        * and then returns a new Conn for the connection.
    **/
    static public inline function dial(_network:String, _addr:String):stdgo.Tuple<Conn, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _addr = (_addr : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_dial.dial(_network, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * TrimString returns s without leading and trailing ASCII space.
    **/
    static public inline function trimString(_s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.net.textproto.Textproto_trimstring.trimString(_s);
    }
    /**
        * TrimBytes returns b without leading and trailing ASCII space.
    **/
    static public inline function trimBytes(_b:Array<std.UInt>):Array<std.UInt> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.net.textproto.Textproto_trimbytes.trimBytes(_b)) i];
    }
    /**
        * NewWriter returns a new Writer writing to w.
    **/
    static public inline function newWriter(_w:stdgo._internal.bufio.Bufio_writer.Writer):Writer {
        final _w = (_w : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
        return stdgo._internal.net.textproto.Textproto_newwriter.newWriter(_w);
    }
}

package stdgo._internal.internal.coverage.encodemeta;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.internal.coverage.uleb128.Uleb128;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.internal.coverage.Coverage;
@:structInit @:using(stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaFileWriter_static_extension.CoverageMetaFileWriter_static_extension) class CoverageMetaFileWriter {
    public var _stab : stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer = ({} : stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer);
    public var _mfname : stdgo.GoString = "";
    public var _w : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
    public var _tmp : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _debug : Bool = false;
    public function new(?_stab:stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer, ?_mfname:stdgo.GoString, ?_w:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>, ?_tmp:stdgo.Slice<stdgo.GoUInt8>, ?_debug:Bool) {
        if (_stab != null) this._stab = _stab;
        if (_mfname != null) this._mfname = _mfname;
        if (_w != null) this._w = _w;
        if (_tmp != null) this._tmp = _tmp;
        if (_debug != null) this._debug = _debug;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CoverageMetaFileWriter(_stab, _mfname, _w, _tmp, _debug);
    }
}

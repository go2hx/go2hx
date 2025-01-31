package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.compress.flate.Flate_Writer_static_extension.Writer_static_extension) class Writer {
    public var _d : stdgo._internal.compress.flate.Flate_T_compressor.T_compressor = ({} : stdgo._internal.compress.flate.Flate_T_compressor.T_compressor);
    public var _dict : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_d:stdgo._internal.compress.flate.Flate_T_compressor.T_compressor, ?_dict:stdgo.Slice<stdgo.GoUInt8>) {
        if (_d != null) this._d = _d;
        if (_dict != null) this._dict = _dict;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Writer(_d, _dict);
    }
}

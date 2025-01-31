package stdgo._internal.compress.bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.compress.bzip2.Bzip2_T_huffmanCode_static_extension.T_huffmanCode_static_extension) class T_huffmanCode {
    public var _code : stdgo.GoUInt32 = 0;
    public var _codeLen : stdgo.GoUInt8 = 0;
    public var _value : stdgo.GoUInt16 = 0;
    public function new(?_code:stdgo.GoUInt32, ?_codeLen:stdgo.GoUInt8, ?_value:stdgo.GoUInt16) {
        if (_code != null) this._code = _code;
        if (_codeLen != null) this._codeLen = _codeLen;
        if (_value != null) this._value = _value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_huffmanCode(_code, _codeLen, _value);
    }
}

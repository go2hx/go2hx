package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(_internal.fmt_test.Fmt_test_T_eofCounter_static_extension.T_eofCounter_static_extension) class T_eofCounter {
    public var _reader : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>);
    public var _eofCount : stdgo.GoInt = 0;
    public function new(?_reader:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>, ?_eofCount:stdgo.GoInt) {
        if (_reader != null) this._reader = _reader;
        if (_eofCount != null) this._eofCount = _eofCount;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_eofCounter(_reader, _eofCount);
    }
}

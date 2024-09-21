package _internal.vendor.golang_dot_org.x.text.unicode.norm;
@:structInit @:using(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer_static_extension.T_reorderBuffer_static_extension) class T_reorderBuffer {
    public var _rune : stdgo.GoArray<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties> = new stdgo.GoArray<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties>(32, 32, ...[for (i in 0 ... 32) ({} : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties)]);
    public var _byte : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(128, 128, ...[for (i in 0 ... 128) (0 : stdgo.GoUInt8)]);
    public var _nbyte : stdgo.GoUInt8 = 0;
    public var _ss : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe = ((0 : stdgo.GoUInt8) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe);
    public var _nrune : stdgo.GoInt = 0;
    public var _f : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_formInfo.T_formInfo = ({} : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_formInfo.T_formInfo);
    public var _src : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input = ({} : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input);
    public var _nsrc : stdgo.GoInt = 0;
    public var _tmpBytes : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input = ({} : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input);
    public var _out : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _flushF : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer> -> Bool = null;
    public function new(?_rune:stdgo.GoArray<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties>, ?_byte:stdgo.GoArray<stdgo.GoUInt8>, ?_nbyte:stdgo.GoUInt8, ?_ss:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe, ?_nrune:stdgo.GoInt, ?_f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_formInfo.T_formInfo, ?_src:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input, ?_nsrc:stdgo.GoInt, ?_tmpBytes:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input, ?_out:stdgo.Slice<stdgo.GoUInt8>, ?_flushF:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer> -> Bool) {
        if (_rune != null) this._rune = _rune;
        if (_byte != null) this._byte = _byte;
        if (_nbyte != null) this._nbyte = _nbyte;
        if (_ss != null) this._ss = _ss;
        if (_nrune != null) this._nrune = _nrune;
        if (_f != null) this._f = _f;
        if (_src != null) this._src = _src;
        if (_nsrc != null) this._nsrc = _nsrc;
        if (_tmpBytes != null) this._tmpBytes = _tmpBytes;
        if (_out != null) this._out = _out;
        if (_flushF != null) this._flushF = _flushF;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_reorderBuffer(
_rune,
_byte,
_nbyte,
_ss,
_nrune,
_f,
_src,
_nsrc,
_tmpBytes,
_out,
_flushF);
    }
}

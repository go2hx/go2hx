package stdgo._internal.compress.flate;
@:structInit @:using(stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension) class T_decompressor {
    public var _r : stdgo._internal.compress.flate.Flate_reader.Reader = (null : stdgo._internal.compress.flate.Flate_reader.Reader);
    public var _rBuf : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
    public var _roffset : stdgo.GoInt64 = 0;
    public var _b : stdgo.GoUInt32 = 0;
    public var _nb : stdgo.GoUInt = 0;
    public var _h1 : stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder = ({} : stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder);
    public var _h2 : stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder = ({} : stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder);
    public var _bits : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>> = new stdgo.GoArray<stdgo.GoInt>(316, 316).__setNumber32__();
    public var _codebits : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>> = new stdgo.GoArray<stdgo.GoInt>(19, 19).__setNumber32__();
    public var _dict : stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder = ({} : stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder);
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
    public var _step : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> -> Void = null;
    public var _stepState : stdgo.GoInt = 0;
    public var _final : Bool = false;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _toRead : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _hl : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder> = (null : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder>);
    public var _hd : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder> = (null : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder>);
    public var _copyLen : stdgo.GoInt = 0;
    public var _copyDist : stdgo.GoInt = 0;
    public function new(?_r:stdgo._internal.compress.flate.Flate_reader.Reader, ?_rBuf:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, ?_roffset:stdgo.GoInt64, ?_b:stdgo.GoUInt32, ?_nb:stdgo.GoUInt, ?_h1:stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder, ?_h2:stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder, ?_bits:stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>, ?_codebits:stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>, ?_dict:stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_step:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> -> Void, ?_stepState:stdgo.GoInt, ?_final:Bool, ?_err:stdgo.Error, ?_toRead:stdgo.Slice<stdgo.GoUInt8>, ?_hl:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder>, ?_hd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder>, ?_copyLen:stdgo.GoInt, ?_copyDist:stdgo.GoInt) {
        if (_r != null) this._r = _r;
        if (_rBuf != null) this._rBuf = _rBuf;
        if (_roffset != null) this._roffset = _roffset;
        if (_b != null) this._b = _b;
        if (_nb != null) this._nb = _nb;
        if (_h1 != null) this._h1 = _h1;
        if (_h2 != null) this._h2 = _h2;
        if (_bits != null) this._bits = _bits;
        if (_codebits != null) this._codebits = _codebits;
        if (_dict != null) this._dict = _dict;
        if (_buf != null) this._buf = _buf;
        if (_step != null) this._step = _step;
        if (_stepState != null) this._stepState = _stepState;
        if (_final != null) this._final = _final;
        if (_err != null) this._err = _err;
        if (_toRead != null) this._toRead = _toRead;
        if (_hl != null) this._hl = _hl;
        if (_hd != null) this._hd = _hd;
        if (_copyLen != null) this._copyLen = _copyLen;
        if (_copyDist != null) this._copyDist = _copyDist;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decompressor(
_r,
_rBuf,
_roffset,
_b,
_nb,
_h1,
_h2,
_bits,
_codebits,
_dict,
_buf,
_step,
_stepState,
_final,
_err,
_toRead,
_hl,
_hd,
_copyLen,
_copyDist);
    }
}

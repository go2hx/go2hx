package stdgo.compress.flate;
class T_huffmanEncoder_static_extension {
    static public function _generate(_h:T_huffmanEncoder, _freq:Array<StdTypes.Int>, _maxBits:StdTypes.Int):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder>);
        final _freq = ([for (i in _freq) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        final _maxBits = (_maxBits : stdgo.GoInt32);
        stdgo._internal.compress.flate.Flate_T_huffmanEncoder_static_extension.T_huffmanEncoder_static_extension._generate(_h, _freq, _maxBits);
    }
    static public function _assignEncodingAndSize(_h:T_huffmanEncoder, _bitCount:Array<StdTypes.Int>, _list:Array<T_literalNode>):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder>);
        final _bitCount = ([for (i in _bitCount) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        final _list = ([for (i in _list) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode>);
        stdgo._internal.compress.flate.Flate_T_huffmanEncoder_static_extension.T_huffmanEncoder_static_extension._assignEncodingAndSize(_h, _bitCount, _list);
    }
    static public function _bitCounts(_h:T_huffmanEncoder, _list:Array<T_literalNode>, _maxBits:StdTypes.Int):Array<StdTypes.Int> {
        final _h = (_h : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder>);
        final _list = ([for (i in _list) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode>);
        final _maxBits = (_maxBits : stdgo.GoInt32);
        return [for (i in stdgo._internal.compress.flate.Flate_T_huffmanEncoder_static_extension.T_huffmanEncoder_static_extension._bitCounts(_h, _list, _maxBits)) i];
    }
    static public function _bitLength(_h:T_huffmanEncoder, _freq:Array<StdTypes.Int>):StdTypes.Int {
        final _h = (_h : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder>);
        final _freq = ([for (i in _freq) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return stdgo._internal.compress.flate.Flate_T_huffmanEncoder_static_extension.T_huffmanEncoder_static_extension._bitLength(_h, _freq);
    }
}

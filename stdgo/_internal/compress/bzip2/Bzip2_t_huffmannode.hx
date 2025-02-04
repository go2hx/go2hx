package stdgo._internal.compress.bzip2;
@:structInit @:using(stdgo._internal.compress.bzip2.Bzip2_t_huffmannode_static_extension.T_huffmanNode_static_extension) class T_huffmanNode {
    public var _left : stdgo.GoUInt16 = 0;
    public var _right : stdgo.GoUInt16 = 0;
    public var _leftValue : stdgo.GoUInt16 = 0;
    public var _rightValue : stdgo.GoUInt16 = 0;
    public function new(?_left:stdgo.GoUInt16, ?_right:stdgo.GoUInt16, ?_leftValue:stdgo.GoUInt16, ?_rightValue:stdgo.GoUInt16) {
        if (_left != null) this._left = _left;
        if (_right != null) this._right = _right;
        if (_leftValue != null) this._leftValue = _leftValue;
        if (_rightValue != null) this._rightValue = _rightValue;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_huffmanNode(_left, _right, _leftValue, _rightValue);
    }
}

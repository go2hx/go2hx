package stdgo.compress.bzip2;
@:structInit @:using(stdgo.compress.bzip2.Bzip2.T_huffmanNode_static_extension) abstract T_huffmanNode(stdgo._internal.compress.bzip2.Bzip2_T_huffmanNode.T_huffmanNode) from stdgo._internal.compress.bzip2.Bzip2_T_huffmanNode.T_huffmanNode to stdgo._internal.compress.bzip2.Bzip2_T_huffmanNode.T_huffmanNode {
    public var _left(get, set) : std.UInt;
    function get__left():std.UInt return this._left;
    function set__left(v:std.UInt):std.UInt {
        this._left = (v : stdgo.GoUInt16);
        return v;
    }
    public var _right(get, set) : std.UInt;
    function get__right():std.UInt return this._right;
    function set__right(v:std.UInt):std.UInt {
        this._right = (v : stdgo.GoUInt16);
        return v;
    }
    public var _leftValue(get, set) : std.UInt;
    function get__leftValue():std.UInt return this._leftValue;
    function set__leftValue(v:std.UInt):std.UInt {
        this._leftValue = (v : stdgo.GoUInt16);
        return v;
    }
    public var _rightValue(get, set) : std.UInt;
    function get__rightValue():std.UInt return this._rightValue;
    function set__rightValue(v:std.UInt):std.UInt {
        this._rightValue = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?_left:std.UInt, ?_right:std.UInt, ?_leftValue:std.UInt, ?_rightValue:std.UInt) this = new stdgo._internal.compress.bzip2.Bzip2_T_huffmanNode.T_huffmanNode((_left : stdgo.GoUInt16), (_right : stdgo.GoUInt16), (_leftValue : stdgo.GoUInt16), (_rightValue : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

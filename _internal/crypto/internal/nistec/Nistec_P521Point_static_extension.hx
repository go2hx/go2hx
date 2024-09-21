package _internal.crypto.internal.nistec;
@:keep @:allow(_internal.crypto.internal.nistec.Nistec.P521Point_asInterface) class P521Point_static_extension {
    @:keep
    static public function scalarBaseMult( _p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>, _scalar:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point> = _p;
        if ((_scalar.length) != ((66 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid scalar length" : stdgo.GoString)) };
        };
        var _tables = _p._generatorTable();
        var _t = _internal.crypto.internal.nistec.Nistec_newP521Point.newP521Point();
        _p.set(_internal.crypto.internal.nistec.Nistec_newP521Point.newP521Point());
        var _tableIndex = (131 : stdgo.GoInt);
        for (__0 => _byte in _scalar) {
            var _windowValue = (_byte >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
            _tables[(_tableIndex : stdgo.GoInt)].select(_t, _windowValue);
            _p.add(_p, _t);
            _tableIndex--;
            _windowValue = (_byte & (15 : stdgo.GoUInt8) : stdgo.GoUInt8);
            _tables[(_tableIndex : stdgo.GoInt)].select(_t, _windowValue);
            _p.add(_p, _t);
            _tableIndex--;
        };
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _generatorTable( _p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>):stdgo.Ref<stdgo.GoArray<_internal.crypto.internal.nistec.Nistec_T_p521Table.T_p521Table>> {
        @:recv var _p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point> = _p;
        _internal.crypto.internal.nistec.Nistec__p521GeneratorTableOnce._p521GeneratorTableOnce.do_(function():Void {
            _internal.crypto.internal.nistec.Nistec__p521GeneratorTable._p521GeneratorTable = (stdgo.Go.setRef(new stdgo.GoArray<_internal.crypto.internal.nistec.Nistec_T_p521Table.T_p521Table>(132, 132, ...[for (i in 0 ... 132) new _internal.crypto.internal.nistec.Nistec_T_p521Table.T_p521Table(15, 15, ...[for (i in 0 ... 15) (null : stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>)])])) : stdgo.Ref<stdgo.GoArray<_internal.crypto.internal.nistec.Nistec_T_p521Table.T_p521Table>>);
            var _base = _internal.crypto.internal.nistec.Nistec_newP521Point.newP521Point().setGenerator();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (132 : stdgo.GoInt) : Bool), _i++, {
                    _internal.crypto.internal.nistec.Nistec__p521GeneratorTable._p521GeneratorTable[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)] = _internal.crypto.internal.nistec.Nistec_newP521Point.newP521Point().set(_base);
                    {
                        var _j = (1 : stdgo.GoInt);
                        stdgo.Go.cfor((_j < (15 : stdgo.GoInt) : Bool), _j++, {
                            _internal.crypto.internal.nistec.Nistec__p521GeneratorTable._p521GeneratorTable[(_i : stdgo.GoInt)][(_j : stdgo.GoInt)] = _internal.crypto.internal.nistec.Nistec_newP521Point.newP521Point().add(_internal.crypto.internal.nistec.Nistec__p521GeneratorTable._p521GeneratorTable[(_i : stdgo.GoInt)][(_j - (1 : stdgo.GoInt) : stdgo.GoInt)], _base);
                        });
                    };
                    _base.double(_base);
                    _base.double(_base);
                    _base.double(_base);
                    _base.double(_base);
                });
            };
        });
        return _internal.crypto.internal.nistec.Nistec__p521GeneratorTable._p521GeneratorTable;
    }
    @:keep
    static public function scalarMult( _p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>, _q:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>, _scalar:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point> = _p;
        var _table:_internal.crypto.internal.nistec.Nistec_T_p521Table.T_p521Table = (new stdgo.GoArray<stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>>(15, 15, ...[
_internal.crypto.internal.nistec.Nistec_newP521Point.newP521Point(),
_internal.crypto.internal.nistec.Nistec_newP521Point.newP521Point(),
_internal.crypto.internal.nistec.Nistec_newP521Point.newP521Point(),
_internal.crypto.internal.nistec.Nistec_newP521Point.newP521Point(),
_internal.crypto.internal.nistec.Nistec_newP521Point.newP521Point(),
_internal.crypto.internal.nistec.Nistec_newP521Point.newP521Point(),
_internal.crypto.internal.nistec.Nistec_newP521Point.newP521Point(),
_internal.crypto.internal.nistec.Nistec_newP521Point.newP521Point(),
_internal.crypto.internal.nistec.Nistec_newP521Point.newP521Point(),
_internal.crypto.internal.nistec.Nistec_newP521Point.newP521Point(),
_internal.crypto.internal.nistec.Nistec_newP521Point.newP521Point(),
_internal.crypto.internal.nistec.Nistec_newP521Point.newP521Point(),
_internal.crypto.internal.nistec.Nistec_newP521Point.newP521Point(),
_internal.crypto.internal.nistec.Nistec_newP521Point.newP521Point(),
_internal.crypto.internal.nistec.Nistec_newP521Point.newP521Point()]) : _internal.crypto.internal.nistec.Nistec_T_p521Table.T_p521Table);
        _table[(0 : stdgo.GoInt)].set(_q);
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (15 : stdgo.GoInt) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                _table[(_i : stdgo.GoInt)].double(_table[(_i / (2 : stdgo.GoInt) : stdgo.GoInt)]);
                _table[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].add(_table[(_i : stdgo.GoInt)], _q);
            });
        };
        var _t = _internal.crypto.internal.nistec.Nistec_newP521Point.newP521Point();
        _p.set(_internal.crypto.internal.nistec.Nistec_newP521Point.newP521Point());
        for (_i => _byte in _scalar) {
            if (_i != ((0 : stdgo.GoInt))) {
                _p.double(_p);
                _p.double(_p);
                _p.double(_p);
                _p.double(_p);
            };
            var _windowValue = (_byte >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
            _table.select(_t, _windowValue);
            _p.add(_p, _t);
            _p.double(_p);
            _p.double(_p);
            _p.double(_p);
            _p.double(_p);
            _windowValue = (_byte & (15 : stdgo.GoUInt8) : stdgo.GoUInt8);
            _table.select(_t, _windowValue);
            _p.add(_p, _t);
        };
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function select( _q:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>, _p1:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>, _p2:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>, _cond:stdgo.GoInt):stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point> {
        @:recv var _q:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point> = _q;
        _q._x.select(_p1._x, _p2._x, _cond);
        _q._y.select(_p1._y, _p2._y, _cond);
        _q._z.select(_p1._z, _p2._z, _cond);
        return _q;
    }
    @:keep
    static public function double( _q:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>, _p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>):stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point> {
        @:recv var _q:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point> = _q;
        var _t0 = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).square(_p._x);
        var _t1 = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).square(_p._y);
        var _t2 = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).square(_p._z);
        var _t3 = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).mul(_p._x, _p._y);
        _t3.add(_t3, _t3);
        var _z3 = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).mul(_p._x, _p._z);
        _z3.add(_z3, _z3);
        var _y3 = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).mul(_internal.crypto.internal.nistec.Nistec__p521B._p521B(), _t2);
        _y3.sub(_y3, _z3);
        var _x3 = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).add(_y3, _y3);
        _y3.add(_x3, _y3);
        _x3.sub(_t1, _y3);
        _y3.add(_t1, _y3);
        _y3.mul(_x3, _y3);
        _x3.mul(_x3, _t3);
        _t3.add(_t2, _t2);
        _t2.add(_t2, _t3);
        _z3.mul(_internal.crypto.internal.nistec.Nistec__p521B._p521B(), _z3);
        _z3.sub(_z3, _t2);
        _z3.sub(_z3, _t0);
        _t3.add(_z3, _z3);
        _z3.add(_z3, _t3);
        _t3.add(_t0, _t0);
        _t0.add(_t3, _t0);
        _t0.sub(_t0, _t2);
        _t0.mul(_t0, _z3);
        _y3.add(_y3, _t0);
        _t0.mul(_p._y, _p._z);
        _t0.add(_t0, _t0);
        _z3.mul(_t0, _z3);
        _x3.sub(_x3, _z3);
        _z3.mul(_t0, _t1);
        _z3.add(_z3, _z3);
        _z3.add(_z3, _z3);
        _q._x.set(_x3);
        _q._y.set(_y3);
        _q._z.set(_z3);
        return _q;
    }
    @:keep
    static public function add( _q:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>, _p1:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>, _p2:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>):stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point> {
        @:recv var _q:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point> = _q;
        var _t0 = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).mul(_p1._x, _p2._x);
        var _t1 = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).mul(_p1._y, _p2._y);
        var _t2 = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).mul(_p1._z, _p2._z);
        var _t3 = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).add(_p1._x, _p1._y);
        var _t4 = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).add(_p2._x, _p2._y);
        _t3.mul(_t3, _t4);
        _t4.add(_t0, _t1);
        _t3.sub(_t3, _t4);
        _t4.add(_p1._y, _p1._z);
        var _x3 = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).add(_p2._y, _p2._z);
        _t4.mul(_t4, _x3);
        _x3.add(_t1, _t2);
        _t4.sub(_t4, _x3);
        _x3.add(_p1._x, _p1._z);
        var _y3 = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).add(_p2._x, _p2._z);
        _x3.mul(_x3, _y3);
        _y3.add(_t0, _t2);
        _y3.sub(_x3, _y3);
        var _z3 = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).mul(_internal.crypto.internal.nistec.Nistec__p521B._p521B(), _t2);
        _x3.sub(_y3, _z3);
        _z3.add(_x3, _x3);
        _x3.add(_x3, _z3);
        _z3.sub(_t1, _x3);
        _x3.add(_t1, _x3);
        _y3.mul(_internal.crypto.internal.nistec.Nistec__p521B._p521B(), _y3);
        _t1.add(_t2, _t2);
        _t2.add(_t1, _t2);
        _y3.sub(_y3, _t2);
        _y3.sub(_y3, _t0);
        _t1.add(_y3, _y3);
        _y3.add(_t1, _y3);
        _t1.add(_t0, _t0);
        _t0.add(_t1, _t0);
        _t0.sub(_t0, _t2);
        _t1.mul(_t4, _y3);
        _t2.mul(_t0, _y3);
        _y3.mul(_x3, _z3);
        _y3.add(_y3, _t2);
        _x3.mul(_t3, _x3);
        _x3.sub(_x3, _t1);
        _z3.mul(_t4, _z3);
        _t1.mul(_t3, _t0);
        _z3.add(_z3, _t1);
        _q._x.set(_x3);
        _q._y.set(_y3);
        _q._z.set(_z3);
        return _q;
    }
    @:keep
    static public function _bytesCompressed( _p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>, _out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point> = _p;
        if (_p._z.isZero() == ((1 : stdgo.GoInt))) {
            return ((_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__((0 : stdgo.GoUInt8)));
        };
        var _zinv = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).invert(_p._z);
        var _x = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).mul(_p._x, _zinv);
        var _y = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).mul(_p._y, _zinv);
        var _buf = ((_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__((2 : stdgo.GoUInt8)));
        _buf[(0 : stdgo.GoInt)] = (_buf[(0 : stdgo.GoInt)] | ((_y.bytes()[(65 : stdgo.GoInt)] & (1 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        _buf = (_buf.__append__(...(_x.bytes() : Array<stdgo.GoUInt8>)));
        return _buf;
    }
    @:keep
    static public function bytesCompressed( _p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point> = _p;
        var _out:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(67, 67, ...[for (i in 0 ... 67) (0 : stdgo.GoUInt8)]);
        return _p._bytesCompressed((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
    }
    @:keep
    static public function _bytesX( _p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>, _out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point> = _p;
        if (_p._z.isZero() == ((1 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("P521 point is the point at infinity" : stdgo.GoString)) };
        };
        var _zinv = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).invert(_p._z);
        var _x = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).mul(_p._x, _zinv);
        return { _0 : ((_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_x.bytes() : Array<stdgo.GoUInt8>))), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function bytesX( _p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point> = _p;
        var _out:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(66, 66, ...[for (i in 0 ... 66) (0 : stdgo.GoUInt8)]);
        return _p._bytesX((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
    }
    @:keep
    static public function _bytes( _p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>, _out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point> = _p;
        if (_p._z.isZero() == ((1 : stdgo.GoInt))) {
            return ((_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__((0 : stdgo.GoUInt8)));
        };
        var _zinv = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).invert(_p._z);
        var _x = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).mul(_p._x, _zinv);
        var _y = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).mul(_p._y, _zinv);
        var _buf = ((_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__((4 : stdgo.GoUInt8)));
        _buf = (_buf.__append__(...(_x.bytes() : Array<stdgo.GoUInt8>)));
        _buf = (_buf.__append__(...(_y.bytes() : Array<stdgo.GoUInt8>)));
        return _buf;
    }
    @:keep
    static public function bytes( _p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point> = _p;
        var _out:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(133, 133, ...[for (i in 0 ... 133) (0 : stdgo.GoUInt8)]);
        return _p._bytes((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
    }
    @:keep
    static public function setBytes( _p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point> = _p;
        if (((_b.length == (1 : stdgo.GoInt)) && (_b[(0 : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : _p.set(_internal.crypto.internal.nistec.Nistec_newP521Point.newP521Point()), _1 : (null : stdgo.Error) };
        } else if (((_b.length == (133 : stdgo.GoInt)) && (_b[(0 : stdgo.GoInt)] == (4 : stdgo.GoUInt8)) : Bool)) {
            var __tmp__ = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).setBytes((_b.__slice__((1 : stdgo.GoInt), (67 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _x:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            var __tmp__ = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).setBytes((_b.__slice__((67 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _y:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            {
                var _err = (_internal.crypto.internal.nistec.Nistec__p521CheckOnCurve._p521CheckOnCurve(_x, _y) : stdgo.Error);
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            _p._x.set(_x);
            _p._y.set(_y);
            _p._z.one();
            return { _0 : _p, _1 : (null : stdgo.Error) };
        } else if (((_b.length == (67 : stdgo.GoInt)) && (((_b[(0 : stdgo.GoInt)] == (2 : stdgo.GoUInt8)) || (_b[(0 : stdgo.GoInt)] == (3 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            var __tmp__ = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).setBytes((_b.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _x:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            var _y = _internal.crypto.internal.nistec.Nistec__p521Polynomial._p521Polynomial((stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>), _x);
            if (!_internal.crypto.internal.nistec.Nistec__p521Sqrt._p521Sqrt(_y, _y)) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid P521 compressed point encoding" : stdgo.GoString)) };
            };
            var _otherRoot = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>);
            _otherRoot.sub(_otherRoot, _y);
            var _cond = ((_y.bytes()[(65 : stdgo.GoInt)] & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) ^ (_b[(0 : stdgo.GoInt)] & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
            _y.select(_otherRoot, _y, (_cond : stdgo.GoInt));
            _p._x.set(_x);
            _p._y.set(_y);
            _p._z.one();
            return { _0 : _p, _1 : (null : stdgo.Error) };
        } else {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid P521 point encoding" : stdgo.GoString)) };
        };
    }
    @:keep
    static public function set( _p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>, _q:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>):stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point> {
        @:recv var _p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point> = _p;
        _p._x.set(_q._x);
        _p._y.set(_q._y);
        _p._z.set(_q._z);
        return _p;
    }
    @:keep
    static public function setGenerator( _p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>):stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point> {
        @:recv var _p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point> = _p;
        _p._x.setBytes((new stdgo.Slice<stdgo.GoUInt8>(66, 66, ...[
(0 : stdgo.GoUInt8),
(198 : stdgo.GoUInt8),
(133 : stdgo.GoUInt8),
(142 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(183 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(233 : stdgo.GoUInt8),
(205 : stdgo.GoUInt8),
(158 : stdgo.GoUInt8),
(62 : stdgo.GoUInt8),
(203 : stdgo.GoUInt8),
(102 : stdgo.GoUInt8),
(35 : stdgo.GoUInt8),
(149 : stdgo.GoUInt8),
(180 : stdgo.GoUInt8),
(66 : stdgo.GoUInt8),
(156 : stdgo.GoUInt8),
(100 : stdgo.GoUInt8),
(129 : stdgo.GoUInt8),
(57 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(63 : stdgo.GoUInt8),
(181 : stdgo.GoUInt8),
(33 : stdgo.GoUInt8),
(248 : stdgo.GoUInt8),
(40 : stdgo.GoUInt8),
(175 : stdgo.GoUInt8),
(96 : stdgo.GoUInt8),
(107 : stdgo.GoUInt8),
(77 : stdgo.GoUInt8),
(61 : stdgo.GoUInt8),
(186 : stdgo.GoUInt8),
(161 : stdgo.GoUInt8),
(75 : stdgo.GoUInt8),
(94 : stdgo.GoUInt8),
(119 : stdgo.GoUInt8),
(239 : stdgo.GoUInt8),
(231 : stdgo.GoUInt8),
(89 : stdgo.GoUInt8),
(40 : stdgo.GoUInt8),
(254 : stdgo.GoUInt8),
(29 : stdgo.GoUInt8),
(193 : stdgo.GoUInt8),
(39 : stdgo.GoUInt8),
(162 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(168 : stdgo.GoUInt8),
(222 : stdgo.GoUInt8),
(51 : stdgo.GoUInt8),
(72 : stdgo.GoUInt8),
(179 : stdgo.GoUInt8),
(193 : stdgo.GoUInt8),
(133 : stdgo.GoUInt8),
(106 : stdgo.GoUInt8),
(66 : stdgo.GoUInt8),
(155 : stdgo.GoUInt8),
(249 : stdgo.GoUInt8),
(126 : stdgo.GoUInt8),
(126 : stdgo.GoUInt8),
(49 : stdgo.GoUInt8),
(194 : stdgo.GoUInt8),
(229 : stdgo.GoUInt8),
(189 : stdgo.GoUInt8),
(102 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        _p._y.setBytes((new stdgo.Slice<stdgo.GoUInt8>(66, 66, ...[
(1 : stdgo.GoUInt8),
(24 : stdgo.GoUInt8),
(57 : stdgo.GoUInt8),
(41 : stdgo.GoUInt8),
(106 : stdgo.GoUInt8),
(120 : stdgo.GoUInt8),
(154 : stdgo.GoUInt8),
(59 : stdgo.GoUInt8),
(192 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(92 : stdgo.GoUInt8),
(138 : stdgo.GoUInt8),
(95 : stdgo.GoUInt8),
(180 : stdgo.GoUInt8),
(44 : stdgo.GoUInt8),
(125 : stdgo.GoUInt8),
(27 : stdgo.GoUInt8),
(217 : stdgo.GoUInt8),
(152 : stdgo.GoUInt8),
(245 : stdgo.GoUInt8),
(68 : stdgo.GoUInt8),
(73 : stdgo.GoUInt8),
(87 : stdgo.GoUInt8),
(155 : stdgo.GoUInt8),
(68 : stdgo.GoUInt8),
(104 : stdgo.GoUInt8),
(23 : stdgo.GoUInt8),
(175 : stdgo.GoUInt8),
(189 : stdgo.GoUInt8),
(23 : stdgo.GoUInt8),
(39 : stdgo.GoUInt8),
(62 : stdgo.GoUInt8),
(102 : stdgo.GoUInt8),
(44 : stdgo.GoUInt8),
(151 : stdgo.GoUInt8),
(238 : stdgo.GoUInt8),
(114 : stdgo.GoUInt8),
(153 : stdgo.GoUInt8),
(94 : stdgo.GoUInt8),
(244 : stdgo.GoUInt8),
(38 : stdgo.GoUInt8),
(64 : stdgo.GoUInt8),
(197 : stdgo.GoUInt8),
(80 : stdgo.GoUInt8),
(185 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(63 : stdgo.GoUInt8),
(173 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(97 : stdgo.GoUInt8),
(53 : stdgo.GoUInt8),
(60 : stdgo.GoUInt8),
(112 : stdgo.GoUInt8),
(134 : stdgo.GoUInt8),
(162 : stdgo.GoUInt8),
(114 : stdgo.GoUInt8),
(194 : stdgo.GoUInt8),
(64 : stdgo.GoUInt8),
(136 : stdgo.GoUInt8),
(190 : stdgo.GoUInt8),
(148 : stdgo.GoUInt8),
(118 : stdgo.GoUInt8),
(159 : stdgo.GoUInt8),
(209 : stdgo.GoUInt8),
(102 : stdgo.GoUInt8),
(80 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        _p._z.one();
        return _p;
    }
}

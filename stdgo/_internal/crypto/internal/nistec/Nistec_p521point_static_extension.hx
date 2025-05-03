package stdgo._internal.crypto.internal.nistec;
@:keep @:allow(stdgo._internal.crypto.internal.nistec.Nistec.P521Point_asInterface) class P521Point_static_extension {
    @:keep
    @:tdfield
    static public function scalarBaseMult( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>, _scalar:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point> = _p;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L413"
        if ((_scalar.length) != ((66 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L414"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid scalar length" : stdgo.GoString)) };
        };
        var _tables = _p._generatorTable();
        var _t = stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L425"
        _p.set(stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point());
        var _tableIndex = (131 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L427"
        for (__0 => _byte in _scalar) {
            var _windowValue = (_byte >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L429"
            _tables[(_tableIndex : stdgo.GoInt)].select(_t, _windowValue);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L430"
            _p.add(_p, _t);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L431"
            _tableIndex--;
            _windowValue = (_byte & (15 : stdgo.GoUInt8) : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L434"
            _tables[(_tableIndex : stdgo.GoInt)].select(_t, _windowValue);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L435"
            _p.add(_p, _t);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L436"
            _tableIndex--;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L439"
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _generatorTable( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>):stdgo.Ref<stdgo.GoArray<stdgo._internal.crypto.internal.nistec.Nistec_t_p521table.T_p521Table>> {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point> = _p;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L393"
        stdgo._internal.crypto.internal.nistec.Nistec__p521generatortableonce._p521GeneratorTableOnce.do_(function():Void {
            stdgo._internal.crypto.internal.nistec.Nistec__p521generatortable._p521GeneratorTable = (stdgo.Go.setRef(new stdgo.GoArray<stdgo._internal.crypto.internal.nistec.Nistec_t_p521table.T_p521Table>(132, 132, ...[for (i in 0 ... (132 > 132 ? 132 : 132 : stdgo.GoInt).toBasic()) new stdgo._internal.crypto.internal.nistec.Nistec_t_p521table.T_p521Table(15, 15, ...[for (i in 0 ... 15) (null : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>)])])) : stdgo.Ref<stdgo.GoArray<stdgo._internal.crypto.internal.nistec.Nistec_t_p521table.T_p521Table>>);
            var _base = stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point().setGenerator();
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L396"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (132 : stdgo.GoInt) : Bool)) {
                    stdgo._internal.crypto.internal.nistec.Nistec__p521generatortable._p521GeneratorTable[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)] = stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point().set(_base);
//"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L398"
                    {
                        var _j = (1 : stdgo.GoInt);
                        while ((_j < (15 : stdgo.GoInt) : Bool)) {
                            stdgo._internal.crypto.internal.nistec.Nistec__p521generatortable._p521GeneratorTable[(_i : stdgo.GoInt)][(_j : stdgo.GoInt)] = stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point().add(stdgo._internal.crypto.internal.nistec.Nistec__p521generatortable._p521GeneratorTable[(_i : stdgo.GoInt)][(_j - (1 : stdgo.GoInt) : stdgo.GoInt)], _base);
                            _j++;
                        };
                    };
//"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L401"
                    _base.double(_base);
//"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L402"
                    _base.double(_base);
//"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L403"
                    _base.double(_base);
//"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L404"
                    _base.double(_base);
                    _i++;
                };
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L407"
        return stdgo._internal.crypto.internal.nistec.Nistec__p521generatortable._p521GeneratorTable;
    }
    @:keep
    @:tdfield
    static public function scalarMult( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>, _q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>, _scalar:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point> = _p;
        var _table = (new stdgo.GoArray<stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>>(15, 15, ...[
stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point()]) : stdgo._internal.crypto.internal.nistec.Nistec_t_p521table.T_p521Table);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L349"
        _table[(0 : stdgo.GoInt)].set(_q);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L350"
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (15 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L351"
                _table[(_i : stdgo.GoInt)].double(_table[(_i / (2 : stdgo.GoInt) : stdgo.GoInt)]);
//"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L352"
                _table[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].add(_table[(_i : stdgo.GoInt)], _q);
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        var _t = stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L358"
        _p.set(stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point());
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L359"
        for (_i => _byte in _scalar) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L362"
            if (_i != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L363"
                _p.double(_p);
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L364"
                _p.double(_p);
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L365"
                _p.double(_p);
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L366"
                _p.double(_p);
            };
            var _windowValue = (_byte >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L370"
            _table.select(_t, _windowValue);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L371"
            _p.add(_p, _t);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L373"
            _p.double(_p);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L374"
            _p.double(_p);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L375"
            _p.double(_p);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L376"
            _p.double(_p);
            _windowValue = (_byte & (15 : stdgo.GoUInt8) : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L379"
            _table.select(_t, _windowValue);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L380"
            _p.add(_p, _t);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L383"
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function select( _q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>, _p1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>, _p2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>, _cond:stdgo.GoInt):stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point> {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point> = _q;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L317"
        (@:checkr _q ?? throw "null pointer dereference")._x.select((@:checkr _p1 ?? throw "null pointer dereference")._x, (@:checkr _p2 ?? throw "null pointer dereference")._x, _cond);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L318"
        (@:checkr _q ?? throw "null pointer dereference")._y.select((@:checkr _p1 ?? throw "null pointer dereference")._y, (@:checkr _p2 ?? throw "null pointer dereference")._y, _cond);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L319"
        (@:checkr _q ?? throw "null pointer dereference")._z.select((@:checkr _p1 ?? throw "null pointer dereference")._z, (@:checkr _p2 ?? throw "null pointer dereference")._z, _cond);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L320"
        return _q;
    }
    @:keep
    @:tdfield
    static public function double( _q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>, _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point> {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point> = _q;
        var _t0 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).square((@:checkr _p ?? throw "null pointer dereference")._x);
        var _t1 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).square((@:checkr _p ?? throw "null pointer dereference")._y);
        var _t2 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).square((@:checkr _p ?? throw "null pointer dereference")._z);
        var _t3 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).mul((@:checkr _p ?? throw "null pointer dereference")._x, (@:checkr _p ?? throw "null pointer dereference")._y);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L278"
        _t3.add(_t3, _t3);
        var _z3 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).mul((@:checkr _p ?? throw "null pointer dereference")._x, (@:checkr _p ?? throw "null pointer dereference")._z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L280"
        _z3.add(_z3, _z3);
        var _y3 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).mul(stdgo._internal.crypto.internal.nistec.Nistec__p521b._p521B(), _t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L282"
        _y3.sub(_y3, _z3);
        var _x3 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).add(_y3, _y3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L284"
        _y3.add(_x3, _y3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L285"
        _x3.sub(_t1, _y3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L286"
        _y3.add(_t1, _y3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L287"
        _y3.mul(_x3, _y3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L288"
        _x3.mul(_x3, _t3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L289"
        _t3.add(_t2, _t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L290"
        _t2.add(_t2, _t3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L291"
        _z3.mul(stdgo._internal.crypto.internal.nistec.Nistec__p521b._p521B(), _z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L292"
        _z3.sub(_z3, _t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L293"
        _z3.sub(_z3, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L294"
        _t3.add(_z3, _z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L295"
        _z3.add(_z3, _t3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L296"
        _t3.add(_t0, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L297"
        _t0.add(_t3, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L298"
        _t0.sub(_t0, _t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L299"
        _t0.mul(_t0, _z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L300"
        _y3.add(_y3, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L301"
        _t0.mul((@:checkr _p ?? throw "null pointer dereference")._y, (@:checkr _p ?? throw "null pointer dereference")._z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L302"
        _t0.add(_t0, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L303"
        _z3.mul(_t0, _z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L304"
        _x3.sub(_x3, _z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L305"
        _z3.mul(_t0, _t1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L306"
        _z3.add(_z3, _z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L307"
        _z3.add(_z3, _z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L309"
        (@:checkr _q ?? throw "null pointer dereference")._x.set(_x3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L310"
        (@:checkr _q ?? throw "null pointer dereference")._y.set(_y3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L311"
        (@:checkr _q ?? throw "null pointer dereference")._z.set(_z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L312"
        return _q;
    }
    @:keep
    @:tdfield
    static public function add( _q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>, _p1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>, _p2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point> {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point> = _q;
        var _t0 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).mul((@:checkr _p1 ?? throw "null pointer dereference")._x, (@:checkr _p2 ?? throw "null pointer dereference")._x);
        var _t1 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).mul((@:checkr _p1 ?? throw "null pointer dereference")._y, (@:checkr _p2 ?? throw "null pointer dereference")._y);
        var _t2 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).mul((@:checkr _p1 ?? throw "null pointer dereference")._z, (@:checkr _p2 ?? throw "null pointer dereference")._z);
        var _t3 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).add((@:checkr _p1 ?? throw "null pointer dereference")._x, (@:checkr _p1 ?? throw "null pointer dereference")._y);
        var _t4 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).add((@:checkr _p2 ?? throw "null pointer dereference")._x, (@:checkr _p2 ?? throw "null pointer dereference")._y);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L224"
        _t3.mul(_t3, _t4);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L225"
        _t4.add(_t0, _t1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L226"
        _t3.sub(_t3, _t4);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L227"
        _t4.add((@:checkr _p1 ?? throw "null pointer dereference")._y, (@:checkr _p1 ?? throw "null pointer dereference")._z);
        var _x3 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).add((@:checkr _p2 ?? throw "null pointer dereference")._y, (@:checkr _p2 ?? throw "null pointer dereference")._z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L229"
        _t4.mul(_t4, _x3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L230"
        _x3.add(_t1, _t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L231"
        _t4.sub(_t4, _x3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L232"
        _x3.add((@:checkr _p1 ?? throw "null pointer dereference")._x, (@:checkr _p1 ?? throw "null pointer dereference")._z);
        var _y3 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).add((@:checkr _p2 ?? throw "null pointer dereference")._x, (@:checkr _p2 ?? throw "null pointer dereference")._z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L234"
        _x3.mul(_x3, _y3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L235"
        _y3.add(_t0, _t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L236"
        _y3.sub(_x3, _y3);
        var _z3 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).mul(stdgo._internal.crypto.internal.nistec.Nistec__p521b._p521B(), _t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L238"
        _x3.sub(_y3, _z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L239"
        _z3.add(_x3, _x3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L240"
        _x3.add(_x3, _z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L241"
        _z3.sub(_t1, _x3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L242"
        _x3.add(_t1, _x3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L243"
        _y3.mul(stdgo._internal.crypto.internal.nistec.Nistec__p521b._p521B(), _y3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L244"
        _t1.add(_t2, _t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L245"
        _t2.add(_t1, _t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L246"
        _y3.sub(_y3, _t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L247"
        _y3.sub(_y3, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L248"
        _t1.add(_y3, _y3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L249"
        _y3.add(_t1, _y3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L250"
        _t1.add(_t0, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L251"
        _t0.add(_t1, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L252"
        _t0.sub(_t0, _t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L253"
        _t1.mul(_t4, _y3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L254"
        _t2.mul(_t0, _y3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L255"
        _y3.mul(_x3, _z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L256"
        _y3.add(_y3, _t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L257"
        _x3.mul(_t3, _x3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L258"
        _x3.sub(_x3, _t1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L259"
        _z3.mul(_t4, _z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L260"
        _t1.mul(_t3, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L261"
        _z3.add(_z3, _t1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L263"
        (@:checkr _q ?? throw "null pointer dereference")._x.set(_x3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L264"
        (@:checkr _q ?? throw "null pointer dereference")._y.set(_y3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L265"
        (@:checkr _q ?? throw "null pointer dereference")._z.set(_z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L266"
        return _q;
    }
    @:keep
    @:tdfield
    static public function _bytesCompressed( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>, _out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point> = _p;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L198"
        if ((@:checkr _p ?? throw "null pointer dereference")._z.isZero() == ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L199"
            return ((_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__((0 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _zinv = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).invert((@:checkr _p ?? throw "null pointer dereference")._z);
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).mul((@:checkr _p ?? throw "null pointer dereference")._x, _zinv);
        var _y = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).mul((@:checkr _p ?? throw "null pointer dereference")._y, _zinv);
        var _buf = ((_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__((2 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        _buf[(0 : stdgo.GoInt)] = (_buf[(0 : stdgo.GoInt)] | ((_y.bytes()[(65 : stdgo.GoInt)] & (1 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        _buf = (_buf.__append__(...(_x.bytes() : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L211"
        return _buf;
    }
    @:keep
    @:tdfield
    static public function bytesCompressed( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point> = _p;
        var _out:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(67, 67).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L194"
        return _p._bytesCompressed((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
    }
    @:keep
    @:tdfield
    static public function _bytesX( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>, _out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point> = _p;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L177"
        if ((@:checkr _p ?? throw "null pointer dereference")._z.isZero() == ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L178"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("P521 point is the point at infinity" : stdgo.GoString)) };
        };
        var _zinv = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).invert((@:checkr _p ?? throw "null pointer dereference")._z);
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).mul((@:checkr _p ?? throw "null pointer dereference")._x, _zinv);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L184"
        return { _0 : ((_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_x.bytes() : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function bytesX( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point> = _p;
        var _out:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(66, 66).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L173"
        return _p._bytesX((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
    }
    @:keep
    @:tdfield
    static public function _bytes( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>, _out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point> = _p;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L153"
        if ((@:checkr _p ?? throw "null pointer dereference")._z.isZero() == ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L154"
            return ((_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__((0 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _zinv = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).invert((@:checkr _p ?? throw "null pointer dereference")._z);
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).mul((@:checkr _p ?? throw "null pointer dereference")._x, _zinv);
        var _y = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).mul((@:checkr _p ?? throw "null pointer dereference")._y, _zinv);
        var _buf = ((_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__((4 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        _buf = (_buf.__append__(...(_x.bytes() : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        _buf = (_buf.__append__(...(_y.bytes() : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L164"
        return _buf;
    }
    @:keep
    @:tdfield
    static public function bytes( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point> = _p;
        var _out:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(133, 133).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L149"
        return _p._bytes((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
    }
    @:keep
    @:tdfield
    static public function setBytes( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point> = _p;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L57"
        if (((_b.length == (1 : stdgo.GoInt)) && (_b[(0 : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L60"
            return { _0 : _p.set(stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point()), _1 : (null : stdgo.Error) };
        } else if (((_b.length == (133 : stdgo.GoInt)) && (_b[(0 : stdgo.GoInt)] == (4 : stdgo.GoUInt8)) : Bool)) {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).setBytes((_b.__slice__((1 : stdgo.GoInt), (67 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L65"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L66"
                return { _0 : null, _1 : _err };
            };
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).setBytes((_b.__slice__((67 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _y:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L69"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L70"
                return { _0 : null, _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L72"
            {
                var _err = (stdgo._internal.crypto.internal.nistec.Nistec__p521checkoncurve._p521CheckOnCurve(_x, _y) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L73"
                    return { _0 : null, _1 : _err };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L75"
            (@:checkr _p ?? throw "null pointer dereference")._x.set(_x);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L76"
            (@:checkr _p ?? throw "null pointer dereference")._y.set(_y);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L77"
            (@:checkr _p ?? throw "null pointer dereference")._z.one();
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L78"
            return { _0 : _p, _1 : (null : stdgo.Error) };
        } else if (((_b.length == (67 : stdgo.GoInt)) && (((_b[(0 : stdgo.GoInt)] == (2 : stdgo.GoUInt8)) || (_b[(0 : stdgo.GoInt)] == (3 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).setBytes((_b.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L83"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L84"
                return { _0 : null, _1 : _err };
            };
            var _y = stdgo._internal.crypto.internal.nistec.Nistec__p521polynomial._p521Polynomial((stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>), _x);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L89"
            if (!stdgo._internal.crypto.internal.nistec.Nistec__p521sqrt._p521Sqrt(_y, _y)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L90"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid P521 compressed point encoding" : stdgo.GoString)) };
            };
            var _otherRoot = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L96"
            _otherRoot.sub(_otherRoot, _y);
            var _cond = ((_y.bytes()[(65 : stdgo.GoInt)] & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) ^ (_b[(0 : stdgo.GoInt)] & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L98"
            _y.select(_otherRoot, _y, (_cond : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L100"
            (@:checkr _p ?? throw "null pointer dereference")._x.set(_x);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L101"
            (@:checkr _p ?? throw "null pointer dereference")._y.set(_y);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L102"
            (@:checkr _p ?? throw "null pointer dereference")._z.one();
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L103"
            return { _0 : _p, _1 : (null : stdgo.Error) };
        } else {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L106"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid P521 point encoding" : stdgo.GoString)) };
        };
    }
    @:keep
    @:tdfield
    static public function set( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>, _q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point> {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point> = _p;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L46"
        (@:checkr _p ?? throw "null pointer dereference")._x.set((@:checkr _q ?? throw "null pointer dereference")._x);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L47"
        (@:checkr _p ?? throw "null pointer dereference")._y.set((@:checkr _q ?? throw "null pointer dereference")._y);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L48"
        (@:checkr _p ?? throw "null pointer dereference")._z.set((@:checkr _q ?? throw "null pointer dereference")._z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L49"
        return _p;
    }
    @:keep
    @:tdfield
    static public function setGenerator( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point> {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point> = _p;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L38"
        (@:checkr _p ?? throw "null pointer dereference")._x.setBytes((new stdgo.Slice<stdgo.GoUInt8>(66, 66, ...[
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
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L39"
        (@:checkr _p ?? throw "null pointer dereference")._y.setBytes((new stdgo.Slice<stdgo.GoUInt8>(66, 66, ...[
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
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L40"
        (@:checkr _p ?? throw "null pointer dereference")._z.one();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L41"
        return _p;
    }
}

package stdgo._internal.crypto.internal.nistec;
@:keep @:allow(stdgo._internal.crypto.internal.nistec.Nistec.P384Point_asInterface) class P384Point_static_extension {
    @:keep
    @:tdfield
    static public function scalarBaseMult( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>, _scalar:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point> = _p;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L413"
        if ((_scalar.length) != ((48 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L414"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid scalar length" : stdgo.GoString)) };
        };
        var _tables = _p._generatorTable();
        var _t = stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L425"
        _p.set(stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point());
        var _tableIndex = (95 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L427"
        for (__0 => _byte in _scalar) {
            var _windowValue = (_byte >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L429"
            _tables[(_tableIndex : stdgo.GoInt)].select(_t, _windowValue);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L430"
            _p.add(_p, _t);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L431"
            _tableIndex--;
            _windowValue = (_byte & (15 : stdgo.GoUInt8) : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L434"
            _tables[(_tableIndex : stdgo.GoInt)].select(_t, _windowValue);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L435"
            _p.add(_p, _t);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L436"
            _tableIndex--;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L439"
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _generatorTable( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>):stdgo.Ref<stdgo.GoArray<stdgo._internal.crypto.internal.nistec.Nistec_t_p384table.T_p384Table>> {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point> = _p;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L393"
        stdgo._internal.crypto.internal.nistec.Nistec__p384generatortableonce._p384GeneratorTableOnce.do_(function():Void {
            stdgo._internal.crypto.internal.nistec.Nistec__p384generatortable._p384GeneratorTable = (stdgo.Go.setRef(new stdgo.GoArray<stdgo._internal.crypto.internal.nistec.Nistec_t_p384table.T_p384Table>(96, 96, ...[for (i in 0 ... (96 > 96 ? 96 : 96 : stdgo.GoInt).toBasic()) new stdgo._internal.crypto.internal.nistec.Nistec_t_p384table.T_p384Table(15, 15, ...[for (i in 0 ... 15) (null : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>)])])) : stdgo.Ref<stdgo.GoArray<stdgo._internal.crypto.internal.nistec.Nistec_t_p384table.T_p384Table>>);
            var _base = stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point().setGenerator();
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L396"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (96 : stdgo.GoInt) : Bool)) {
                    stdgo._internal.crypto.internal.nistec.Nistec__p384generatortable._p384GeneratorTable[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)] = stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point().set(_base);
//"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L398"
                    {
                        var _j = (1 : stdgo.GoInt);
                        while ((_j < (15 : stdgo.GoInt) : Bool)) {
                            stdgo._internal.crypto.internal.nistec.Nistec__p384generatortable._p384GeneratorTable[(_i : stdgo.GoInt)][(_j : stdgo.GoInt)] = stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point().add(stdgo._internal.crypto.internal.nistec.Nistec__p384generatortable._p384GeneratorTable[(_i : stdgo.GoInt)][(_j - (1 : stdgo.GoInt) : stdgo.GoInt)], _base);
                            _j++;
                        };
                    };
//"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L401"
                    _base.double(_base);
//"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L402"
                    _base.double(_base);
//"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L403"
                    _base.double(_base);
//"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L404"
                    _base.double(_base);
                    _i++;
                };
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L407"
        return stdgo._internal.crypto.internal.nistec.Nistec__p384generatortable._p384GeneratorTable;
    }
    @:keep
    @:tdfield
    static public function scalarMult( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>, _q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>, _scalar:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point> = _p;
        var _table = (new stdgo.GoArray<stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>>(15, 15, ...[
stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point()]) : stdgo._internal.crypto.internal.nistec.Nistec_t_p384table.T_p384Table);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L349"
        _table[(0 : stdgo.GoInt)].set(_q);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L350"
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (15 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L351"
                _table[(_i : stdgo.GoInt)].double(_table[(_i / (2 : stdgo.GoInt) : stdgo.GoInt)]);
//"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L352"
                _table[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].add(_table[(_i : stdgo.GoInt)], _q);
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        var _t = stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L358"
        _p.set(stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point());
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L359"
        for (_i => _byte in _scalar) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L362"
            if (_i != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L363"
                _p.double(_p);
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L364"
                _p.double(_p);
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L365"
                _p.double(_p);
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L366"
                _p.double(_p);
            };
            var _windowValue = (_byte >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L370"
            _table.select(_t, _windowValue);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L371"
            _p.add(_p, _t);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L373"
            _p.double(_p);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L374"
            _p.double(_p);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L375"
            _p.double(_p);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L376"
            _p.double(_p);
            _windowValue = (_byte & (15 : stdgo.GoUInt8) : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L379"
            _table.select(_t, _windowValue);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L380"
            _p.add(_p, _t);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L383"
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function select( _q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>, _p1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>, _p2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>, _cond:stdgo.GoInt):stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point> {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point> = _q;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L317"
        (@:checkr _q ?? throw "null pointer dereference")._x.select((@:checkr _p1 ?? throw "null pointer dereference")._x, (@:checkr _p2 ?? throw "null pointer dereference")._x, _cond);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L318"
        (@:checkr _q ?? throw "null pointer dereference")._y.select((@:checkr _p1 ?? throw "null pointer dereference")._y, (@:checkr _p2 ?? throw "null pointer dereference")._y, _cond);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L319"
        (@:checkr _q ?? throw "null pointer dereference")._z.select((@:checkr _p1 ?? throw "null pointer dereference")._z, (@:checkr _p2 ?? throw "null pointer dereference")._z, _cond);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L320"
        return _q;
    }
    @:keep
    @:tdfield
    static public function double( _q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>, _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point> {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point> = _q;
        var _t0 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).square((@:checkr _p ?? throw "null pointer dereference")._x);
        var _t1 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).square((@:checkr _p ?? throw "null pointer dereference")._y);
        var _t2 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).square((@:checkr _p ?? throw "null pointer dereference")._z);
        var _t3 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).mul((@:checkr _p ?? throw "null pointer dereference")._x, (@:checkr _p ?? throw "null pointer dereference")._y);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L278"
        _t3.add(_t3, _t3);
        var _z3 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).mul((@:checkr _p ?? throw "null pointer dereference")._x, (@:checkr _p ?? throw "null pointer dereference")._z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L280"
        _z3.add(_z3, _z3);
        var _y3 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).mul(stdgo._internal.crypto.internal.nistec.Nistec__p384b._p384B(), _t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L282"
        _y3.sub(_y3, _z3);
        var _x3 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).add(_y3, _y3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L284"
        _y3.add(_x3, _y3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L285"
        _x3.sub(_t1, _y3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L286"
        _y3.add(_t1, _y3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L287"
        _y3.mul(_x3, _y3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L288"
        _x3.mul(_x3, _t3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L289"
        _t3.add(_t2, _t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L290"
        _t2.add(_t2, _t3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L291"
        _z3.mul(stdgo._internal.crypto.internal.nistec.Nistec__p384b._p384B(), _z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L292"
        _z3.sub(_z3, _t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L293"
        _z3.sub(_z3, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L294"
        _t3.add(_z3, _z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L295"
        _z3.add(_z3, _t3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L296"
        _t3.add(_t0, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L297"
        _t0.add(_t3, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L298"
        _t0.sub(_t0, _t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L299"
        _t0.mul(_t0, _z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L300"
        _y3.add(_y3, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L301"
        _t0.mul((@:checkr _p ?? throw "null pointer dereference")._y, (@:checkr _p ?? throw "null pointer dereference")._z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L302"
        _t0.add(_t0, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L303"
        _z3.mul(_t0, _z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L304"
        _x3.sub(_x3, _z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L305"
        _z3.mul(_t0, _t1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L306"
        _z3.add(_z3, _z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L307"
        _z3.add(_z3, _z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L309"
        (@:checkr _q ?? throw "null pointer dereference")._x.set(_x3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L310"
        (@:checkr _q ?? throw "null pointer dereference")._y.set(_y3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L311"
        (@:checkr _q ?? throw "null pointer dereference")._z.set(_z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L312"
        return _q;
    }
    @:keep
    @:tdfield
    static public function add( _q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>, _p1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>, _p2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point> {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point> = _q;
        var _t0 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).mul((@:checkr _p1 ?? throw "null pointer dereference")._x, (@:checkr _p2 ?? throw "null pointer dereference")._x);
        var _t1 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).mul((@:checkr _p1 ?? throw "null pointer dereference")._y, (@:checkr _p2 ?? throw "null pointer dereference")._y);
        var _t2 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).mul((@:checkr _p1 ?? throw "null pointer dereference")._z, (@:checkr _p2 ?? throw "null pointer dereference")._z);
        var _t3 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).add((@:checkr _p1 ?? throw "null pointer dereference")._x, (@:checkr _p1 ?? throw "null pointer dereference")._y);
        var _t4 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).add((@:checkr _p2 ?? throw "null pointer dereference")._x, (@:checkr _p2 ?? throw "null pointer dereference")._y);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L224"
        _t3.mul(_t3, _t4);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L225"
        _t4.add(_t0, _t1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L226"
        _t3.sub(_t3, _t4);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L227"
        _t4.add((@:checkr _p1 ?? throw "null pointer dereference")._y, (@:checkr _p1 ?? throw "null pointer dereference")._z);
        var _x3 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).add((@:checkr _p2 ?? throw "null pointer dereference")._y, (@:checkr _p2 ?? throw "null pointer dereference")._z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L229"
        _t4.mul(_t4, _x3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L230"
        _x3.add(_t1, _t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L231"
        _t4.sub(_t4, _x3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L232"
        _x3.add((@:checkr _p1 ?? throw "null pointer dereference")._x, (@:checkr _p1 ?? throw "null pointer dereference")._z);
        var _y3 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).add((@:checkr _p2 ?? throw "null pointer dereference")._x, (@:checkr _p2 ?? throw "null pointer dereference")._z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L234"
        _x3.mul(_x3, _y3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L235"
        _y3.add(_t0, _t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L236"
        _y3.sub(_x3, _y3);
        var _z3 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).mul(stdgo._internal.crypto.internal.nistec.Nistec__p384b._p384B(), _t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L238"
        _x3.sub(_y3, _z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L239"
        _z3.add(_x3, _x3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L240"
        _x3.add(_x3, _z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L241"
        _z3.sub(_t1, _x3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L242"
        _x3.add(_t1, _x3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L243"
        _y3.mul(stdgo._internal.crypto.internal.nistec.Nistec__p384b._p384B(), _y3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L244"
        _t1.add(_t2, _t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L245"
        _t2.add(_t1, _t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L246"
        _y3.sub(_y3, _t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L247"
        _y3.sub(_y3, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L248"
        _t1.add(_y3, _y3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L249"
        _y3.add(_t1, _y3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L250"
        _t1.add(_t0, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L251"
        _t0.add(_t1, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L252"
        _t0.sub(_t0, _t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L253"
        _t1.mul(_t4, _y3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L254"
        _t2.mul(_t0, _y3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L255"
        _y3.mul(_x3, _z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L256"
        _y3.add(_y3, _t2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L257"
        _x3.mul(_t3, _x3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L258"
        _x3.sub(_x3, _t1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L259"
        _z3.mul(_t4, _z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L260"
        _t1.mul(_t3, _t0);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L261"
        _z3.add(_z3, _t1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L263"
        (@:checkr _q ?? throw "null pointer dereference")._x.set(_x3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L264"
        (@:checkr _q ?? throw "null pointer dereference")._y.set(_y3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L265"
        (@:checkr _q ?? throw "null pointer dereference")._z.set(_z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L266"
        return _q;
    }
    @:keep
    @:tdfield
    static public function _bytesCompressed( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>, _out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point> = _p;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L198"
        if ((@:checkr _p ?? throw "null pointer dereference")._z.isZero() == ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L199"
            return ((_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__((0 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _zinv = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).invert((@:checkr _p ?? throw "null pointer dereference")._z);
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).mul((@:checkr _p ?? throw "null pointer dereference")._x, _zinv);
        var _y = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).mul((@:checkr _p ?? throw "null pointer dereference")._y, _zinv);
        var _buf = ((_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__((2 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        _buf[(0 : stdgo.GoInt)] = (_buf[(0 : stdgo.GoInt)] | ((_y.bytes()[(47 : stdgo.GoInt)] & (1 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        _buf = (_buf.__append__(...(_x.bytes() : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L211"
        return _buf;
    }
    @:keep
    @:tdfield
    static public function bytesCompressed( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point> = _p;
        var _out:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(49, 49).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L194"
        return _p._bytesCompressed((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
    }
    @:keep
    @:tdfield
    static public function _bytesX( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>, _out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point> = _p;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L177"
        if ((@:checkr _p ?? throw "null pointer dereference")._z.isZero() == ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L178"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("P384 point is the point at infinity" : stdgo.GoString)) };
        };
        var _zinv = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).invert((@:checkr _p ?? throw "null pointer dereference")._z);
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).mul((@:checkr _p ?? throw "null pointer dereference")._x, _zinv);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L184"
        return { _0 : ((_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_x.bytes() : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function bytesX( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point> = _p;
        var _out:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(48, 48).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L173"
        return _p._bytesX((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
    }
    @:keep
    @:tdfield
    static public function _bytes( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>, _out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point> = _p;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L153"
        if ((@:checkr _p ?? throw "null pointer dereference")._z.isZero() == ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L154"
            return ((_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__((0 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _zinv = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).invert((@:checkr _p ?? throw "null pointer dereference")._z);
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).mul((@:checkr _p ?? throw "null pointer dereference")._x, _zinv);
        var _y = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).mul((@:checkr _p ?? throw "null pointer dereference")._y, _zinv);
        var _buf = ((_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__((4 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        _buf = (_buf.__append__(...(_x.bytes() : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        _buf = (_buf.__append__(...(_y.bytes() : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L164"
        return _buf;
    }
    @:keep
    @:tdfield
    static public function bytes( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point> = _p;
        var _out:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(97, 97).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L149"
        return _p._bytes((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
    }
    @:keep
    @:tdfield
    static public function setBytes( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point> = _p;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L57"
        if (((_b.length == (1 : stdgo.GoInt)) && (_b[(0 : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L60"
            return { _0 : _p.set(stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point()), _1 : (null : stdgo.Error) };
        } else if (((_b.length == (97 : stdgo.GoInt)) && (_b[(0 : stdgo.GoInt)] == (4 : stdgo.GoUInt8)) : Bool)) {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).setBytes((_b.__slice__((1 : stdgo.GoInt), (49 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L65"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L66"
                return { _0 : null, _1 : _err };
            };
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).setBytes((_b.__slice__((49 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _y:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L69"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L70"
                return { _0 : null, _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L72"
            {
                var _err = (stdgo._internal.crypto.internal.nistec.Nistec__p384checkoncurve._p384CheckOnCurve(_x, _y) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L73"
                    return { _0 : null, _1 : _err };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L75"
            (@:checkr _p ?? throw "null pointer dereference")._x.set(_x);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L76"
            (@:checkr _p ?? throw "null pointer dereference")._y.set(_y);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L77"
            (@:checkr _p ?? throw "null pointer dereference")._z.one();
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L78"
            return { _0 : _p, _1 : (null : stdgo.Error) };
        } else if (((_b.length == (49 : stdgo.GoInt)) && (((_b[(0 : stdgo.GoInt)] == (2 : stdgo.GoUInt8)) || (_b[(0 : stdgo.GoInt)] == (3 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).setBytes((_b.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L83"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L84"
                return { _0 : null, _1 : _err };
            };
            var _y = stdgo._internal.crypto.internal.nistec.Nistec__p384polynomial._p384Polynomial((stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>), _x);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L89"
            if (!stdgo._internal.crypto.internal.nistec.Nistec__p384sqrt._p384Sqrt(_y, _y)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L90"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid P384 compressed point encoding" : stdgo.GoString)) };
            };
            var _otherRoot = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L96"
            _otherRoot.sub(_otherRoot, _y);
            var _cond = ((_y.bytes()[(47 : stdgo.GoInt)] & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) ^ (_b[(0 : stdgo.GoInt)] & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L98"
            _y.select(_otherRoot, _y, (_cond : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L100"
            (@:checkr _p ?? throw "null pointer dereference")._x.set(_x);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L101"
            (@:checkr _p ?? throw "null pointer dereference")._y.set(_y);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L102"
            (@:checkr _p ?? throw "null pointer dereference")._z.one();
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L103"
            return { _0 : _p, _1 : (null : stdgo.Error) };
        } else {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L106"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid P384 point encoding" : stdgo.GoString)) };
        };
    }
    @:keep
    @:tdfield
    static public function set( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>, _q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point> {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point> = _p;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L46"
        (@:checkr _p ?? throw "null pointer dereference")._x.set((@:checkr _q ?? throw "null pointer dereference")._x);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L47"
        (@:checkr _p ?? throw "null pointer dereference")._y.set((@:checkr _q ?? throw "null pointer dereference")._y);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L48"
        (@:checkr _p ?? throw "null pointer dereference")._z.set((@:checkr _q ?? throw "null pointer dereference")._z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L49"
        return _p;
    }
    @:keep
    @:tdfield
    static public function setGenerator( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point> {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point> = _p;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L38"
        (@:checkr _p ?? throw "null pointer dereference")._x.setBytes((new stdgo.Slice<stdgo.GoUInt8>(48, 48, ...[
(170 : stdgo.GoUInt8),
(135 : stdgo.GoUInt8),
(202 : stdgo.GoUInt8),
(34 : stdgo.GoUInt8),
(190 : stdgo.GoUInt8),
(139 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(55 : stdgo.GoUInt8),
(142 : stdgo.GoUInt8),
(177 : stdgo.GoUInt8),
(199 : stdgo.GoUInt8),
(30 : stdgo.GoUInt8),
(243 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(173 : stdgo.GoUInt8),
(116 : stdgo.GoUInt8),
(110 : stdgo.GoUInt8),
(29 : stdgo.GoUInt8),
(59 : stdgo.GoUInt8),
(98 : stdgo.GoUInt8),
(139 : stdgo.GoUInt8),
(167 : stdgo.GoUInt8),
(155 : stdgo.GoUInt8),
(152 : stdgo.GoUInt8),
(89 : stdgo.GoUInt8),
(247 : stdgo.GoUInt8),
(65 : stdgo.GoUInt8),
(224 : stdgo.GoUInt8),
(130 : stdgo.GoUInt8),
(84 : stdgo.GoUInt8),
(42 : stdgo.GoUInt8),
(56 : stdgo.GoUInt8),
(85 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(242 : stdgo.GoUInt8),
(93 : stdgo.GoUInt8),
(191 : stdgo.GoUInt8),
(85 : stdgo.GoUInt8),
(41 : stdgo.GoUInt8),
(108 : stdgo.GoUInt8),
(58 : stdgo.GoUInt8),
(84 : stdgo.GoUInt8),
(94 : stdgo.GoUInt8),
(56 : stdgo.GoUInt8),
(114 : stdgo.GoUInt8),
(118 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(183 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L39"
        (@:checkr _p ?? throw "null pointer dereference")._y.setBytes((new stdgo.Slice<stdgo.GoUInt8>(48, 48, ...[
(54 : stdgo.GoUInt8),
(23 : stdgo.GoUInt8),
(222 : stdgo.GoUInt8),
(74 : stdgo.GoUInt8),
(150 : stdgo.GoUInt8),
(38 : stdgo.GoUInt8),
(44 : stdgo.GoUInt8),
(111 : stdgo.GoUInt8),
(93 : stdgo.GoUInt8),
(158 : stdgo.GoUInt8),
(152 : stdgo.GoUInt8),
(191 : stdgo.GoUInt8),
(146 : stdgo.GoUInt8),
(146 : stdgo.GoUInt8),
(220 : stdgo.GoUInt8),
(41 : stdgo.GoUInt8),
(248 : stdgo.GoUInt8),
(244 : stdgo.GoUInt8),
(29 : stdgo.GoUInt8),
(189 : stdgo.GoUInt8),
(40 : stdgo.GoUInt8),
(154 : stdgo.GoUInt8),
(20 : stdgo.GoUInt8),
(124 : stdgo.GoUInt8),
(233 : stdgo.GoUInt8),
(218 : stdgo.GoUInt8),
(49 : stdgo.GoUInt8),
(19 : stdgo.GoUInt8),
(181 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(184 : stdgo.GoUInt8),
(192 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(96 : stdgo.GoUInt8),
(177 : stdgo.GoUInt8),
(206 : stdgo.GoUInt8),
(29 : stdgo.GoUInt8),
(126 : stdgo.GoUInt8),
(129 : stdgo.GoUInt8),
(157 : stdgo.GoUInt8),
(122 : stdgo.GoUInt8),
(67 : stdgo.GoUInt8),
(29 : stdgo.GoUInt8),
(124 : stdgo.GoUInt8),
(144 : stdgo.GoUInt8),
(234 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(95 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L40"
        (@:checkr _p ?? throw "null pointer dereference")._z.one();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L41"
        return _p;
    }
}

package stdgo._internal.go.internal.gcimporter;
@:keep @:allow(stdgo._internal.go.internal.gcimporter.Gcimporter.T_iimporter_asInterface) class T_iimporter_static_extension {
    @:keep
    @:tdfield
    static public function _typAt( _p:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter.T_iimporter>, _off:stdgo.GoUInt64, _base:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter.T_iimporter> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L281"
        {
            var __tmp__ = ((@:checkr _p ?? throw "null pointer dereference")._typCache != null && (@:checkr _p ?? throw "null pointer dereference")._typCache.__exists__(_off) ? { _0 : (@:checkr _p ?? throw "null pointer dereference")._typCache[_off], _1 : true } : { _0 : (null : stdgo._internal.go.types.Types_type_.Type_), _1 : false }), _t:stdgo._internal.go.types.Types_type_.Type_ = __tmp__._0, _ok:Bool = __tmp__._1;
            if ((_ok && stdgo._internal.go.internal.gcimporter.Gcimporter__canreuse._canReuse(_base, _t) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L282"
                return _t;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L285"
        if ((_off < (32i64 : stdgo.GoUInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L286"
            stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("predeclared type missing from cache: %v" : stdgo.GoString), stdgo.Go.toInterface(_off));
        };
        var _r = (stdgo.Go.setRef(({ _p : _p } : stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader)) : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L290"
        (@:checkr _r ?? throw "null pointer dereference")._declReader.reset(((@:checkr _p ?? throw "null pointer dereference")._declData.__slice__((_off - (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>));
        var _t = (_r._doType(_base) : stdgo._internal.go.types.Types_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L293"
        if (stdgo._internal.go.internal.gcimporter.Gcimporter__canreuse._canReuse(_base, _t)) {
            (@:checkr _p ?? throw "null pointer dereference")._typCache[_off] = _t;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L296"
        return _t;
    }
    @:keep
    @:tdfield
    static public function _pkgAt( _p:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter.T_iimporter>, _off:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.go.types.Types_package.Package> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter.T_iimporter> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L272"
        {
            var __tmp__ = ((@:checkr _p ?? throw "null pointer dereference")._pkgCache != null && (@:checkr _p ?? throw "null pointer dereference")._pkgCache.__exists__(_off) ? { _0 : (@:checkr _p ?? throw "null pointer dereference")._pkgCache[_off], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>), _1 : false }), _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L273"
                return _pkg;
            };
        };
        var _path = (_p._stringAt(_off)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L276"
        stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("missing package %q in %q" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._ipath));
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L277"
        return null;
    }
    @:keep
    @:tdfield
    static public function _stringAt( _p:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter.T_iimporter>, _off:stdgo.GoUInt64):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter.T_iimporter> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L257"
        {
            var __tmp__ = ((@:checkr _p ?? throw "null pointer dereference")._stringCache != null && (@:checkr _p ?? throw "null pointer dereference")._stringCache.__exists__(_off) ? { _0 : (@:checkr _p ?? throw "null pointer dereference")._stringCache[_off], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _s:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L258"
                return _s?.__copy__();
            };
        };
        var __tmp__ = stdgo._internal.encoding.binary.Binary_uvarint.uvarint(((@:checkr _p ?? throw "null pointer dereference")._stringData.__slice__(_off) : stdgo.Slice<stdgo.GoUInt8>)), _slen:stdgo.GoUInt64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L262"
        if ((_n <= (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L263"
            stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("varint failed" : stdgo.GoString));
        };
        var _spos = (_off + (_n : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _s = ((((@:checkr _p ?? throw "null pointer dereference")._stringData.__slice__(_spos, (_spos + _slen : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        (@:checkr _p ?? throw "null pointer dereference")._stringCache[_off] = _s?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L268"
        return _s?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _doDecl( _p:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter.T_iimporter>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter.T_iimporter> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L241"
        {
            var _obj = (_pkg.scope().lookup(_name?.__copy__()) : stdgo._internal.go.types.Types_object.Object);
            if (_obj != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L242"
                return;
            };
        };
        var __tmp__ = (((@:checkr _p ?? throw "null pointer dereference")._pkgIndex[_pkg] ?? (null : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64>)) != null && ((@:checkr _p ?? throw "null pointer dereference")._pkgIndex[_pkg] ?? (null : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64>)).__exists__(_name?.__copy__()) ? { _0 : ((@:checkr _p ?? throw "null pointer dereference")._pkgIndex[_pkg] ?? (null : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64>))[_name?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoUInt64), _1 : false }), _off:stdgo.GoUInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L246"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L247"
            stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("%v.%v not in index" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_pkg)), stdgo.Go.toInterface(_name));
        };
        var _r = (stdgo.Go.setRef(({ _p : _p, _currPkg : _pkg } : stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader)) : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L251"
        (@:checkr _r ?? throw "null pointer dereference")._declReader.reset(((@:checkr _p ?? throw "null pointer dereference")._declData.__slice__(_off) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L253"
        _r._obj(_name?.__copy__());
    }
}

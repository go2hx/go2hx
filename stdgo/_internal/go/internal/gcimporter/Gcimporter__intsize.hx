package stdgo._internal.go.internal.gcimporter;
function _intSize(_b:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>):{ var _0 : Bool; var _1 : stdgo.GoUInt; } {
        var _signed = false, _maxBytes = (0 : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L473"
        if (((_b.info() & (64 : stdgo._internal.go.types.Types_basicinfo.BasicInfo) : stdgo._internal.go.types.Types_basicinfo.BasicInfo)) != ((0 : stdgo._internal.go.types.Types_basicinfo.BasicInfo))) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L474"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoUInt; } = { _0 : true, _1 : (64u32 : stdgo.GoUInt) };
                _signed = __tmp__._0;
                _maxBytes = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L477"
        {
            final __value__ = _b.kind();
            if (__value__ == ((13 : stdgo._internal.go.types.Types_basickind.BasicKind)) || __value__ == ((15 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L479"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoUInt; } = { _0 : true, _1 : (3u32 : stdgo.GoUInt) };
                    _signed = __tmp__._0;
                    _maxBytes = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((14 : stdgo._internal.go.types.Types_basickind.BasicKind)) || __value__ == ((16 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L481"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoUInt; } = { _0 : true, _1 : (7u32 : stdgo.GoUInt) };
                    _signed = __tmp__._0;
                    _maxBytes = __tmp__._1;
                    __tmp__;
                };
            };
        };
        _signed = ((_b.info() & (4 : stdgo._internal.go.types.Types_basicinfo.BasicInfo) : stdgo._internal.go.types.Types_basicinfo.BasicInfo)) == ((0 : stdgo._internal.go.types.Types_basicinfo.BasicInfo));
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L485"
        {
            final __value__ = _b.kind();
            if (__value__ == ((3 : stdgo._internal.go.types.Types_basickind.BasicKind)) || __value__ == ((8 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                _maxBytes = (1u32 : stdgo.GoUInt);
            } else if (__value__ == ((4 : stdgo._internal.go.types.Types_basickind.BasicKind)) || __value__ == ((9 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                _maxBytes = (2u32 : stdgo.GoUInt);
            } else if (__value__ == ((5 : stdgo._internal.go.types.Types_basickind.BasicKind)) || __value__ == ((10 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                _maxBytes = (4u32 : stdgo.GoUInt);
            } else {
                _maxBytes = (8u32 : stdgo.GoUInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L496"
        return { _0 : _signed, _1 : _maxBytes };
    }

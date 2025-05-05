package stdgo._internal.sort;
function _partition(_data:stdgo._internal.sort.Sort_interface.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _newpivot = (0 : stdgo.GoInt), _alreadyPartitioned = false;
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L136"
        _data.swap(_a, _pivot);
        var __0 = (_a + (1 : stdgo.GoInt) : stdgo.GoInt), __1 = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L139"
        while (((_i <= _j : Bool) && _data.less(_i, _a) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L140"
            _i++;
        };
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L142"
        while (((_i <= _j : Bool) && !_data.less(_j, _a) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L143"
            _j--;
        };
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L145"
        if ((_i > _j : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L146"
            _data.swap(_j, _a);
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L147"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : true };
                _newpivot = __tmp__._0;
                _alreadyPartitioned = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L149"
        _data.swap(_i, _j);
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L150"
        _i++;
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L151"
        _j--;
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L153"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L154"
            while (((_i <= _j : Bool) && _data.less(_i, _a) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L155"
                _i++;
            };
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L157"
            while (((_i <= _j : Bool) && !_data.less(_j, _a) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L158"
                _j--;
            };
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L160"
            if ((_i > _j : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L161"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L163"
            _data.swap(_i, _j);
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L164"
            _i++;
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L165"
            _j--;
        };
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L167"
        _data.swap(_j, _a);
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L168"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : false };
            _newpivot = __tmp__._0;
            _alreadyPartitioned = __tmp__._1;
            __tmp__;
        };
    }

package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function _skipName(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        stdgo._internal.internal.Macro.controlFlow({
            var _newOff = (_off : stdgo.GoInt);
            @:label("Loop") while (true) {
                if ((_newOff >= (_msg.length) : Bool)) {
                    return { _0 : _off, _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errBaseLen._errBaseLen };
                };
                var _c = (_msg[(_newOff : stdgo.GoInt)] : stdgo.GoInt);
                _newOff++;
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        {
                            final __value__ = (_c & (192 : stdgo.GoInt) : stdgo.GoInt);
                            if (__value__ == ((0 : stdgo.GoInt))) {
                                if (_c == ((0 : stdgo.GoInt))) {
                                    @:jump("Loop") break;
                                };
                                _newOff = (_newOff + (_c) : stdgo.GoInt);
                                if ((_newOff > (_msg.length) : Bool)) {
                                    return { _0 : _off, _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errCalcLen._errCalcLen };
                                };
                                break;
                            } else if (__value__ == ((192 : stdgo.GoInt))) {
                                _newOff++;
                                @:jump("Loop") break;
                                break;
                            } else {
                                return { _0 : _off, _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errReserved._errReserved };
                            };
                        };
                        break;
                    };
                };
            };
            return { _0 : _newOff, _1 : (null : stdgo.Error) };
        });
    }

# Module stdgo._internal.net.smtp has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_Conn_static_extension.hx:837: characters 209-257

 837 | [2m    static public function _makeClientHello( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>; var _1 : stdgo.Ref<[0m[1m_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey[0m[2m>; var _2 : stdgo.Error; } {[0m
     |                                                                                                                                                                                                                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.crypto.ecdh.Ecdh_PrivateKey

[30;41m ERROR [0m stdgo/_internal/net/smtp/Smtp_newClient.hx:11: lines 11-13

  11 | [2m            var __tmp__ = try [0m[1m{[0m
  12 | [1m                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_conn) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>), _1 : true };[0m
  13 | [1m            }[0m[2m catch(_) {[0m
     |
     | Void should be { _1 : Bool, _0 : stdgo.Ref<stdgo._internal.crypto.tls.Conn> }

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:36: characters 27-105

  36 | [2m        var _s = (_data : [0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m);[0m
     |                           [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls__readUint8LengthPrefixed.hx:2: characters 48-126

   2 | [2mfunction _readUint8LengthPrefixed(_s:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m>, _out:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>):Bool {[0m
     |                                                [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:40: characters 27-105

  40 | [2m        var _cipherSuites:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);[0m
     |                           [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:41: characters 86-164

  41 | [2m        if (!_s.readUint16LengthPrefixed((stdgo.Go.setRef(_cipherSuites) : stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m>))) {[0m
     |                                                                                      [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:56: characters 14-69

  56 | [2m        if (![0m[1mstdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed[0m[2m._readUint8LengthPrefixed((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_m._compressionMethods) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {[0m
     |              [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed does not define type Tls__readUint8LengthPrefixed

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:62: characters 25-103

  62 | [2m        var _extensions:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);[0m
     |                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:63: characters 85-163

  63 | [2m        if ((!_s.readUint16LengthPrefixed((stdgo.Go.setRef(_extensions) : stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m>)) || !_s.empty() : Bool)) {[0m
     |                                                                                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:74: characters 26-104

  74 | [2m            var _extData:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);[0m
     |                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:75: characters 152-230

  75 | [2m            if ((!_extensions.readUint16(stdgo.Go.pointer(_extension)) || !_extensions.readUint16LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m>)) : Bool)) {[0m
     |                                                                                                                                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:85: characters 35-113

  85 | [2m                    var _nameList:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);[0m
     |                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:86: characters 101-179

  86 | [2m                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_nameList) : stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m>)) || _nameList.empty() : Bool)) {[0m
     |                                                                                                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:91: characters 41-119

  91 | [2m                        var _serverName:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);[0m
     |                                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:92: characters 162-240

  92 | [2m                        if (((!_nameList.readUint8(stdgo.Go.pointer(_nameType)) || !_nameList.readUint16LengthPrefixed((stdgo.Go.setRef(_serverName) : stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m>)) : Bool) || _serverName.empty() : Bool)) {[0m
     |                                                                                                                                                                  [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:108: characters 34-112

 108 | [2m                    var _ignored:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);[0m
     |                                  [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:109: characters 155-233

 109 | [2m                    if (((!_extData.readUint8(stdgo.Go.pointer(_statusType)) || !_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_ignored) : stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m>)) : Bool) || !_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_ignored) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) : Bool)) {[0m
     |                                                                                                                                                           [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:114: characters 33-111

 114 | [2m                    var _curves:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);[0m
     |                                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:115: characters 99-177

 115 | [2m                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_curves) : stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m>)) || _curves.empty() : Bool)) {[0m
     |                                                                                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:126: characters 27-82

 126 | [2m                    if ((![0m[1mstdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed[0m[2m._readUint8LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_m._supportedPoints) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || (_m._supportedPoints.length == (0 : stdgo.GoInt)) : Bool)) {[0m
     |                           [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed does not define type Tls__readUint8LengthPrefixed

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:133: characters 37-115

 133 | [2m                    var _sigAndAlgs:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);[0m
     |                                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:134: characters 103-181

 134 | [2m                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_sigAndAlgs) : stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m>)) || _sigAndAlgs.empty() : Bool)) {[0m
     |                                                                                                       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:145: characters 37-115

 145 | [2m                    var _sigAndAlgs:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);[0m
     |                                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:146: characters 103-181

 146 | [2m                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_sigAndAlgs) : stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m>)) || _sigAndAlgs.empty() : Bool)) {[0m
     |                                                                                                       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:157: characters 26-81

 157 | [2m                    if (![0m[1mstdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed[0m[2m._readUint8LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_m._secureRenegotiation) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {[0m
     |                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed does not define type Tls__readUint8LengthPrefixed

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:164: characters 36-114

 164 | [2m                    var _protoList:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);[0m
     |                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:165: characters 102-180

 165 | [2m                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_protoList) : stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m>)) || _protoList.empty() : Bool)) {[0m
     |                                                                                                      [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:169: characters 36-114

 169 | [2m                        var _proto:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);[0m
     |                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:170: characters 103-181

 170 | [2m                        if ((!_protoList.readUint8LengthPrefixed((stdgo.Go.setRef(_proto) : stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m>)) || _proto.empty() : Bool)) {[0m
     |                                                                                                       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:178: characters 35-113

 178 | [2m                    var _versList:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);[0m
     |                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:179: characters 100-178

 179 | [2m                    if ((!_extData.readUint8LengthPrefixed((stdgo.Go.setRef(_versList) : stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m>)) || _versList.empty() : Bool)) {[0m
     |                                                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls__readUint16LengthPrefixed.hx:2: characters 49-127

   2 | [2mfunction _readUint16LengthPrefixed(_s:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m>, _out:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>):Bool {[0m
     |                                                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:194: characters 39-117

 194 | [2m                    var _clientShares:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);[0m
     |                                       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:195: characters 104-182

 195 | [2m                    if (!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_clientShares) : stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m>))) {[0m
     |                                                                                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:200: characters 272-328

 200 | [2m                        if (((!_clientShares.readUint16(new stdgo.Pointer<stdgo.GoUInt16>(() -> (stdgo.Go.pointer(_ks._group).value : stdgo.GoUInt16), v -> (stdgo.Go.pointer(_ks._group).value = (v : stdgo._internal.crypto.tls.Tls_CurveID.CurveID) : stdgo.GoUInt16))) || ![0m[1mstdgo._internal.crypto.tls.Tls__readUint16LengthPrefixed[0m[2m._readUint16LengthPrefixed((stdgo.Go.setRef(_clientShares) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_ks._data) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool) || (_ks._data.length == (0 : stdgo.GoInt)) : Bool)) {[0m
     |                                                                                                                                                                                                                                                                                [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.crypto.tls.Tls__readUint16LengthPrefixed does not define type Tls__readUint16LengthPrefixed

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:208: characters 26-81

 208 | [2m                    if (![0m[1mstdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed[0m[2m._readUint8LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_m._pskModes) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {[0m
     |                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed does not define type Tls__readUint8LengthPrefixed

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:220: characters 37-115

 220 | [2m                    var _identities:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);[0m
     |                                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:221: characters 103-181

 221 | [2m                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_identities) : stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m>)) || _identities.empty() : Bool)) {[0m
     |                                                                                                       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:226: characters 32-88

 226 | [2m                        if (((![0m[1mstdgo._internal.crypto.tls.Tls__readUint16LengthPrefixed[0m[2m._readUint16LengthPrefixed((stdgo.Go.setRef(_identities) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_psk._label) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || !_identities.readUint32(stdgo.Go.pointer(_psk._obfuscatedTicketAge)) : Bool) || (_psk._label.length == (0 : stdgo.GoInt)) : Bool)) {[0m
     |                                [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.crypto.tls.Tls__readUint16LengthPrefixed does not define type Tls__readUint16LengthPrefixed

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:231: characters 34-112

 231 | [2m                    var _binders:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);[0m
     |                                  [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:232: characters 100-178

 232 | [2m                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_binders) : stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m>)) || _binders.empty() : Bool)) {[0m
     |                                                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:237: characters 31-86

 237 | [2m                        if ((![0m[1mstdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed[0m[2m._readUint8LengthPrefixed((stdgo.Go.setRef(_binders) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_binder) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || (_binder.length == (0 : stdgo.GoInt)) : Bool)) {[0m
     |                               [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed does not define type Tls__readUint8LengthPrefixed

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:307: characters 19-97

 307 | [2m        var _exts:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder);[0m
     |                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:310: characters 68-146

 310 | [2m            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:321: characters 68-146

 321 | [2m            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:329: characters 68-146

 329 | [2m            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:339: characters 68-146

 339 | [2m            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:347: characters 68-146

 347 | [2m            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:353: characters 68-146

 353 | [2m            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:363: characters 68-146

 363 | [2m            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:373: characters 68-146

 373 | [2m            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:385: characters 68-146

 385 | [2m            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:401: characters 68-146

 401 | [2m            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:411: characters 68-146

 411 | [2m            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:419: characters 68-146

 419 | [2m            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:436: characters 68-146

 436 | [2m            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:444: characters 68-146

 444 | [2m            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:450: characters 68-146

 450 | [2m            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:472: characters 16-94

 472 | [2m        var _b:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder);[0m
     |                [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:474: characters 58-136

 474 | [2m        _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:270: characters 22-93

 270 | [2m            var _b = [0m[1m_internal.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_newFixedBuilder[0m[2m.newFixedBuilder((_m._raw.__slice__(0, _lenWithoutBinders) : stdgo.Slice<stdgo.GoUInt8>));[0m
     |                      [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_newFixedBuilder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_clientHelloMsg_static_extension.hx:271: characters 62-140

 271 | [2m            _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                              [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_newSessionTicketMsgTLS13_static_extension.hx:15: characters 27-105

  15 | [2m        var _s = (_data : [0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m);[0m
     |                           [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_newSessionTicketMsgTLS13_static_extension.hx:16: characters 25-103

  16 | [2m        var _extensions:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);[0m
     |                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_newSessionTicketMsgTLS13_static_extension.hx:17: characters 165-220

  17 | [2m        if (((((((!_s.skip((4 : stdgo.GoInt)) || !_s.readUint32(stdgo.Go.pointer(_m._lifetime)) : Bool) || !_s.readUint32(stdgo.Go.pointer(_m._ageAdd)) : Bool) || ![0m[1mstdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed[0m[2m._readUint8LengthPrefixed((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_m._nonce) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool) || !stdgo._internal.crypto.tls.Tls__readUint16LengthPrefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_m._label) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool) || !_s.readUint16LengthPrefixed((stdgo.Go.setRef(_extensions) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) : Bool) || !_s.empty() : Bool)) {[0m
     |                                                                                                                                                                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed does not define type Tls__readUint8LengthPrefixed

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_newSessionTicketMsgTLS13_static_extension.hx:22: characters 26-104

  22 | [2m            var _extData:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);[0m
     |                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_newSessionTicketMsgTLS13_static_extension.hx:23: characters 152-230

  23 | [2m            if ((!_extensions.readUint16(stdgo.Go.pointer(_extension)) || !_extensions.readUint16LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m>)) : Bool)) {[0m
     |                                                                                                                                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_newSessionTicketMsgTLS13_static_extension.hx:48: characters 16-94

  48 | [2m        var _b:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder);[0m
     |                [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_newSessionTicketMsgTLS13_static_extension.hx:50: characters 58-136

  50 | [2m        _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:29: characters 27-105

  29 | [2m        var _s = (_data : [0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m);[0m
     |                           [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:30: characters 220-275

  30 | [2m        if ((((((!_s.skip((4 : stdgo.GoInt)) || !_s.readUint16(stdgo.Go.pointer(_m._vers)) : Bool) || !_s.readBytes((stdgo.Go.setRef(_m._random) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (32 : stdgo.GoInt)) : Bool) || ![0m[1mstdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed[0m[2m._readUint8LengthPrefixed((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_m._sessionId) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool) || !_s.readUint16(stdgo.Go.pointer(_m._cipherSuite)) : Bool) || !_s.readUint8(stdgo.Go.pointer(_m._compressionMethod)) : Bool)) {[0m
     |                                                                                                                                                                                                                            [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed does not define type Tls__readUint8LengthPrefixed

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:36: characters 25-103

  36 | [2m        var _extensions:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);[0m
     |                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:37: characters 85-163

  37 | [2m        if ((!_s.readUint16LengthPrefixed((stdgo.Go.setRef(_extensions) : stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m>)) || !_s.empty() : Bool)) {[0m
     |                                                                                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:48: characters 26-104

  48 | [2m            var _extData:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);[0m
     |                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:49: characters 152-230

  49 | [2m            if ((!_extensions.readUint16(stdgo.Go.pointer(_extension)) || !_extensions.readUint16LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m>)) : Bool)) {[0m
     |                                                                                                                                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:63: characters 26-81

  63 | [2m                    if (![0m[1mstdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed[0m[2m._readUint8LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_m._secureRenegotiation) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {[0m
     |                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed does not define type Tls__readUint8LengthPrefixed

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:70: characters 36-114

  70 | [2m                    var _protoList:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);[0m
     |                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:71: characters 102-180

  71 | [2m                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_protoList) : stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m>)) || _protoList.empty() : Bool)) {[0m
     |                                                                                                      [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:74: characters 32-110

  74 | [2m                    var _proto:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);[0m
     |                                [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:75: characters 100-178

  75 | [2m                    if (((!_protoList.readUint8LengthPrefixed((stdgo.Go.setRef(_proto) : stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m>)) || _proto.empty() : Bool) || !_protoList.empty() : Bool)) {[0m
     |                                                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:80: characters 34-112

  80 | [2m                    var _sctList:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);[0m
     |                                  [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:81: characters 100-178

  81 | [2m                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_sctList) : stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_[0m[2m>)) || _sctList.empty() : Bool)) {[0m
     |                                                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:86: characters 31-87

  86 | [2m                        if ((![0m[1mstdgo._internal.crypto.tls.Tls__readUint16LengthPrefixed[0m[2m._readUint16LengthPrefixed((stdgo.Go.setRef(_sctList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_sct) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || (_sct.length == (0 : stdgo.GoInt)) : Bool)) {[0m
     |                               [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.crypto.tls.Tls__readUint16LengthPrefixed does not define type Tls__readUint16LengthPrefixed

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:96: characters 27-83

  96 | [2m                    if ((![0m[1mstdgo._internal.crypto.tls.Tls__readUint16LengthPrefixed[0m[2m._readUint16LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_m._cookie) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || (_m._cookie.length == (0 : stdgo.GoInt)) : Bool)) {[0m
     |                           [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.crypto.tls.Tls__readUint16LengthPrefixed does not define type Tls__readUint16LengthPrefixed

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:105: characters 290-346

 105 | [2m                        if ((!_extData.readUint16(new stdgo.Pointer<stdgo.GoUInt16>(() -> (stdgo.Go.pointer(_m._serverShare._group).value : stdgo.GoUInt16), v -> (stdgo.Go.pointer(_m._serverShare._group).value = (v : stdgo._internal.crypto.tls.Tls_CurveID.CurveID) : stdgo.GoUInt16))) || ![0m[1mstdgo._internal.crypto.tls.Tls__readUint16LengthPrefixed[0m[2m._readUint16LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_m._serverShare._data) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool)) {[0m
     |                                                                                                                                                                                                                                                                                                  [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.crypto.tls.Tls__readUint16LengthPrefixed does not define type Tls__readUint16LengthPrefixed

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:115: characters 27-82

 115 | [2m                    if ((![0m[1mstdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed[0m[2m._readUint8LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_m._supportedPoints) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || (_m._supportedPoints.length == (0 : stdgo.GoInt)) : Bool)) {[0m
     |                           [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed does not define type Tls__readUint8LengthPrefixed

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:134: characters 19-97

 134 | [2m        var _exts:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder);[0m
     |                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:145: characters 68-146

 145 | [2m            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:157: characters 68-146

 157 | [2m            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:167: characters 68-146

 167 | [2m            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:179: characters 68-146

 179 | [2m            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:185: characters 68-146

 185 | [2m            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:194: characters 68-146

 194 | [2m            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:200: characters 68-146

 200 | [2m            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:208: characters 68-146

 208 | [2m            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:214: characters 68-146

 214 | [2m            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:224: characters 16-94

 224 | [2m        var _b:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder);[0m
     |                [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_serverHelloMsg_static_extension.hx:226: characters 58-136

 226 | [2m        _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_cipherSuiteTLS13_static_extension.hx:54: characters 24-102

  54 | [2m        var _hkdfLabel:[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder);[0m
     |                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_cipherSuiteTLS13_static_extension.hx:56: characters 65-143

  56 | [2m        _hkdfLabel.addUint8LengthPrefixed(function(_b:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_cipherSuiteTLS13_static_extension.hx:60: characters 65-143

  60 | [2m        _hkdfLabel.addUint8LengthPrefixed(function(_b:stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m>):Void {[0m
     |                                                                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_cipherSuiteTLS13_static_extension.hx:68: characters 23-73

  68 | [2m        var __tmp__ = [0m[1m_internal.golang_dot_org.x.crypto.hkdf.Hkdf_expand[0m[2m.expand(_c._hash.new_, _secret, _hkdfLabelBytes).read(_out), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
     |                       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.golang_dot_org.x.crypto.hkdf.Hkdf_expand

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_cipherSuiteTLS13_static_extension.hx:41: characters 16-67

  41 | [2m        return [0m[1m_internal.golang_dot_org.x.crypto.hkdf.Hkdf_extract[0m[2m.extract(_c._hash.new_, _newSecret, _currentSecret);[0m
     |                [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.golang_dot_org.x.crypto.hkdf.Hkdf_extract

[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/crypto/tls/Tls_Conn_static_extension.hx:662: characters 30-46

 662 | [2m            var __tmp__ = _c.[0m[1m_makeClientHello[0m[2m(), _hello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg> = __tmp__._0, _ecdheKey:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey> = __tmp__._1, _err:stdgo.Error = __tmp__._2;[0m
     |                              [31m^^^^^^^^^^^^^^^^[0m
     | stdgo.Ref<stdgo._internal.crypto.tls.Conn> has no field _makeClientHello


```


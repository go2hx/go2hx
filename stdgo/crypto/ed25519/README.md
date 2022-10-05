# Module stdgo.crypto.ed25519 has compilation errors, please do not use:
```
stdgo/crypto/ed25519/internal/edwards25519/Edwards25519.hx:11: character 18 : `package stdgo.crypto.ed25519.internal.edwards25519.field;` in /home/runner/work/go2hx/go2hx/stdgo/crypto/ed25519/internal/edwards25519/field/Field.hx should be `package crypto.ed25519.internal.edwards25519.field;`
stdgo/crypto/ed25519/internal/edwards25519/Edwards25519.hx:361: character 22 : `package stdgo.crypto.ed25519.internal.edwards25519;` in /home/runner/work/go2hx/go2hx/stdgo/crypto/ed25519/internal/edwards25519/Edwards25519.hx should be `package crypto.ed25519.internal.edwards25519;`
stdgo/crypto/ed25519/Ed25519.hx:138: characters 23-38 : Not enough arguments, expected length:Int, capacity:Int, args:haxe.Rest<stdgo.GoUInt8>
stdgo/crypto/ed25519/Ed25519.hx:135: lines 135-137 : { value : stdgo.crypto.ed25519.PublicKey, ok : Bool } should be Void
stdgo/crypto/ed25519/Ed25519.hx:139: characters 26-31 : Void has no field value
stdgo/crypto/ed25519/Ed25519.hx:139: characters 47-49 : Void has no field ok
stdgo/crypto/ed25519/Ed25519.hx:135: characters 13-20 : Variables of type Void are not allowed
stdgo/crypto/ed25519/Ed25519.hx:63: characters 45-119 : Spread unary operator is only allowed for unpacking the last argument in a call with rest arguments
stdgo/crypto/ed25519/Ed25519.hx:63: characters 45-119 : ... For function argument 'length'
stdgo/crypto/sha512/Sha512.hx:202: characters 118-130 : Type not found : GoUnTypedInt
stdgo/crypto/sha512/Sha512.hx:209: characters 172-184 : Type not found : GoUnTypedInt
stdgo/crypto/sha512/Sha512.hx:211: characters 170-182 : Type not found : GoUnTypedInt
stdgo/crypto/sha512/Sha512.hx:12: characters 1-37 : stdgo.GoUInt64 should be Int
stdgo/crypto/sha512/Sha512.hx:12: characters 1-37 : ... For function argument 'length'

```


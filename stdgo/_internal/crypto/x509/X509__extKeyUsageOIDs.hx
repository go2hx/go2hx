package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.des.Des;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.net.url.Url;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.ed25519.Ed25519;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.rsa.Rsa;
import stdgo._internal.crypto.ecdsa.Ecdsa;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.encoding.pem.Pem;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
var _extKeyUsageOIDs : stdgo.Slice<stdgo._internal.crypto.x509.X509_T__struct_2.T__struct_2> = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_T__struct_2.T__struct_2>(14, 14, ...[
({ _extKeyUsage : (0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage), _oid : stdgo._internal.crypto.x509.X509__oidExtKeyUsageAny._oidExtKeyUsageAny } : stdgo._internal.crypto.x509.X509_T__struct_2.T__struct_2),
({ _extKeyUsage : (1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage), _oid : stdgo._internal.crypto.x509.X509__oidExtKeyUsageServerAuth._oidExtKeyUsageServerAuth } : stdgo._internal.crypto.x509.X509_T__struct_2.T__struct_2),
({ _extKeyUsage : (2 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage), _oid : stdgo._internal.crypto.x509.X509__oidExtKeyUsageClientAuth._oidExtKeyUsageClientAuth } : stdgo._internal.crypto.x509.X509_T__struct_2.T__struct_2),
({ _extKeyUsage : (3 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage), _oid : stdgo._internal.crypto.x509.X509__oidExtKeyUsageCodeSigning._oidExtKeyUsageCodeSigning } : stdgo._internal.crypto.x509.X509_T__struct_2.T__struct_2),
({ _extKeyUsage : (4 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage), _oid : stdgo._internal.crypto.x509.X509__oidExtKeyUsageEmailProtection._oidExtKeyUsageEmailProtection } : stdgo._internal.crypto.x509.X509_T__struct_2.T__struct_2),
({ _extKeyUsage : (5 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage), _oid : stdgo._internal.crypto.x509.X509__oidExtKeyUsageIPSECEndSystem._oidExtKeyUsageIPSECEndSystem } : stdgo._internal.crypto.x509.X509_T__struct_2.T__struct_2),
({ _extKeyUsage : (6 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage), _oid : stdgo._internal.crypto.x509.X509__oidExtKeyUsageIPSECTunnel._oidExtKeyUsageIPSECTunnel } : stdgo._internal.crypto.x509.X509_T__struct_2.T__struct_2),
({ _extKeyUsage : (7 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage), _oid : stdgo._internal.crypto.x509.X509__oidExtKeyUsageIPSECUser._oidExtKeyUsageIPSECUser } : stdgo._internal.crypto.x509.X509_T__struct_2.T__struct_2),
({ _extKeyUsage : (8 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage), _oid : stdgo._internal.crypto.x509.X509__oidExtKeyUsageTimeStamping._oidExtKeyUsageTimeStamping } : stdgo._internal.crypto.x509.X509_T__struct_2.T__struct_2),
({ _extKeyUsage : (9 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage), _oid : stdgo._internal.crypto.x509.X509__oidExtKeyUsageOCSPSigning._oidExtKeyUsageOCSPSigning } : stdgo._internal.crypto.x509.X509_T__struct_2.T__struct_2),
({ _extKeyUsage : (10 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage), _oid : stdgo._internal.crypto.x509.X509__oidExtKeyUsageMicrosoftServerGatedCrypto._oidExtKeyUsageMicrosoftServerGatedCrypto } : stdgo._internal.crypto.x509.X509_T__struct_2.T__struct_2),
({ _extKeyUsage : (11 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage), _oid : stdgo._internal.crypto.x509.X509__oidExtKeyUsageNetscapeServerGatedCrypto._oidExtKeyUsageNetscapeServerGatedCrypto } : stdgo._internal.crypto.x509.X509_T__struct_2.T__struct_2),
({ _extKeyUsage : (12 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage), _oid : stdgo._internal.crypto.x509.X509__oidExtKeyUsageMicrosoftCommercialCodeSigning._oidExtKeyUsageMicrosoftCommercialCodeSigning } : stdgo._internal.crypto.x509.X509_T__struct_2.T__struct_2),
({ _extKeyUsage : (13 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage), _oid : stdgo._internal.crypto.x509.X509__oidExtKeyUsageMicrosoftKernelCodeSigning._oidExtKeyUsageMicrosoftKernelCodeSigning } : stdgo._internal.crypto.x509.X509_T__struct_2.T__struct_2)].concat([for (i in 14 ... (14 > 14 ? 14 : 14 : stdgo.GoInt).toBasic()) ({ _extKeyUsage : ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage), _oid : new stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier(0, 0) } : stdgo._internal.crypto.x509.X509_T__struct_2.T__struct_2)])) : stdgo.Slice<stdgo._internal.crypto.x509.X509_T__struct_2.T__struct_2>);
